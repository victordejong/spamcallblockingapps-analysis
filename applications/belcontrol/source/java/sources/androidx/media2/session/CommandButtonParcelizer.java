package androidx.media2.session;

import androidx.media2.session.MediaSession;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/CommandButtonParcelizer.class */
public final class CommandButtonParcelizer {
    public static MediaSession.CommandButton read(d40 d40Var) {
        MediaSession.CommandButton commandButton = new MediaSession.CommandButton();
        commandButton.a = d40Var.m2881I(commandButton.a, 1);
        commandButton.b = d40Var.m2828v(commandButton.b, 2);
        commandButton.c = d40Var.m2835o(commandButton.c, 3);
        commandButton.d = d40Var.m2843k(commandButton.d, 4);
        commandButton.e = d40Var.m2847i(commandButton.e, 5);
        return commandButton;
    }

    public static void write(MediaSession.CommandButton commandButton, d40 d40Var) {
        d40Var.m2879K(false, false);
        d40Var.m2838m0(commandButton.a, 1);
        d40Var.m2865Y(commandButton.b, 2);
        d40Var.m2871S(commandButton.c, 3);
        d40Var.m2875O(commandButton.d, 4);
        d40Var.m2877M(commandButton.e, 5);
    }
}
