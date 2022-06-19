package okhttp3;

import okio.ByteString;
/* loaded from: classes2-dex2jar.jar:okhttp3/WebSocket.class */
public interface WebSocket {

    /* loaded from: classes2-dex2jar.jar:okhttp3/WebSocket$Factory.class */
    public interface Factory {
        WebSocket newWebSocket(Request request, WebSocketListener webSocketListener);
    }

    void cancel();

    boolean close(int i, String str);

    long queueSize();

    Request request();

    boolean send(String str);

    boolean send(ByteString byteString);
}
