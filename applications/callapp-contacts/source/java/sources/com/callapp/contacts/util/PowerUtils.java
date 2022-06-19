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
    /* renamed from: a */
    public static void m27429a(Context context, final Task.DoneListener doneListener) {
        if (Build.VERSION.SDK_INT < 23) {
            if (doneListener == null) {
                return;
            }
            doneListener.onDone();
        } else if (isIgnoringBatteryOptimizations()) {
            if (doneListener == null) {
                return;
            }
            doneListener.onDone();
        } else {
            Intent intent = new Intent();
            final String packageName = CallAppApplication.get().getPackageName();
            final PowerManager powerManager = (PowerManager) CallAppApplication.get().getSystemService("power");
            AnalyticsManager.get().m28449a(Constants.PERMISSIONS, "Run in background", "show dialog");
            intent.setAction("android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS");
            intent.setData(Uri.parse("package:".concat(String.valueOf(packageName))));
            Activities.m27683a(context, intent, new ActivityResult() { // from class: com.callapp.contacts.util._$$Lambda$PowerUtils$iKBn3NIPjEbljhsKb2pys5dpSLc
                @Override // com.callapp.contacts.manager.popup.ActivityResult
                public final void onActivityResult(Activity activity, int i, int i2, Intent intent2) {
                    PowerUtils.m27428a(powerManager, packageName, doneListener, activity, i, i2, intent2);
                }
            });
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m27428a(PowerManager powerManager, String str, Task.DoneListener doneListener, Activity activity, int i, int i2, Intent intent) {
        if (powerManager == null || !powerManager.isIgnoringBatteryOptimizations(str)) {
            AnalyticsManager.get().m28449a(Constants.PERMISSIONS, "Run in background", "Declined");
        } else {
            AnalyticsManager.get().m28449a(Constants.PERMISSIONS, "Run in background", "Approved");
        }
        if (doneListener != null) {
            doneListener.onDone();
        }
    }

    /* renamed from: a */
    public static boolean m27430a(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver != null) {
            int intExtra = registerReceiver.getIntExtra("plugged", -1);
            return intExtra == 1 || intExtra == 2;
        }
        return false;
    }

    /* renamed from: b */
    public static float m27427b(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver != null) {
            return registerReceiver.getIntExtra("level", -1) / registerReceiver.getIntExtra("scale", -1);
        }
        return 1.0f;
    }

    public static boolean isConnectedToPower() {
        return m27430a(Singletons.get().getApplication());
    }

    public static boolean isIgnoringBatteryOptimizations() {
        String packageName = CallAppApplication.get().getPackageName();
        PowerManager powerManager = (PowerManager) CallAppApplication.get().getSystemService("power");
        return Build.VERSION.SDK_INT >= 23 && powerManager != null && powerManager.isIgnoringBatteryOptimizations(packageName);
    }

    public static boolean isPowerSaverOn() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ((PowerManager) Singletons.m28493a("power")).isPowerSaveMode();
        }
        return false;
    }

    public static boolean isScreenOn() {
        PowerManager powerManager = (PowerManager) Singletons.m28493a("power");
        WindowManager windowManager = (WindowManager) Singletons.m28493a("window");
        if (powerManager == null || !powerManager.isInteractive()) {
            return windowManager != null && windowManager.getDefaultDisplay().getState() == 2;
        }
        return true;
    }
}
