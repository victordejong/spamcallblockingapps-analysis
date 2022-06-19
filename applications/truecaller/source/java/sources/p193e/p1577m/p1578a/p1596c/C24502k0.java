package p193e.p1577m.p1578a.p1596c;

import p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24531p;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.k0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/k0.class */
public final class C24502k0 {

    /* renamed from: a */
    public final AbstractC24531p.C24532a f68415a;

    /* renamed from: b */
    public final long f68416b;

    /* renamed from: c */
    public final long f68417c;

    /* renamed from: d */
    public final long f68418d;

    /* renamed from: e */
    public final long f68419e;

    /* renamed from: f */
    public final boolean f68420f;

    /* renamed from: g */
    public final boolean f68421g;

    public C24502k0(AbstractC24531p.C24532a c24532a, long j, long j2, long j3, long j4, boolean z, boolean z2) {
        this.f68415a = c24532a;
        this.f68416b = j;
        this.f68417c = j2;
        this.f68418d = j3;
        this.f68419e = j4;
        this.f68420f = z;
        this.f68421g = z2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C24502k0.class != obj.getClass()) {
            return false;
        }
        C24502k0 c24502k0 = (C24502k0) obj;
        if (this.f68416b != c24502k0.f68416b || this.f68417c != c24502k0.f68417c || this.f68418d != c24502k0.f68418d || this.f68419e != c24502k0.f68419e || this.f68420f != c24502k0.f68420f || this.f68421g != c24502k0.f68421g || !C24773d0.m4623a(this.f68415a, c24502k0.f68415a)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((((((((((this.f68415a.hashCode() + 527) * 31) + ((int) this.f68416b)) * 31) + ((int) this.f68417c)) * 31) + ((int) this.f68418d)) * 31) + ((int) this.f68419e)) * 31) + (this.f68420f ? 1 : 0)) * 31) + (this.f68421g ? 1 : 0);
    }
}
