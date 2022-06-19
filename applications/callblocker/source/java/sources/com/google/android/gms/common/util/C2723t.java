package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.PowerManager;
import android.os.SystemClock;
/* renamed from: com.google.android.gms.common.util.t */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/t.class */
public final class C2723t {

    /* renamed from: b */
    private static long f7539b;

    /* renamed from: a */
    private static final IntentFilter f7538a = new IntentFilter("android.intent.action.BATTERY_CHANGED");

    /* renamed from: c */
    private static float f7540c = Float.NaN;

    @TargetApi(20)
    /* renamed from: a */
    public static int m13809a(Context context) {
        int i;
        if (context == null || context.getApplicationContext() == null) {
            i = -1;
        } else {
            Intent registerReceiver = context.getApplicationContext().registerReceiver(null, f7538a);
            int intExtra = registerReceiver == null ? 0 : registerReceiver.getIntExtra("plugged", 0);
            int i2 = 3;
            if (C2716m.m13839d()) {
                i2 = 7;
            }
            boolean z = (intExtra & i2) != 0;
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            if (powerManager == null) {
                i = -1;
            } else {
                i = (C2716m.m13836g() ? powerManager.isInteractive() : powerManager.isScreenOn() ? 2 : 0) | (z ? 1 : 0);
            }
        }
        return i;
    }

    /* renamed from: b */
    public static float m13808b(Context context) {
        float f;
        synchronized (C2723t.class) {
            try {
                if (SystemClock.elapsedRealtime() - f7539b >= 60000 || Float.isNaN(f7540c)) {
                    Intent registerReceiver = context.getApplicationContext().registerReceiver(null, f7538a);
                    if (registerReceiver != null) {
                        f7540c = registerReceiver.getIntExtra("level", -1) / registerReceiver.getIntExtra("scale", -1);
                    }
                    f7539b = SystemClock.elapsedRealtime();
                    f = f7540c;
                } else {
                    f = f7540c;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f;
    }
}
