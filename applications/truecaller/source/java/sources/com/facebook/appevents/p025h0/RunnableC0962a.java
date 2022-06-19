package com.facebook.appevents.p025h0;

import android.content.Context;
import com.facebook.internal.C1165q;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.razorpay.AnalyticsConstants;
import p193e.p1538j.C23228f0;
import s1.z.c.l;
/* renamed from: com.facebook.appevents.h0.a */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/h0/a.class */
public final /* synthetic */ class RunnableC0962a implements Runnable {

    /* renamed from: a */
    public static final /* synthetic */ RunnableC0962a f2652a = new RunnableC0962a();

    @Override // java.lang.Runnable
    public final void run() {
        C0964c c0964c = C0964c.f2655a;
        if (C1220a.m41623b(C0964c.class)) {
            return;
        }
        try {
            C23228f0 c23228f0 = C23228f0.f64291a;
            Context m7354a = C23228f0.m7354a();
            l.e(m7354a, AnalyticsConstants.CONTEXT);
            C1165q m41703b = C1165q.C1166a.m41703b(m7354a);
            if (m41703b != null && m41703b.f3188e) {
                return;
            }
            C0964c.f2655a.m41968a();
            C0964c.f2657c = true;
        } catch (Throwable th) {
            C1220a.m41624a(th, C0964c.class);
        }
    }
}
