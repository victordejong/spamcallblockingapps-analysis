package androidx.media2.session;

import android.util.SparseArray;
import androidx.versionedparcelable.AbstractC2922c;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionCommandGroup.class */
public final class SessionCommandGroup implements AbstractC2922c {

    /* renamed from: a */
    Set<SessionCommand> f8756a;

    /* renamed from: androidx.media2.session.SessionCommandGroup$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionCommandGroup$a.class */
    public static final class C2213a {

        /* renamed from: a */
        private Set<SessionCommand> f8757a;

        public C2213a() {
            this.f8757a = new HashSet();
        }

        public C2213a(SessionCommandGroup sessionCommandGroup) {
            Objects.requireNonNull(sessionCommandGroup, "commandGroup shouldn't be null");
            this.f8757a = sessionCommandGroup.m41131a();
        }

        /* renamed from: a */
        private void m41127a(int i, SparseArray<List<Integer>> sparseArray) {
            for (int i2 = 0; i2 < sparseArray.size() && sparseArray.keyAt(i2) <= i; i2++) {
                for (Integer num : sparseArray.valueAt(i2)) {
                    m41126a(new SessionCommand(num.intValue()));
                }
            }
        }

        /* renamed from: g */
        private C2213a m41119g(int i) {
            m41127a(i, SessionCommand.f8752e);
            return this;
        }

        /* renamed from: a */
        public final C2213a m41128a(int i) {
            if (i <= 0 || i > 2) {
                throw new IllegalArgumentException("Unknown command version ".concat(String.valueOf(i)));
            }
            m41125b(i);
            m41121e(i);
            m41120f(i);
            m41119g(i);
            return this;
        }

        /* renamed from: a */
        public final C2213a m41126a(SessionCommand sessionCommand) {
            this.f8757a.add(sessionCommand);
            return this;
        }

        /* renamed from: a */
        public final SessionCommandGroup m41129a() {
            return new SessionCommandGroup(this.f8757a);
        }

        /* renamed from: b */
        public final C2213a m41125b(int i) {
            m41123c(i);
            m41122d(i);
            return this;
        }

        /* renamed from: b */
        public final C2213a m41124b(SessionCommand sessionCommand) {
            this.f8757a.remove(sessionCommand);
            return this;
        }

        /* renamed from: c */
        public final C2213a m41123c(int i) {
            m41127a(i, SessionCommand.f8748a);
            return this;
        }

        /* renamed from: d */
        public final C2213a m41122d(int i) {
            m41127a(i, SessionCommand.f8749b);
            return this;
        }

        /* renamed from: e */
        public final C2213a m41121e(int i) {
            m41127a(i, SessionCommand.f8750c);
            return this;
        }

        /* renamed from: f */
        public final C2213a m41120f(int i) {
            m41127a(i, SessionCommand.f8751d);
            return this;
        }
    }

    public SessionCommandGroup() {
        this.f8756a = new HashSet();
    }

    public SessionCommandGroup(Collection<SessionCommand> collection) {
        HashSet hashSet = new HashSet();
        this.f8756a = hashSet;
        if (collection != null) {
            hashSet.addAll(collection);
        }
    }

    /* renamed from: a */
    public final Set<SessionCommand> m41131a() {
        return new HashSet(this.f8756a);
    }

    /* renamed from: a */
    public final boolean m41130a(int i) {
        if (i != 0) {
            for (SessionCommand sessionCommand : this.f8756a) {
                if (sessionCommand.f8753f == i) {
                    return true;
                }
            }
            return false;
        }
        throw new IllegalArgumentException("Use hasCommand(Command) for custom command");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SessionCommandGroup)) {
            return false;
        }
        SessionCommandGroup sessionCommandGroup = (SessionCommandGroup) obj;
        Set<SessionCommand> set = this.f8756a;
        return set == null ? sessionCommandGroup.f8756a == null : set.equals(sessionCommandGroup.f8756a);
    }

    public final int hashCode() {
        Set<SessionCommand> set = this.f8756a;
        if (set != null) {
            return set.hashCode();
        }
        return 0;
    }
}
