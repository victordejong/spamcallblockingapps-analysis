package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzwm.class */
public final class zzwm {
    public final String zza;

    private zzwm(int i, int i2, String str) {
        this.zza = str;
    }

    public static zzwm zza(zzfd zzfdVar) {
        String str;
        zzfdVar.zzG(2);
        int zzk = zzfdVar.zzk();
        int i = zzk >> 1;
        int zzk2 = (zzfdVar.zzk() >> 3) | ((zzk & 1) << 5);
        if (i == 4 || i == 5 || i == 7) {
            str = "dvhe";
        } else if (i == 8) {
            str = "hev1";
        } else if (i != 9) {
            return null;
        } else {
            str = "avc3";
        }
        String str2 = zzk2 < 10 ? ".0" : ".";
        StringBuilder sb = new StringBuilder(str2.length() + str.length() + 24);
        sb.append(str);
        sb.append(".0");
        sb.append(i);
        sb.append(str2);
        sb.append(zzk2);
        return new zzwm(i, zzk2, sb.toString());
    }
}
