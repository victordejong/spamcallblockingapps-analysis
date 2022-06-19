package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import java.net.HttpURLConnection;
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/bq$5.class */
public final class bq$5 implements Runnable {
    private /* synthetic */ bq AFInAppEventType;
    private /* synthetic */ C0726ai valueOf;

    public bq$5(bq bqVar, C0726ai c0726ai) {
        this.AFInAppEventType = bqVar;
        this.valueOf = c0726ai;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            bq bqVar = this.AFInAppEventType;
            bqVar.onConversionDataSuccess = this.valueOf.isStopped();
            HttpURLConnection AFInAppEventParameterName = new RunnableC0725ah(bqVar).AFInAppEventParameterName();
            if (AFInAppEventParameterName == null) {
                return;
            }
            if (AFInAppEventParameterName.getResponseCode() == 200) {
                bq.valueOf(this.AFInAppEventType);
            }
            AFInAppEventParameterName.disconnect();
        } catch (Throwable th) {
            AFLogger.valueOf(th.getMessage(), th);
        }
    }
}
