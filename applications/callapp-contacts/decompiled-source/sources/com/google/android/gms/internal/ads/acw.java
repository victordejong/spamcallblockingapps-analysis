package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/acw.class */
final class acw implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ String f23125a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ String f23126b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ long f23127c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ long f23128d;
    private final /* synthetic */ long e;
    private final /* synthetic */ long f;
    private final /* synthetic */ long g;
    private final /* synthetic */ boolean h;
    private final /* synthetic */ int i;
    private final /* synthetic */ int j;
    private final /* synthetic */ acu k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public acw(acu acuVar, String str, String str2, long j, long j2, long j3, long j4, long j5, boolean z, int i, int i2) {
        this.k = acuVar;
        this.f23125a = str;
        this.f23126b = str2;
        this.f23127c = j;
        this.f23128d = j2;
        this.e = j3;
        this.f = j4;
        this.g = j5;
        this.h = z;
        this.i = i;
        this.j = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheProgress");
        hashMap.put("src", this.f23125a);
        hashMap.put("cachedSrc", this.f23126b);
        hashMap.put("bufferedDuration", Long.toString(this.f23127c));
        hashMap.put("totalDuration", Long.toString(this.f23128d));
        if (((Boolean) ekb.e().a(aq.bl)).booleanValue()) {
            hashMap.put("qoeLoadedBytes", Long.toString(this.e));
            hashMap.put("qoeCachedBytes", Long.toString(this.f));
            hashMap.put("totalBytes", Long.toString(this.g));
            hashMap.put("reportTime", Long.toString(zzr.zzlc().a()));
        }
        hashMap.put("cacheReady", this.h ? "1" : "0");
        hashMap.put("playerCount", Integer.toString(this.i));
        hashMap.put("playerPreparedCount", Integer.toString(this.j));
        this.k.a("onPrecacheEvent", hashMap);
    }
}
