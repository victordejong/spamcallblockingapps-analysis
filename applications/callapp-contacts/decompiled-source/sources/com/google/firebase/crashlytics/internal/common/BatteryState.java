package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.firebase.crashlytics.internal.Logger;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/common/BatteryState.class */
class BatteryState {
    static final int VELOCITY_CHARGING = 2;
    static final int VELOCITY_FULL = 3;
    static final int VELOCITY_UNPLUGGED = 1;
    private final Float level;
    private final boolean powerConnected;

    private BatteryState(Float f, boolean z) {
        this.powerConnected = z;
        this.level = f;
    }

    public static BatteryState get(Context context) {
        Float f;
        r9 = false;
        boolean z = false;
        try {
            Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            f = null;
            if (registerReceiver != null) {
                boolean isPowerConnected = isPowerConnected(registerReceiver);
                z = isPowerConnected;
                f = getLevel(registerReceiver);
                z = isPowerConnected;
            }
        } catch (IllegalStateException e) {
            Logger.getLogger().e("An error occurred getting battery state.", e);
            f = null;
        }
        return new BatteryState(f, z);
    }

    private static Float getLevel(Intent intent) {
        int intExtra = intent.getIntExtra("level", -1);
        int intExtra2 = intent.getIntExtra("scale", -1);
        if (intExtra == -1 || intExtra2 == -1) {
            return null;
        }
        return Float.valueOf(intExtra / intExtra2);
    }

    private static boolean isPowerConnected(Intent intent) {
        int intExtra = intent.getIntExtra("status", -1);
        if (intExtra == -1) {
            return false;
        }
        return intExtra == 2 || intExtra == 5;
    }

    public Float getBatteryLevel() {
        return this.level;
    }

    public int getBatteryVelocity() {
        Float f;
        if (!this.powerConnected || (f = this.level) == null) {
            return 1;
        }
        return ((double) f.floatValue()) < 0.99d ? 2 : 3;
    }

    boolean isPowerConnected() {
        return this.powerConnected;
    }
}
