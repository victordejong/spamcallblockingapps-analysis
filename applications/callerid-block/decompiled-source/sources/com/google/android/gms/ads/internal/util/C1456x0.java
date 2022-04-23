package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.internal.ads.C1691cp;
import com.google.android.gms.internal.ads.C1879oo;
import com.google.android.gms.internal.ads.C1894po;
import com.google.android.gms.internal.ads.rz1;
/* renamed from: com.google.android.gms.ads.internal.util.x0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/x0.class */
public final class C1456x0 {
    /* renamed from: a */
    public static void m8701a(Context context) {
        if (C1879oo.m6289k(context) && !C1879oo.m6291i()) {
            rz1<?> b = new w0(context).m8699b();
            C1894po.m6181e("Updating ad debug logging enablement.");
            C1691cp.m7792a(b, "AdDebugLogUpdater.updateEnablement");
        }
    }
}
