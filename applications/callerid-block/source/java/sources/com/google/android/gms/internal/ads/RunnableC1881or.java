package com.google.android.gms.internal.ads;

import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.or */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/or.class */
final /* synthetic */ class RunnableC1881or implements Runnable {

    /* renamed from: b */
    private final rq f7890b;

    /* renamed from: c */
    private final Map f7891c;

    RunnableC1881or(rq rqVar, Map map) {
        this.f7890b = rqVar;
        this.f7891c = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7890b.m6705X("onGcacheInfoEvent", this.f7891c);
    }
}
