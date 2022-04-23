package com.google.android.gms.internal.ads;

import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzayp.class */
public final class zzayp extends zzbbq {
    /* renamed from: a */
    public static boolean m16155a() {
        return zzbbq.m15859a(2) && zzacv.f23993a.mo16862a().booleanValue();
    }

    /* renamed from: e */
    public static void m16154e(String str, Throwable th) {
        if (m16155a()) {
            Log.v("Ads", str, th);
        }
    }

    /* renamed from: g */
    public static void m16153g(String str) {
        if (m16155a()) {
            Log.v("Ads", str);
        }
    }
}
