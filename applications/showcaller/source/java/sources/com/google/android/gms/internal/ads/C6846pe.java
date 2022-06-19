package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.pe */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/pe.class */
final class C6846pe implements AbstractC6735me {

    /* renamed from: a */
    private final C6665ki f27940a;

    /* renamed from: b */
    private final int f27941b;

    /* renamed from: c */
    private final int f27942c;

    /* renamed from: d */
    private int f27943d;

    /* renamed from: e */
    private int f27944e;

    public C6846pe(C6624je c6624je) {
        C6665ki c6665ki = c6624je.f24849P0;
        this.f27940a = c6665ki;
        c6665ki.m13899i(12);
        this.f27942c = c6665ki.m13887u() & 255;
        this.f27941b = c6665ki.m13887u();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6735me
    /* renamed from: b */
    public final int mo12307b() {
        int i = this.f27942c;
        if (i == 8) {
            return this.f27940a.m13896l();
        }
        if (i == 16) {
            return this.f27940a.m13895m();
        }
        int i2 = this.f27943d;
        this.f27943d = i2 + 1;
        if (i2 % 2 != 0) {
            return this.f27944e & 15;
        }
        int m13896l = this.f27940a.m13896l();
        this.f27944e = m13896l;
        return (m13896l & 240) >> 4;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6735me
    /* renamed from: c */
    public final boolean mo12306c() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6735me
    public final int zza() {
        return this.f27941b;
    }
}
