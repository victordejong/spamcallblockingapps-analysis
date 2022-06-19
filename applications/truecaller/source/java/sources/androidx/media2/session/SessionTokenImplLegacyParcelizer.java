package androidx.media2.session;

import android.content.ComponentName;
import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.Objects;
import p1727n3.p1803i0.AbstractC26405c;
import p1727n3.p1803i0.AbstractC26407e;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionTokenImplLegacyParcelizer.class */
public final class SessionTokenImplLegacyParcelizer {
    public static SessionTokenImplLegacy read(AbstractC26405c abstractC26405c) {
        SessionTokenImplLegacy sessionTokenImplLegacy = new SessionTokenImplLegacy();
        sessionTokenImplLegacy.b = abstractC26405c.m1931i(sessionTokenImplLegacy.b, 1);
        sessionTokenImplLegacy.c = abstractC26405c.m1927r(sessionTokenImplLegacy.c, 2);
        sessionTokenImplLegacy.d = abstractC26405c.m1927r(sessionTokenImplLegacy.d, 3);
        sessionTokenImplLegacy.e = (ComponentName) abstractC26405c.m1925v(sessionTokenImplLegacy.e, 4);
        sessionTokenImplLegacy.f = abstractC26405c.m1924x(sessionTokenImplLegacy.f, 5);
        sessionTokenImplLegacy.g = abstractC26405c.m1931i(sessionTokenImplLegacy.g, 6);
        sessionTokenImplLegacy.e();
        return sessionTokenImplLegacy;
    }

    public static void write(SessionTokenImplLegacy sessionTokenImplLegacy, AbstractC26405c abstractC26405c) {
        AbstractC26407e abstractC26407e;
        Objects.requireNonNull(abstractC26405c);
        MediaSessionCompat.Token token = sessionTokenImplLegacy.a;
        if (token != null) {
            synchronized (token) {
                MediaSessionCompat.Token token2 = sessionTokenImplLegacy.a;
                synchronized (token2.f35a) {
                    abstractC26407e = token2.f38d;
                }
                sessionTokenImplLegacy.a.m43178a(null);
                sessionTokenImplLegacy.b = sessionTokenImplLegacy.a.m43177b();
                sessionTokenImplLegacy.a.m43178a(abstractC26407e);
            }
        } else {
            sessionTokenImplLegacy.b = null;
        }
        Bundle bundle = sessionTokenImplLegacy.b;
        abstractC26405c.mo1922B(1);
        abstractC26405c.mo1920D(bundle);
        int i = sessionTokenImplLegacy.c;
        abstractC26405c.mo1922B(2);
        abstractC26405c.mo1916I(i);
        int i2 = sessionTokenImplLegacy.d;
        abstractC26405c.mo1922B(3);
        abstractC26405c.mo1916I(i2);
        ComponentName componentName = sessionTokenImplLegacy.e;
        abstractC26405c.mo1922B(4);
        abstractC26405c.mo1914K(componentName);
        String str = sessionTokenImplLegacy.f;
        abstractC26405c.mo1922B(5);
        abstractC26405c.mo1913L(str);
        Bundle bundle2 = sessionTokenImplLegacy.g;
        abstractC26405c.mo1922B(6);
        abstractC26405c.mo1920D(bundle2);
    }
}
