package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/acx.class */
public final class acx implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ String f23129a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ String f23130b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ long f23131c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ acu f23132d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public acx(acu acuVar, String str, String str2, long j) {
        this.f23132d = acuVar;
        this.f23129a = str;
        this.f23130b = str2;
        this.f23131c = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheComplete");
        hashMap.put("src", this.f23129a);
        hashMap.put("cachedSrc", this.f23130b);
        hashMap.put("totalDuration", Long.toString(this.f23131c));
        this.f23132d.a("onPrecacheEvent", hashMap);
    }
}
