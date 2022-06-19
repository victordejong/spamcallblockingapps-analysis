package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeju.class */
final class zzeju extends zzekb {
    private final int zzimc;
    private final int zzimd;

    public zzeju(byte[] bArr, int i, int i2) {
        super(bArr);
        zzi(i, i + i2, bArr.length);
        this.zzimc = i;
        this.zzimd = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzekb, com.google.android.gms.internal.ads.zzejr
    public final int size() {
        return this.zzimd;
    }

    @Override // com.google.android.gms.internal.ads.zzekb, com.google.android.gms.internal.ads.zzejr
    public final void zzb(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.zzimk, zzbgp() + i, bArr, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzekb
    public final int zzbgp() {
        return this.zzimc;
    }

    @Override // com.google.android.gms.internal.ads.zzekb, com.google.android.gms.internal.ads.zzejr
    public final byte zzfz(int i) {
        zzab(i, size());
        return this.zzimk[this.zzimc + i];
    }

    @Override // com.google.android.gms.internal.ads.zzekb, com.google.android.gms.internal.ads.zzejr
    public final byte zzga(int i) {
        return this.zzimk[this.zzimc + i];
    }
}
