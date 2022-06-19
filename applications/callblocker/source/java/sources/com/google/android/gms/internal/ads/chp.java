package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C2341q;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/chp.class */
public final class chp {
    /* renamed from: a */
    public static void m11299a(Context context, boolean z) {
        if (z) {
            C3556uu.m6747d("This request is sent from a test device.");
            return;
        }
        dyx.m8162a();
        String m6802a = C3634xr.m6802a(context);
        C3556uu.m6747d(new StringBuilder(String.valueOf(m6802a).length() + 101).append("Use RequestConfiguration.Builder().setTestDeviceIds(Arrays.asList(\"").append(m6802a).append("\") to get test ads on this device.").toString());
    }

    /* renamed from: a */
    public static void m11298a(Throwable th, String str) {
        C3556uu.m6747d(new StringBuilder(31).append("Ad failed to load : ").append(zzcjk.m6639a(th)).toString());
        C3556uu.m7051a(str, th);
        if (zzcjk.m6639a(th) == 3) {
            return;
        }
        C2341q.m14740g().m7092b(th, str);
    }
}
