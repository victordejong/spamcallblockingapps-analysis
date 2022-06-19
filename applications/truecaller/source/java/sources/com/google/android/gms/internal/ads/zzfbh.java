package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfbh.class */
public final class zzfbh {
    public static void zza(int i, Throwable th, String str) {
        StringBuilder sb = new StringBuilder(31);
        sb.append("Ad failed to load : ");
        sb.append(i);
        zzcgt.zzh(sb.toString());
        zze.zzb(str, th);
        if (i == 3) {
            return;
        }
        zzt.zzg().zzl(th, str);
    }

    public static void zzb(Context context, boolean z) {
        if (z) {
            zzcgt.zzh("This request is sent from a test device.");
            return;
        }
        zzber.zza();
        String zzt = zzcgm.zzt(context);
        StringBuilder sb = new StringBuilder(String.valueOf(zzt).length() + 102);
        sb.append("Use RequestConfiguration.Builder().setTestDeviceIds(Arrays.asList(\"");
        sb.append(zzt);
        sb.append("\")) to get test ads on this device.");
        zzcgt.zzh(sb.toString());
    }
}
