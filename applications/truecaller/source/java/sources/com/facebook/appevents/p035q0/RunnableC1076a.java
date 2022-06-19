package com.facebook.appevents.p035q0;

import com.facebook.internal.p037u0.p040m.C1220a;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.facebook.appevents.q0.a */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/q0/a.class */
public final /* synthetic */ class RunnableC1076a implements Runnable {

    /* renamed from: a */
    public static final /* synthetic */ RunnableC1076a f2969a = new RunnableC1076a();

    @Override // java.lang.Runnable
    public final void run() {
        C1083h c1083h = C1083h.f2989a;
        if (C1220a.m41623b(C1083h.class)) {
            return;
        }
        try {
            AtomicBoolean atomicBoolean = C1083h.f2990b;
            if (atomicBoolean.get()) {
                return;
            }
            atomicBoolean.set(true);
            C1083h.f2989a.m41796a();
        } catch (Throwable th) {
            C1220a.m41624a(th, C1083h.class);
        }
    }
}
