package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.internal.util.y0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/hm1.class */
public final class hm1 {
    /* renamed from: a */
    public static void m7267a(int i, Throwable th, String str) {
        StringBuilder sb = new StringBuilder(31);
        sb.append("Ad failed to load : ");
        sb.append(i);
        C1894po.m6181e(sb.toString());
        y0.l(str, th);
        if (i == 3) {
            return;
        }
        C1407r.m8916h().m4589h(th, str);
    }

    /* renamed from: b */
    public static void m7266b(Context context, boolean z) {
        String sb;
        if (z) {
            sb = "This request is sent from a test device.";
        } else {
            m03.m6636a();
            String m7124t = C1786io.m7124t(context);
            StringBuilder sb2 = new StringBuilder(String.valueOf(m7124t).length() + 102);
            sb2.append("Use RequestConfiguration.Builder().setTestDeviceIds(Arrays.asList(\"");
            sb2.append(m7124t);
            sb2.append("\")) to get test ads on this device.");
            sb = sb2.toString();
        }
        C1894po.m6181e(sb);
    }
}
