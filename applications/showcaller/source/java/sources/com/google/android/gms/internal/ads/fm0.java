package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fm0.class */
public final class fm0 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ String f22971d;

    /* renamed from: e */
    final /* synthetic */ String f22972e;

    /* renamed from: f */
    final /* synthetic */ int f22973f;

    /* renamed from: g */
    final /* synthetic */ int f22974g;

    /* renamed from: h */
    final /* synthetic */ long f22975h;

    /* renamed from: i */
    final /* synthetic */ long f22976i;

    /* renamed from: j */
    final /* synthetic */ boolean f22977j;

    /* renamed from: k */
    final /* synthetic */ int f22978k;

    /* renamed from: l */
    final /* synthetic */ int f22979l;

    /* renamed from: m */
    final /* synthetic */ km0 f22980m;

    public fm0(km0 km0Var, String str, String str2, int i, int i2, long j, long j2, boolean z, int i3, int i4) {
        this.f22980m = km0Var;
        this.f22971d = str;
        this.f22972e = str2;
        this.f22973f = i;
        this.f22974g = i2;
        this.f22975h = j;
        this.f22976i = j2;
        this.f22977j = z;
        this.f22978k = i3;
        this.f22979l = i4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheProgress");
        hashMap.put("src", this.f22971d);
        hashMap.put("cachedSrc", this.f22972e);
        hashMap.put("bytesLoaded", Integer.toString(this.f22973f));
        hashMap.put("totalBytes", Integer.toString(this.f22974g));
        hashMap.put("bufferedDuration", Long.toString(this.f22975h));
        hashMap.put("totalDuration", Long.toString(this.f22976i));
        hashMap.put("cacheReady", true != this.f22977j ? "0" : "1");
        hashMap.put("playerCount", Integer.toString(this.f22978k));
        hashMap.put("playerPreparedCount", Integer.toString(this.f22979l));
        km0.m13851v(this.f22980m, "onPrecacheEvent", hashMap);
    }
}
