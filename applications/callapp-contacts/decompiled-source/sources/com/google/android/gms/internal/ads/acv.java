package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/acv.class */
final class acv implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ String f23121a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ String f23122b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ int f23123c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ int f23124d;
    private final /* synthetic */ long e;
    private final /* synthetic */ long f;
    private final /* synthetic */ boolean g;
    private final /* synthetic */ int h;
    private final /* synthetic */ int i;
    private final /* synthetic */ acu j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public acv(acu acuVar, String str, String str2, int i, int i2, long j, long j2, boolean z, int i3, int i4) {
        this.j = acuVar;
        this.f23121a = str;
        this.f23122b = str2;
        this.f23123c = i;
        this.f23124d = i2;
        this.e = j;
        this.f = j2;
        this.g = z;
        this.h = i3;
        this.i = i4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheProgress");
        hashMap.put("src", this.f23121a);
        hashMap.put("cachedSrc", this.f23122b);
        hashMap.put("bytesLoaded", Integer.toString(this.f23123c));
        hashMap.put("totalBytes", Integer.toString(this.f23124d));
        hashMap.put("bufferedDuration", Long.toString(this.e));
        hashMap.put("totalDuration", Long.toString(this.f));
        hashMap.put("cacheReady", this.g ? "1" : "0");
        hashMap.put("playerCount", Integer.toString(this.h));
        hashMap.put("playerPreparedCount", Integer.toString(this.i));
        this.j.a("onPrecacheEvent", hashMap);
    }
}
