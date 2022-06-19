package androidx.media2.session;

import android.os.Bundle;
import androidx.media2.common.MediaItem;
import java.util.Objects;
import p1727n3.p1803i0.AbstractC26405c;
import p1727n3.p1874y.p1907d.C27496b;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionResultParcelizer.class */
public final class SessionResultParcelizer {
    public static SessionResult read(AbstractC26405c abstractC26405c) {
        SessionResult sessionResult = new SessionResult();
        sessionResult.a = abstractC26405c.m1927r(sessionResult.a, 1);
        sessionResult.b = abstractC26405c.m1926t(sessionResult.b, 2);
        sessionResult.c = abstractC26405c.m1931i(sessionResult.c, 3);
        MediaItem m1938A = abstractC26405c.m1938A(sessionResult.e, 4);
        sessionResult.e = m1938A;
        sessionResult.d = m1938A;
        return sessionResult;
    }

    public static void write(SessionResult sessionResult, AbstractC26405c abstractC26405c) {
        Objects.requireNonNull(abstractC26405c);
        MediaItem mediaItem = sessionResult.d;
        if (mediaItem != null) {
            synchronized (mediaItem) {
                if (sessionResult.e == null) {
                    sessionResult.e = C27496b.m198a(sessionResult.d);
                }
            }
        }
        int i = sessionResult.a;
        abstractC26405c.mo1922B(1);
        abstractC26405c.mo1916I(i);
        long j = sessionResult.b;
        abstractC26405c.mo1922B(2);
        abstractC26405c.mo1915J(j);
        Bundle bundle = sessionResult.c;
        abstractC26405c.mo1922B(3);
        abstractC26405c.mo1920D(bundle);
        MediaItem mediaItem2 = sessionResult.e;
        abstractC26405c.mo1922B(4);
        abstractC26405c.m1936N(mediaItem2);
    }
}
