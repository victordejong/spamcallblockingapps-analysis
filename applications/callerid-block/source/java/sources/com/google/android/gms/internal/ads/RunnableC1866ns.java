package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* renamed from: com.google.android.gms.internal.ads.ns */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ns.class */
final class RunnableC1866ns implements Runnable {

    /* renamed from: b */
    final /* synthetic */ String f7786b;

    /* renamed from: c */
    final /* synthetic */ String f7787c;

    /* renamed from: d */
    final /* synthetic */ int f7788d;

    /* renamed from: e */
    final /* synthetic */ AbstractC1912qs f7789e;

    public RunnableC1866ns(AbstractC1912qs abstractC1912qs, String str, String str2, int i) {
        this.f7789e = abstractC1912qs;
        this.f7786b = str;
        this.f7787c = str2;
        this.f7788d = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheComplete");
        hashMap.put("src", this.f7786b);
        hashMap.put("cachedSrc", this.f7787c);
        hashMap.put("totalBytes", Integer.toString(this.f7788d));
        AbstractC1912qs.m6048u(this.f7789e, "onPrecacheEvent", hashMap);
    }
}
