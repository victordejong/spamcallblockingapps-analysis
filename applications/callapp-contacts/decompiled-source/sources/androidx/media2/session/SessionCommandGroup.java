package androidx.media2.session;

import android.util.SparseArray;
import androidx.versionedparcelable.c;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionCommandGroup.class */
public final class SessionCommandGroup implements c {

    /* renamed from: a  reason: collision with root package name */
    Set<SessionCommand> f4544a;

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionCommandGroup$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private Set<SessionCommand> f4545a;

        public a() {
            this.f4545a = new HashSet();
        }

        public a(SessionCommandGroup sessionCommandGroup) {
            Objects.requireNonNull(sessionCommandGroup, "commandGroup shouldn't be null");
            this.f4545a = sessionCommandGroup.a();
        }

        private void a(int i, SparseArray<List<Integer>> sparseArray) {
            for (int i2 = 0; i2 < sparseArray.size() && sparseArray.keyAt(i2) <= i; i2++) {
                for (Integer num : sparseArray.valueAt(i2)) {
                    a(new SessionCommand(num.intValue()));
                }
            }
        }

        private a g(int i) {
            a(i, SessionCommand.e);
            return this;
        }

        public final a a(int i) {
            if (i <= 0 || i > 2) {
                throw new IllegalArgumentException("Unknown command version ".concat(String.valueOf(i)));
            }
            b(i);
            e(i);
            f(i);
            g(i);
            return this;
        }

        public final a a(SessionCommand sessionCommand) {
            this.f4545a.add(sessionCommand);
            return this;
        }

        public final SessionCommandGroup a() {
            return new SessionCommandGroup(this.f4545a);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final a b(int i) {
            c(i);
            d(i);
            return this;
        }

        public final a b(SessionCommand sessionCommand) {
            this.f4545a.remove(sessionCommand);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final a c(int i) {
            a(i, SessionCommand.f4540a);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final a d(int i) {
            a(i, SessionCommand.f4541b);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final a e(int i) {
            a(i, SessionCommand.f4542c);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final a f(int i) {
            a(i, SessionCommand.f4543d);
            return this;
        }
    }

    public SessionCommandGroup() {
        this.f4544a = new HashSet();
    }

    public SessionCommandGroup(Collection<SessionCommand> collection) {
        HashSet hashSet = new HashSet();
        this.f4544a = hashSet;
        if (collection != null) {
            hashSet.addAll(collection);
        }
    }

    public final Set<SessionCommand> a() {
        return new HashSet(this.f4544a);
    }

    public final boolean a(int i) {
        if (i != 0) {
            for (SessionCommand sessionCommand : this.f4544a) {
                if (sessionCommand.f == i) {
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
        Set<SessionCommand> set = this.f4544a;
        return set == null ? sessionCommandGroup.f4544a == null : set.equals(sessionCommandGroup.f4544a);
    }

    public final int hashCode() {
        Set<SessionCommand> set = this.f4544a;
        if (set != null) {
            return set.hashCode();
        }
        return 0;
    }
}
