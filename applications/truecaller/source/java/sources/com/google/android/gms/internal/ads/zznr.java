package com.google.android.gms.internal.ads;

import com.tenor.android.core.constant.StringConstant;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zznr.class */
public final class zznr {
    public final String zza;

    private zznr(int i, int i2, String str) {
        this.zza = str;
    }

    public static zznr zza(zzamf zzamfVar) {
        String str;
        zzamfVar.zzk(2);
        int zzn = zzamfVar.zzn();
        int i = zzn >> 1;
        int zzn2 = (zzamfVar.zzn() >> 3) | ((zzn & 1) << 5);
        if (i == 4 || i == 5 || i == 7) {
            str = "dvhe";
        } else if (i == 8) {
            str = "hev1";
        } else if (i != 9) {
            return null;
        } else {
            str = "avc3";
        }
        String str2 = zzn2 < 10 ? ".0" : StringConstant.DOT;
        StringBuilder sb = new StringBuilder(str2.length() + str.length() + 24);
        sb.append(str);
        sb.append(".0");
        sb.append(i);
        sb.append(str2);
        sb.append(zzn2);
        return new zznr(i, zzn2, sb.toString());
    }
}
