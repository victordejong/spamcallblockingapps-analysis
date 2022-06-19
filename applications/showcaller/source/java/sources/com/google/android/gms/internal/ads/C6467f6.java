package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.f6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/f6.class */
public final class C6467f6 {

    /* renamed from: a */
    private final C6544h9 f22734a = new C6544h9();

    /* renamed from: a */
    public final C6467f6 m15310a(int i) {
        this.f22734a.m14722a(i);
        return this;
    }

    /* renamed from: b */
    public final C6467f6 m15309b(int i, boolean z) {
        C6544h9 c6544h9 = this.f22734a;
        if (z) {
            c6544h9.m14722a(i);
        }
        return this;
    }

    /* renamed from: c */
    public final C6467f6 m15308c(int... iArr) {
        C6544h9 c6544h9 = this.f22734a;
        for (int i : iArr) {
            c6544h9.m14722a(i);
        }
        return this;
    }

    /* renamed from: d */
    public final C6467f6 m15307d(C6504g6 c6504g6) {
        C6619j9 c6619j9;
        C6544h9 c6544h9 = this.f22734a;
        c6619j9 = c6504g6.f23252c;
        for (int i = 0; i < c6619j9.m14159a(); i++) {
            c6544h9.m14722a(c6619j9.m14158b(i));
        }
        return this;
    }

    /* renamed from: e */
    public final C6504g6 m15306e() {
        return new C6504g6(this.f22734a.m14721b(), null);
    }
}
