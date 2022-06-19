package com.huawei.hms.utils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import com.huawei.hms.android.SystemUtils;
import com.huawei.hms.common.util.AGCUtils;
import com.huawei.hms.support.log.HMSLog;
import com.tenor.android.core.constant.StringConstant;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/utils/Util.class */
public class Util {
    private static final String AVAILABLE_LOADED = "availableLoaded";
    private static final Object LOCK_OBJECT = new Object();
    private static final String META_HMSVERSION_NAME = "com.huawei.hms.version";
    private static final String SERVICE_ACTION = "com.huawei.hms.core.internal";
    private static final String TAG = "Util";
    private static boolean availableInit = false;
    private static boolean isAvailableAvailable = false;
    private static String serviceAction;

    public static int compareHmsVersion(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (TextUtils.isEmpty(str2)) {
            return 1;
        }
        if (!StringUtil.checkVersion(str) || !StringUtil.checkVersion(str2)) {
            return 0;
        }
        String[] split = str.split("\\.");
        String[] split2 = str2.split("\\.");
        if (2 >= split.length || 2 >= split2.length) {
            return 0;
        }
        if (Integer.parseInt(split[0]) > Integer.parseInt(split2[0])) {
            return 1;
        }
        if (Integer.parseInt(split[0]) < Integer.parseInt(split2[0])) {
            return -1;
        }
        if (Integer.parseInt(split[1]) > Integer.parseInt(split2[1])) {
            return 1;
        }
        if (Integer.parseInt(split[1]) < Integer.parseInt(split2[1])) {
            return -1;
        }
        if (Integer.parseInt(split[2]) > Integer.parseInt(split2[2])) {
            return 1;
        }
        return Integer.parseInt(split[2]) < Integer.parseInt(split2[2]) ? -1 : 0;
    }

    public static Activity getActiveActivity(Activity activity, Context context) {
        return UIUtil.getActiveActivity(activity, context);
    }

    public static String getAppId(Context context) {
        return AGCUtils.getAppId(context);
    }

