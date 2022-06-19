package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzpc.class */
public final class zzpc {
    public static int zza(int i) {
        int i2 = 0;
        while (i > 0) {
            i2++;
            i >>>= 1;
        }
        return i2;
    }

    public static zzoz zzb(zzamf zzamfVar, boolean z, boolean z2) throws zzaha {
        if (z) {
            zzc(3, zzamfVar, false);
        }
        String zzE = zzamfVar.zzE((int) zzamfVar.zzu(), zzfll.zzc);
        long zzu = zzamfVar.zzu();
        String[] strArr = new String[(int) zzu];
        int length = zzE.length() + 15;
        for (int i = 0; i < zzu; i++) {
            String zzE2 = zzamfVar.zzE((int) zzamfVar.zzu(), zzfll.zzc);
            strArr[i] = zzE2;
            length = length + 4 + zzE2.length();
        }
        if (!z2 || (zzamfVar.zzn() & 1) != 0) {
            return new zzoz(zzE, strArr, length + 1);
        }
        throw zzaha.zzb("framing bit expected to be set", null);
    }

    public static boolean zzc(int i, zzamf zzamfVar, boolean z) throws zzaha {
        if (zzamfVar.zzd() < 7) {
            if (z) {
                return false;
            }
            int zzd = zzamfVar.zzd();
            StringBuilder sb = new StringBuilder(29);
            sb.append("too short header: ");
            sb.append(zzd);
            throw zzaha.zzb(sb.toString(), null);
        } else if (zzamfVar.zzn() != i) {
            if (z) {
                return false;
            }
            String valueOf = String.valueOf(Integer.toHexString(i));
            throw zzaha.zzb(valueOf.length() != 0 ? "expected header type ".concat(valueOf) : new String("expected header type "), null);
        } else if (zzamfVar.zzn() == 118 && zzamfVar.zzn() == 111 && zzamfVar.zzn() == 114 && zzamfVar.zzn() == 98 && zzamfVar.zzn() == 105 && zzamfVar.zzn() == 115) {
            return true;
        } else {
            if (!z) {
                throw zzaha.zzb("expected characters 'vorbis'", null);
            }
            return false;
        }
    }
}
