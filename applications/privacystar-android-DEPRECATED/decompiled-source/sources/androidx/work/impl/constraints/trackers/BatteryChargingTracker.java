package androidx.work.impl.constraints.trackers;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.support.annotation.RestrictTo;
import androidx.work.Logger;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/work/impl/constraints/trackers/BatteryChargingTracker.class */
public class BatteryChargingTracker extends BroadcastReceiverConstraintTracker<Boolean> {
    private static final String TAG = Logger.tagWithPrefix("BatteryChrgTracker");

    public BatteryChargingTracker(Context context) {
        super(context);
    }

    private boolean isBatteryChangedIntentCharging(Intent intent) {
        boolean z;
        if (Build.VERSION.SDK_INT >= 23) {
            int intExtra = intent.getIntExtra("status", -1);
            z = true;
            if (intExtra != 2) {
                if (intExtra == 5) {
                    z = true;
                }
                z = false;
            }
        } else {
            if (intent.getIntExtra("plugged", 0) != 0) {
                z = true;
            }
            z = false;
        }
        return z;
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public Boolean getInitialState() {
        Intent registerReceiver = this.mAppContext.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver != null) {
            return Boolean.valueOf(isBatteryChangedIntentCharging(registerReceiver));
        }
        Logger.get().error(TAG, "getInitialState - null intent received", new Throwable[0]);
        return null;
    }

    @Override // androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker
    public IntentFilter getIntentFilter() {
        IntentFilter intentFilter = new IntentFilter();
        if (Build.VERSION.SDK_INT >= 23) {
            intentFilter.addAction("android.os.action.CHARGING");
            intentFilter.addAction("android.os.action.DISCHARGING");
        } else {
            intentFilter.addAction("android.intent.action.ACTION_POWER_CONNECTED");
            intentFilter.addAction("android.intent.action.ACTION_POWER_DISCONNECTED");
        }
        return intentFilter;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
    @Override // androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onBroadcastReceive(android.content.Context r9, @android.support.annotation.NonNull android.content.Intent r10) {
        /*
            r8 = this;
            r0 = r10
            java.lang.String r0 = r0.getAction()
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L_0x000a
            return
        L_0x000a:
            androidx.work.Logger r0 = androidx.work.Logger.get()
            java.lang.String r1 = androidx.work.impl.constraints.trackers.BatteryChargingTracker.TAG
            java.lang.String r2 = "Received %s"
            r3 = 1
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r4 = r3
            r5 = 0
            r6 = r9
            r4[r5] = r6
            java.lang.String r2 = java.lang.String.format(r2, r3)
            r3 = 0
            java.lang.Throwable[] r3 = new java.lang.Throwable[r3]
            r0.debug(r1, r2, r3)
            r0 = r9
            int r0 = r0.hashCode()
            r11 = r0
            r0 = r11
            r1 = -1886648615(0xffffffff8f8c06d9, float:-1.3807703E-29)
            if (r0 == r1) goto L_0x006e
            r0 = r11
            r1 = -54942926(0xfffffffffcb9a332, float:-7.711079E36)
            if (r0 == r1) goto L_0x0060
            r0 = r11
            r1 = 948344062(0x388694fe, float:6.41737E-5)
            if (r0 == r1) goto L_0x0052
            r0 = r11
            r1 = 1019184907(0x3cbf870b, float:0.023379823)
            if (r0 == r1) goto L_0x0044
            goto L_0x007c
        L_0x0044:
            r0 = r9
            java.lang.String r1 = "android.intent.action.ACTION_POWER_CONNECTED"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x007c
            r0 = 2
            r11 = r0
            goto L_0x007e
        L_0x0052:
            r0 = r9
            java.lang.String r1 = "android.os.action.CHARGING"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x007c
            r0 = 0
            r11 = r0
            goto L_0x007e
        L_0x0060:
            r0 = r9
            java.lang.String r1 = "android.os.action.DISCHARGING"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x007c
            r0 = 1
            r11 = r0
            goto L_0x007e
        L_0x006e:
            r0 = r9
            java.lang.String r1 = "android.intent.action.ACTION_POWER_DISCONNECTED"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x007c
            r0 = 3
            r11 = r0
            goto L_0x007e
        L_0x007c:
            r0 = -1
            r11 = r0
        L_0x007e:
            r0 = r11
            switch(r0) {
                case 0: goto L_0x00c0;
                case 1: goto L_0x00b5;
                case 2: goto L_0x00aa;
                case 3: goto L_0x009f;
                default: goto L_0x009c;
            }
        L_0x009c:
            goto L_0x00c8
        L_0x009f:
            r0 = r8
            r1 = 0
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)
            r0.setState(r1)
            goto L_0x00c8
        L_0x00aa:
            r0 = r8
            r1 = 1
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)
            r0.setState(r1)
            goto L_0x00c8
        L_0x00b5:
            r0 = r8
            r1 = 0
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)
            r0.setState(r1)
            goto L_0x00c8
        L_0x00c0:
            r0 = r8
            r1 = 1
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)
            r0.setState(r1)
        L_0x00c8:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.constraints.trackers.BatteryChargingTracker.onBroadcastReceive(android.content.Context, android.content.Intent):void");
    }
}
