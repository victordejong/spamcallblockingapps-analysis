package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/acw.class */
final class acw implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f39937a;

    /* renamed from: b */
    private final /* synthetic */ String f39938b;

    /* renamed from: c */
    private final /* synthetic */ long f39939c;

    /* renamed from: d */
    private final /* synthetic */ long f39940d;

    /* renamed from: e */
    private final /* synthetic */ long f39941e;

    /* renamed from: f */
    private final /* synthetic */ long f39942f;

    /* renamed from: g */
    private final /* synthetic */ long f39943g;

    /* renamed from: h */
    private final /* synthetic */ boolean f39944h;

    /* renamed from: i */
    private final /* synthetic */ int f39945i;

    /* renamed from: j */
    private final /* synthetic */ int f39946j;

    /* renamed from: k */
    private final /* synthetic */ acu f39947k;

    public acw(acu acuVar, String str, String str2, long j, long j2, long j3, long j4, long j5, boolean z, int i, int i2) {
        this.f39947k = acuVar;
        this.f39937a = str;
        this.f39938b = str2;
        this.f39939c = j;
        this.f39940d = j2;
        this.f39941e = j3;
        this.f39942f = j4;
        this.f39943g = j5;
        this.f39944h = z;
        this.f39945i = i;
        this.f39946j = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheProgress");
        hashMap.put("src", this.f39937a);
        hashMap.put("cachedSrc", this.f39938b);
        hashMap.put("bufferedDuration", Long.toString(this.f39939c));
        hashMap.put("totalDuration", Long.toString(this.f39940d));
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42728bl)).booleanValue()) {
            hashMap.put("qoeLoadedBytes", Long.toString(this.f39941e));
            hashMap.put("qoeCachedBytes", Long.toString(this.f39942f));
            hashMap.put("totalBytes", Long.toString(this.f39943g));
            hashMap.put("reportTime", Long.toString(zzr.zzlc().mo19039a()));
        }
        hashMap.put("cacheReady", this.f39944h ? "1" : "0");
        hashMap.put("playerCount", Integer.toString(this.f39945i));
        hashMap.put("playerPreparedCount", Integer.toString(this.f39946j));
        this.f39947k.m18872a("onPrecacheEvent", hashMap);
    }
}
