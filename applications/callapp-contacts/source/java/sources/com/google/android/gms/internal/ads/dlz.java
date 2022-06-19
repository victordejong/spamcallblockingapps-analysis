package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dlz.class */
final class dlz extends dmh {

    /* renamed from: c */
    private final int f47203c;

    /* renamed from: d */
    private final int f47204d;

    public dlz(byte[] bArr, int i, int i2) {
        super(bArr);
        m16468c(i, i + i2, bArr.length);
        this.f47203c = i;
        this.f47204d = i2;
    }

    @Override // com.google.android.gms.internal.ads.dmh, com.google.android.gms.internal.ads.dlw
    /* renamed from: a */
    public final byte mo16145a(int i) {
        m16472b(i, mo16138b());
        return this.f47215b[this.f47203c + i];
    }

    @Override // com.google.android.gms.internal.ads.dmh, com.google.android.gms.internal.ads.dlw
    /* renamed from: b */
    public final byte mo16137b(int i) {
        return this.f47215b[this.f47203c + i];
    }

    @Override // com.google.android.gms.internal.ads.dmh, com.google.android.gms.internal.ads.dlw
    /* renamed from: b */
    public final int mo16138b() {
        return this.f47204d;
    }

    @Override // com.google.android.gms.internal.ads.dmh, com.google.android.gms.internal.ads.dlw
    /* renamed from: b */
    public final void mo16133b(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.f47215b, mo16457l() + i, bArr, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.dmh
    /* renamed from: l */
    public final int mo16457l() {
        return this.f47203c;
    }
}
