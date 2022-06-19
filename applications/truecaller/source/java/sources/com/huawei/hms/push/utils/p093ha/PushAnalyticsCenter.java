package com.huawei.hms.push.utils.p093ha;
/* renamed from: com.huawei.hms.push.utils.ha.PushAnalyticsCenter */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/push/utils/ha/PushAnalyticsCenter.class */
public class PushAnalyticsCenter {

    /* renamed from: a */
    public PushBaseAnalytics f7776a;

    /* renamed from: com.huawei.hms.push.utils.ha.PushAnalyticsCenter$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/push/utils/ha/PushAnalyticsCenter$a.class */
    public static class C2445a {

        /* renamed from: a */
        public static PushAnalyticsCenter f7777a = new PushAnalyticsCenter();
    }

    public static PushAnalyticsCenter getInstance() {
        return C2445a.f7777a;
    }

    public PushBaseAnalytics getPushAnalytics() {
        return this.f7776a;
    }

    public void register(PushBaseAnalytics pushBaseAnalytics) {
        this.f7776a = pushBaseAnalytics;
    }
}
