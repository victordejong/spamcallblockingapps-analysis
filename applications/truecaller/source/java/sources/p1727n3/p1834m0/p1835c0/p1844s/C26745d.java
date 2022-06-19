package p1727n3.p1834m0.p1835c0.p1844s;
/* renamed from: n3.m0.c0.s.d */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/s/d.class */
public class C26745d {

    /* renamed from: a */
    public String f74881a;

    /* renamed from: b */
    public Long f74882b;

    public C26745d(String str, long j) {
        this.f74881a = str;
        this.f74882b = Long.valueOf(j);
    }

    public C26745d(String str, boolean z) {
        Object[] objArr = z ? 1 : null;
        this.f74881a = str;
        this.f74882b = Long.valueOf(objArr == 1 ? 1L : 0L);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C26745d)) {
            return false;
        }
        C26745d c26745d = (C26745d) obj;
        if (!this.f74881a.equals(c26745d.f74881a)) {
            return false;
        }
        Long l = this.f74882b;
        Long l2 = c26745d.f74882b;
        if (l != null) {
            z = l.equals(l2);
        } else if (l2 != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f74881a.hashCode();
        Long l = this.f74882b;
        return (hashCode * 31) + (l != null ? l.hashCode() : 0);
    }
}
