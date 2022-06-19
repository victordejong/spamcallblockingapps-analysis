package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzxy.class */
public final class zzxy {
    public static int zza(int i) {
        int i2 = 0;
        while (i > 0) {
            i2++;
            i >>>= 1;
        }
        return i2;
    }

    public static zzxv zzb(zzfd zzfdVar, boolean z, boolean z2) throws zzbj {
        if (z) {
            zzc(3, zzfdVar, false);
        }
        String zzx = zzfdVar.zzx((int) zzfdVar.zzq(), zzfpt.zzc);
        long zzq = zzfdVar.zzq();
        String[] strArr = new String[(int) zzq];
        int length = zzx.length() + 15;
        for (int i = 0; i < zzq; i++) {
            String zzx2 = zzfdVar.zzx((int) zzfdVar.zzq(), zzfpt.zzc);
            strArr[i] = zzx2;
            length = length + 4 + zzx2.length();
        }
        if (!z2 || (zzfdVar.zzk() & 1) != 0) {
            return new zzxv(zzx, strArr, length + 1);
        }
        throw zzbj.zza("framing bit expected to be set", null);
    }

    public static boolean zzc(int i, zzfd zzfdVar, boolean z) throws zzbj {
        if (zzfdVar.zza() < 7) {
            if (z) {
                return false;
            }
            int zza = zzfdVar.zza();
            StringBuilder sb = new StringBuilder(29);
            sb.append("too short header: ");
            sb.append(zza);
            throw zzbj.zza(sb.toString(), null);
        } else if (zzfdVar.zzk() != i) {
            if (z) {
                return false;
            }
            String valueOf = String.valueOf(Integer.toHexString(i));
            throw zzbj.zza(valueOf.length() != 0 ? "expected header type ".concat(valueOf) : new String("expected header type "), null);
        } else if (zzfdVar.zzk() == 118 && zzfdVar.zzk() == 111 && zzfdVar.zzk() == 114 && zzfdVar.zzk() == 98 && zzfdVar.zzk() == 105 && zzfdVar.zzk() == 115) {
            return true;
        } else {
            if (!z) {
                throw zzbj.zza("expected characters 'vorbis'", null);
            }
            return false;
        }
    }
}
