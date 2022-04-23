package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C1407r;
import java.util.HashMap;
/* renamed from: com.google.android.gms.internal.ads.ls */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ls.class */
final class RunnableC1838ls implements Runnable {

    /* renamed from: b */
    final /* synthetic */ String f7145b;

    /* renamed from: c */
    final /* synthetic */ String f7146c;

    /* renamed from: d */
    final /* synthetic */ long f7147d;

    /* renamed from: e */
    final /* synthetic */ long f7148e;

    /* renamed from: f */
    final /* synthetic */ long f7149f;

    /* renamed from: g */
    final /* synthetic */ long f7150g;

    /* renamed from: h */
    final /* synthetic */ long f7151h;

    /* renamed from: i */
    final /* synthetic */ boolean f7152i;

    /* renamed from: j */
    final /* synthetic */ int f7153j;

    /* renamed from: k */
    final /* synthetic */ int f7154k;

    /* renamed from: l */
    final /* synthetic */ AbstractC1912qs f7155l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1838ls(AbstractC1912qs qsVar, String str, String str2, long j, long j2, long j3, long j4, long j5, boolean z, int i, int i2) {
        this.f7155l = qsVar;
        this.f7145b = str;
        this.f7146c = str2;
        this.f7147d = j;
        this.f7148e = j2;
        this.f7149f = j3;
        this.f7150g = j4;
        this.f7151h = j5;
        this.f7152i = z;
        this.f7153j = i;
        this.f7154k = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheProgress");
        hashMap.put("src", this.f7145b);
        hashMap.put("cachedSrc", this.f7146c);
        hashMap.put("bufferedDuration", Long.toString(this.f7147d));
        hashMap.put("totalDuration", Long.toString(this.f7148e));
        if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7393d1)).booleanValue()) {
            hashMap.put("qoeLoadedBytes", Long.toString(this.f7149f));
            hashMap.put("qoeCachedBytes", Long.toString(this.f7150g));
            hashMap.put("totalBytes", Long.toString(this.f7151h));
            hashMap.put("reportTime", Long.toString(C1407r.m8913k().m8247a()));
        }
        hashMap.put("cacheReady", true != this.f7152i ? "0" : "1");
        hashMap.put("playerCount", Integer.toString(this.f7153j));
        hashMap.put("playerPreparedCount", Integer.toString(this.f7154k));
        AbstractC1912qs.m6048u(this.f7155l, "onPrecacheEvent", hashMap);
    }
}
