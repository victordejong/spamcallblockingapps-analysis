package androidx.work;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:androidx/work/t.class */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    public UUID f6235a;

    /* renamed from: b  reason: collision with root package name */
    public a f6236b;

    /* renamed from: c  reason: collision with root package name */
    public Set<String> f6237c;

    /* renamed from: d  reason: collision with root package name */
    private d f6238d;
    private d e;
    private int f;

    /* loaded from: classes-dex2jar.jar:androidx/work/t$a.class */
    public enum a {
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

    public t(UUID uuid, a aVar, d dVar, List<String> list, d dVar2, int i) {
        this.f6235a = uuid;
        this.f6236b = aVar;
        this.f6238d = dVar;
        this.f6237c = new HashSet(list);
        this.e = dVar2;
        this.f = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        t tVar = (t) obj;
        if (this.f == tVar.f && this.f6235a.equals(tVar.f6235a) && this.f6236b == tVar.f6236b && this.f6238d.equals(tVar.f6238d) && this.f6237c.equals(tVar.f6237c)) {
            return this.e.equals(tVar.e);
        }
        return false;
    }

    public final int hashCode() {
        return (((((((((this.f6235a.hashCode() * 31) + this.f6236b.hashCode()) * 31) + this.f6238d.hashCode()) * 31) + this.f6237c.hashCode()) * 31) + this.e.hashCode()) * 31) + this.f;
    }

    public final String toString() {
        return "WorkInfo{mId='" + this.f6235a + "', mState=" + this.f6236b + ", mOutputData=" + this.f6238d + ", mTags=" + this.f6237c + ", mProgress=" + this.e + '}';
    }
}
