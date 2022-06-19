package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cqb.class */
public final class cqb {
    /* renamed from: a */
    public static void m17342a(int i, Throwable th, String str) {
        StringBuilder sb = new StringBuilder(31);
        sb.append("Ad failed to load : ");
        sb.append(i);
        zzd.zzey(sb.toString());
        zzd.zza(str, th);
        if (i == 3) {
            return;
        }
        zzr.zzkz().m13977b(th, str);
    }

    /* renamed from: a */
    public static void m17341a(Context context, boolean z) {
        if (z) {
            zzd.zzey("This request is sent from a test device.");
            return;
        }
        ekb.m14835a();
        String m13951a = C13077yq.m13951a(context);
        StringBuilder sb = new StringBuilder(String.valueOf(m13951a).length() + 102);
        sb.append("Use RequestConfiguration.Builder().setTestDeviceIds(Arrays.asList(\"");
        sb.append(m13951a);
        sb.append("\")) to get test ads on this device.");
        zzd.zzey(sb.toString());
    }
}
