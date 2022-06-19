package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.internal.ads.di0;
import com.google.android.gms.internal.ads.ei0;
import com.google.android.gms.internal.ads.r03;
import com.google.android.gms.internal.ads.ti0;
/* renamed from: com.google.android.gms.ads.internal.util.n1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/n1.class */
public final class C5719n1 {
    /* renamed from: a */
    public static void m17991a(Context context) {
        if (di0.m15803k(context) && !di0.m15805i()) {
            r03<?> mo16320c = new C5670a1(context).mo16320c();
            ei0.m15465e("Updating ad debug logging enablement.");
            ti0.m10655a(mo16320c, "AdDebugLogUpdater.updateEnablement");
        }
    }
}
