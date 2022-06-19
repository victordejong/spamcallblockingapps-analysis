package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzwy.class */
public final class zzwy {
    public static int zza(zzfd zzfdVar, int i) {
        switch (i) {
            case 1:
                return 192;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i - 2);
            case 6:
                return zzfdVar.zzk() + 1;
            case 7:
                return zzfdVar.zzo() + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return 256 << (i - 8);
            default:
                return -1;
        }
    }

    public static long zzb(zzwq zzwqVar, zzxd zzxdVar) throws IOException {
        zzwqVar.zzj();
        zzwk zzwkVar = (zzwk) zzwqVar;
        boolean z = true;
        zzwkVar.zzl(1, false);
        byte[] bArr = new byte[1];
        zzwkVar.zzm(bArr, 0, 1, false);
        int i = bArr[0] & 1;
        zzwkVar.zzl(2, false);
        int i2 = 1 != i ? 6 : 7;
        zzfd zzfdVar = new zzfd(i2);
        zzfdVar.zzE(zzwt.zza(zzwqVar, zzfdVar.zzH(), 0, i2));
        zzwqVar.zzj();
        zzwx zzwxVar = new zzwx();
        if (1 != i) {
            z = false;
        }
        if (zzd(zzfdVar, zzxdVar, z, zzwxVar)) {
            return zzwxVar.zza;
        }
        throw zzbj.zza(null, null);
    }

    public static boolean zzc(zzfd zzfdVar, zzxd zzxdVar, int i, zzwx zzwxVar) {
        int zza;
        int zzc = zzfdVar.zzc();
        long zzs = zzfdVar.zzs();
        long j = zzs >>> 16;
        if (j != i) {
            return false;
        }
        boolean z = (j & 1) == 1;
        int i2 = (int) ((zzs >> 12) & 15);
        int i3 = (int) ((zzs >> 8) & 15);
        int i4 = (int) (15 & (zzs >> 4));
        int i5 = (int) ((zzs >> 1) & 7);
        if (i4 <= 7) {
            if (i4 != zzxdVar.zzg - 1) {
                return false;
            }
        } else if (i4 > 10 || zzxdVar.zzg != 2) {
            return false;
        }
        if (!(i5 == 0 || i5 == zzxdVar.zzi) || (zzs & 1) == 1 || !zzd(zzfdVar, zzxdVar, z, zzwxVar) || (zza = zza(zzfdVar, i2)) == -1 || zza > zzxdVar.zzb) {
            return false;
        }
        int i6 = zzxdVar.zze;
        if (i3 != 0) {
            if (i3 <= 11) {
                if (i3 != zzxdVar.zzf) {
                    return false;
                }
            } else if (i3 == 12) {
                if (zzfdVar.zzk() * 1000 != i6) {
                    return false;
                }
            } else if (i3 > 14) {
                return false;
            } else {
                int zzo = zzfdVar.zzo();
                int i7 = zzo;
                if (i3 == 14) {
                    i7 = zzo * 10;
                }
                if (i7 != i6) {
                    return false;
                }
            }
        }
        return zzfdVar.zzk() == zzfn.zzh(zzfdVar.zzH(), zzc, zzfdVar.zzc() - 1, 0);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    private static boolean zzd(zzfd zzfdVar, zzxd zzxdVar, boolean z, zzwx zzwxVar) {
        try {
            char zzu = zzfdVar.zzu();
            if (!z) {
                zzu *= zzxdVar.zzb;
            }
            zzwxVar.zza = zzu;
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }
}
