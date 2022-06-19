package com.facebook.appevents.p029k0;

import android.content.Context;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import p193e.p1538j.C23228f0;
import s1.z.c.l;
/* renamed from: com.facebook.appevents.k0.a */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/k0/a.class */
public final /* synthetic */ class RunnableC1005a implements Runnable {

    /* renamed from: a */
    public static final /* synthetic */ RunnableC1005a f2768a = new RunnableC1005a();

    @Override // java.lang.Runnable
    public final void run() {
        C23228f0 c23228f0 = C23228f0.f64291a;
        Context m7354a = C23228f0.m7354a();
        C1020k c1020k = C1020k.f2811a;
        C1012h.m41913a(C1012h.f2774a, m7354a, C1020k.m41892f(m7354a, C1012h.f2781h), false);
        Object obj = C1012h.f2781h;
        ArrayList<String> arrayList = null;
        if (!C1220a.m41623b(C1020k.class)) {
            try {
                l.e(m7354a, AnalyticsConstants.CONTEXT);
                arrayList = c1020k.m41897a(c1020k.m41893e(m7354a, obj, "subs"));
            } catch (Throwable th) {
                C1220a.m41624a(th, C1020k.class);
            }
        }
        C1012h.m41913a(C1012h.f2774a, m7354a, arrayList, true);
    }
}
