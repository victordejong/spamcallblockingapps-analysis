package androidx.media2.session;

import android.util.SparseArray;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import p1727n3.p1803i0.AbstractC26407e;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionCommandGroup.class */
public final class SessionCommandGroup implements AbstractC26407e {

    /* renamed from: a */
    public Set<SessionCommand> f1242a;

    /* renamed from: androidx.media2.session.SessionCommandGroup$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionCommandGroup$a.class */
    public static final class C0284a {

        /* renamed from: a */
        public Set<SessionCommand> f1243a = new HashSet();

        /* renamed from: a */
        public final void m42770a(int i, SparseArray<List<Integer>> sparseArray) {
            for (int i2 = 0; i2 < sparseArray.size() && sparseArray.keyAt(i2) <= i; i2++) {
                for (Integer num : sparseArray.valueAt(i2)) {
                    this.f1243a.add(new SessionCommand(num.intValue()));
                }
            }
        }
    }

    public SessionCommandGroup() {
        this.f1242a = new HashSet();
    }

    public SessionCommandGroup(Collection<SessionCommand> collection) {
        HashSet hashSet = new HashSet();
        this.f1242a = hashSet;
        if (collection != null) {
            hashSet.addAll(collection);
        }
    }

    /* renamed from: d */
    public boolean m42771d(int i) {
        if (i != 0) {
            for (SessionCommand sessionCommand : this.f1242a) {
                if (sessionCommand.f1239a == i) {
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
        Set<SessionCommand> set = this.f1242a;
        if (set != null) {
            return set.equals(sessionCommandGroup.f1242a);
        }
        if (sessionCommandGroup.f1242a != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        Set<SessionCommand> set = this.f1242a;
        return set != null ? set.hashCode() : 0;
    }
}
