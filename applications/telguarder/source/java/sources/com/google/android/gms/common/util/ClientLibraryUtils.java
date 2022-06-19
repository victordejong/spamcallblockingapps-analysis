package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.gms.common.wrappers.Wrappers;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/ClientLibraryUtils.class */
public class ClientLibraryUtils {
    private ClientLibraryUtils() {
    }

    public static int getClientVersion(Context context, String str) {
        PackageInfo packageInfo;
        Bundle bundle;
        try {
            packageInfo = Wrappers.packageManager(context).getPackageInfo(str, 128);
        } catch (PackageManager.NameNotFoundException e) {
            packageInfo = null;
        }
        if (packageInfo == null || packageInfo.applicationInfo == null || (bundle = packageInfo.applicationInfo.metaData) == null) {
            return -1;
        }
        return bundle.getInt("com.google.android.gms.version", -1);
    }

    public static boolean isPackageSide() {
        return false;
    }
}
