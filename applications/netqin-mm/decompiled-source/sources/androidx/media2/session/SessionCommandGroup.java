package androidx.media2.session;

import androidx.media2.session.SessionCommand;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import p012b.p035f.C0780a;
import p012b.p042i.p053o.C0943c;
import p012b.p130z.AbstractC1978c;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionCommandGroup.class */
public final class SessionCommandGroup implements AbstractC1978c {

    /* renamed from: a */
    public Set<SessionCommand> f2226a;

    /* renamed from: androidx.media2.session.SessionCommandGroup$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionCommandGroup$a.class */
    public static final class C0431a {

        /* renamed from: a */
        public Set<SessionCommand> f2227a = new HashSet();

        /* renamed from: a */
        public C0431a m37725a(int i) {
            m37724a(i, SessionCommand.f2220i);
            return this;
        }

        /* renamed from: a */
        public C0431a m37723a(int i, boolean z) {
            m37721b(i);
            m37719d(i);
            if (z) {
                m37720c(i);
            }
            return this;
        }

        /* renamed from: a */
        public C0431a m37722a(SessionCommand sessionCommand) {
            if (sessionCommand != null) {
                this.f2227a.add(sessionCommand);
                return this;
            }
            throw new NullPointerException("command shouldn't be null");
        }

        /* renamed from: a */
        public SessionCommandGroup m37726a() {
            return new SessionCommandGroup(this.f2227a);
        }

        /* renamed from: a */
        public final void m37724a(int i, C0780a<Integer, SessionCommand.C0430a> aVar) {
            for (int i2 = 1; i2 <= i; i2++) {
                SessionCommand.C0430a aVar2 = aVar.get(Integer.valueOf(i2));
                for (int i3 = aVar2.f2224a; i3 <= aVar2.f2225b; i3++) {
                    m37722a(new SessionCommand(i3));
                }
            }
        }

        /* renamed from: b */
        public C0431a m37721b(int i) {
            m37724a(i, SessionCommand.f2215d);
            return this;
        }

        /* renamed from: c */
        public C0431a m37720c(int i) {
            m37724a(i, SessionCommand.f2217f);
            return this;
        }

        /* renamed from: d */
        public C0431a m37719d(int i) {
            m37724a(i, SessionCommand.f2216e);
            return this;
        }

        /* renamed from: e */
        public C0431a m37718e(int i) {
            if (i == 1) {
                m37723a(i, true);
                m37716g(i);
                m37717f(i);
                m37725a(i);
                return this;
            }
            throw new IllegalArgumentException("Unknown command version " + i);
        }

        /* renamed from: f */
        public C0431a m37717f(int i) {
            m37724a(i, SessionCommand.f2219h);
            return this;
        }

        /* renamed from: g */
        public C0431a m37716g(int i) {
            m37724a(i, SessionCommand.f2218g);
            return this;
        }
    }

    public SessionCommandGroup() {
        this.f2226a = new HashSet();
    }

    public SessionCommandGroup(Collection<SessionCommand> collection) {
        HashSet hashSet = new HashSet();
        this.f2226a = hashSet;
        if (collection != null) {
            hashSet.addAll(collection);
        }
    }

    /* renamed from: a */
    public boolean m37727a(int i) {
        if (i != 0) {
            for (SessionCommand sessionCommand : this.f2226a) {
                if (sessionCommand.m37728e() == i) {
                    return true;
                }
            }
            return false;
        }
        throw new IllegalArgumentException("Use hasCommand(Command) for custom command");
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SessionCommandGroup)) {
            return false;
        }
        SessionCommandGroup sessionCommandGroup = (SessionCommandGroup) obj;
        Set<SessionCommand> set = this.f2226a;
        if (set != null) {
            return set.equals(sessionCommandGroup.f2226a);
        }
        if (sessionCommandGroup.f2226a != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return C0943c.m35449a(this.f2226a);
    }
}
