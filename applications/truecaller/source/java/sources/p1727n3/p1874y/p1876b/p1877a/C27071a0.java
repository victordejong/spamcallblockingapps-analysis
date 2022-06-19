package p1727n3.p1874y.p1876b.p1877a;

import p1727n3.p1874y.p1876b.p1877a.p1895t0.AbstractC27371t;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
/* renamed from: n3.y.b.a.a0 */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/a0.class */
public final class C27071a0 {

    /* renamed from: a */
    public final AbstractC27371t.C27372a f75637a;

    /* renamed from: b */
    public final long f75638b;

    /* renamed from: c */
    public final long f75639c;

    /* renamed from: d */
    public final long f75640d;

    /* renamed from: e */
    public final long f75641e;

    /* renamed from: f */
    public final boolean f75642f;

    /* renamed from: g */
    public final boolean f75643g;

    public C27071a0(AbstractC27371t.C27372a c27372a, long j, long j2, long j3, long j4, boolean z, boolean z2) {
        this.f75637a = c27372a;
        this.f75638b = j;
        this.f75639c = j2;
        this.f75640d = j3;
        this.f75641e = j4;
        this.f75642f = z;
        this.f75643g = z2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C27071a0.class != obj.getClass()) {
            return false;
        }
        C27071a0 c27071a0 = (C27071a0) obj;
        if (this.f75638b != c27071a0.f75638b || this.f75639c != c27071a0.f75639c || this.f75640d != c27071a0.f75640d || this.f75641e != c27071a0.f75641e || this.f75642f != c27071a0.f75642f || this.f75643g != c27071a0.f75643g || !C27445x.m286a(this.f75637a, c27071a0.f75637a)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((((((((((this.f75637a.hashCode() + 527) * 31) + ((int) this.f75638b)) * 31) + ((int) this.f75639c)) * 31) + ((int) this.f75640d)) * 31) + ((int) this.f75641e)) * 31) + (this.f75642f ? 1 : 0)) * 31) + (this.f75643g ? 1 : 0);
    }
}
