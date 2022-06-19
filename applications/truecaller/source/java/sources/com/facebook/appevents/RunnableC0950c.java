package com.facebook.appevents;

import com.facebook.internal.p037u0.p040m.C1220a;
/* renamed from: com.facebook.appevents.c */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/c.class */
public final /* synthetic */ class RunnableC0950c implements Runnable {

    /* renamed from: a */
    public static final /* synthetic */ RunnableC0950c f2623a = new RunnableC0950c();

    @Override // java.lang.Runnable
    public final void run() {
        C1091t c1091t = C1091t.f3016a;
        if (C1220a.m41623b(C1091t.class)) {
            return;
        }
        try {
            C1091t.f3021f = null;
            if (C1096x.f3028c.m41758b() == EnumC1095w.EXPLICIT_ONLY) {
                return;
            }
            C1091t.m41775d(EnumC0947a0.TIMER);
        } catch (Throwable th) {
            C1220a.m41624a(th, C1091t.class);
        }
    }
}
