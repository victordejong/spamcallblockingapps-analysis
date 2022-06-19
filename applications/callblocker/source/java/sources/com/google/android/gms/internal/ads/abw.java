package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/abw.class */
final class abw implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f7774a;

    /* renamed from: b */
    private final /* synthetic */ String f7775b;

    /* renamed from: c */
    private final /* synthetic */ int f7776c;

    /* renamed from: d */
    private final /* synthetic */ int f7777d;

    /* renamed from: e */
    private final /* synthetic */ boolean f7778e = false;

    /* renamed from: f */
    private final /* synthetic */ abt f7779f;

    public abw(abt abtVar, String str, String str2, int i, int i2, boolean z) {
        this.f7779f = abtVar;
        this.f7774a = str;
        this.f7775b = str2;
        this.f7776c = i;
        this.f7777d = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheProgress");
        hashMap.put("src", this.f7774a);
        hashMap.put("cachedSrc", this.f7775b);
        hashMap.put("bytesLoaded", Integer.toString(this.f7776c));
        hashMap.put("totalBytes", Integer.toString(this.f7777d));
        hashMap.put("cacheReady", this.f7778e ? "1" : "0");
        this.f7779f.m13657a("onPrecacheEvent", hashMap);
    }
}
