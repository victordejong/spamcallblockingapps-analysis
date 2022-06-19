package androidx.media2.session;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionCommandParcelizer.class */
public final class SessionCommandParcelizer {
    public static SessionCommand read(d40 d40Var) {
        SessionCommand sessionCommand = new SessionCommand();
        sessionCommand.a = d40Var.m2828v(sessionCommand.a, 1);
        sessionCommand.b = d40Var.m2885E(sessionCommand.b, 2);
        sessionCommand.c = d40Var.m2843k(sessionCommand.c, 3);
        return sessionCommand;
    }

    public static void write(SessionCommand sessionCommand, d40 d40Var) {
        d40Var.m2879K(false, false);
        d40Var.m2865Y(sessionCommand.a, 1);
        d40Var.m2848h0(sessionCommand.b, 2);
        d40Var.m2875O(sessionCommand.c, 3);
    }
}
