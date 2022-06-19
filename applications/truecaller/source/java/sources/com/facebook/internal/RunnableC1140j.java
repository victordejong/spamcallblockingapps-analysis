package com.facebook.internal;

import com.facebook.internal.C1146l0;
import com.facebook.internal.p037u0.p040m.C1220a;
/* renamed from: com.facebook.internal.j */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/j.class */
public final /* synthetic */ class RunnableC1140j implements Runnable {

    /* renamed from: a */
    public static final /* synthetic */ RunnableC1140j f3134a = new RunnableC1140j();

    @Override // java.lang.Runnable
    public final void run() {
        C1146l0 c1146l0 = C1146l0.f3146a;
        if (C1220a.m41623b(C1146l0.class)) {
            return;
        }
        try {
            for (C1146l0.AbstractC1151e abstractC1151e : C1146l0.f3148c) {
                abstractC1151e.m41714a(true);
            }
            C1146l0.f3150e.set(false);
        } catch (Throwable th) {
            C1220a.m41624a(th, C1146l0.class);
        }
    }
}
