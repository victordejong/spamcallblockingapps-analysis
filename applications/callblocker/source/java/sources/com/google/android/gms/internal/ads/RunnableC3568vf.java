package com.google.android.gms.internal.ads;

import android.content.Context;
/* renamed from: com.google.android.gms.internal.ads.vf */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vf.class */
public final class RunnableC3568vf implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ Context f17506a;

    /* renamed from: b */
    private final /* synthetic */ C3567ve f17507b;

    public RunnableC3568vf(C3567ve c3567ve, Context context) {
        this.f17507b = c3567ve;
        this.f17506a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        Object obj2;
        obj = this.f17507b.f17502e;
        synchronized (obj) {
            this.f17507b.f17503f = C3567ve.m6967c(this.f17506a);
            obj2 = this.f17507b.f17502e;
            obj2.notifyAll();
        }
    }
}
