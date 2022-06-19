package androidx.media2.session;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionCommandGroupParcelizer.class */
public final class SessionCommandGroupParcelizer {
    public static SessionCommandGroup read(d40 d40Var) {
        SessionCommandGroup sessionCommandGroup = new SessionCommandGroup();
        sessionCommandGroup.a = d40Var.m2887C(sessionCommandGroup.a, 1);
        return sessionCommandGroup;
    }

    public static void write(SessionCommandGroup sessionCommandGroup, d40 d40Var) {
        d40Var.m2879K(false, false);
        d40Var.m2852f0(sessionCommandGroup.a, 1);
    }
}
