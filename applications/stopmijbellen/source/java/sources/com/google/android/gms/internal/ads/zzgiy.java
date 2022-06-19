package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgiy.class */
public final class zzgiy extends zzgjb {
    private final int zzc;
    private final int zzd;

    public zzgiy(byte[] bArr, int i, int i2) {
        super(bArr);
        zzgjf.zzq(i, i + i2, bArr.length);
        this.zzc = i;
        this.zzd = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzgjb, com.google.android.gms.internal.ads.zzgjf
    public final byte zza(int i) {
        zzgjf.zzB(i, this.zzd);
        return this.zza[this.zzc + i];
    }

    @Override // com.google.android.gms.internal.ads.zzgjb, com.google.android.gms.internal.ads.zzgjf
    public final byte zzb(int i) {
        return this.zza[this.zzc + i];
    }

    @Override // com.google.android.gms.internal.ads.zzgjb
    public final int zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzgjb, com.google.android.gms.internal.ads.zzgjf
    public final int zzd() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzgjb, com.google.android.gms.internal.ads.zzgjf
    public final void zze(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.zza, this.zzc + i, bArr, i2, i3);
    }
}
