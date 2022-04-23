package com.mixpanel.android.mpmetrics;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import com.mixpanel.android.takeoverinapp.TakeoverInAppActivity;
import com.mixpanel.android.util.MPLog;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/ConfigurationChecker.class */
class ConfigurationChecker {
    public static String LOGTAG = "MixpanelAPI.ConfigurationChecker";
    private static Boolean mTakeoverActivityAvailable;

    ConfigurationChecker() {
    }

    public static boolean checkBasicConfiguration(Context context) {
        PackageManager packageManager = context.getPackageManager();
        String packageName = context.getPackageName();
        if (packageManager == null || packageName == null) {
            MPLog.m305w(LOGTAG, "Can't check configuration when using a Context with null packageManager or packageName");
            return false;
        } else if (packageManager.checkPermission("android.permission.INTERNET", packageName) == 0) {
            return true;
        } else {
            MPLog.m305w(LOGTAG, "Package does not have permission android.permission.INTERNET - Mixpanel will not work at all!");
            MPLog.m309i(LOGTAG, "You can fix this by adding the following to your AndroidManifest.xml file:\n<uses-permission android:name=\"android.permission.INTERNET\" />");
            return false;
        }
    }

    public static boolean checkTakeoverInAppActivityAvailable(Context context) {
        if (mTakeoverActivityAvailable == null) {
            if (Build.VERSION.SDK_INT < 16) {
                mTakeoverActivityAvailable = false;
                return false;
            }
            Intent intent = new Intent(context, TakeoverInAppActivity.class);
            intent.addFlags(268435456);
            intent.addFlags(131072);
            if (context.getPackageManager().queryIntentActivities(intent, 0).size() == 0) {
                String str = LOGTAG;
                MPLog.m305w(str, TakeoverInAppActivity.class.getName() + " is not registered as an activity in your application, so takeover in-apps can't be shown.");
                MPLog.m309i(LOGTAG, "Please add the child tag <activity android:name=\"com.mixpanel.android.takeoverinapp.TakeoverInAppActivity\" /> to your <application> tag.");
                mTakeoverActivityAvailable = false;
                return false;
            }
            mTakeoverActivityAvailable = true;
        }
        return mTakeoverActivityAvailable.booleanValue();
    }
}
