package com.google.android.gms.common.a;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.PowerManager;
import android.os.SystemClock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/a/g.class */
public final class g {

    /* renamed from: b  reason: collision with root package name */
    private static long f3932b;

    /* renamed from: a  reason: collision with root package name */
    private static IntentFilter f3931a = new IntentFilter("android.intent.action.BATTERY_CHANGED");
    private static float c = Float.NaN;

    @TargetApi(20)
    public static int a(Context context) {
        int i;
        int i2 = 1;
        if (context == null || context.getApplicationContext() == null) {
            i = -1;
        } else {
            Intent registerReceiver = context.getApplicationContext().registerReceiver(null, f3931a);
            boolean z = ((registerReceiver == null ? 0 : registerReceiver.getIntExtra("plugged", 0)) & 7) != 0;
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            if (powerManager == null) {
                i = -1;
            } else {
                int i3 = k.a(20) ? powerManager.isInteractive() : powerManager.isScreenOn() ? 1 : 0;
                if (!z) {
                    i2 = 0;
                }
                i = (i3 << 1) | i2;
            }
        }
        return i;
    }

    public static float b(Context context) {
        float f;
        synchronized (g.class) {
            try {
                if (SystemClock.elapsedRealtime() - f3932b >= 60000 || Float.isNaN(c)) {
                    Intent registerReceiver = context.getApplicationContext().registerReceiver(null, f3931a);
                    if (registerReceiver != null) {
                        c = registerReceiver.getIntExtra("level", -1) / registerReceiver.getIntExtra("scale", -1);
                    }
                    f3932b = SystemClock.elapsedRealtime();
                    f = c;
                } else {
                    f = c;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f;
    }
}
