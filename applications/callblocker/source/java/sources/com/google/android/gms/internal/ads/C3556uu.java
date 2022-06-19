package com.google.android.gms.internal.ads;

import android.util.Log;
/* renamed from: com.google.android.gms.internal.ads.uu */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/uu.class */
public final class C3556uu extends C3645yb {
    /* renamed from: a */
    public static void m7052a(String str) {
        if (m7053a()) {
            Log.v("Ads", str);
        }
    }

    /* renamed from: a */
    public static void m7051a(String str, Throwable th) {
        if (m7053a()) {
            Log.v("Ads", str, th);
        }
    }

    /* renamed from: a */
    public static boolean m7053a() {
        return m6753a(2) && C2793aq.f10209a.mo13599a().booleanValue();
    }
}
