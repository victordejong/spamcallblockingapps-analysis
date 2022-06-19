package com.google.android.gms.internal.ads;

import android.net.Uri;
/* renamed from: com.google.android.gms.internal.ads.o7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/o7.class */
public final class C6802o7 {

    /* renamed from: c */
    private static final C6615j5 f27452c;

    /* renamed from: e */
    public Object f27454e = f27450a;

    /* renamed from: f */
    public C6615j5 f27455f = f27452c;

    /* renamed from: g */
    public long f27456g;

    /* renamed from: h */
    public long f27457h;

    /* renamed from: i */
    public long f27458i;

    /* renamed from: j */
    public boolean f27459j;

    /* renamed from: k */
    public boolean f27460k;
    @Deprecated

    /* renamed from: l */
    public boolean f27461l;

    /* renamed from: m */
    public C6503g5 f27462m;

    /* renamed from: n */
    public boolean f27463n;

    /* renamed from: o */
    public long f27464o;

    /* renamed from: p */
    public long f27465p;

    /* renamed from: q */
    public int f27466q;

    /* renamed from: r */
    public int f27467r;

    /* renamed from: a */
    public static final Object f27450a = new Object();

    /* renamed from: b */
    private static final Object f27451b = new Object();

    /* renamed from: d */
    public static final AbstractC7093w2<C6802o7> f27453d = C6765n7.f27004a;

    static {
        C6280a5 c6280a5 = new C6280a5();
        c6280a5.m16693a("com.google.android.exoplayer2.Timeline");
        c6280a5.m16692b(Uri.EMPTY);
        f27452c = c6280a5.m16691c();
    }

    /* renamed from: a */
    public final C6802o7 m12716a(Object obj, C6615j5 c6615j5, Object obj2, long j, long j2, long j3, boolean z, boolean z2, C6503g5 c6503g5, long j4, long j5, int i, int i2, long j6) {
        this.f27454e = obj;
        this.f27455f = c6615j5 != null ? c6615j5 : f27452c;
        this.f27456g = -9223372036854775807L;
        this.f27457h = -9223372036854775807L;
        this.f27458i = -9223372036854775807L;
        this.f27459j = z;
        this.f27460k = z2;
        this.f27461l = c6503g5 != null;
        this.f27462m = c6503g5;
        this.f27464o = 0L;
        this.f27465p = j5;
        this.f27466q = 0;
        this.f27467r = 0;
        this.f27463n = false;
        return this;
    }

    /* renamed from: b */
    public final boolean m12715b() {
        C7173y8.m8895d(this.f27461l == (this.f27462m != null));
        return this.f27462m != null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !C6802o7.class.equals(obj.getClass())) {
            return false;
        }
        C6802o7 c6802o7 = (C6802o7) obj;
        return C7101wa.m9720H(this.f27454e, c6802o7.f27454e) && C7101wa.m9720H(this.f27455f, c6802o7.f27455f) && C7101wa.m9720H(null, null) && C7101wa.m9720H(this.f27462m, c6802o7.f27462m) && this.f27456g == c6802o7.f27456g && this.f27457h == c6802o7.f27457h && this.f27458i == c6802o7.f27458i && this.f27459j == c6802o7.f27459j && this.f27460k == c6802o7.f27460k && this.f27463n == c6802o7.f27463n && this.f27465p == c6802o7.f27465p && this.f27466q == c6802o7.f27466q && this.f27467r == c6802o7.f27467r;
    }

    public final int hashCode() {
        int hashCode = this.f27454e.hashCode();
        int hashCode2 = this.f27455f.hashCode();
        C6503g5 c6503g5 = this.f27462m;
        int hashCode3 = c6503g5 == null ? 0 : c6503g5.hashCode();
        long j = this.f27456g;
        long j2 = this.f27457h;
        long j3 = this.f27458i;
        boolean z = this.f27459j;
        boolean z2 = this.f27460k;
        boolean z3 = this.f27463n;
        long j4 = this.f27465p;
        return (((((((((((((((((((((((hashCode + 217) * 31) + hashCode2) * 961) + hashCode3) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + ((int) ((j2 >>> 32) ^ j2))) * 31) + ((int) ((j3 >>> 32) ^ j3))) * 31) + (z ? 1 : 0)) * 31) + (z2 ? 1 : 0)) * 31) + (z3 ? 1 : 0)) * 961) + ((int) ((j4 >>> 32) ^ j4))) * 31) + this.f27466q) * 31) + this.f27467r) * 31;
    }
}
