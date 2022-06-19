package com.google.android.gms.ads.internal.util;

import android.util.Log;
import com.google.android.gms.internal.ads.C6346by;
import com.google.android.gms.internal.ads.ei0;
import java.util.Iterator;
/* renamed from: com.google.android.gms.ads.internal.util.o1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/o1.class */
public final class C5722o1 extends ei0 {
    /* renamed from: k */
    public static void m17990k(String str) {
        if (m17988m()) {
            if (str == null || str.length() <= 4000) {
                Log.v("Ads", str);
                return;
            }
            Iterator<String> it = ei0.f22181a.m14533d(str).iterator();
            boolean z = true;
            while (true) {
                boolean z2 = z;
                if (!it.hasNext()) {
                    return;
                }
                String next = it.next();
                if (z2) {
                    Log.v("Ads", next);
                } else {
                    Log.v("Ads-cont", next);
                }
                z = false;
            }
        }
    }

    /* renamed from: l */
    public static void m17989l(String str, Throwable th) {
        if (m17988m()) {
            Log.v("Ads", str, th);
        }
    }

    /* renamed from: m */
    public static boolean m17988m() {
        return ei0.m15460j(2) && C6346by.f21028a.m12799e().booleanValue();
    }
}