    public static String getAppName(Context context, String str) {
        if (context == null) {
            HMSLog.m37195e(TAG, "In getAppName, context is null.");
            return "";
        }
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            HMSLog.m37195e(TAG, "In getAppName, Failed to get 'PackageManager' instance.");
            return "";
        }
        String str2 = str;
        try {
            if (TextUtils.isEmpty(str)) {
                str2 = context.getPackageName();
            }
            CharSequence applicationLabel = packageManager.getApplicationLabel(packageManager.getApplicationInfo(str2, 128));
            return applicationLabel == null ? "" : applicationLabel.toString();
        } catch (PackageManager.NameNotFoundException | Resources.NotFoundException e) {
            HMSLog.m37195e(TAG, "In getAppName, Failed to get app name.");
            return "";
        }
    }

    public static String getCpId(Context context) {
        return AGCUtils.getCpId(context);
    }

    public static int getHmsVersion(Context context) {
        Bundle bundle;
        Object obj;
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            HMSLog.m37195e(TAG, "In getHmsVersion, Failed to get 'PackageManager' instance.");
            return 0;
        }
        try {
            ApplicationInfo applicationInfo = packageManager.getPackageInfo(context.getPackageName(), 128).applicationInfo;
            if (applicationInfo != null && (bundle = applicationInfo.metaData) != null && (obj = bundle.get(META_HMSVERSION_NAME)) != null) {
                String valueOf = String.valueOf(obj);
                if (!TextUtils.isEmpty(valueOf)) {
                    return StringUtil.convertVersion2Integer(valueOf);
                }
            }
            HMSLog.m37193i(TAG, "In getHmsVersion, Failed to read meta data for the HMS VERSION.");
            return 0;
        } catch (PackageManager.NameNotFoundException e) {
            HMSLog.m37195e(TAG, "In getHmsVersion, Failed to read meta data for the HMS VERSION.");
            return 0;
        } catch (RuntimeException e2) {
            HMSLog.m37194e(TAG, "In getHmsVersion, Failed to read meta data for the HMS VERSION.", e2);
            return 0;
        }
    }

    public static String getNetType(Context context) {
        return SystemUtils.getNetType(context);
    }

    public static String getProcessName(Context context, int i) {
        return UIUtil.getProcessName(context, i);
    }

    @Deprecated
    public static String getProductCountry() {
        int lastIndexOf;
        String str = "";
        String systemProperties = getSystemProperties("ro.product.locale.region", "");
        if (!TextUtils.isEmpty(systemProperties)) {
            return systemProperties;
        }
        String systemProperties2 = getSystemProperties("ro.product.locale", "");
        if (!TextUtils.isEmpty(systemProperties2) && (lastIndexOf = systemProperties2.lastIndexOf(StringConstant.DASH)) != -1) {
            return systemProperties2.substring(lastIndexOf + 1);
        }
        String localCountry = SystemUtils.getLocalCountry();
        if (!TextUtils.isEmpty(localCountry)) {
            str = localCountry;
        }
        return str;
    }

    public static String getServiceActionMetadata(Context context) {
        String str = serviceAction;
        if (str != null) {
            return str;
        }
        Intent intent = new Intent("com.huawei.hms.core.internal");
        intent.setPackage(context.getPackageName());
        if (context.getPackageManager().resolveService(intent, 128) != null) {
            serviceAction = "com.huawei.hms.core.internal";
            return "com.huawei.hms.core.internal";
        }
        serviceAction = "";
        return "";
    }

    public static String getSystemProperties(String str, String str2) {
        return SystemUtils.getSystemProperties(str, str2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000a, code lost:
        if (r2.isFinishing() != false) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.app.Activity getValidActivity(android.app.Activity r2, android.app.Activity r3) {
        /*
            r0 = r2
            if (r0 == 0) goto Ld
            r0 = r2
            r4 = r0
            r0 = r2
            boolean r0 = r0.isFinishing()
            if (r0 == 0) goto L22
        Ld:
            r0 = r3
            if (r0 == 0) goto L20
            r0 = r3
            boolean r0 = r0.isFinishing()
            if (r0 == 0) goto L1b
            goto L20
        L1b:
            r0 = r3
            r4 = r0
            goto L22
        L20:
            r0 = 0
            r4 = r0
        L22:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.utils.Util.getValidActivity(android.app.Activity, android.app.Activity):android.app.Activity");
    }

    public static boolean isAvailableLibExist(Context context) {
        boolean z;
        synchronized (LOCK_OBJECT) {
            if (!availableInit) {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null) {
                    HMSLog.m37195e(TAG, "In isAvailableLibExist, Failed to get 'PackageManager' instance.");
                    try {
                        Class.forName("com.huawei.hms.adapter.AvailableAdapter");
                        z = true;
                    } catch (ClassNotFoundException e) {
                        HMSLog.m37195e(TAG, "In isAvailableLibExist, Failed to find class AvailableAdapter.");
                        z = false;
                    }
                    isAvailableAvailable = z;
                    availableInit = true;
                } else {
                    try {
                        try {
                            ApplicationInfo applicationInfo = packageManager.getPackageInfo(context.getPackageName(), 128).applicationInfo;
                            z = false;
                            if (applicationInfo != null) {
                                Bundle bundle = applicationInfo.metaData;
                                z = false;
                                if (bundle != null) {
                                    Object obj = bundle.get(AVAILABLE_LOADED);
                                    z = false;
                                    if (obj != null) {
                                        z = false;
                                        if (String.valueOf(obj).equalsIgnoreCase("yes")) {
                                            HMSLog.m37193i(TAG, "available exist: true");
                                            z = true;
                                        }
                                    }
                                }
                            }
                        } catch (RuntimeException e2) {
                            HMSLog.m37194e(TAG, "In isAvailableLibExist, Failed to read meta data for the availableLoaded.", e2);
                            z = false;
                        }
                    } catch (PackageManager.NameNotFoundException e3) {
                        HMSLog.m37195e(TAG, "In isAvailableLibExist, Failed to read meta data for the availableLoaded.");
                        z = false;
                    }
                    isAvailableAvailable = z;
                    availableInit = true;
                }
            }
        }
        StringBuilder m8728C = C22128a.m8728C("available exist: ");
        m8728C.append(isAvailableAvailable);
        HMSLog.m37193i(TAG, m8728C.toString());
        return isAvailableAvailable;
    }

    public static boolean isChinaROM() {
        return SystemUtils.isChinaROM();
    }

    public static boolean isEMUI() {
        return SystemUtils.isEMUI();
    }

    public static void unBindServiceCatchException(Context context, ServiceConnection serviceConnection) {
        try {
            HMSLog.m37193i(TAG, "Trying to unbind service from " + serviceConnection);
            context.unbindService(serviceConnection);
        } catch (Exception e) {
            C22128a.m8735A0(e, C22128a.m8728C("On unBindServiceException:"), TAG);
        }
    }
}
