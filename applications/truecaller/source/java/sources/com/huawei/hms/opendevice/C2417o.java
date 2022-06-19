package com.huawei.hms.opendevice;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.huawei.agconnect.config.AGConnectServicesConfig;
import com.huawei.hms.aaid.HmsInstanceId;
import com.huawei.hms.aaid.entity.DeleteTokenReq;
import com.huawei.hms.aaid.entity.TokenReq;
import com.huawei.hms.aaid.utils.PushPreferences;
import com.huawei.hms.push.HmsMessaging;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.Util;
import java.util.UUID;
/* renamed from: com.huawei.hms.opendevice.o */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/opendevice/o.class */
public class C2417o {
    /* renamed from: a */
    public static DeleteTokenReq m37409a(Context context, String str) {
        return m37407a(context, null, null, str, null);
    }

    /* renamed from: a */
    public static DeleteTokenReq m37408a(Context context, String str, String str2) {
        return m37407a(context, str, null, null, str2);
    }

    /* renamed from: a */
    public static DeleteTokenReq m37407a(Context context, String str, String str2, String str3, String str4) {
        DeleteTokenReq deleteTokenReq = new DeleteTokenReq();
        deleteTokenReq.setAppId(str);
        deleteTokenReq.setScope(str4);
        deleteTokenReq.setProjectId(str2);
        deleteTokenReq.setPkgName(context.getPackageName());
        deleteTokenReq.setSubjectId(str3);
        if (TextUtils.isEmpty(str)) {
            deleteTokenReq.setAppId(Util.getAppId(context));
        }
        if (TextUtils.isEmpty(str4)) {
            deleteTokenReq.setScope(HmsMessaging.DEFAULT_TOKEN_SCOPE);
        }
        if (TextUtils.isEmpty(str2)) {
            deleteTokenReq.setProjectId(m37401d(context));
        }
        return deleteTokenReq;
    }

    /* renamed from: a */
    public static String m37410a(Context context) {
        PushPreferences pushPreferences = new PushPreferences(context, "aaid");
        if (pushPreferences.containsKey("aaid")) {
            return pushPreferences.getString("aaid");
        }
        return null;
    }

    /* renamed from: b */
    public static DeleteTokenReq m37406b(Context context) {
        return m37407a(context, null, null, null, null);
    }

    /* renamed from: b */
    public static TokenReq m37405b(Context context, String str) {
        return m37403b(context, null, null, str, null);
    }

    /* renamed from: b */
    public static TokenReq m37404b(Context context, String str, String str2) {
        return m37403b(context, str, null, null, str2);
    }

    /* renamed from: b */
    public static TokenReq m37403b(Context context, String str, String str2, String str3, String str4) {
        TokenReq tokenReq = new TokenReq();
        tokenReq.setPackageName(context.getPackageName());
        tokenReq.setAppId(str);
        tokenReq.setScope(str4);
        tokenReq.setProjectId(str2);
        tokenReq.setSubjectId(str3);
        tokenReq.setMultiSender(false);
        if (TextUtils.isEmpty(str)) {
            tokenReq.setAppId(Util.getAppId(context));
        }
        if (TextUtils.isEmpty(str2)) {
            tokenReq.setProjectId(m37401d(context));
        }
        if (TextUtils.isEmpty(str4)) {
            tokenReq.setScope(HmsMessaging.DEFAULT_TOKEN_SCOPE);
        }
        i a = i.a(context);
        if (!a.getBoolean("hasRequestAgreement")) {
            tokenReq.setFirstTime(true);
            a.saveBoolean("hasRequestAgreement", true);
        } else {
            tokenReq.setFirstTime(false);
        }
        return tokenReq;
    }

    /* renamed from: c */
    public static String m37402c(Context context) {
        String str;
        synchronized (C2417o.class) {
            try {
                PushPreferences pushPreferences = new PushPreferences(context, "aaid");
                if (pushPreferences.containsKey("aaid")) {
                    str = pushPreferences.getString("aaid");
                } else {
                    str = UUID.randomUUID().toString();
                    pushPreferences.saveString("aaid", str);
                    pushPreferences.saveLong("creationTime", Long.valueOf(System.currentTimeMillis()));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    /* renamed from: d */
    public static String m37401d(Context context) {
        return AGConnectServicesConfig.fromContext(context).getString("client/project_id");
    }

    /* renamed from: e */
    public static boolean m37400e(Context context) {
        Bundle bundle;
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo == null || (bundle = applicationInfo.metaData) == null) {
                return false;
            }
            return !TextUtils.isEmpty(bundle.getString("com.huawei.hms.client.service.name:base"));
        } catch (PackageManager.NameNotFoundException e) {
            HMSLog.m37195e(HmsInstanceId.TAG, "isIntegratedBaseSdk failed.");
            return true;
        }
    }
}
