package com.facebook.appevents.p029k0;

import android.content.Context;
import com.facebook.appevents.p029k0.C1014j;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\bÇ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\tH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\n"}, d2 = {"Lcom/facebook/appevents/iap/InAppPurchaseAutoLogger;", "", "()V", "BILLING_CLIENT_PURCHASE_NAME", "", "logPurchase", "", "startIapLogging", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.k0.i */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/k0/i.class */
public final class C1013i {

    /* renamed from: a */
    public static final C1013i f2782a = new C1013i();

    /* renamed from: b */
    public static final void m41910b(Context context) {
        C1014j c1014j;
        if (C1220a.m41623b(C1013i.class)) {
            return;
        }
        try {
            l.e(context, AnalyticsConstants.CONTEXT);
            if (C1024o.m41875a("com.android.billingclient.api.Purchase") == null) {
                return;
            }
            C1014j.C1016b c1016b = C1014j.f2783s;
            synchronized (c1016b) {
                l.e(context, AnalyticsConstants.CONTEXT);
                if (C1014j.m41909a().get()) {
                    c1014j = C1014j.m41908b();
                } else {
                    c1016b.m41903a(context);
                    C1014j.m41909a().set(true);
                    c1014j = C1014j.m41908b();
                }
            }
            if (c1014j == null || !c1016b.m41900d().get()) {
                return;
            }
            C1021l c1021l = C1021l.f2817a;
            if (!C1021l.m41883d()) {
                c1014j.m41907c("inapp", RunnableC1008d.f2771a);
                return;
            }
            final RunnableC1007c runnableC1007c = RunnableC1007c.f2770a;
            if (C1220a.m41623b(c1014j)) {
                return;
            }
            l.e("inapp", "skuType");
            l.e(runnableC1007c, "queryPurchaseHistoryRunnable");
            final C1014j c1014j2 = c1014j;
            c1014j.m41906d("inapp", new Runnable() { // from class: com.facebook.appevents.k0.e
                @Override // java.lang.Runnable
                public final void run() {
                    C1014j c1014j3 = C1014j.this;
                    Runnable runnable = runnableC1007c;
                    if (C1220a.m41623b(C1014j.class)) {
                        return;
                    }
                    try {
                        l.e(c1014j3, "this$0");
                        l.e(runnable, "$queryPurchaseHistoryRunnable");
                        c1014j3.m41905e("inapp", new ArrayList(c1014j3.f2806r), runnable);
                    } catch (Throwable th) {
                        C1220a.m41624a(th, C1014j.class);
                    }
                }
            });
        } catch (Throwable th) {
            C1220a.m41624a(th, C1013i.class);
        }
    }

    /* renamed from: a */
    public final void m41911a() {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            C1021l c1021l = C1021l.f2817a;
            C1014j.C1016b c1016b = C1014j.f2783s;
            C1021l.m41882e(c1016b.m41902b(), c1016b.m41901c());
            c1016b.m41902b().clear();
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }
}
