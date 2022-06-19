package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.j5 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/j5.class */
public final class C6615j5 {

    /* renamed from: a */
    public static final C6615j5 f24781a = new C6280a5().m16691c();

    /* renamed from: b */
    public static final AbstractC7093w2<C6615j5> f24782b = C7132x4.f31902a;

    /* renamed from: c */
    public final String f24783c;

    /* renamed from: d */
    public final C6577i5 f24784d;

    /* renamed from: e */
    public final C6503g5 f24785e;

    /* renamed from: f */
    public final C6763n5 f24786f;

    /* renamed from: g */
    public final C6354c5 f24787g;

    public /* synthetic */ C6615j5(String str, C6354c5 c6354c5, C6577i5 c6577i5, C6503g5 c6503g5, C6763n5 c6763n5, C6540h5 c6540h5) {
        this.f24783c = str;
        this.f24784d = c6577i5;
        this.f24785e = c6503g5;
        this.f24786f = c6763n5;
        this.f24787g = c6354c5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C6615j5)) {
            return false;
        }
        C6615j5 c6615j5 = (C6615j5) obj;
        return C7101wa.m9720H(this.f24783c, c6615j5.f24783c) && this.f24787g.equals(c6615j5.f24787g) && C7101wa.m9720H(this.f24784d, c6615j5.f24784d) && C7101wa.m9720H(this.f24785e, c6615j5.f24785e) && C7101wa.m9720H(this.f24786f, c6615j5.f24786f);
    }

    public final int hashCode() {
        int hashCode = this.f24783c.hashCode();
        C6577i5 c6577i5 = this.f24784d;
        return (((((((hashCode * 31) + (c6577i5 != null ? c6577i5.hashCode() : 0)) * 31) + this.f24785e.hashCode()) * 31) + this.f24787g.hashCode()) * 31) + this.f24786f.hashCode();
    }
}
