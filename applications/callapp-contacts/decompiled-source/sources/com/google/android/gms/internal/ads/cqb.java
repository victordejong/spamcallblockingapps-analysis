package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cqb.class */
public final class cqb {
    public static void a(int i, Throwable th, String str) {
        StringBuilder sb = new StringBuilder(31);
        sb.append("Ad failed to load : ");
        sb.append(i);
        zzd.zzey(sb.toString());
        zzd.zza(str, th);
        if (i != 3) {
            zzr.zzkz().b(th, str);
        }
    }

    public static void a(Context context, boolean z) {
        if (z) {
            zzd.zzey("This request is sent from a test device.");
            return;
        }
        ekb.a();
        String a2 = yq.a(context);
        StringBuilder sb = new StringBuilder(String.valueOf(a2).length() + 102);
        sb.append("Use RequestConfiguration.Builder().setTestDeviceIds(Arrays.asList(\"");
        sb.append(a2);
        sb.append("\")) to get test ads on this device.");
        zzd.zzey(sb.toString());
    }
}
