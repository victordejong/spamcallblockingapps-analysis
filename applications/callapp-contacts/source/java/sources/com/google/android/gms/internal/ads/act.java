package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/act.class */
final class act implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f39918a;

    /* renamed from: b */
    private final /* synthetic */ String f39919b;

    /* renamed from: c */
    private final /* synthetic */ int f39920c;

    /* renamed from: d */
    private final /* synthetic */ int f39921d;

    /* renamed from: e */
    private final /* synthetic */ boolean f39922e = false;

    /* renamed from: f */
    private final /* synthetic */ acu f39923f;

    public act(acu acuVar, String str, String str2, int i, int i2, boolean z) {
        this.f39923f = acuVar;
        this.f39918a = str;
        this.f39919b = str2;
        this.f39920c = i;
        this.f39921d = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheProgress");
        hashMap.put("src", this.f39918a);
        hashMap.put("cachedSrc", this.f39919b);
        hashMap.put("bytesLoaded", Integer.toString(this.f39920c));
        hashMap.put("totalBytes", Integer.toString(this.f39921d));
        hashMap.put("cacheReady", "0");
        this.f39923f.m18872a("onPrecacheEvent", hashMap);
    }
}
