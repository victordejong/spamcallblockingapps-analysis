package androidx.media2.session;

import android.os.Bundle;
import java.util.Objects;
import p1727n3.p1803i0.AbstractC26405c;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionCommandParcelizer.class */
public final class SessionCommandParcelizer {
    public static SessionCommand read(AbstractC26405c abstractC26405c) {
        SessionCommand sessionCommand = new SessionCommand();
        sessionCommand.f1239a = abstractC26405c.m1927r(sessionCommand.f1239a, 1);
        sessionCommand.f1240b = abstractC26405c.m1924x(sessionCommand.f1240b, 2);
        sessionCommand.f1241c = abstractC26405c.m1931i(sessionCommand.f1241c, 3);
        return sessionCommand;
    }

    public static void write(SessionCommand sessionCommand, AbstractC26405c abstractC26405c) {
        Objects.requireNonNull(abstractC26405c);
        int i = sessionCommand.f1239a;
        abstractC26405c.mo1922B(1);
        abstractC26405c.mo1916I(i);
        String str = sessionCommand.f1240b;
        abstractC26405c.mo1922B(2);
        abstractC26405c.mo1913L(str);
        Bundle bundle = sessionCommand.f1241c;
        abstractC26405c.mo1922B(3);
        abstractC26405c.mo1920D(bundle);
    }
}
