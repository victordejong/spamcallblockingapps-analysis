package com.huawei.hms.stats;

import android.content.Context;
import com.huawei.hianalytics.process.HiAnalyticsInstance;
import com.huawei.hms.utils.HMSBIInitializer;
import java.util.LinkedHashMap;
/* renamed from: com.huawei.hms.stats.b */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/stats/b.class */
public class C2454b {

    /* renamed from: a */
    public static HiAnalyticsInstance f7784a;

    /* renamed from: a */
    public static HiAnalyticsInstance m37228a(Context context) {
        HiAnalyticsInstance analyticsInstance = HMSBIInitializer.getInstance(context).getAnalyticsInstance();
        f7784a = analyticsInstance;
        return analyticsInstance;
    }

    /* renamed from: a */
    public static void m37227a(Context context, int i) {
        if (m37228a(context) != null) {
            f7784a.onReport(i);
        }
    }

    /* renamed from: a */
    public static void m37226a(Context context, int i, String str, LinkedHashMap<String, String> linkedHashMap) {
        if (m37228a(context) != null) {
            f7784a.onEvent(i, str, linkedHashMap);
        }
    }

    /* renamed from: a */
    public static void m37225a(Context context, String str, String str2) {
        if (m37228a(context) != null) {
            f7784a.onEvent(context, str, str2);
        }
    }
}
