package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/acv.class */
final class acv implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f39927a;

    /* renamed from: b */
    private final /* synthetic */ String f39928b;

    /* renamed from: c */
    private final /* synthetic */ int f39929c;

    /* renamed from: d */
    private final /* synthetic */ int f39930d;

    /* renamed from: e */
    private final /* synthetic */ long f39931e;

    /* renamed from: f */
    private final /* synthetic */ long f39932f;

    /* renamed from: g */
    private final /* synthetic */ boolean f39933g;

    /* renamed from: h */
    private final /* synthetic */ int f39934h;

    /* renamed from: i */
    private final /* synthetic */ int f39935i;

    /* renamed from: j */
    private final /* synthetic */ acu f39936j;

    public acv(acu acuVar, String str, String str2, int i, int i2, long j, long j2, boolean z, int i3, int i4) {
        this.f39936j = acuVar;
        this.f39927a = str;
        this.f39928b = str2;
        this.f39929c = i;
        this.f39930d = i2;
        this.f39931e = j;
        this.f39932f = j2;
        this.f39933g = z;
        this.f39934h = i3;
        this.f39935i = i4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheProgress");
        hashMap.put("src", this.f39927a);
        hashMap.put("cachedSrc", this.f39928b);
        hashMap.put("bytesLoaded", Integer.toString(this.f39929c));
        hashMap.put("totalBytes", Integer.toString(this.f39930d));
        hashMap.put("bufferedDuration", Long.toString(this.f39931e));
        hashMap.put("totalDuration", Long.toString(this.f39932f));
        hashMap.put("cacheReady", this.f39933g ? "1" : "0");
        hashMap.put("playerCount", Integer.toString(this.f39934h));
        hashMap.put("playerPreparedCount", Integer.toString(this.f39935i));
        this.f39936j.m18872a("onPrecacheEvent", hashMap);
    }
}
