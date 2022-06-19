package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/dm0.class */
final class dm0 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ String f21681d;

    /* renamed from: e */
    final /* synthetic */ String f21682e;

    /* renamed from: f */
    final /* synthetic */ int f21683f;

    /* renamed from: g */
    final /* synthetic */ int f21684g;

    /* renamed from: h */
    final /* synthetic */ km0 f21685h;

    public dm0(km0 km0Var, String str, String str2, int i, int i2, boolean z) {
        this.f21685h = km0Var;
        this.f21681d = str;
        this.f21682e = str2;
        this.f21683f = i;
        this.f21684g = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheProgress");
        hashMap.put("src", this.f21681d);
        hashMap.put("cachedSrc", this.f21682e);
        hashMap.put("bytesLoaded", Integer.toString(this.f21683f));
        hashMap.put("totalBytes", Integer.toString(this.f21684g));
        hashMap.put("cacheReady", "0");
        km0.m13851v(this.f21685h, "onPrecacheEvent", hashMap);
    }
}
