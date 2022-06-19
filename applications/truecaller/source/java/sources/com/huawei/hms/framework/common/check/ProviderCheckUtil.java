package com.huawei.hms.framework.common.check;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.net.Uri;
import com.huawei.hms.framework.common.ContextHolder;
import com.huawei.hms.framework.common.Logger;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/common/check/ProviderCheckUtil.class */
public class ProviderCheckUtil {
    private static String TAG = "ProviderCheckUtil";

    public static boolean isValid(Uri uri) {
        boolean z = false;
        if (uri != null) {
            PackageManager packageManager = ContextHolder.getAppContext().getPackageManager();
            ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(uri.getAuthority(), 0);
            if (resolveContentProvider != null) {
                ApplicationInfo applicationInfo = resolveContentProvider.applicationInfo;
                z = false;
                if (applicationInfo != null) {
                    String str = applicationInfo.packageName;
                    Logger.m38042v(TAG, "Target provider service's package name is : " + str);
                    z = false;
                    if (str != null) {
                        z = false;
                        if (packageManager.checkSignatures("com.huawei.hwid", str) == 0) {
                            z = true;
                        }
                    }
                }
            } else {
                Logger.m38040w(TAG, "Invalid param");
                z = false;
            }
        }
        return z;
    }
}
