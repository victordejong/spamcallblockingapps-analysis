package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzoc.class */
public final class zzoc {
    public static boolean zza(zzamf zzamfVar, zzoh zzohVar, int i, zzob zzobVar) {
        int zzc;
        int zzg = zzamfVar.zzg();
        long zzt = zzamfVar.zzt();
        long j = zzt >>> 16;
        if (j != i) {
            return false;
        }
        boolean z = (j & 1) == 1;
        int i2 = (int) ((zzt >> 12) & 15);
        int i3 = (int) ((zzt >> 8) & 15);
        int i4 = (int) (15 & (zzt >> 4));
        int i5 = (int) ((zzt >> 1) & 7);
        if (i4 <= 7) {
            if (i4 != zzohVar.zzg - 1) {
                return false;
            }
        } else if (i4 > 10 || zzohVar.zzg != 2) {
            return false;
        }
        if (!(i5 == 0 || i5 == zzohVar.zzi) || (zzt & 1) == 1 || !zzd(zzamfVar, zzohVar, z, zzobVar) || (zzc = zzc(zzamfVar, i2)) == -1 || zzc > zzohVar.zzb) {
            return false;
        }
        int i6 = zzohVar.zze;
        if (i3 != 0) {
            if (i3 <= 11) {
                if (i3 != zzohVar.zzf) {
                    return false;
                }
            } else if (i3 == 12) {
                if (zzamfVar.zzn() * 1000 != i6) {
                    return false;
                }
            } else if (i3 > 14) {
                return false;
            } else {
                int zzo = zzamfVar.zzo();
                int i7 = zzo;
                if (i3 == 14) {
                    i7 = zzo * 10;
                }
                if (i7 != i6) {
                    return false;
                }
            }
        }
        return zzamfVar.zzn() == zzamq.zzW(zzamfVar.zzi(), zzg, zzamfVar.zzg() - 1, 0);
    }

    public static long zzb(zznv zznvVar, zzoh zzohVar) throws IOException {
        zznvVar.zzl();
        zznp zznpVar = (zznp) zznvVar;
        boolean z = true;
        zznpVar.zzj(1, false);
        byte[] bArr = new byte[1];
        zznpVar.zzh(bArr, 0, 1, false);
        int i = bArr[0] & 1;
        zznpVar.zzj(2, false);
        int i2 = 1 != i ? 6 : 7;
        zzamf zzamfVar = new zzamf(i2);
        zzamfVar.zzf(zzny.zzb(zznvVar, zzamfVar.zzi(), 0, i2));
        zznvVar.zzl();
        zzob zzobVar = new zzob();
        if (1 != i) {
            z = false;
        }
        if (zzd(zzamfVar, zzohVar, z, zzobVar)) {
            return zzobVar.zza;
        }
        throw zzaha.zzb(null, null);
    }

    public static int zzc(zzamf zzamfVar, int i) {
        switch (i) {
            case 1:
                return 192;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i - 2);
            case 6:
                return zzamfVar.zzn() + 1;
            case 7:
                return zzamfVar.zzo() + 1;
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

    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    private static boolean zzd(zzamf zzamfVar, zzoh zzohVar, boolean z, zzob zzobVar) {
        try {
            char zzH = zzamfVar.zzH();
            if (!z) {
                zzH *= zzohVar.zzb;
            }
            zzobVar.zza = zzH;
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }
}
