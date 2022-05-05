package com.facebook.stetho.websocket;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/websocket/WebSocketSession.class */
public class WebSocketSession implements SimpleSession {
    private final SimpleEndpoint mEndpoint;
    private final ReadHandler mReadHandler;
    private volatile boolean mSentClose;
    private final WriteHandler mWriteHandler;
    private AtomicBoolean mIsOpen = new AtomicBoolean(false);
    private final ReadCallback mReadCallback = new ReadCallback() { // from class: com.facebook.stetho.websocket.WebSocketSession.1
        private void handleBinaryFrame(byte[] bArr, int i) {
            WebSocketSession.this.mEndpoint.onMessage(WebSocketSession.this, bArr, i);
        }

        private void handleClose(byte[] bArr, int i) {
            int i2;
            String str;
            if (i >= 2) {
                int i3 = ((bArr[0] & 255) << 8) | (bArr[1] & 255);
                if (i > 2) {
                    str = new String(bArr, 2, i - 2);
                    i2 = i3;
                } else {
                    str = null;
                    i2 = i3;
                }
            } else {
                i2 = CloseCodes.CLOSED_ABNORMALLY;
                str = "Unparseable close frame";
            }
            if (!WebSocketSession.this.mSentClose) {
                WebSocketSession.this.sendClose(1000, "Received close frame");
            }
            WebSocketSession.this.markAndSignalClosed(i2, str);
        }

        private void handlePing(byte[] bArr, int i) {
            WebSocketSession.this.doWrite(FrameHelper.createPongFrame(bArr, i));
        }

        private void handlePong(byte[] bArr, int i) {
        }

        private void handleTextFrame(byte[] bArr, int i) {
            WebSocketSession.this.mEndpoint.onMessage(WebSocketSession.this, new String(bArr, 0, i));
        }

        @Override // com.facebook.stetho.websocket.ReadCallback
        public void onCompleteFrame(byte b, byte[] bArr, int i) {
            if (b == 1) {
                handleTextFrame(bArr, i);
            } else if (b != 2) {
                switch (b) {
                    case 8:
                        handleClose(bArr, i);
                        return;
                    case 9:
                        handlePing(bArr, i);
                        return;
                    case 10:
                        handlePong(bArr, i);
                        return;
                    default:
                        WebSocketSession webSocketSession = WebSocketSession.this;
                        webSocketSession.signalError(new IOException("Unsupported frame opcode=" + ((int) b)));
                        return;
                }
            } else {
                handleBinaryFrame(bArr, i);
            }
        }
    };
    private final WriteCallback mErrorForwardingWriteCallback = new WriteCallback() { // from class: com.facebook.stetho.websocket.WebSocketSession.2
        @Override // com.facebook.stetho.websocket.WriteCallback
        public void onFailure(IOException iOException) {
            WebSocketSession.this.signalError(iOException);
        }

        @Override // com.facebook.stetho.websocket.WriteCallback
        public void onSuccess() {
        }
    };

    public WebSocketSession(InputStream inputStream, OutputStream outputStream, SimpleEndpoint simpleEndpoint) {
        this.mReadHandler = new ReadHandler(inputStream, simpleEndpoint);
        this.mWriteHandler = new WriteHandler(outputStream);
        this.mEndpoint = simpleEndpoint;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doWrite(Frame frame) {
        if (!signalErrorIfNotOpen()) {
            this.mWriteHandler.write(frame, this.mErrorForwardingWriteCallback);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendClose(int i, String str) {
        doWrite(FrameHelper.createCloseFrame(i, str));
        markSentClose();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void signalError(IOException iOException) {
        this.mEndpoint.onError(this, iOException);
    }

    private boolean signalErrorIfNotOpen() {
        if (isOpen()) {
            return false;
        }
        signalError(new IOException("Session is closed"));
        return true;
    }

    @Override // com.facebook.stetho.websocket.SimpleSession
    public void close(int i, String str) {
        sendClose(i, str);
        markAndSignalClosed(i, str);
    }

    public void handle() throws IOException {
        markAndSignalOpen();
        try {
            this.mReadHandler.readLoop(this.mReadCallback);
        } catch (EOFException e) {
            markAndSignalClosed(CloseCodes.UNEXPECTED_CONDITION, "EOF while reading");
        } catch (IOException e2) {
            markAndSignalClosed(CloseCodes.CLOSED_ABNORMALLY, null);
            throw e2;
        }
    }

    @Override // com.facebook.stetho.websocket.SimpleSession
    public boolean isOpen() {
        return this.mIsOpen.get();
    }

    void markAndSignalClosed(int i, String str) {
        if (this.mIsOpen.getAndSet(false)) {
            this.mEndpoint.onClose(this, i, str);
        }
    }

    void markAndSignalOpen() {
        if (!this.mIsOpen.getAndSet(true)) {
            this.mEndpoint.onOpen(this);
        }
    }

    void markSentClose() {
        this.mSentClose = true;
    }

    @Override // com.facebook.stetho.websocket.SimpleSession
    public void sendBinary(byte[] bArr) {
        doWrite(FrameHelper.createBinaryFrame(bArr));
    }

    @Override // com.facebook.stetho.websocket.SimpleSession
    public void sendText(String str) {
        doWrite(FrameHelper.createTextFrame(str));
    }
}
