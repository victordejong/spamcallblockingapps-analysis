package com.huawei.hms.support.hianalytics;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hianalytics.process.HiAnalyticsManager;
import com.huawei.hianalytics.util.HiAnalyticTools;
import com.huawei.hms.hatool.HmsHiAnalyticsUtils;
import com.huawei.hms.stats.C2453a;
import com.huawei.hms.stats.C2454b;
import com.huawei.hms.stats.C2455c;
import com.huawei.hms.support.log.HMSLog;
import com.tenor.android.core.constant.StringConstant;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/support/hianalytics/HiAnalyticsUtils.class */
public class HiAnalyticsUtils {

    /* renamed from: c */
    public static final Object f7809c = new Object();

    /* renamed from: d */
    public static final Object f7810d = new Object();

    /* renamed from: e */
    public static HiAnalyticsUtils f7811e;

    /* renamed from: a */
    public int f7812a = 0;

    /* renamed from: b */
    public boolean f7813b = C2455c.m37224a();

    /* renamed from: a */
    public static LinkedHashMap<String, String> m37204a(Map<String, String> map) {
        LinkedHashMap<String, String> linkedHashMap = new LinkedHashMap<>();
        if (map != null && map.size() > 0) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }

    public static HiAnalyticsUtils getInstance() {
        HiAnalyticsUtils hiAnalyticsUtils;
        synchronized (f7809c) {
            if (f7811e == null) {
                f7811e = new HiAnalyticsUtils();
            }
            hiAnalyticsUtils = f7811e;
        }
        return hiAnalyticsUtils;
    }

    public static String versionCodeToName(String str) {
        if (!TextUtils.isEmpty(str)) {
            if (str.length() != 8 && str.length() != 9) {
                return "";
            }
            try {
                Integer.parseInt(str);
                return Integer.parseInt(str.substring(0, str.length() - 7)) + StringConstant.DOT + Integer.parseInt(str.substring(str.length() - 7, str.length() - 5)) + StringConstant.DOT + Integer.parseInt(str.substring(str.length() - 5, str.length() - 3)) + StringConstant.DOT + Integer.parseInt(str.substring(str.length() - 3));
            } catch (NumberFormatException e) {
                return "";
            }
        }
        return "";
    }

    /* renamed from: a */
    public final void m37205a(Context context) {
        synchronized (f7810d) {
            int i = this.f7812a;
            if (i < 60) {
                this.f7812a = i + 1;
            } else {
                this.f7812a = 0;
                if (!this.f7813b) {
                    HmsHiAnalyticsUtils.onReport();
                } else {
                    C2454b.m37227a(context, 0);
                    C2454b.m37227a(context, 1);
                }
            }
        }
    }

    public void enableLog() {
        HMSLog.m37193i("HiAnalyticsUtils", "Enable Log");
        if (!this.f7813b) {
            HmsHiAnalyticsUtils.enableLog();
        } else {
            HMSLog.m37193i("HiAnalyticsUtils", "cp needs to pass in the context, this method is not supported");
        }
    }

    public void enableLog(Context context) {
        HMSLog.m37193i("HiAnalyticsUtils", "Enable Log");
        if (!this.f7813b) {
            HmsHiAnalyticsUtils.enableLog();
        } else {
            HiAnalyticTools.enableLog(context);
        }
    }

    public boolean getInitFlag() {
        return !this.f7813b ? HmsHiAnalyticsUtils.getInitFlag() : HiAnalyticsManager.getInitFlag(HiAnalyticsConstant.HA_SERVICE_TAG);
    }

    public boolean hasError(Context context) {
        return C2453a.m37229c(context);
    }

    public void onBuoyEvent(Context context, String str, String str2) {
        if (!hasError(context) && context != null) {
            onEvent2(context, str, str2);
        }
    }

    public void onEvent(Context context, String str, Map<String, String> map) {
        if (!hasError(context) && map != null && !map.isEmpty() && context != null && getInitFlag()) {
            if (!this.f7813b) {
                HmsHiAnalyticsUtils.onEvent(0, str, m37204a(map));
                HmsHiAnalyticsUtils.onEvent(1, str, m37204a(map));
            } else {
                C2454b.m37226a(context, 0, str, m37204a(map));
                C2454b.m37226a(context, 1, str, m37204a(map));
            }
            m37205a(context);
        }
    }

    public void onEvent2(Context context, String str, String str2) {
        if (!hasError(context) && context != null && getInitFlag()) {
            if (!this.f7813b) {
                HmsHiAnalyticsUtils.onEvent(context, str, str2);
            } else {
                C2454b.m37225a(context, str, str2);
            }
        }
    }

    public void onNewEvent(Context context, String str, Map map) {
        if (!hasError(context) && map != null && !map.isEmpty() && context != null && getInitFlag()) {
            if (!this.f7813b) {
                HmsHiAnalyticsUtils.onEvent(0, str, m37204a(map));
                HmsHiAnalyticsUtils.onEvent(1, str, m37204a(map));
            } else {
                C2454b.m37226a(context, 0, str, m37204a(map));
                C2454b.m37226a(context, 1, str, m37204a(map));
            }
            m37205a(context);
        }
    }

    public void onNewEvent(Context context, String str, Map map, int i) {
        if (hasError(context)) {
            return;
        }
        if (i != 0 && i != 1) {
            HMSLog.m37195e("HiAnalyticsUtils", "Data reporting type is not supported");
        } else if (map == null || map.isEmpty() || context == null || !getInitFlag()) {
        } else {
            if (!this.f7813b) {
                HmsHiAnalyticsUtils.onEvent(i, str, m37204a(map));
            } else {
                C2454b.m37226a(context, i, str, m37204a(map));
            }
            m37205a(context);
        }
    }

    public void onReport(Context context, String str, Map map) {
        if (!hasError(context) && map != null && !map.isEmpty() && context != null && getInitFlag()) {
            if (!this.f7813b) {
                HmsHiAnalyticsUtils.onEvent(0, str, m37204a(map));
                HmsHiAnalyticsUtils.onEvent(1, str, m37204a(map));
                HmsHiAnalyticsUtils.onReport();
                return;
            }
            C2454b.m37226a(context, 0, str, m37204a(map));
            C2454b.m37226a(context, 1, str, m37204a(map));
            C2454b.m37227a(context, 0);
            C2454b.m37227a(context, 1);
        }
    }

    public void onReport(Context context, String str, Map map, int i) {
        if (hasError(context)) {
            return;
        }
        if (i != 0 && i != 1) {
            HMSLog.m37195e("HiAnalyticsUtils", "Data reporting type is not supported");
        } else if (map == null || map.isEmpty() || context == null || !getInitFlag()) {
        } else {
            if (!this.f7813b) {
                HmsHiAnalyticsUtils.onEvent(i, str, m37204a(map));
                HmsHiAnalyticsUtils.onReport();
                return;
            }
            C2454b.m37226a(context, i, str, m37204a(map));
            C2454b.m37227a(context, i);
        }
    }
}
