package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hm0.class */
public final class hm0 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ String f23972d;

    /* renamed from: e */
    final /* synthetic */ String f23973e;

    /* renamed from: f */
    final /* synthetic */ long f23974f;

    /* renamed from: g */
    final /* synthetic */ km0 f23975g;

    public hm0(km0 km0Var, String str, String str2, long j) {
        this.f23975g = km0Var;
        this.f23972d = str;
        this.f23973e = str2;
        this.f23974f = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheComplete");
        hashMap.put("src", this.f23972d);
        hashMap.put("cachedSrc", this.f23973e);
        hashMap.put("totalDuration", Long.toString(this.f23974f));
        km0.m13851v(this.f23975g, "onPrecacheEvent", hashMap);
    }
}
