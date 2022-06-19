package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C5667s;
import java.util.HashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/em0.class */
public final class em0 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ String f22272d;

    /* renamed from: e */
    final /* synthetic */ String f22273e;

    /* renamed from: f */
    final /* synthetic */ long f22274f;

    /* renamed from: g */
    final /* synthetic */ long f22275g;

    /* renamed from: h */
    final /* synthetic */ long f22276h;

    /* renamed from: i */
    final /* synthetic */ long f22277i;

    /* renamed from: j */
    final /* synthetic */ long f22278j;

    /* renamed from: k */
    final /* synthetic */ boolean f22279k;

    /* renamed from: l */
    final /* synthetic */ int f22280l;

    /* renamed from: m */
    final /* synthetic */ int f22281m;

    /* renamed from: n */
    final /* synthetic */ km0 f22282n;

    public em0(km0 km0Var, String str, String str2, long j, long j2, long j3, long j4, long j5, boolean z, int i, int i2) {
        this.f22282n = km0Var;
        this.f22272d = str;
        this.f22273e = str2;
        this.f22274f = j;
        this.f22275g = j2;
        this.f22276h = j3;
        this.f22277i = j4;
        this.f22278j = j5;
        this.f22279k = z;
        this.f22280l = i;
        this.f22281m = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheProgress");
        hashMap.put("src", this.f22272d);
        hashMap.put("cachedSrc", this.f22273e);
        hashMap.put("bufferedDuration", Long.toString(this.f22274f));
        hashMap.put("totalDuration", Long.toString(this.f22275g));
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25736l1)).booleanValue()) {
            hashMap.put("qoeLoadedBytes", Long.toString(this.f22276h));
            hashMap.put("qoeCachedBytes", Long.toString(this.f22277i));
            hashMap.put("totalBytes", Long.toString(this.f22278j));
            hashMap.put("reportTime", Long.toString(C5667s.m18153k().mo16807a()));
        }
        hashMap.put("cacheReady", true != this.f22279k ? "0" : "1");
        hashMap.put("playerCount", Integer.toString(this.f22280l));
        hashMap.put("playerPreparedCount", Integer.toString(this.f22281m));
        km0.m13851v(this.f22282n, "onPrecacheEvent", hashMap);
    }
}
