package com.appsflyer.internal;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.appsflyer.AFLogger;
import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.List;
import p193e.p1432d.p1433a.p1434a.AbstractC22093q;
import p193e.p1432d.p1433a.p1434a.AbstractC22097t;
import p193e.p1432d.p1433a.p1434a.C22080k;
import p193e.p1432d.p1433a.p1434a.C22086n;
import p193e.p1432d.p1433a.p1434a.C22095r;
import p193e.p1432d.p1433a.p1434a.C22096s;
/* renamed from: com.appsflyer.internal.at */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/at.class */
public final class C0752at implements AbstractC22093q {
    private /* synthetic */ RunnableC0754av values;

    public C0752at(RunnableC0754av runnableC0754av) {
        this.values = runnableC0754av;
    }

    @Override // p193e.p1432d.p1433a.p1434a.AbstractC22093q
    public final void onPurchasesUpdated(C22080k c22080k, final List<C22086n> list) {
        final RunnableC0754av runnableC0754av = this.values;
        try {
            if (c22080k.f61377a != 0 || list == null) {
                StringBuilder sb = new StringBuilder("Failed to setup Ars Play billing service: ");
                sb.append(c22080k.f61377a);
                sb.append(StringConstant.SPACE);
                sb.append(c22080k.f61378b);
                AFLogger.values(sb.toString());
            } else if (runnableC0754av.AFInAppEventType == null) {
                AFLogger.values("Got Ars billing callback but billing client is missing!");
            } else {
                ArrayList arrayList = new ArrayList();
                for (C22086n c22086n : list) {
                    arrayList.add(c22086n.getSku());
                }
                ArrayList arrayList2 = new ArrayList(arrayList);
                C22096s c22096s = new C22096s();
                c22096s.f61405a = "subs";
                c22096s.f61406b = arrayList2;
                runnableC0754av.AFInAppEventType.mo8813i(c22096s, new AbstractC22097t() { // from class: com.appsflyer.internal.av.4
                    @Override // p193e.p1432d.p1433a.p1434a.AbstractC22097t
                    public final void onSkuDetailsResponse(@NonNull C22080k c22080k2, @Nullable List<C22095r> list2) {
                        try {
                            if (c22080k2.f61377a != 0 || list2 == null) {
                                return;
                            }
                            ArrayList arrayList3 = new ArrayList();
                            for (C22095r c22095r : list2) {
                                arrayList3.add(c22095r.m8801a());
                            }
                            ArrayList arrayList4 = new ArrayList();
                            for (C22086n c22086n2 : list) {
                                if (arrayList3.contains(c22086n2.getSku())) {
                                    arrayList4.add(c22086n2);
                                }
                            }
                            if (arrayList4.isEmpty()) {
                                return;
                            }
                            RunnableC0754av.AFKeystoreWrapper(runnableC0754av, false, arrayList4);
                        } catch (Throwable th) {
                            if ((th instanceof NoSuchMethodError) || (th instanceof NoClassDefFoundError)) {
                                AFLogger.values("It seems your app uses different Play Billing library version than the SDK. Please use v.3.0.3");
                            }
                            AFLogger.values("Failed to log new purchase", th);
                        }
                    }
                });
            }
        } catch (Throwable th) {
            if ((th instanceof NoSuchMethodError) || (th instanceof NoClassDefFoundError)) {
                AFLogger.values("It seems your app uses different Play Billing library version than the SDK. Please use v.3.0.3");
            }
            AFLogger.values("Failed to query new purchase details", th);
        }
    }
}
