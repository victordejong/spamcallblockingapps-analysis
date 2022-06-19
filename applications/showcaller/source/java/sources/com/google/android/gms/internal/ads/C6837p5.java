package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.p5 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/p5.class */
final class C6837p5 {

    /* renamed from: a */
    public final mk3 f27870a;

    /* renamed from: b */
    public final long f27871b;

    /* renamed from: c */
    public final long f27872c;

    /* renamed from: d */
    public final long f27873d;

    /* renamed from: e */
    public final long f27874e;

    /* renamed from: f */
    public final boolean f27875f;

    /* renamed from: g */
    public final boolean f27876g;

    /* renamed from: h */
    public final boolean f27877h;

    /* renamed from: i */
    public final boolean f27878i;

    public C6837p5(mk3 mk3Var, long j, long j2, long j3, long j4, boolean z, boolean z2, boolean z3, boolean z4) {
        C7173y8.m8898a(!z4 || z2);
        C7173y8.m8898a(z3 ? z2 : true);
        this.f27870a = mk3Var;
        this.f27871b = j;
        this.f27872c = j2;
        this.f27873d = j3;
        this.f27874e = j4;
        this.f27875f = false;
        this.f27876g = z2;
        this.f27877h = z3;
        this.f27878i = z4;
    }

    /* renamed from: a */
    public final C6837p5 m12379a(long j) {
        return j == this.f27871b ? this : new C6837p5(this.f27870a, j, this.f27872c, this.f27873d, this.f27874e, false, this.f27876g, this.f27877h, this.f27878i);
    }

    /* renamed from: b */
    public final C6837p5 m12378b(long j) {
        return j == this.f27872c ? this : new C6837p5(this.f27870a, this.f27871b, j, this.f27873d, this.f27874e, false, this.f27876g, this.f27877h, this.f27878i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C6837p5.class != obj.getClass()) {
            return false;
        }
        C6837p5 c6837p5 = (C6837p5) obj;
        return this.f27871b == c6837p5.f27871b && this.f27872c == c6837p5.f27872c && this.f27873d == c6837p5.f27873d && this.f27874e == c6837p5.f27874e && this.f27876g == c6837p5.f27876g && this.f27877h == c6837p5.f27877h && this.f27878i == c6837p5.f27878i && C7101wa.m9720H(this.f27870a, c6837p5.f27870a);
    }

    public final int hashCode() {
        return ((((((((((((((this.f27870a.hashCode() + 527) * 31) + ((int) this.f27871b)) * 31) + ((int) this.f27872c)) * 31) + ((int) this.f27873d)) * 31) + ((int) this.f27874e)) * 961) + (this.f27876g ? 1 : 0)) * 31) + (this.f27877h ? 1 : 0)) * 31) + (this.f27878i ? 1 : 0);
    }
}
