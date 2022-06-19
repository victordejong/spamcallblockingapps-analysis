package com.facebook.appevents;

import com.facebook.internal.p037u0.p040m.C1220a;
/* renamed from: com.facebook.appevents.b */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/b.class */
public final /* synthetic */ class RunnableC0948b implements Runnable {

    /* renamed from: a */
    public static final /* synthetic */ RunnableC0948b f2617a = new RunnableC0948b();

    @Override // java.lang.Runnable
    public final void run() {
        C1091t c1091t = C1091t.f3016a;
        if (C1220a.m41623b(C1091t.class)) {
            return;
        }
        try {
            C1092u c1092u = C1092u.f3023a;
            C1092u.m41771b(C1091t.f3019d);
            C1091t.f3019d = new C1090s();
        } catch (Throwable th) {
            C1220a.m41624a(th, C1091t.class);
        }
    }
}
