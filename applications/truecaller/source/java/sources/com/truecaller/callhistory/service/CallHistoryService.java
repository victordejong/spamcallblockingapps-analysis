package com.truecaller.callhistory.service;

import android.os.Build;
import android.os.Trace;
import java.lang.reflect.Method;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import p1727n3.p1807k.p1816e.C26516h;
import p193e.p194a.p1187r2.ServiceC19863i;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcom/truecaller/callhistory/service/CallHistoryService;", "Le/a/r2/i;", "Ls1/s;", "onCreate", "()V", "onDestroy", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes6-dex2jar.jar:com/truecaller/callhistory/service/CallHistoryService.class */
public final class CallHistoryService extends ServiceC19863i {
    public CallHistoryService() {
        super("call-history", TimeUnit.SECONDS.toMillis(30L), true);
    }

    @Override // p193e.p194a.p1187r2.ServiceC19863i, android.app.Service
    public void onCreate() {
        super.onCreate();
        Method method = C26516h.f74306b;
        if (Build.VERSION.SDK_INT >= 29) {
            Trace.beginAsyncSection("Call Log: Service thread running", 1000);
            return;
        }
        try {
            C26516h.f74306b.invoke(null, Long.valueOf(C26516h.f74305a), "Call Log: Service thread running", 1000);
        } catch (Exception e) {
        }
    }

    @Override // p193e.p194a.p1187r2.ServiceC19863i, android.app.Service
    public void onDestroy() {
        Method method = C26516h.f74306b;
        if (Build.VERSION.SDK_INT >= 29) {
            Trace.endAsyncSection("Call Log: Service thread running", 1000);
        } else {
            try {
                C26516h.f74307c.invoke(null, Long.valueOf(C26516h.f74305a), "Call Log: Service thread running", 1000);
            } catch (Exception e) {
            }
        }
        super.onDestroy();
    }
}
