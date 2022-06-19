package com.huawei.hms.common.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.huawei.agconnect.AGConnectInstance;
import com.huawei.agconnect.AGConnectOptionsBuilder;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.HMSPackageManager;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/common/util/AGCUtils.class */
public class AGCUtils {
    /* renamed from: a */
    public static String m38094a(Context context) {
        Bundle bundle;
        Object obj;
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            HMSLog.m37195e("AGCUtils", "In getMetaDataAppId, Failed to get 'PackageManager' instance.");
            return "";
        }
        try {
            ApplicationInfo applicationInfo = packageManager.getPackageInfo(context.getPackageName(), 128).applicationInfo;
            if (applicationInfo == null || (bundle = applicationInfo.metaData) == null || (obj = bundle.get("com.huawei.hms.client.appid")) == null) {
                HMSLog.m37195e("AGCUtils", "In getMetaDataAppId, Failed to read meta data for the AppID.");
                return "";
            }
            String valueOf = String.valueOf(obj);
            String str = valueOf;
            if (valueOf.startsWith("appid=")) {
                str = valueOf.substring(6);
            }
            return str;
        } catch (PackageManager.NameNotFoundException e) {
            HMSLog.m37195e("AGCUtils", "In getMetaDataAppId, Failed to read meta data for the AppID.");
            return "";
        } catch (RuntimeException e2) {
            HMSLog.m37194e("AGCUtils", "In getMetaDataAppId, Failed to read meta data for the AppID.", e2);
            return "";
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:49:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0121  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m38093a(android.content.Context r3, java.lang.String r4) {
        /*
            Method dump skipped, instructions count: 336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.common.util.AGCUtils.m38093a(android.content.Context, java.lang.String):java.lang.String");
    }

    /* renamed from: b */
    public static String m38092b(Context context) {
        Bundle bundle;
        Object obj;
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            HMSLog.m37195e("AGCUtils", "In getMetaDataCpId, Failed to get 'PackageManager' instance.");
            return "";
        }
        try {
            ApplicationInfo applicationInfo = packageManager.getPackageInfo(context.getPackageName(), 128).applicationInfo;
            if (applicationInfo == null || (bundle = applicationInfo.metaData) == null || (obj = bundle.get("com.huawei.hms.client.cpid")) == null) {
                HMSLog.m37193i("AGCUtils", "In getMetaDataCpId, Failed to read meta data for the CpId.");
                return "";
            }
            String valueOf = String.valueOf(obj);
            String str = valueOf;
            if (valueOf.startsWith("cpid=")) {
                str = valueOf.substring(5);
            }
            return str;
        } catch (PackageManager.NameNotFoundException e) {
            HMSLog.m37195e("AGCUtils", "In getMetaDataCpId, Failed to read meta data for the CpId.");
            return "";
        } catch (RuntimeException e2) {
            HMSLog.m37194e("AGCUtils", "In getMetaDataCpId, Failed to read meta data for the CpId.", e2);
            return "";
        }
    }

    /* renamed from: c */
    public static boolean m38091c(Context context) {
        return context.getPackageName().equals(HMSPackageManager.getInstance(context).getHMSPackageNameForMultiService());
    }

    public static String getAppId(Context context) {
        String str;
        if (m38091c(context)) {
            String m38093a = m38093a(context, "client/app_id");
            str = m38093a;
            if (!TextUtils.isEmpty(m38093a)) {
                return m38093a;
            }
        } else {
            str = null;
        }
        try {
            AGConnectInstance aGConnectInstance = AGConnectInstance.getInstance();
            AGConnectInstance aGConnectInstance2 = aGConnectInstance;
            if (aGConnectInstance.getContext() != context) {
                aGConnectInstance2 = AGConnectInstance.buildInstance(new AGConnectOptionsBuilder().build(context));
            }
            str = aGConnectInstance2.getOptions().getString("client/app_id");
        } catch (NullPointerException e) {
            HMSLog.m37195e("AGCUtils", "Get appId with AGConnectServicesConfig failed");
        }
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        String m38094a = m38094a(context);
        return !TextUtils.isEmpty(m38094a) ? m38094a : m38093a(context, "client/app_id");
    }

    public static String getCpId(Context context) {
        String str;
        if (m38091c(context)) {
            return m38093a(context, "client/cp_id");
        }
        try {
            AGConnectInstance aGConnectInstance = AGConnectInstance.getInstance();
            AGConnectInstance aGConnectInstance2 = aGConnectInstance;
            if (aGConnectInstance.getContext() != context) {
                aGConnectInstance2 = AGConnectInstance.buildInstance(new AGConnectOptionsBuilder().build(context));
            }
            str = aGConnectInstance2.getOptions().getString("client/cp_id");
        } catch (NullPointerException e) {
            HMSLog.m37195e("AGCUtils", "Get cpid with AGConnectServicesConfig failed");
            str = null;
        }
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        String m38092b = m38092b(context);
        return !TextUtils.isEmpty(m38092b) ? m38092b : m38093a(context, "client/cp_id");
    }
}
