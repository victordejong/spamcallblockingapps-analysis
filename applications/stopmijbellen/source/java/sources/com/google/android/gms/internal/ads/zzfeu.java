package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfeu.class */
public final class zzfeu {
    public static void zza(Context context, boolean z) {
        if (z) {
            zzciz.zzi("This request is sent from a test device.");
            return;
        }
        zzbgo.zzb();
        String zzt = zzcis.zzt(context);
        StringBuilder sb = new StringBuilder(String.valueOf(zzt).length() + 102);
        sb.append("Use RequestConfiguration.Builder().setTestDeviceIds(Arrays.asList(\"");
        sb.append(zzt);
        sb.append("\")) to get test ads on this device.");
        zzciz.zzi(sb.toString());
    }

    public static void zzb(int i, Throwable th, String str) {
        StringBuilder sb = new StringBuilder(31);
        sb.append("Ad failed to load : ");
        sb.append(i);
        zzciz.zzi(sb.toString());
        zze.zzb(str, th);
        if (i == 3) {
            return;
        }
        zzt.zzo().zzr(th, str);
    }
}
