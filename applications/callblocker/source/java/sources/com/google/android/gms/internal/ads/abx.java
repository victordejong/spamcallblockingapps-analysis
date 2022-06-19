package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/abx.class */
public final class abx implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f7780a;

    /* renamed from: b */
    private final /* synthetic */ String f7781b;

    /* renamed from: c */
    private final /* synthetic */ int f7782c;

    /* renamed from: d */
    private final /* synthetic */ abt f7783d;

    public abx(abt abtVar, String str, String str2, int i) {
        this.f7783d = abtVar;
        this.f7780a = str;
        this.f7781b = str2;
        this.f7782c = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheComplete");
        hashMap.put("src", this.f7780a);
        hashMap.put("cachedSrc", this.f7781b);
        hashMap.put("totalBytes", Integer.toString(this.f7782c));
        this.f7783d.m13657a("onPrecacheEvent", hashMap);
    }
}
