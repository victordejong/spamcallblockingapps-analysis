package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgmf.class */
public final class zzgmf implements zzgls {
    private final zzglv zza;
    private final String zzb;
    private final Object[] zzc;
    private final int zzd;

    public zzgmf(zzglv zzglvVar, String str, Object[] objArr) {
        this.zza = zzglvVar;
        this.zzb = str;
        this.zzc = objArr;
        int charAt = str.charAt(0);
        if (charAt < 55296) {
            this.zzd = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            int charAt2 = str.charAt(i3);
            if (charAt2 < 55296) {
                this.zzd = i | (charAt2 << i2);
                return;
            }
            i |= (charAt2 & 8191) << i2;
            i3++;
            i2 += 13;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgls
    public final zzglv zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgls
    public final boolean zzb() {
        return (this.zzd & 2) == 2;
    }

    @Override // com.google.android.gms.internal.ads.zzgls
    public final int zzc() {
        return (this.zzd & 1) == 1 ? 1 : 2;
    }

    public final String zzd() {
        return this.zzb;
    }

    public final Object[] zze() {
        return this.zzc;
    }
}
