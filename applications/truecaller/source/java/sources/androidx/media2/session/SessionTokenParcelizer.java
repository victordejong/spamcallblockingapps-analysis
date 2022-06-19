package androidx.media2.session;

import androidx.media2.session.SessionToken;
import java.util.Objects;
import p1727n3.p1803i0.AbstractC26405c;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionTokenParcelizer.class */
public final class SessionTokenParcelizer {
    public static SessionToken read(AbstractC26405c abstractC26405c) {
        SessionToken sessionToken = new SessionToken();
        sessionToken.f1244a = (SessionToken.SessionTokenImpl) abstractC26405c.m1938A(sessionToken.f1244a, 1);
        return sessionToken;
    }

    public static void write(SessionToken sessionToken, AbstractC26405c abstractC26405c) {
        Objects.requireNonNull(abstractC26405c);
        SessionToken.SessionTokenImpl sessionTokenImpl = sessionToken.f1244a;
        abstractC26405c.mo1922B(1);
        abstractC26405c.m1936N(sessionTokenImpl);
    }
}
