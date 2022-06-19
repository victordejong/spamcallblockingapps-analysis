package androidx.media2.session;

import android.os.Bundle;
import java.util.Objects;
import p1727n3.p1803i0.AbstractC26405c;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/ConnectionRequestParcelizer.class */
public final class ConnectionRequestParcelizer {
    public static ConnectionRequest read(AbstractC26405c abstractC26405c) {
        ConnectionRequest connectionRequest = new ConnectionRequest();
        connectionRequest.f1216a = abstractC26405c.m1927r(connectionRequest.f1216a, 0);
        connectionRequest.f1217b = abstractC26405c.m1924x(connectionRequest.f1217b, 1);
        connectionRequest.f1218c = abstractC26405c.m1927r(connectionRequest.f1218c, 2);
        connectionRequest.f1219d = abstractC26405c.m1931i(connectionRequest.f1219d, 3);
        return connectionRequest;
    }

    public static void write(ConnectionRequest connectionRequest, AbstractC26405c abstractC26405c) {
        Objects.requireNonNull(abstractC26405c);
        int i = connectionRequest.f1216a;
        abstractC26405c.mo1922B(0);
        abstractC26405c.mo1916I(i);
        String str = connectionRequest.f1217b;
        abstractC26405c.mo1922B(1);
        abstractC26405c.mo1913L(str);
        int i2 = connectionRequest.f1218c;
        abstractC26405c.mo1922B(2);
        abstractC26405c.mo1916I(i2);
        Bundle bundle = connectionRequest.f1219d;
        abstractC26405c.mo1922B(3);
        abstractC26405c.mo1920D(bundle);
    }
}
