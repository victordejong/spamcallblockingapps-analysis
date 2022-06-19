package androidx.media2.session;

import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionCommandGroup$a.class */
public final class SessionCommandGroup$a {

    /* renamed from: a */
    public Set<SessionCommand> f1211a = new HashSet();

    /* renamed from: a */
    public SessionCommandGroup$a m6333a(int i) {
        m6324j(i, SessionCommand.i);
        return this;
    }

    /* renamed from: b */
    public SessionCommandGroup$a m6332b(int i) {
        m6324j(i, SessionCommand.d);
        return this;
    }

    /* renamed from: c */
    public SessionCommandGroup$a m6331c(int i, boolean z) {
        m6332b(i);
        m6329e(i);
        if (z) {
            m6330d(i);
        }
        return this;
    }

    /* renamed from: d */
    public SessionCommandGroup$a m6330d(int i) {
        m6324j(i, SessionCommand.f);
        return this;
    }

    /* renamed from: e */
    public SessionCommandGroup$a m6329e(int i) {
        m6324j(i, SessionCommand.e);
        return this;
    }

    /* renamed from: f */
    public SessionCommandGroup$a m6328f(int i) {
        if (i != 1) {
            throw new IllegalArgumentException("Unknown command version " + i);
        }
        m6331c(i, true);
        m6326h(i);
        m6327g(i);
        m6333a(i);
        return this;
    }

    /* renamed from: g */
    public SessionCommandGroup$a m6327g(int i) {
        m6324j(i, SessionCommand.h);
        return this;
    }

    /* renamed from: h */
    public SessionCommandGroup$a m6326h(int i) {
        m6324j(i, SessionCommand.g);
        return this;
    }

    /* renamed from: i */
    public SessionCommandGroup$a m6325i(SessionCommand sessionCommand) {
        Objects.requireNonNull(sessionCommand, "command shouldn't be null");
        this.f1211a.add(sessionCommand);
        return this;
    }

    /* renamed from: j */
    public final void m6324j(int i, b4<Integer, SessionCommand$a> b4Var) {
        for (int i2 = 1; i2 <= i; i2++) {
            SessionCommand$a sessionCommand$a = (SessionCommand$a) b4Var.get(Integer.valueOf(i2));
            for (int i3 = sessionCommand$a.f1209a; i3 <= sessionCommand$a.f1210b; i3++) {
                m6325i(new SessionCommand(i3));
            }
        }
    }

    /* renamed from: k */
    public SessionCommandGroup m6323k() {
        return new SessionCommandGroup(this.f1211a);
    }
}
