package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/abv.class */
public final class abv implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f7766a;

    /* renamed from: b */
    private final /* synthetic */ String f7767b;

    /* renamed from: c */
    private final /* synthetic */ long f7768c;

    /* renamed from: d */
    private final /* synthetic */ long f7769d;

    /* renamed from: e */
    private final /* synthetic */ boolean f7770e;

    /* renamed from: f */
    private final /* synthetic */ int f7771f;

    /* renamed from: g */
    private final /* synthetic */ int f7772g;

    /* renamed from: h */
    private final /* synthetic */ abt f7773h;

    public abv(abt abtVar, String str, String str2, long j, long j2, boolean z, int i, int i2) {
        this.f7773h = abtVar;
        this.f7766a = str;
        this.f7767b = str2;
        this.f7768c = j;
        this.f7769d = j2;
        this.f7770e = z;
        this.f7771f = i;
        this.f7772g = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheProgress");
        hashMap.put("src", this.f7766a);
        hashMap.put("cachedSrc", this.f7767b);
        hashMap.put("bufferedDuration", Long.toString(this.f7768c));
        hashMap.put("totalDuration", Long.toString(this.f7769d));
        hashMap.put("cacheReady", this.f7770e ? "1" : "0");
        hashMap.put("playerCount", Integer.toString(this.f7771f));
        hashMap.put("playerPreparedCount", Integer.toString(this.f7772g));
        this.f7773h.m13657a("onPrecacheEvent", hashMap);
    }
}
