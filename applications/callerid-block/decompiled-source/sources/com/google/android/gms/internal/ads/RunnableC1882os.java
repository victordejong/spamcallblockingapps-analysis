package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* renamed from: com.google.android.gms.internal.ads.os */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/os.class */
final class RunnableC1882os implements Runnable {

    /* renamed from: b */
    final /* synthetic */ String f7898b;

    /* renamed from: c */
    final /* synthetic */ String f7899c;

    /* renamed from: d */
    final /* synthetic */ long f7900d;

    /* renamed from: e */
    final /* synthetic */ AbstractC1912qs f7901e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1882os(AbstractC1912qs qsVar, String str, String str2, long j) {
        this.f7901e = qsVar;
        this.f7898b = str;
        this.f7899c = str2;
        this.f7900d = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheComplete");
        hashMap.put("src", this.f7898b);
        hashMap.put("cachedSrc", this.f7899c);
        hashMap.put("totalDuration", Long.toString(this.f7900d));
        AbstractC1912qs.m6048u(this.f7901e, "onPrecacheEvent", hashMap);
    }
}
