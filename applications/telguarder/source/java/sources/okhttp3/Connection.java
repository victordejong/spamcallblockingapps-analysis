package okhttp3;

import java.net.Socket;
import kotlin.Metadata;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\bf\u0018��2\u00020\u0001J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H&J\b\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0007H&J\b\u0010\b\u001a\u00020\tH&¨\u0006\n"}, m400d2 = {"Lokhttp3/Connection;", "", "handshake", "Lokhttp3/Handshake;", "protocol", "Lokhttp3/Protocol;", "route", "Lokhttp3/Route;", "socket", "Ljava/net/Socket;", "okhttp"}, m399k = 1, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:okhttp3/Connection.class */
public interface Connection {
    Handshake handshake();

    Protocol protocol();

    Route route();

    Socket socket();
}
