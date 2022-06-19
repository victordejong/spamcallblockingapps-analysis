package com.huawei.hms.push;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.huawei.hms.aaid.HmsInstanceId;
import com.huawei.hms.aaid.plugin.ProxyCenter;
import com.huawei.hms.aaid.plugin.PushProxy;
import com.huawei.hms.framework.common.hianalytics.HianalyticsBaseData;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.hms.push.utils.p093ha.PushAnalyticsCenter;
import com.huawei.hms.push.utils.p093ha.PushBaseAnalytics;
import com.huawei.hms.support.log.HMSLog;
/* renamed from: com.huawei.hms.push.e */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/push/e.class */
public class C2427e {

    /* renamed from: a */
    public static final String f7719a = "e";

    /* renamed from: a */
    public static Bundle m37351a(Context context, String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("sdkVer", String.valueOf(60300301));
        bundle.putString("pkgName", context.getPackageName());
        bundle.putString("aaid", HmsInstanceId.getInstance(context).getId());
        PushProxy proxy = ProxyCenter.getProxy();
        if (proxy != null) {
            bundle.putString("proxyType", proxy.getProxyType());
        }
        bundle.putString(RemoteMessageConst.MSGID, str);
        if (!TextUtils.isEmpty(str2)) {
            bundle.putString(RemoteMessageConst.ANALYTIC_INFO, str2);
        }
        return bundle;
    }

    /* renamed from: a */
    public static void m37352a(Context context, Bundle bundle, String str) {
        PushBaseAnalytics pushAnalytics;
        if (bundle == null || (pushAnalytics = PushAnalyticsCenter.getInstance().getPushAnalytics()) == null) {
            return;
        }
        bundle.putString(HianalyticsBaseData.SDK_VERSION, String.valueOf(60300301));
        String str2 = f7719a;
        HMSLog.m37193i(str2, "eventId:" + str);
        pushAnalytics.report(context, str, bundle);
    }

    /* renamed from: a */
    public static void m37350a(Context context, String str, String str2, String str3) {
        PushBaseAnalytics pushAnalytics = PushAnalyticsCenter.getInstance().getPushAnalytics();
        if (pushAnalytics == null) {
            return;
        }
        Bundle m37351a = m37351a(context, str, str2);
        String str4 = f7719a;
        HMSLog.m37193i(str4, "eventId:" + str3);
        pushAnalytics.report(context, str3, m37351a);
    }
}
