package p000;

import hp;
/* renamed from: ah */
/* loaded from: classes-dex2jar.jar:ah.class */
public final class C0036ah {

    /* renamed from: a */
    public final hp.a f292a;

    /* renamed from: b */
    public final long f293b;

    /* renamed from: c */
    public final long f294c;

    /* renamed from: d */
    public final long f295d;

    /* renamed from: e */
    public final long f296e;

    /* renamed from: f */
    public final boolean f297f;

    /* renamed from: g */
    public final boolean f298g;

    public C0036ah(hp.a aVar, long j, long j2, long j3, long j4, boolean z, boolean z2) {
        this.f292a = aVar;
        this.f293b = j;
        this.f294c = j2;
        this.f295d = j3;
        this.f296e = j4;
        this.f297f = z;
        this.f298g = z2;
    }

    /* renamed from: a */
    public C0036ah m7213a(long j) {
        return j == this.f294c ? this : new C0036ah(this.f292a, this.f293b, j, this.f295d, this.f296e, this.f297f, this.f298g);
    }

    /* renamed from: b */
    public C0036ah m7212b(long j) {
        return j == this.f293b ? this : new C0036ah(this.f292a, j, this.f294c, this.f295d, this.f296e, this.f297f, this.f298g);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C0036ah.class != obj.getClass()) {
            return false;
        }
        C0036ah c0036ah = (C0036ah) obj;
        if (this.f293b != c0036ah.f293b || this.f294c != c0036ah.f294c || this.f295d != c0036ah.f295d || this.f296e != c0036ah.f296e || this.f297f != c0036ah.f297f || this.f298g != c0036ah.f298g || !nu.b(this.f292a, c0036ah.f292a)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((((((((((527 + this.f292a.hashCode()) * 31) + ((int) this.f293b)) * 31) + ((int) this.f294c)) * 31) + ((int) this.f295d)) * 31) + ((int) this.f296e)) * 31) + (this.f297f ? 1 : 0)) * 31) + (this.f298g ? 1 : 0);
    }
}
