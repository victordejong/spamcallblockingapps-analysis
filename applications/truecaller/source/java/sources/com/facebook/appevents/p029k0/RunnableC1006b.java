package com.facebook.appevents.p029k0;

import android.content.Context;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import p193e.p1538j.C23228f0;
import s1.z.c.l;
/* renamed from: com.facebook.appevents.k0.b */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/k0/b.class */
public final /* synthetic */ class RunnableC1006b implements Runnable {

    /* renamed from: a */
    public static final /* synthetic */ RunnableC1006b f2769a = new RunnableC1006b();

    @Override // java.lang.Runnable
    public final void run() {
        Class<?> m41896b;
        C23228f0 c23228f0 = C23228f0.f64291a;
        Context m7354a = C23228f0.m7354a();
        C1020k c1020k = C1020k.f2811a;
        ArrayList<String> m41892f = C1020k.m41892f(m7354a, C1012h.f2781h);
        ArrayList<String> arrayList = m41892f;
        if (m41892f.isEmpty()) {
            Object obj = C1012h.f2781h;
            if (!C1220a.m41623b(C1020k.class)) {
                try {
                    l.e(m7354a, AnalyticsConstants.CONTEXT);
                    arrayList = new ArrayList<>();
                    if (obj != null && (m41896b = c1020k.m41896b(m7354a, "com.android.vending.billing.IInAppBillingService")) != null && c1020k.m41895c(m41896b, "getPurchaseHistory") != null) {
                        arrayList = c1020k.m41897a(c1020k.m41894d(m7354a, obj, "inapp"));
                    }
                } catch (Throwable th) {
                    C1220a.m41624a(th, C1020k.class);
                }
            }
            arrayList = null;
        }
        C1012h.m41913a(C1012h.f2774a, m7354a, arrayList, false);
    }
}
