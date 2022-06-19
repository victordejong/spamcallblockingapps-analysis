package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzqx.class */
public class zzqx {
    public final int zzd;

    public zzqx(int i) {
        this.zzd = i;
    }

    public static int zze(int i) {
        return (i >> 24) & 255;
    }

    public static String zzf(int i) {
        StringBuilder sb = new StringBuilder(4);
        sb.append((char) ((i >> 24) & 255));
        sb.append((char) ((i >> 16) & 255));
        sb.append((char) ((i >> 8) & 255));
        sb.append((char) (i & 255));
        return sb.toString();
    }

    public String toString() {
        return zzf(this.zzd);
    }
}
