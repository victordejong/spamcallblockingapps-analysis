package com.mixpanel.android.java_websocket;

import android.annotation.SuppressLint;
import com.mixpanel.android.java_websocket.WebSocket;
import com.mixpanel.android.java_websocket.drafts.Draft;
import com.mixpanel.android.java_websocket.drafts.Draft_10;
import com.mixpanel.android.java_websocket.drafts.Draft_17;
import com.mixpanel.android.java_websocket.drafts.Draft_75;
import com.mixpanel.android.java_websocket.drafts.Draft_76;
import com.mixpanel.android.java_websocket.exceptions.IncompleteHandshakeException;
import com.mixpanel.android.java_websocket.exceptions.InvalidDataException;
import com.mixpanel.android.java_websocket.exceptions.InvalidHandshakeException;
import com.mixpanel.android.java_websocket.exceptions.WebsocketNotConnectedException;
import com.mixpanel.android.java_websocket.framing.CloseFrame;
import com.mixpanel.android.java_websocket.framing.CloseFrameBuilder;
import com.mixpanel.android.java_websocket.framing.Framedata;
import com.mixpanel.android.java_websocket.handshake.ClientHandshake;
import com.mixpanel.android.java_websocket.handshake.ClientHandshakeBuilder;
import com.mixpanel.android.java_websocket.handshake.Handshakedata;
import com.mixpanel.android.java_websocket.server.WebSocketServer;
import com.mixpanel.android.java_websocket.util.Charsetfunctions;
import java.io.IOException;
import java.io.PrintStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.channels.SelectionKey;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
@SuppressLint({"Assert"})
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/java_websocket/WebSocketImpl.class */
public class WebSocketImpl implements WebSocket {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static boolean DEBUG = false;
    public static int RCVBUF = 16384;
    public static final List<Draft> defaultdraftlist = new ArrayList(4);
    public ByteChannel channel;
    private Integer closecode;
    private Boolean closedremotely;
    private String closemessage;
    private Framedata.Opcode current_continuous_frame_opcode;
    private Draft draft;
    private volatile boolean flushandclosestate;
    private ClientHandshake handshakerequest;
    public final BlockingQueue<ByteBuffer> inQueue;
    public SelectionKey key;
    private List<Draft> knownDrafts;
    public final BlockingQueue<ByteBuffer> outQueue;
    private WebSocket.READYSTATE readystate;
    private String resourceDescriptor;
    private WebSocket.Role role;
    private ByteBuffer tmpHandshakeBytes;
    public volatile WebSocketServer.WebSocketWorker workerThread;
    private final WebSocketListener wsl;

    static {
        defaultdraftlist.add(new Draft_17());
        defaultdraftlist.add(new Draft_10());
        defaultdraftlist.add(new Draft_76());
        defaultdraftlist.add(new Draft_75());
    }

    public WebSocketImpl(WebSocketListener webSocketListener, Draft draft) {
        this.flushandclosestate = false;
        this.readystate = WebSocket.READYSTATE.NOT_YET_CONNECTED;
        this.draft = null;
        this.current_continuous_frame_opcode = null;
        this.tmpHandshakeBytes = ByteBuffer.allocate(0);
        this.handshakerequest = null;
        this.closemessage = null;
        this.closecode = null;
        this.closedremotely = null;
        this.resourceDescriptor = null;
        if (webSocketListener == null || (draft == null && this.role == WebSocket.Role.SERVER)) {
            throw new IllegalArgumentException("parameters must not be null");
        }
        this.outQueue = new LinkedBlockingQueue();
        this.inQueue = new LinkedBlockingQueue();
        this.wsl = webSocketListener;
        this.role = WebSocket.Role.CLIENT;
        if (draft != null) {
            this.draft = draft.copyInstance();
        }
    }

    @Deprecated
    public WebSocketImpl(WebSocketListener webSocketListener, Draft draft, Socket socket) {
        this(webSocketListener, draft);
    }

