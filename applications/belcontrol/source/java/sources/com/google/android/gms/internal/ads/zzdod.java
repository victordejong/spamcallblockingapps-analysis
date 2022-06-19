package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdod.class */
public final class zzdod {
    public static void zza(int i, Throwable th, String str) {
        StringBuilder sb = new StringBuilder(31);
        sb.append("Ad failed to load : ");
        sb.append(i);
        zzazk.zzew(sb.toString());
        zzd.zza(str, th);
        if (i == 3) {
            return;
        }
        zzr.zzkv().zzb(th, str);
    }

    public static void zze(Context context, boolean z) {
        String sb;
        if (z) {
            sb = "This request is sent from a test device.";
        } else {
            zzwr.zzqn();
            String zzbm = zzaza.zzbm(context);
            StringBuilder sb2 = new StringBuilder(String.valueOf(zzbm).length() + 101);
            sb2.append("Use RequestConfiguration.Builder().setTestDeviceIds(Arrays.asList(\"");
            sb2.append(zzbm);
            sb2.append("\") to get test ads on this device.");
            sb = sb2.toString();
        }
        zzazk.zzew(sb);
    }
}
