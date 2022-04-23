package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* renamed from: com.google.android.gms.internal.ads.ks */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ks.class */
final class RunnableC1822ks implements Runnable {

    /* renamed from: b */
    final /* synthetic */ String f7053b;

    /* renamed from: c */
    final /* synthetic */ String f7054c;

    /* renamed from: d */
    final /* synthetic */ int f7055d;

    /* renamed from: e */
    final /* synthetic */ int f7056e;

    /* renamed from: f */
    final /* synthetic */ AbstractC1912qs f7057f;

    RunnableC1822ks(AbstractC1912qs qsVar, String str, String str2, int i, int i2, boolean z) {
        this.f7057f = qsVar;
        this.f7053b = str;
        this.f7054c = str2;
        this.f7055d = i;
        this.f7056e = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheProgress");
        hashMap.put("src", this.f7053b);
        hashMap.put("cachedSrc", this.f7054c);
        hashMap.put("bytesLoaded", Integer.toString(this.f7055d));
        hashMap.put("totalBytes", Integer.toString(this.f7056e));
        hashMap.put("cacheReady", "0");
        AbstractC1912qs.m6048u(this.f7057f, "onPrecacheEvent", hashMap);
    }
}