    public WebSocketImpl(WebSocketListener webSocketListener, List<Draft> list) {
        this(webSocketListener, (Draft) null);
        this.role = WebSocket.Role.SERVER;
        if (list == null || list.isEmpty()) {
            this.knownDrafts = defaultdraftlist;
        } else {
            this.knownDrafts = list;
        }
    }

    @Deprecated
    public WebSocketImpl(WebSocketListener webSocketListener, List<Draft> list, Socket socket) {
        this(webSocketListener, list);
    }

    private void close(int i, String str, boolean z) {
        if (this.readystate != WebSocket.READYSTATE.CLOSING && this.readystate != WebSocket.READYSTATE.CLOSED) {
            if (this.readystate == WebSocket.READYSTATE.OPEN) {
                if (i == 1006) {
                    this.readystate = WebSocket.READYSTATE.CLOSING;
                    flushAndClose(i, str, false);
                    return;
                }
                if (this.draft.getCloseHandshakeType() != Draft.CloseHandshakeType.NONE) {
                    if (!z) {
                        try {
                            try {
                                this.wsl.onWebsocketCloseInitiated(this, i, str);
                            } catch (RuntimeException e) {
                                this.wsl.onWebsocketError(this, e);
                            }
                        } catch (InvalidDataException e2) {
                            this.wsl.onWebsocketError(this, e2);
                            flushAndClose(1006, "generated frame is invalid", false);
                        }
                    }
                    sendFrame(new CloseFrameBuilder(i, str));
                }
                flushAndClose(i, str, z);
            } else if (i == -3) {
                flushAndClose(-3, str, true);
            } else {
                flushAndClose(-1, str, false);
            }
            if (i == 1002) {
                flushAndClose(i, str, z);
            }
            this.readystate = WebSocket.READYSTATE.CLOSING;
            this.tmpHandshakeBytes = null;
        }
    }

