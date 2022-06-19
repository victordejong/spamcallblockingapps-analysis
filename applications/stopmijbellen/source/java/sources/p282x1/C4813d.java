package p282x1;
/* renamed from: x1.d */
/* loaded from: classes-dex2jar.jar:x1/d.class */
public class C4813d {

    /* renamed from: a */
    public String f14812a;

    /* renamed from: b */
    public Long f14813b;

    public C4813d(String str, long j) {
        this.f14812a = str;
        this.f14813b = Long.valueOf(j);
    }

    public C4813d(String str, boolean z) {
        Object[] objArr = z ? 1 : null;
        this.f14812a = str;
        this.f14813b = Long.valueOf(objArr == 1 ? 1L : 0L);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4813d)) {
            return false;
        }
        C4813d c4813d = (C4813d) obj;
        if (!this.f14812a.equals(c4813d.f14812a)) {
            return false;
        }
        Long l = this.f14813b;
        Long l2 = c4813d.f14813b;
        if (l != null) {
            z = l.equals(l2);
        } else if (l2 != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f14812a.hashCode();
        Long l = this.f14813b;
        return (hashCode * 31) + (l != null ? l.hashCode() : 0);
    }
}
