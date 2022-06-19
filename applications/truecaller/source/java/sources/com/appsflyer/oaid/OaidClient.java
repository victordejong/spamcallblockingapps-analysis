package com.appsflyer.oaid;

import android.content.Context;
import com.huawei.hms.ads.identifier.AdvertisingIdClient;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/appsflyer/oaid/OaidClient.class */
public class OaidClient {
    private final Context context;
    private final Logger logger;
    private final long timeout;
    private final TimeUnit unit;

    /* loaded from: classes-dex2jar.jar:com/appsflyer/oaid/OaidClient$Info.class */
    public static class Info {

        /* renamed from: id */
        private final String f2147id;
        private final Boolean lat;

        public Info(String str) {
            this(str, null);
        }

        public Info(String str, Boolean bool) {
            this.f2147id = str;
            this.lat = bool;
        }

        public String getId() {
            return this.f2147id;
        }

        public Boolean getLat() {
            return this.lat;
        }
    }

    public OaidClient(Context context) {
        this(context, 1L, TimeUnit.SECONDS);
    }

    public OaidClient(Context context, long j, TimeUnit timeUnit) {
        Logger logger = Logger.getLogger("AppsFlyerOaid6.2.4");
        this.logger = logger;
        this.context = context;
        this.timeout = j;
        this.unit = timeUnit;
        logger.setLevel(Level.OFF);
    }

    private Info fetchHuawei() {
        try {
            FutureTask futureTask = new FutureTask(new Callable<Info>() { // from class: com.appsflyer.oaid.OaidClient.1
                @Override // java.util.concurrent.Callable
                public Info call() {
                    AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(OaidClient.this.context);
                    if (advertisingIdInfo == null) {
                        return null;
                    }
                    return new Info(advertisingIdInfo.getId(), Boolean.valueOf(advertisingIdInfo.isLimitAdTrackingEnabled()));
                }
            });
            new Thread(futureTask).start();
            return (Info) futureTask.get(this.timeout, this.unit);
        } catch (Throwable th) {
            this.logger.info(th.getMessage());
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0023, code lost:
        if (((java.lang.Integer) java.lang.Class.forName(com.huawei.hms.framework.common.EmuiUtil.BUILDEX_VERSION).getDeclaredField(com.huawei.hms.framework.common.EmuiUtil.EMUI_SDK_INT).get(null)).intValue() > 0) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean isHuawei() {
        /*
            r0 = 0
            r3 = r0
            java.lang.String r0 = android.os.Build.BRAND     // Catch: java.lang.Throwable -> L2a
            java.lang.String r1 = "huawei"
            boolean r0 = r0.equalsIgnoreCase(r1)     // Catch: java.lang.Throwable -> L2a
            if (r0 != 0) goto L26
            java.lang.String r0 = "com.huawei.android.os.BuildEx$VERSION"
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch: java.lang.Throwable -> L2a
            java.lang.String r1 = "EMUI_SDK_INT"
            java.lang.reflect.Field r0 = r0.getDeclaredField(r1)     // Catch: java.lang.Throwable -> L2a
            r1 = 0
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.Throwable -> L2a
            java.lang.Integer r0 = (java.lang.Integer) r0     // Catch: java.lang.Throwable -> L2a
            int r0 = r0.intValue()     // Catch: java.lang.Throwable -> L2a
            r4 = r0
            r0 = r4
            if (r0 <= 0) goto L28
        L26:
            r0 = 1
            r3 = r0
        L28:
            r0 = r3
            return r0
        L2a:
            r5 = move-exception
            goto L28
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.oaid.OaidClient.isHuawei():boolean");
    }

    private static boolean isMsaAvailableAtRuntime() {
        return true;
    }

    public Info fetch() {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            Info fetchHuawei = isHuawei() ? fetchHuawei() : isMsaAvailableAtRuntime() ? OaidMsaClient.fetchMsa(this.context, this.logger, this.timeout, this.unit) : null;
            Logger logger = this.logger;
            logger.info("Fetch " + (System.currentTimeMillis() - currentTimeMillis) + " ms");
            return fetchHuawei;
        } catch (Throwable th) {
            this.logger.info(th.getMessage());
            return null;
        }
    }

    public void setLogging(boolean z) {
        this.logger.setLevel(z ? null : Level.OFF);
    }
}
