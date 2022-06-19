package com.google.android.gms.ads.internal.util;

import android.content.Context;
/* renamed from: com.google.android.gms.ads.internal.util.g1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/g1.class */
public final class RunnableC1420g1 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ Context f5570b;

    /* renamed from: c */
    final /* synthetic */ C1433l1 f5571c;

    public RunnableC1420g1(C1433l1 c1433l1, Context context) {
        this.f5571c = c1433l1;
        this.f5570b = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        Object obj2;
        obj = this.f5571c.f5599d;
        synchronized (obj) {
            this.f5571c.f5600e = C1433l1.m8748s(this.f5570b);
            obj2 = this.f5571c.f5599d;
            obj2.notifyAll();
        }
    }
}
