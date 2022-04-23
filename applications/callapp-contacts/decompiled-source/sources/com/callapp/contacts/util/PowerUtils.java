package com.callapp.contacts.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Build;
import android.os.PowerManager;
import android.view.WindowManager;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.ActivityResult;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/PowerUtils.class */
public class PowerUtils {
    public static void a(Context context, final Task.DoneListener doneListener) {
        if (Build.VERSION.SDK_INT >= 23) {
            if (!isIgnoringBatteryOptimizations()) {
                Intent intent = new Intent();
                final String packageName = CallAppApplication.get().getPackageName();
                final PowerManager powerManager = (PowerManager) CallAppApplication.get().getSystemService("power");
                AnalyticsManager.get().a(Constants.PERMISSIONS, "Run in background", "show dialog");
                intent.setAction("android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS");
                intent.setData(Uri.parse("package:".concat(String.valueOf(packageName))));
                Activities.a(context, intent, new ActivityResult() { // from class: com.callapp.contacts.util._$$Lambda$PowerUtils$iKBn3NIPjEbljhsKb2pys5dpSLc
                    @Override // com.callapp.contacts.manager.popup.ActivityResult
                    public final void onActivityResult(Activity activity, int i, int i2, Intent intent2) {
                        PowerUtils.a(powerManager, packageName, doneListener, activity, i, i2, intent2);
                    }
                });
            } else if (doneListener != null) {
                doneListener.onDone();
            }
        } else if (doneListener != null) {
            doneListener.onDone();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(PowerManager powerManager, String str, Task.DoneListener doneListener, Activity activity, int i, int i2, Intent intent) {
        if (powerManager == null || !powerManager.isIgnoringBatteryOptimizations(str)) {
            AnalyticsManager.get().a(Constants.PERMISSIONS, "Run in background", "Declined");
        } else {
            AnalyticsManager.get().a(Constants.PERMISSIONS, "Run in background", "Approved");
        }
        if (doneListener != null) {
            doneListener.onDone();
        }
    }

    public static boolean a(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver == null) {
            return false;
        }
        int intExtra = registerReceiver.getIntExtra("plugged", -1);
        return intExtra == 1 || intExtra == 2;
    }

    public static float b(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver == null) {
            return 1.0f;
        }
        return registerReceiver.getIntExtra("level", -1) / registerReceiver.getIntExtra("scale", -1);
    }

    public static boolean isConnectedToPower() {
        return a(Singletons.get().getApplication());
    }

    public static boolean isIgnoringBatteryOptimizations() {
        String packageName = CallAppApplication.get().getPackageName();
        PowerManager powerManager = (PowerManager) CallAppApplication.get().getSystemService("power");
        return Build.VERSION.SDK_INT >= 23 && powerManager != null && powerManager.isIgnoringBatteryOptimizations(packageName);
    }

    public static boolean isPowerSaverOn() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ((PowerManager) Singletons.a("power")).isPowerSaveMode();
        }
        return false;
    }

    public static boolean isScreenOn() {
        PowerManager powerManager = (PowerManager) Singletons.a("power");
        WindowManager windowManager = (WindowManager) Singletons.a("window");
        if (powerManager == null || !powerManager.isInteractive()) {
            return windowManager != null && windowManager.getDefaultDisplay().getState() == 2;
        }
        return true;
    }
}