    private void decodeFrames(ByteBuffer byteBuffer) {
        try {
        } catch (InvalidDataException e) {
            this.wsl.onWebsocketError(this, e);
            close(e);
            return;
        }
        for (Framedata framedata : this.draft.translateFrame(byteBuffer)) {
            if (DEBUG) {
                PrintStream printStream = System.out;
                printStream.println("matched frame: " + framedata);
            }
            Framedata.Opcode opcode = framedata.getOpcode();
            boolean isFin = framedata.isFin();
            if (opcode == Framedata.Opcode.CLOSING) {
                int i = 1005;
                String str = "";
                if (framedata instanceof CloseFrame) {
                    CloseFrame closeFrame = (CloseFrame) framedata;
                    i = closeFrame.getCloseCode();
                    str = closeFrame.getMessage();
                }
                if (this.readystate == WebSocket.READYSTATE.CLOSING) {
                    closeConnection(i, str, true);
                } else if (this.draft.getCloseHandshakeType() == Draft.CloseHandshakeType.TWOWAY) {
                    close(i, str, true);
                } else {
                    flushAndClose(i, str, false);
                }
            } else if (opcode == Framedata.Opcode.PING) {
                this.wsl.onWebsocketPing(this, framedata);
            } else if (opcode == Framedata.Opcode.PONG) {
                this.wsl.onWebsocketPong(this, framedata);
            } else {
                if (isFin && opcode != Framedata.Opcode.CONTINUOUS) {
                    if (this.current_continuous_frame_opcode != null) {
                        throw new InvalidDataException(1002, "Continuous frame sequence not completed.");
                    }
                    if (opcode == Framedata.Opcode.TEXT) {
                        try {
                            this.wsl.onWebsocketMessage(this, Charsetfunctions.stringUtf8(framedata.getPayloadData()));
                        } catch (RuntimeException e2) {
                            this.wsl.onWebsocketError(this, e2);
                        }
                    } else if (opcode == Framedata.Opcode.BINARY) {
                        try {
                            this.wsl.onWebsocketMessage(this, framedata.getPayloadData());
                        } catch (RuntimeException e3) {
                            this.wsl.onWebsocketError(this, e3);
                        }
                    } else {
                        throw new InvalidDataException(1002, "non control or continious frame expected");
                    }
                    this.wsl.onWebsocketError(this, e);
                    close(e);
                    return;
                }
                if (opcode != Framedata.Opcode.CONTINUOUS) {
                    if (this.current_continuous_frame_opcode != null) {
                        throw new InvalidDataException(1002, "Previous continuous frame sequence not completed.");
                    }
                    this.current_continuous_frame_opcode = opcode;
                } else if (isFin) {
                    if (this.current_continuous_frame_opcode == null) {
                        throw new InvalidDataException(1002, "Continuous frame sequence was not started.");
                    }
                    this.current_continuous_frame_opcode = null;
                } else if (this.current_continuous_frame_opcode == null) {
                    throw new InvalidDataException(1002, "Continuous frame sequence was not started.");
                }
                try {
                    this.wsl.onWebsocketMessageFragment(this, framedata);
                } catch (RuntimeException e4) {
                    this.wsl.onWebsocketError(this, e4);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:86:0x02ba  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x02ed  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean decodeHandshake(java.nio.ByteBuffer r7) {
        /*
            Method dump skipped, instructions count: 785
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mixpanel.android.java_websocket.WebSocketImpl.decodeHandshake(java.nio.ByteBuffer):boolean");
    }

    private Draft.HandshakeState isFlashEdgeCase(ByteBuffer byteBuffer) throws IncompleteHandshakeException {
        byteBuffer.mark();
        if (byteBuffer.limit() > Draft.FLASH_POLICY_REQUEST.length) {
            return Draft.HandshakeState.NOT_MATCHED;
        }
        if (byteBuffer.limit() < Draft.FLASH_POLICY_REQUEST.length) {
            throw new IncompleteHandshakeException(Draft.FLASH_POLICY_REQUEST.length);
        }
        int i = 0;
        while (byteBuffer.hasRemaining()) {
            if (Draft.FLASH_POLICY_REQUEST[i] != byteBuffer.get()) {
                byteBuffer.reset();
                return Draft.HandshakeState.NOT_MATCHED;
            }
            i++;
        }
        return Draft.HandshakeState.MATCHED;
    }

    private void open(Handshakedata handshakedata) {
        if (DEBUG) {
            PrintStream printStream = System.out;
            printStream.println("open using draft: " + this.draft.getClass().getSimpleName());
        }
        this.readystate = WebSocket.READYSTATE.OPEN;
        try {
            this.wsl.onWebsocketOpen(this, handshakedata);
        } catch (RuntimeException e) {
            this.wsl.onWebsocketError(this, e);
        }
    }

    private void send(Collection<Framedata> collection) {
        if (!isOpen()) {
            throw new WebsocketNotConnectedException();
        }
        for (Framedata framedata : collection) {
            sendFrame(framedata);
        }
    }

    private void write(ByteBuffer byteBuffer) {
        if (DEBUG) {
            PrintStream printStream = System.out;
            StringBuilder sb = new StringBuilder();
            sb.append("write(");
            sb.append(byteBuffer.remaining());
            sb.append("): {");
            sb.append(byteBuffer.remaining() > 1000 ? "too big to display" : new String(byteBuffer.array()));
            sb.append("}");
            printStream.println(sb.toString());
        }
        this.outQueue.add(byteBuffer);
        this.wsl.onWriteDemand(this);
    }

    private void write(List<ByteBuffer> list) {
        for (ByteBuffer byteBuffer : list) {
            write(byteBuffer);
        }
    }

    @Override // com.mixpanel.android.java_websocket.WebSocket
    public void close() {
        close(1000);
    }

    @Override // com.mixpanel.android.java_websocket.WebSocket
    public void close(int i) {
        close(i, "", false);
    }

    @Override // com.mixpanel.android.java_websocket.WebSocket
    public void close(int i, String str) {
        close(i, str, false);
    }

    public void close(InvalidDataException invalidDataException) {
        close(invalidDataException.getCloseCode(), invalidDataException.getMessage(), false);
    }

    public void closeConnection() {
        if (this.closedremotely == null) {
            throw new IllegalStateException("this method must be used in conjuction with flushAndClose");
        }
        closeConnection(this.closecode.intValue(), this.closemessage, this.closedremotely.booleanValue());
    }

    @Override // com.mixpanel.android.java_websocket.WebSocket
    public void closeConnection(int i, String str) {
        closeConnection(i, str, false);
    }

    protected void closeConnection(int i, String str, boolean z) {
        synchronized (this) {
            if (this.readystate != WebSocket.READYSTATE.CLOSED) {
                if (this.key != null) {
                    this.key.cancel();
                }
                if (this.channel != null) {
                    try {
                        this.channel.close();
                    } catch (IOException e) {
                        this.wsl.onWebsocketError(this, e);
                    }
                }
                try {
                    this.wsl.onWebsocketClose(this, i, str, z);
                } catch (RuntimeException e2) {
                    this.wsl.onWebsocketError(this, e2);
                }
                if (this.draft != null) {
                    this.draft.reset();
                }
                this.handshakerequest = null;
                this.readystate = WebSocket.READYSTATE.CLOSED;
                this.outQueue.clear();
            }
        }
    }

    protected void closeConnection(int i, boolean z) {
        closeConnection(i, "", z);
    }

    public void decode(ByteBuffer byteBuffer) {
        if (DEBUG) {
            PrintStream printStream = System.out;
            StringBuilder sb = new StringBuilder();
            sb.append("process(");
            sb.append(byteBuffer.remaining());
            sb.append("): {");
            sb.append(byteBuffer.remaining() > 1000 ? "too big to display" : new String(byteBuffer.array(), byteBuffer.position(), byteBuffer.remaining()));
            sb.append("}");
            printStream.println(sb.toString());
        }
        if (this.readystate != WebSocket.READYSTATE.NOT_YET_CONNECTED) {
            decodeFrames(byteBuffer);
        } else if (!decodeHandshake(byteBuffer)) {
        } else {
            if (byteBuffer.hasRemaining()) {
                decodeFrames(byteBuffer);
            } else if (this.tmpHandshakeBytes.hasRemaining()) {
                decodeFrames(this.tmpHandshakeBytes);
            }
        }
    }

    public void eot() {
        if (getReadyState() == WebSocket.READYSTATE.NOT_YET_CONNECTED) {
            closeConnection(-1, true);
        } else if (this.flushandclosestate) {
            closeConnection(this.closecode.intValue(), this.closemessage, this.closedremotely.booleanValue());
        } else if (this.draft.getCloseHandshakeType() == Draft.CloseHandshakeType.NONE) {
            closeConnection(1000, true);
        } else if (this.draft.getCloseHandshakeType() != Draft.CloseHandshakeType.ONEWAY) {
            closeConnection(1006, true);
        } else if (this.role == WebSocket.Role.SERVER) {
            closeConnection(1006, true);
        } else {
            closeConnection(1000, true);
        }
    }

    protected void flushAndClose(int i, String str, boolean z) {
        synchronized (this) {
            if (!this.flushandclosestate) {
                this.closecode = Integer.valueOf(i);
                this.closemessage = str;
                this.closedremotely = Boolean.valueOf(z);
                this.flushandclosestate = true;
                this.wsl.onWriteDemand(this);
                try {
                    this.wsl.onWebsocketClosing(this, i, str, z);
                } catch (RuntimeException e) {
                    this.wsl.onWebsocketError(this, e);
                }
                if (this.draft != null) {
                    this.draft.reset();
                }
                this.handshakerequest = null;
            }
        }
    }

    @Override // com.mixpanel.android.java_websocket.WebSocket
    public Draft getDraft() {
        return this.draft;
    }

    @Override // com.mixpanel.android.java_websocket.WebSocket
    public InetSocketAddress getLocalSocketAddress() {
        return this.wsl.getLocalSocketAddress(this);
    }

    @Override // com.mixpanel.android.java_websocket.WebSocket
    public WebSocket.READYSTATE getReadyState() {
        return this.readystate;
    }

    @Override // com.mixpanel.android.java_websocket.WebSocket
    public InetSocketAddress getRemoteSocketAddress() {
        return this.wsl.getRemoteSocketAddress(this);
    }

    @Override // com.mixpanel.android.java_websocket.WebSocket
    public String getResourceDescriptor() {
        return this.resourceDescriptor;
    }

    @Override // com.mixpanel.android.java_websocket.WebSocket
    public boolean hasBufferedData() {
        return !this.outQueue.isEmpty();
    }

    public int hashCode() {
        return super.hashCode();
    }

    @Override // com.mixpanel.android.java_websocket.WebSocket
    public boolean isClosed() {
        return this.readystate == WebSocket.READYSTATE.CLOSED;
    }

    @Override // com.mixpanel.android.java_websocket.WebSocket
    public boolean isClosing() {
        return this.readystate == WebSocket.READYSTATE.CLOSING;
    }

    @Override // com.mixpanel.android.java_websocket.WebSocket
    public boolean isConnecting() {
        return this.readystate == WebSocket.READYSTATE.CONNECTING;
    }

    @Override // com.mixpanel.android.java_websocket.WebSocket
    public boolean isFlushAndClose() {
        return this.flushandclosestate;
    }

    @Override // com.mixpanel.android.java_websocket.WebSocket
    public boolean isOpen() {
        return this.readystate == WebSocket.READYSTATE.OPEN;
    }

    @Override // com.mixpanel.android.java_websocket.WebSocket
    public void send(String str) throws WebsocketNotConnectedException {
        if (str == null) {
            throw new IllegalArgumentException("Cannot send 'null' data to a WebSocketImpl.");
        }
        send(this.draft.createFrames(str, this.role == WebSocket.Role.CLIENT));
    }

    @Override // com.mixpanel.android.java_websocket.WebSocket
    public void send(ByteBuffer byteBuffer) throws IllegalArgumentException, WebsocketNotConnectedException {
        if (byteBuffer == null) {
            throw new IllegalArgumentException("Cannot send 'null' data to a WebSocketImpl.");
        }
        send(this.draft.createFrames(byteBuffer, this.role == WebSocket.Role.CLIENT));
    }

    @Override // com.mixpanel.android.java_websocket.WebSocket
    public void send(byte[] bArr) throws IllegalArgumentException, WebsocketNotConnectedException {
        send(ByteBuffer.wrap(bArr));
    }

    @Override // com.mixpanel.android.java_websocket.WebSocket
    public void sendFragmentedFrame(Framedata.Opcode opcode, ByteBuffer byteBuffer, boolean z) {
        send(this.draft.continuousFrame(opcode, byteBuffer, z));
    }

    @Override // com.mixpanel.android.java_websocket.WebSocket
    public void sendFrame(Framedata framedata) {
        if (DEBUG) {
            PrintStream printStream = System.out;
            printStream.println("send frame: " + framedata);
        }
        write(this.draft.createBinaryFrame(framedata));
    }

    public void startHandshake(ClientHandshakeBuilder clientHandshakeBuilder) throws InvalidHandshakeException {
        this.handshakerequest = this.draft.postProcessHandshakeRequestAsClient(clientHandshakeBuilder);
        this.resourceDescriptor = clientHandshakeBuilder.getResourceDescriptor();
        try {
            this.wsl.onWebsocketHandshakeSentAsClient(this, this.handshakerequest);
            write(this.draft.createHandshake(this.handshakerequest, this.role));
        } catch (InvalidDataException e) {
            throw new InvalidHandshakeException("Handshake data rejected by client.");
        } catch (RuntimeException e2) {
            this.wsl.onWebsocketError(this, e2);
            throw new InvalidHandshakeException("rejected because of" + e2);
        }
    }

    public String toString() {
        return super.toString();
    }
}
