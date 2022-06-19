package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgeq.class */
public final class zzgeq extends zzget {
    private final int zzc;
    private final int zzd;

    public zzgeq(byte[] bArr, int i, int i2) {
        super(bArr);
        zzgex.zzE(i, i + i2, bArr.length);
        this.zzc = i;
        this.zzd = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzget, com.google.android.gms.internal.ads.zzgex
    public final byte zza(int i) {
        zzgex.zzD(i, this.zzd);
        return ((zzget) this).zza[this.zzc + i];
    }

    @Override // com.google.android.gms.internal.ads.zzget, com.google.android.gms.internal.ads.zzgex
    public final byte zzb(int i) {
        return ((zzget) this).zza[this.zzc + i];
    }

    @Override // com.google.android.gms.internal.ads.zzget, com.google.android.gms.internal.ads.zzgex
    public final int zzc() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzget
    public final int zzd() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzget, com.google.android.gms.internal.ads.zzgex
    public final void zze(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(((zzget) this).zza, this.zzc + i, bArr, i2, i3);
    }
}
