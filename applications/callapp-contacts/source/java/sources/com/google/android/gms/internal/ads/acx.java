package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/acx.class */
public final class acx implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f39948a;

    /* renamed from: b */
    private final /* synthetic */ String f39949b;

    /* renamed from: c */
    private final /* synthetic */ long f39950c;

    /* renamed from: d */
    private final /* synthetic */ acu f39951d;

    public acx(acu acuVar, String str, String str2, long j) {
        this.f39951d = acuVar;
        this.f39948a = str;
        this.f39949b = str2;
        this.f39950c = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheComplete");
        hashMap.put("src", this.f39948a);
        hashMap.put("cachedSrc", this.f39949b);
        hashMap.put("totalDuration", Long.toString(this.f39950c));
        this.f39951d.m18872a("onPrecacheEvent", hashMap);
    }
}
