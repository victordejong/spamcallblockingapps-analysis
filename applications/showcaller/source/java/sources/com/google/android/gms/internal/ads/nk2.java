package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5722o1;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/nk2.class */
public final class nk2 {
    /* renamed from: a */
    public static void m12892a(int i, Throwable th, String str) {
        StringBuilder sb = new StringBuilder(31);
        sb.append("Ad failed to load : ");
        sb.append(i);
        ei0.m15465e(sb.toString());
        C5722o1.m17989l(str, th);
        if (i == 3) {
            return;
        }
        C5667s.m18156h().m12234l(th, str);
    }

    /* renamed from: b */
    public static void m12891b(Context context, boolean z) {
        if (z) {
            ei0.m15465e("This request is sent from a test device.");
            return;
        }
        C7118wr.m9485a();
        String m9160r = xh0.m9160r(context);
        StringBuilder sb = new StringBuilder(String.valueOf(m9160r).length() + 102);
        sb.append("Use RequestConfiguration.Builder().setTestDeviceIds(Arrays.asList(\"");
        sb.append(m9160r);
        sb.append("\")) to get test ads on this device.");
        ei0.m15465e(sb.toString());
    }
}
