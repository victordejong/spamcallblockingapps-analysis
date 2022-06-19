package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fu3.class */
final class fu3 implements bu3 {

    /* renamed from: a */
    private final C6694la f23140a;

    /* renamed from: b */
    private final int f23141b;

    /* renamed from: c */
    private final int f23142c;

    /* renamed from: d */
    private int f23143d;

    /* renamed from: e */
    private int f23144e;

    public fu3(yt3 yt3Var) {
        C6694la c6694la = yt3Var.f32650b;
        this.f23140a = c6694la;
        c6694la.m13635p(12);
        this.f23142c = c6694la.m13649b() & 255;
        this.f23141b = c6694la.m13649b();
    }

    @Override // com.google.android.gms.internal.ads.bu3
    /* renamed from: b */
    public final int mo15047b() {
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.bu3
    /* renamed from: c */
    public final int mo15046c() {
        int i = this.f23142c;
        if (i == 8) {
            return this.f23140a.m13629v();
        }
        if (i == 16) {
            return this.f23140a.m13628w();
        }
        int i2 = this.f23143d;
        this.f23143d = i2 + 1;
        if (i2 % 2 != 0) {
            return this.f23144e & 15;
        }
        int m13629v = this.f23140a.m13629v();
        this.f23144e = m13629v;
        return (m13629v & 240) >> 4;
    }

    @Override // com.google.android.gms.internal.ads.bu3
    public final int zza() {
        return this.f23141b;
    }
}
