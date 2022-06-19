package com.google.android.gms.ads.internal.util;

import android.content.Context;
/* renamed from: com.google.android.gms.ads.internal.util.w1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/w1.class */
public final class RunnableC5746w1 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ Context f18588d;

    /* renamed from: e */
    final /* synthetic */ C5679c2 f18589e;

    public RunnableC5746w1(C5679c2 c5679c2, Context context) {
        this.f18589e = c5679c2;
        this.f18588d = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        Object obj2;
        obj = this.f18589e.f18456f;
        synchronized (obj) {
            this.f18589e.f18457g = C5679c2.m18054u(this.f18588d);
            obj2 = this.f18589e.f18456f;
            obj2.notifyAll();
        }
    }
}
