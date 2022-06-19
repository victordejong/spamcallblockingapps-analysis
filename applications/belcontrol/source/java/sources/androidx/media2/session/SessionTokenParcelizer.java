package androidx.media2.session;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionTokenParcelizer.class */
public final class SessionTokenParcelizer {
    public static SessionToken read(d40 d40Var) {
        SessionToken sessionToken = new SessionToken();
        sessionToken.a = d40Var.m2881I(sessionToken.a, 1);
        return sessionToken;
    }

    public static void write(SessionToken sessionToken, d40 d40Var) {
        d40Var.m2879K(false, false);
        d40Var.m2838m0(sessionToken.a, 1);
    }
}
