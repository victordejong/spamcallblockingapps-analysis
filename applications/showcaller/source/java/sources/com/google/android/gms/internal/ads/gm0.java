package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gm0.class */
public final class gm0 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ String f23399d;

    /* renamed from: e */
    final /* synthetic */ String f23400e;

    /* renamed from: f */
    final /* synthetic */ int f23401f;

    /* renamed from: g */
    final /* synthetic */ km0 f23402g;

    public gm0(km0 km0Var, String str, String str2, int i) {
        this.f23402g = km0Var;
        this.f23399d = str;
        this.f23400e = str2;
        this.f23401f = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheComplete");
        hashMap.put("src", this.f23399d);
        hashMap.put("cachedSrc", this.f23400e);
        hashMap.put("totalBytes", Integer.toString(this.f23401f));
        km0.m13851v(this.f23402g, "onPrecacheEvent", hashMap);
    }
}
