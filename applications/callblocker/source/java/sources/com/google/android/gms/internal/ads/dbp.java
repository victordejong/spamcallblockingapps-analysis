package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dbp.class */
final class dbp extends dbt {

    /* renamed from: c */
    private final int f13939c;

    /* renamed from: d */
    private final int f13940d;

    public dbp(byte[] bArr, int i, int i2) {
        super(bArr);
        m10211c(i, i + i2, bArr.length);
        this.f13939c = i;
        this.f13940d = i2;
    }

    @Override // com.google.android.gms.internal.ads.dbt, com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final byte mo9918a(int i) {
        m10215b(i, mo9911b());
        return this.f13944b[this.f13939c + i];
    }

    @Override // com.google.android.gms.internal.ads.dbt, com.google.android.gms.internal.ads.dbi
    /* renamed from: b */
    public final byte mo9910b(int i) {
        return this.f13944b[this.f13939c + i];
    }

    @Override // com.google.android.gms.internal.ads.dbt, com.google.android.gms.internal.ads.dbi
    /* renamed from: b */
    public final int mo9911b() {
        return this.f13940d;
    }

    @Override // com.google.android.gms.internal.ads.dbt, com.google.android.gms.internal.ads.dbi
    /* renamed from: b */
    public final void mo9906b(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.f13944b, mo10204l() + i, bArr, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.dbt
    /* renamed from: l */
    public final int mo10204l() {
        return this.f13939c;
    }
}
