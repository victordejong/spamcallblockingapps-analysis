package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.firebase.crashlytics.p293d.C8898b;
/* renamed from: com.google.firebase.crashlytics.internal.common.d */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/d.class */
class C9081d {

    /* renamed from: a */
    private final Float f39282a;

    /* renamed from: b */
    private final boolean f39283b;

    private C9081d(Float f, boolean z) {
        this.f39283b = z;
        this.f39282a = f;
    }

    /* renamed from: a */
    public static C9081d m1932a(Context context) {
        Float f;
        boolean z = false;
        try {
            Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            f = null;
            z = false;
            if (registerReceiver != null) {
                boolean m1928e = m1928e(registerReceiver);
                z = m1928e;
                f = m1929d(registerReceiver);
                z = m1928e;
            }
        } catch (IllegalStateException e) {
            C8898b.m2397f().m2398e("An error occurred getting battery state.", e);
            f = null;
        }
        return new C9081d(f, z);
    }

    /* renamed from: d */
    private static Float m1929d(Intent intent) {
        int intExtra = intent.getIntExtra("level", -1);
        int intExtra2 = intent.getIntExtra("scale", -1);
        if (intExtra == -1 || intExtra2 == -1) {
            return null;
        }
        return Float.valueOf(intExtra / intExtra2);
    }

    /* renamed from: e */
    private static boolean m1928e(Intent intent) {
        int intExtra = intent.getIntExtra("status", -1);
        boolean z = false;
        if (intExtra == -1) {
            return false;
        }
        if (intExtra == 2 || intExtra == 5) {
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public Float m1931b() {
        return this.f39282a;
    }

    /* renamed from: c */
    public int m1930c() {
        Float f;
        if (!this.f39283b || (f = this.f39282a) == null) {
            return 1;
        }
        return ((double) f.floatValue()) < 0.99d ? 2 : 3;
    }
}
