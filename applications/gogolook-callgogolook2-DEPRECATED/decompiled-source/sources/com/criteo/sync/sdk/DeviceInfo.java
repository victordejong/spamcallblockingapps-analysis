package com.criteo.sync.sdk;

import android.content.Context;
import android.os.Build;
/* loaded from: classes-dex2jar.jar:com/criteo/sync/sdk/DeviceInfo.class */
public class DeviceInfo {
    public static String getAndroidVersion() {
        return Build.VERSION.RELEASE;
    }

    public static int getAndroidVersionNumber() {
        return Build.VERSION.SDK_INT;
    }

    public static String getBundleName(Context context) {
        return context != null ? context.getPackageName() : "no.context";
    }

    public static String getManufacturer() {
        return Build.MANUFACTURER;
    }

    public static String getModel() {
        return Build.MODEL;
    }

    public static String getSDKVersion() {
        return BuildConfig.VERSION_NAME;
    }
}
