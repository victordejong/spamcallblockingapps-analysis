package com.huawei.hms.stats;

import com.huawei.hms.support.log.HMSLog;
/* renamed from: com.huawei.hms.stats.c */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/stats/c.class */
public class C2455c {

    /* renamed from: a */
    public static final Object f7785a = new Object();

    /* renamed from: b */
    public static boolean f7786b = false;

    /* renamed from: c */
    public static boolean f7787c = false;

    /* renamed from: a */
    public static boolean m37224a() {
        boolean z;
        synchronized (f7785a) {
            if (!f7786b) {
                boolean z2 = false;
                try {
                    Class.forName("com.huawei.hianalytics.process.HiAnalyticsInstance");
                    z = true;
                } catch (ClassNotFoundException e) {
                    HMSLog.m37193i("HianalyticsExist", "In isHianalyticsExist, Failed to find class HiAnalyticsConfig.");
                    z = false;
                }
                try {
                    Class.forName("com.huawei.hms.hatool.HmsHiAnalyticsUtils");
                    z2 = true;
                } catch (ClassNotFoundException e2) {
                    HMSLog.m37193i("HianalyticsExist", "In isHianalyticsExist, Failed to find class HmsHiAnalyticsUtils.");
                }
                if (z && !z2) {
                    f7787c = true;
                }
                f7786b = true;
                HMSLog.m37193i("HianalyticsExist", "hianalytics exist: " + f7787c);
            }
        }
        return f7787c;
    }
}
