package androidx.media2.session;

import android.content.ComponentName;
import android.os.Bundle;
import android.os.IBinder;
import java.util.Objects;
import p1727n3.p1803i0.AbstractC26405c;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionTokenImplBaseParcelizer.class */
public final class SessionTokenImplBaseParcelizer {
    public static SessionTokenImplBase read(AbstractC26405c abstractC26405c) {
        SessionTokenImplBase sessionTokenImplBase = new SessionTokenImplBase();
        sessionTokenImplBase.a = abstractC26405c.m1927r(sessionTokenImplBase.a, 1);
        sessionTokenImplBase.b = abstractC26405c.m1927r(sessionTokenImplBase.b, 2);
        sessionTokenImplBase.c = abstractC26405c.m1924x(sessionTokenImplBase.c, 3);
        sessionTokenImplBase.d = abstractC26405c.m1924x(sessionTokenImplBase.d, 4);
        IBinder iBinder = sessionTokenImplBase.e;
        if (abstractC26405c.mo1905n(5)) {
            iBinder = abstractC26405c.mo1899y();
        }
        sessionTokenImplBase.e = iBinder;
        sessionTokenImplBase.f = (ComponentName) abstractC26405c.m1925v(sessionTokenImplBase.f, 6);
        sessionTokenImplBase.g = abstractC26405c.m1931i(sessionTokenImplBase.g, 7);
        return sessionTokenImplBase;
    }

    public static void write(SessionTokenImplBase sessionTokenImplBase, AbstractC26405c abstractC26405c) {
        Objects.requireNonNull(abstractC26405c);
        int i = sessionTokenImplBase.a;
        abstractC26405c.mo1922B(1);
        abstractC26405c.mo1916I(i);
        int i2 = sessionTokenImplBase.b;
        abstractC26405c.mo1922B(2);
        abstractC26405c.mo1916I(i2);
        String str = sessionTokenImplBase.c;
        abstractC26405c.mo1922B(3);
        abstractC26405c.mo1913L(str);
        String str2 = sessionTokenImplBase.d;
        abstractC26405c.mo1922B(4);
        abstractC26405c.mo1913L(str2);
        IBinder iBinder = sessionTokenImplBase.e;
        abstractC26405c.mo1922B(5);
        abstractC26405c.mo1912M(iBinder);
        ComponentName componentName = sessionTokenImplBase.f;
        abstractC26405c.mo1922B(6);
        abstractC26405c.mo1914K(componentName);
        Bundle bundle = sessionTokenImplBase.g;
        abstractC26405c.mo1922B(7);
        abstractC26405c.mo1920D(bundle);
    }
}
