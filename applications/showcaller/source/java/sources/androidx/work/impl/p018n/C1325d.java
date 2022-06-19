package androidx.work.impl.p018n;
/* renamed from: androidx.work.impl.n.d */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/n/d.class */
public class C1325d {

    /* renamed from: a */
    public String f5550a;

    /* renamed from: b */
    public Long f5551b;

    public C1325d(String str, long j) {
        this.f5550a = str;
        this.f5551b = Long.valueOf(j);
    }

    public C1325d(String str, boolean z) {
        this(str, (z ? 1 : null) == 1 ? 1L : 0L);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1325d)) {
            return false;
        }
        C1325d c1325d = (C1325d) obj;
        if (!this.f5550a.equals(c1325d.f5550a)) {
            return false;
        }
        Long l = this.f5551b;
        Long l2 = c1325d.f5551b;
        if (l != null) {
            z = l.equals(l2);
        } else if (l2 != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f5550a.hashCode();
        Long l = this.f5551b;
        return (hashCode * 31) + (l != null ? l.hashCode() : 0);
    }
}
