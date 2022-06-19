package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfyd.class */
public final class zzfyd {
    private final zzgfi zza;

    private zzfyd(zzgfi zzgfiVar) {
        this.zza = zzgfiVar;
    }

    public static zzfyd zzd(String str, byte[] bArr, int i) {
        zzgfh zza = zzgfi.zza();
        zza.zza(str);
        zza.zzb(zzgjf.zzv(bArr));
        int i2 = i - 1;
        zza.zzc(i2 != 0 ? i2 != 1 ? 5 : 4 : 3);
        return new zzfyd(zza.zzah());
    }

    public final String zza() {
        return this.zza.zzf();
    }

    public final byte[] zzb() {
        return this.zza.zze().zzE();
    }

    public final int zzc() {
        int zzi = this.zza.zzi() - 2;
        int i = 1;
        if (zzi != 1) {
            i = 2;
            if (zzi != 2) {
                i = 3;
                if (zzi != 3) {
                    if (zzi != 4) {
                        throw new IllegalArgumentException("Unknown output prefix type");
                    }
                    return 4;
                }
            }
        }
        return i;
    }
}
