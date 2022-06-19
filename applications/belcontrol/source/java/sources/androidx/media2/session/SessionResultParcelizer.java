package androidx.media2.session;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionResultParcelizer.class */
public final class SessionResultParcelizer {
    public static SessionResult read(d40 d40Var) {
        SessionResult sessionResult = new SessionResult();
        sessionResult.a = d40Var.m2828v(sessionResult.a, 1);
        sessionResult.b = d40Var.m2825y(sessionResult.b, 2);
        sessionResult.c = d40Var.m2843k(sessionResult.c, 3);
        sessionResult.d = d40Var.m2881I(sessionResult.d, 4);
        return sessionResult;
    }

    public static void write(SessionResult sessionResult, d40 d40Var) {
        d40Var.m2879K(false, false);
        d40Var.m2865Y(sessionResult.a, 1);
        d40Var.m2860b0(sessionResult.b, 2);
        d40Var.m2875O(sessionResult.c, 3);
        d40Var.m2838m0(sessionResult.d, 4);
    }
}
