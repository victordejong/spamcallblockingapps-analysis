package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.PowerManager;
import android.os.SystemClock;
import com.google.firebase.analytics.FirebaseAnalytics;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/zza.class */
public final class zza {

    /* renamed from: b */
    private static long f7662b;

    /* renamed from: a */
    private static final IntentFilter f7661a = new IntentFilter("android.intent.action.BATTERY_CHANGED");

    /* renamed from: c */
    private static float f7663c = Float.NaN;

    @TargetApi(20)
    /* renamed from: a */
    public static int m14292a(Context context) {
        if (context == null || context.getApplicationContext() == null) {
            return -1;
        }
        Intent registerReceiver = context.getApplicationContext().registerReceiver(null, f7661a);
        int i = 0;
        int i2 = ((registerReceiver == null ? 0 : registerReceiver.getIntExtra("plugged", 0)) & 7) != 0 ? 1 : 0;
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if (powerManager == null) {
            return -1;
        }
        if (PlatformVersion.m14317f() ? powerManager.isInteractive() : powerManager.isScreenOn()) {
            i = 2;
        }
        return i | i2;
    }

    /* renamed from: b */
    public static float m14291b(Context context) {
        synchronized (zza.class) {
            try {
                if (SystemClock.elapsedRealtime() - f7662b >= 60000 || Float.isNaN(f7663c)) {
                    Intent registerReceiver = context.getApplicationContext().registerReceiver(null, f7661a);
                    if (registerReceiver != null) {
                        f7663c = registerReceiver.getIntExtra(FirebaseAnalytics.Param.LEVEL, -1) / registerReceiver.getIntExtra("scale", -1);
                    }
                    f7662b = SystemClock.elapsedRealtime();
                    return f7663c;
                }
                return f7663c;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
