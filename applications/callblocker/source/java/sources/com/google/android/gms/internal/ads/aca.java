package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aca.class */
public final class aca implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f7799a;

    /* renamed from: b */
    private final /* synthetic */ String f7800b;

    /* renamed from: c */
    private final /* synthetic */ long f7801c;

    /* renamed from: d */
    private final /* synthetic */ abt f7802d;

    public aca(abt abtVar, String str, String str2, long j) {
        this.f7802d = abtVar;
        this.f7799a = str;
        this.f7800b = str2;
        this.f7801c = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheComplete");
        hashMap.put("src", this.f7799a);
        hashMap.put("cachedSrc", this.f7800b);
        hashMap.put("totalDuration", Long.toString(this.f7801c));
        this.f7802d.m13657a("onPrecacheEvent", hashMap);
    }
}
