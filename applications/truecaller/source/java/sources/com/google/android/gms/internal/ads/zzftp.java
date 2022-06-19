package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzftp.class */
public final class zzftp {
    private final zzgau zza;

    private zzftp(zzgau zzgauVar) {
        this.zza = zzgauVar;
    }

    public static zzftp zzc(String str, byte[] bArr, int i) {
        zzgat zzd = zzgau.zzd();
        zzd.zza(str);
        zzd.zzb(zzgex.zzt(bArr));
        int i2 = i - 1;
        zzd.zzc(i2 != 0 ? i2 != 1 ? 5 : 4 : 3);
        return new zzftp(zzd.zzah());
    }

    public final String zza() {
        return this.zza.zza();
    }

    public final byte[] zzb() {
        return this.zza.zzc().zzz();
    }

    public final int zzd() {
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
