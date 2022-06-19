package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aby.class */
public final class aby implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f7784a;

    /* renamed from: b */
    private final /* synthetic */ String f7785b;

    /* renamed from: c */
    private final /* synthetic */ int f7786c;

    /* renamed from: d */
    private final /* synthetic */ int f7787d;

    /* renamed from: e */
    private final /* synthetic */ long f7788e;

    /* renamed from: f */
    private final /* synthetic */ long f7789f;

    /* renamed from: g */
    private final /* synthetic */ boolean f7790g;

    /* renamed from: h */
    private final /* synthetic */ int f7791h;

    /* renamed from: i */
    private final /* synthetic */ int f7792i;

    /* renamed from: j */
    private final /* synthetic */ abt f7793j;

    public aby(abt abtVar, String str, String str2, int i, int i2, long j, long j2, boolean z, int i3, int i4) {
        this.f7793j = abtVar;
        this.f7784a = str;
        this.f7785b = str2;
        this.f7786c = i;
        this.f7787d = i2;
        this.f7788e = j;
        this.f7789f = j2;
        this.f7790g = z;
        this.f7791h = i3;
        this.f7792i = i4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheProgress");
        hashMap.put("src", this.f7784a);
        hashMap.put("cachedSrc", this.f7785b);
        hashMap.put("bytesLoaded", Integer.toString(this.f7786c));
        hashMap.put("totalBytes", Integer.toString(this.f7787d));
        hashMap.put("bufferedDuration", Long.toString(this.f7788e));
        hashMap.put("totalDuration", Long.toString(this.f7789f));
        hashMap.put("cacheReady", this.f7790g ? "1" : "0");
        hashMap.put("playerCount", Integer.toString(this.f7791h));
        hashMap.put("playerPreparedCount", Integer.toString(this.f7792i));
        this.f7793j.m13657a("onPrecacheEvent", hashMap);
    }
}
