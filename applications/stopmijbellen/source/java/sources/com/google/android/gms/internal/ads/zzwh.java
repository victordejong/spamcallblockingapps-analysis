package com.google.android.gms.internal.ads;

import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzwh.class */
public final class zzwh {
    public static void zza(long j, zzfd zzfdVar, zzxt[] zzxtVarArr) {
        int i;
        int i2;
        while (zzfdVar.zza() > 1) {
            int zzc = zzc(zzfdVar);
            int zzc2 = zzc(zzfdVar);
            int zzc3 = zzfdVar.zzc() + zzc2;
            if (zzc2 == -1 || zzc2 > zzfdVar.zza()) {
                Log.w("CeaUtil", "Skipping remainder of malformed SEI NAL unit.");
                i = zzfdVar.zzd();
            } else {
                i = zzc3;
                if (zzc == 4) {
                    i = zzc3;
                    if (zzc2 >= 8) {
                        int zzk = zzfdVar.zzk();
                        int zzo = zzfdVar.zzo();
                        if (zzo == 49) {
                            i2 = zzfdVar.zze();
                            zzo = 49;
                        } else {
                            i2 = 0;
                        }
                        int zzk2 = zzfdVar.zzk();
                        int i3 = zzo;
                        if (zzo == 47) {
                            zzfdVar.zzG(1);
                            i3 = 47;
                        }
                        boolean z = zzk == 181 && (i3 == 49 || i3 == 47) && zzk2 == 3;
                        boolean z2 = z;
                        if (i3 == 49) {
                            z2 = z & (i2 == 1195456820);
                        }
                        i = zzc3;
                        if (z2) {
                            zzb(j, zzfdVar, zzxtVarArr);
                            i = zzc3;
                        }
                    }
                }
            }
            zzfdVar.zzF(i);
        }
    }

    public static void zzb(long j, zzfd zzfdVar, zzxt[] zzxtVarArr) {
        int zzk = zzfdVar.zzk();
        if ((zzk & 64) != 0) {
            zzfdVar.zzG(1);
            int i = (zzk & 31) * 3;
            int zzc = zzfdVar.zzc();
            for (zzxt zzxtVar : zzxtVarArr) {
                zzfdVar.zzF(zzc);
                zzxtVar.zzq(zzfdVar, i);
                if (j != -9223372036854775807L) {
                    zzxtVar.zzs(j, 1, i, 0, null);
                }
            }
        }
    }

    private static int zzc(zzfd zzfdVar) {
        int i = 0;
        while (zzfdVar.zza() != 0) {
            int zzk = zzfdVar.zzk();
            int i2 = i + zzk;
            i = i2;
            if (zzk != 255) {
                return i2;
            }
        }
        return -1;
    }
}
