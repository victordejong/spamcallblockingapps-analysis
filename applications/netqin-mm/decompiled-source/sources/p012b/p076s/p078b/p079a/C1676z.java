package p012b.p076s.p078b.p079a;

import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1634r;
/* renamed from: b.s.b.a.z */
/* loaded from: classes-dex2jar.jar:b/s/b/a/z.class */
public final class C1676z {

    /* renamed from: a */
    public final AbstractC1634r.C1635a f6860a;

    /* renamed from: b */
    public final long f6861b;

    /* renamed from: c */
    public final long f6862c;

    /* renamed from: d */
    public final long f6863d;

    /* renamed from: e */
    public final long f6864e;

    /* renamed from: f */
    public final boolean f6865f;

    /* renamed from: g */
    public final boolean f6866g;

    public C1676z(AbstractC1634r.C1635a aVar, long j, long j2, long j3, long j4, boolean z, boolean z2) {
        this.f6860a = aVar;
        this.f6861b = j;
        this.f6862c = j2;
        this.f6863d = j3;
        this.f6864e = j4;
        this.f6865f = z;
        this.f6866g = z2;
    }

    /* renamed from: a */
    public C1676z m32396a(long j) {
        return j == this.f6862c ? this : new C1676z(this.f6860a, this.f6861b, j, this.f6863d, this.f6864e, this.f6865f, this.f6866g);
    }

    /* renamed from: b */
    public C1676z m32395b(long j) {
        return j == this.f6861b ? this : new C1676z(this.f6860a, j, this.f6862c, this.f6863d, this.f6864e, this.f6865f, this.f6866g);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C1676z.class != obj.getClass()) {
            return false;
        }
        C1676z zVar = (C1676z) obj;
        if (!(this.f6861b == zVar.f6861b && this.f6862c == zVar.f6862c && this.f6863d == zVar.f6863d && this.f6864e == zVar.f6864e && this.f6865f == zVar.f6865f && this.f6866g == zVar.f6866g && C1167d0.m34478a(this.f6860a, zVar.f6860a))) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((((((((((527 + this.f6860a.hashCode()) * 31) + ((int) this.f6861b)) * 31) + ((int) this.f6862c)) * 31) + ((int) this.f6863d)) * 31) + ((int) this.f6864e)) * 31) + (this.f6865f ? 1 : 0)) * 31) + (this.f6866g ? 1 : 0);
    }
}
