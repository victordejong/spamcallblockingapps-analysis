package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zznm.class */
public final class zznm {
    public static void zza(long j, zzamf zzamfVar, zzox[] zzoxVarArr) {
        int i;
        int i2;
        while (zzamfVar.zzd() > 1) {
            int zzc = zzc(zzamfVar);
            int zzc2 = zzc(zzamfVar);
            int zzg = zzamfVar.zzg() + zzc2;
            if (zzc2 == -1 || zzc2 > zzamfVar.zzd()) {
                i = zzamfVar.zze();
            } else {
                i = zzg;
                if (zzc == 4) {
                    i = zzg;
                    if (zzc2 >= 8) {
                        int zzn = zzamfVar.zzn();
                        int zzo = zzamfVar.zzo();
                        if (zzo == 49) {
                            i2 = zzamfVar.zzv();
                            zzo = 49;
                        } else {
                            i2 = 0;
                        }
                        int zzn2 = zzamfVar.zzn();
                        int i3 = zzo;
                        if (zzo == 47) {
                            zzamfVar.zzk(1);
                            i3 = 47;
                        }
                        boolean z = zzn == 181 && (i3 == 49 || i3 == 47) && zzn2 == 3;
                        boolean z2 = z;
                        if (i3 == 49) {
                            z2 = z & (i2 == 1195456820);
                        }
                        i = zzg;
                        if (z2) {
                            zzb(j, zzamfVar, zzoxVarArr);
                            i = zzg;
                        }
                    }
                }
            }
            zzamfVar.zzh(i);
        }
    }

    public static void zzb(long j, zzamf zzamfVar, zzox[] zzoxVarArr) {
        int zzn = zzamfVar.zzn();
        if ((zzn & 64) != 0) {
            zzamfVar.zzk(1);
            int i = (zzn & 31) * 3;
            int zzg = zzamfVar.zzg();
            for (zzox zzoxVar : zzoxVarArr) {
                zzamfVar.zzh(zzg);
                zzoxVar.zzy(zzamfVar, i);
                if (j != -9223372036854775807L) {
                    zzoxVar.zzv(j, 1, i, 0, null);
                }
            }
        }
    }

    private static int zzc(zzamf zzamfVar) {
        int i = 0;
        while (zzamfVar.zzd() != 0) {
            int zzn = zzamfVar.zzn();
            int i2 = i + zzn;
            i = i2;
            if (zzn != 255) {
                return i2;
            }
        }
        return -1;
    }
}
