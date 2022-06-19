package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* renamed from: com.google.android.gms.internal.ads.ms */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ms.class */
final class RunnableC1852ms implements Runnable {

    /* renamed from: b */
    final /* synthetic */ String f7628b;

    /* renamed from: c */
    final /* synthetic */ String f7629c;

    /* renamed from: d */
    final /* synthetic */ int f7630d;

    /* renamed from: e */
    final /* synthetic */ int f7631e;

    /* renamed from: f */
    final /* synthetic */ long f7632f;

    /* renamed from: g */
    final /* synthetic */ long f7633g;

    /* renamed from: h */
    final /* synthetic */ boolean f7634h;

    /* renamed from: i */
    final /* synthetic */ int f7635i;

    /* renamed from: j */
    final /* synthetic */ int f7636j;

    /* renamed from: k */
    final /* synthetic */ AbstractC1912qs f7637k;

    public RunnableC1852ms(AbstractC1912qs abstractC1912qs, String str, String str2, int i, int i2, long j, long j2, boolean z, int i3, int i4) {
        this.f7637k = abstractC1912qs;
        this.f7628b = str;
        this.f7629c = str2;
        this.f7630d = i;
        this.f7631e = i2;
        this.f7632f = j;
        this.f7633g = j2;
        this.f7634h = z;
        this.f7635i = i3;
        this.f7636j = i4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheProgress");
        hashMap.put("src", this.f7628b);
        hashMap.put("cachedSrc", this.f7629c);
        hashMap.put("bytesLoaded", Integer.toString(this.f7630d));
        hashMap.put("totalBytes", Integer.toString(this.f7631e));
        hashMap.put("bufferedDuration", Long.toString(this.f7632f));
        hashMap.put("totalDuration", Long.toString(this.f7633g));
        hashMap.put("cacheReady", true != this.f7634h ? "0" : "1");
        hashMap.put("playerCount", Integer.toString(this.f7635i));
        hashMap.put("playerPreparedCount", Integer.toString(this.f7636j));
        AbstractC1912qs.m6048u(this.f7637k, "onPrecacheEvent", hashMap);
    }
}
