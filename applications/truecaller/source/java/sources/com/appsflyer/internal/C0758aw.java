package com.appsflyer.internal;

import android.support.annotation.NonNull;
import com.appsflyer.AFLogger;
import java.util.List;
import p193e.p1432d.p1433a.p1434a.AbstractC22076i;
import p193e.p1432d.p1433a.p1434a.C22080k;
import p193e.p1432d.p1433a.p1434a.C22086n;
/* renamed from: com.appsflyer.internal.aw */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/aw.class */
public final class C0758aw implements AbstractC22076i {
    private /* synthetic */ RunnableC0754av values;

    public C0758aw(RunnableC0754av runnableC0754av) {
        this.values = runnableC0754av;
    }

    @Override // p193e.p1432d.p1433a.p1434a.AbstractC22076i
    public final void onBillingServiceDisconnected() {
    }

    @Override // p193e.p1432d.p1433a.p1434a.AbstractC22076i
    public final void onBillingSetupFinished(@NonNull final C22080k c22080k) {
        final RunnableC0754av runnableC0754av = this.values;
        runnableC0754av.values.submit(new Runnable() { // from class: com.appsflyer.internal.av.5
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    if (c22080k.f61377a != 0 || RunnableC0754av.this.valueOf.AFInAppEventType("ars_history_sent")) {
                        return;
                    }
                    C22086n.C22087a mo8815g = RunnableC0754av.this.AFInAppEventType.mo8815g("subs");
                    List<C22086n> list = mo8815g.f61388a;
                    if (mo8815g.f61389b.f61377a == 0 && list != null && !list.isEmpty()) {
                        RunnableC0754av.AFKeystoreWrapper(RunnableC0754av.this, true, list);
                        return;
                    }
                    AFLogger.values("Failed to query purchases history");
                } catch (Throwable th) {
                    if ((th instanceof NoSuchMethodError) || (th instanceof NoClassDefFoundError)) {
                        AFLogger.values("It seems your app uses different Play Billing library version than the SDK. Please use v.3.0.3");
                    }
                    AFLogger.values("Failed to log purchases history", th);
                }
            }
        });
    }
}
