package okhttp3;

import java.net.Socket;
/* loaded from: classes2-dex2jar.jar:okhttp3/Connection.class */
public interface Connection {
    Handshake handshake();

    Protocol protocol();

    Route route();

    Socket socket();
}
