package com.mixpanel.android.viewcrawler;

import com.mixpanel.android.java_websocket.client.WebSocketClient;
import com.mixpanel.android.java_websocket.drafts.Draft_17;
import com.mixpanel.android.java_websocket.exceptions.NotSendableException;
import com.mixpanel.android.java_websocket.exceptions.WebsocketNotConnectedException;
import com.mixpanel.android.java_websocket.framing.Framedata;
import com.mixpanel.android.java_websocket.handshake.ServerHandshake;
import com.mixpanel.android.util.MPLog;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;
import java.net.URI;
import java.nio.ByteBuffer;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/EditorConnection.class */
public class EditorConnection {
    private static final int CONNECT_TIMEOUT = 5000;
    private static final ByteBuffer EMPTY_BYTE_BUFFER = ByteBuffer.allocate(0);
    private static final String LOGTAG = "MixpanelAPI.EditorCnctn";
    private final EditorClient mClient;
    private final Editor mService;
    private final URI mURI;

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/EditorConnection$Editor.class */
    public interface Editor {
        void bindEvents(JSONObject jSONObject);

        void cleanup();

        void clearEdits(JSONObject jSONObject);

        void performEdit(JSONObject jSONObject);

        void sendDeviceInfo();

        void sendSnapshot(JSONObject jSONObject);

        void setTweaks(JSONObject jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/EditorConnection$EditorClient.class */
    public class EditorClient extends WebSocketClient {
        public EditorClient(URI uri, int i, Socket socket) throws InterruptedException {
            super(uri, new Draft_17(), null, i);
            setSocket(socket);
        }

        @Override // com.mixpanel.android.java_websocket.client.WebSocketClient
        public void onClose(int i, String str, boolean z) {
            MPLog.m307v(EditorConnection.LOGTAG, "WebSocket closed. Code: " + i + ", reason: " + str + "\nURI: " + EditorConnection.this.mURI);
            EditorConnection.this.mService.cleanup();
        }

        @Override // com.mixpanel.android.java_websocket.client.WebSocketClient
        public void onError(Exception exc) {
            if (exc == null || exc.getMessage() == null) {
                MPLog.m311e(EditorConnection.LOGTAG, "Unknown websocket error occurred");
                return;
            }
            MPLog.m311e(EditorConnection.LOGTAG, "Websocket Error: " + exc.getMessage());
        }

        @Override // com.mixpanel.android.java_websocket.client.WebSocketClient
        public void onMessage(String str) {
            MPLog.m307v(EditorConnection.LOGTAG, "Received message from editor:\n" + str);
            try {
                JSONObject jSONObject = new JSONObject(str);
                String string = jSONObject.getString("type");
                if (string.equals("device_info_request")) {
                    EditorConnection.this.mService.sendDeviceInfo();
                } else if (string.equals("snapshot_request")) {
                    EditorConnection.this.mService.sendSnapshot(jSONObject);
                } else if (string.equals("change_request")) {
                    EditorConnection.this.mService.performEdit(jSONObject);
                } else if (string.equals("event_binding_request")) {
                    EditorConnection.this.mService.bindEvents(jSONObject);
                } else if (string.equals("clear_request")) {
                    EditorConnection.this.mService.clearEdits(jSONObject);
                } else if (string.equals("tweak_request")) {
                    EditorConnection.this.mService.setTweaks(jSONObject);
                }
            } catch (JSONException e) {
                MPLog.m310e(EditorConnection.LOGTAG, "Bad JSON received:" + str, e);
            }
        }

        @Override // com.mixpanel.android.java_websocket.client.WebSocketClient
        public void onOpen(ServerHandshake serverHandshake) {
            MPLog.m307v(EditorConnection.LOGTAG, "Websocket connected");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/EditorConnection$EditorConnectionException.class */
    public class EditorConnectionException extends IOException {
        private static final long serialVersionUID = -1884953175346045636L;

        public EditorConnectionException(Throwable th) {
            super(th.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/viewcrawler/EditorConnection$WebSocketOutputStream.class */
    public class WebSocketOutputStream extends OutputStream {
        private WebSocketOutputStream() {
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws EditorConnectionException {
            try {
                EditorConnection.this.mClient.sendFragmentedFrame(Framedata.Opcode.TEXT, EditorConnection.EMPTY_BYTE_BUFFER, true);
            } catch (NotSendableException e) {
                throw new EditorConnectionException(e);
            } catch (WebsocketNotConnectedException e2) {
                throw new EditorConnectionException(e2);
            }
        }

        @Override // java.io.OutputStream
        public void write(int i) throws EditorConnectionException {
            write(new byte[]{(byte) i}, 0, 1);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) throws EditorConnectionException {
            write(bArr, 0, bArr.length);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws EditorConnectionException {
            try {
                EditorConnection.this.mClient.sendFragmentedFrame(Framedata.Opcode.TEXT, ByteBuffer.wrap(bArr, i, i2), false);
            } catch (NotSendableException e) {
                throw new EditorConnectionException(e);
            } catch (WebsocketNotConnectedException e2) {
                throw new EditorConnectionException(e2);
            }
        }
    }

    public EditorConnection(URI uri, Editor editor, Socket socket) throws EditorConnectionException {
        this.mService = editor;
        this.mURI = uri;
        try {
            this.mClient = new EditorClient(uri, CONNECT_TIMEOUT, socket);
            this.mClient.connectBlocking();
        } catch (InterruptedException e) {
            throw new EditorConnectionException(e);
        }
    }

    public BufferedOutputStream getBufferedOutputStream() {
        return new BufferedOutputStream(new WebSocketOutputStream());
    }

    public boolean isConnected() {
        return this.mClient.isOpen();
    }

    public boolean isValid() {
        return !this.mClient.isClosed() && !this.mClient.isClosing() && !this.mClient.isFlushAndClose();
    }
}
