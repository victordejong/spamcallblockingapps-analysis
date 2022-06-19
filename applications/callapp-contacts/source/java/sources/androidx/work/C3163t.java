package androidx.work;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;
/* renamed from: androidx.work.t */
/* loaded from: classes-dex2jar.jar:androidx/work/t.class */
public final class C3163t {

    /* renamed from: a */
    public UUID f11513a;

    /* renamed from: b */
    public EnumC3164a f11514b;

    /* renamed from: c */
    public Set<String> f11515c;

    /* renamed from: d */
    private C2992d f11516d;

    /* renamed from: e */
    private C2992d f11517e;

    /* renamed from: f */
    private int f11518f;

    /* renamed from: androidx.work.t$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/t$a.class */
    public enum EnumC3164a {
        ENQUEUED,
        RUNNING,
        SUCCEEDED,
        FAILED,
        BLOCKED,
        CANCELLED;

        public final boolean isFinished() {
            return this == SUCCEEDED || this == FAILED || this == CANCELLED;
        }
    }

    public C3163t(UUID uuid, EnumC3164a enumC3164a, C2992d c2992d, List<String> list, C2992d c2992d2, int i) {
        this.f11513a = uuid;
        this.f11514b = enumC3164a;
        this.f11516d = c2992d;
        this.f11515c = new HashSet(list);
        this.f11517e = c2992d2;
        this.f11518f = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C3163t c3163t = (C3163t) obj;
        if (this.f11518f != c3163t.f11518f || !this.f11513a.equals(c3163t.f11513a) || this.f11514b != c3163t.f11514b || !this.f11516d.equals(c3163t.f11516d) || !this.f11515c.equals(c3163t.f11515c)) {
            return false;
        }
        return this.f11517e.equals(c3163t.f11517e);
    }

    public final int hashCode() {
        return (((((((((this.f11513a.hashCode() * 31) + this.f11514b.hashCode()) * 31) + this.f11516d.hashCode()) * 31) + this.f11515c.hashCode()) * 31) + this.f11517e.hashCode()) * 31) + this.f11518f;
    }

    public final String toString() {
        return "WorkInfo{mId='" + this.f11513a + "', mState=" + this.f11514b + ", mOutputData=" + this.f11516d + ", mTags=" + this.f11515c + ", mProgress=" + this.f11517e + '}';
    }
}
