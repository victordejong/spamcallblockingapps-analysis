package com.facebook.appevents.p032n0;

import com.facebook.appevents.p035q0.C1083h;
import com.facebook.appevents.p035q0.RunnableC1076a;
import com.facebook.internal.p037u0.p040m.C1220a;
import p193e.p1538j.C23228f0;
/* renamed from: com.facebook.appevents.n0.a */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/n0/a.class */
public final /* synthetic */ class RunnableC1048a implements Runnable {

    /* renamed from: a */
    public static final /* synthetic */ RunnableC1048a f2890a = new RunnableC1048a();

    @Override // java.lang.Runnable
    public final void run() {
        C1056h c1056h = C1056h.f2914a;
        if (C1220a.m41623b(C1056h.class)) {
            return;
        }
        try {
            C1083h c1083h = C1083h.f2989a;
            synchronized (C1083h.class) {
                if (C1220a.m41623b(C1083h.class)) {
                    return;
                }
                C23228f0 c23228f0 = C23228f0.f64291a;
                C23228f0.m7350e().execute(RunnableC1076a.f2969a);
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, C1056h.class);
        }
    }
}
