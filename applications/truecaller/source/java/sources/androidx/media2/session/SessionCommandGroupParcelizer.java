package androidx.media2.session;

import java.util.Objects;
import java.util.Set;
import p1727n3.p1788g.C26177c;
import p1727n3.p1803i0.AbstractC26405c;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionCommandGroupParcelizer.class */
public final class SessionCommandGroupParcelizer {
    public static SessionCommandGroup read(AbstractC26405c abstractC26405c) {
        SessionCommandGroup sessionCommandGroup = new SessionCommandGroup();
        sessionCommandGroup.f1242a = !abstractC26405c.mo1905n(1) ? sessionCommandGroup.f1242a : (Set) abstractC26405c.m1929m(new C26177c(0));
        return sessionCommandGroup;
    }

    public static void write(SessionCommandGroup sessionCommandGroup, AbstractC26405c abstractC26405c) {
        Objects.requireNonNull(abstractC26405c);
        abstractC26405c.m1937G(sessionCommandGroup.f1242a, 1);
    }
}
