package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/act.class */
final class act implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ String f23114a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ String f23115b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ int f23116c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ int f23117d;
    private final /* synthetic */ boolean e = false;
    private final /* synthetic */ acu f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public act(acu acuVar, String str, String str2, int i, int i2, boolean z) {
        this.f = acuVar;
        this.f23114a = str;
        this.f23115b = str2;
        this.f23116c = i;
        this.f23117d = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheProgress");
        hashMap.put("src", this.f23114a);
        hashMap.put("cachedSrc", this.f23115b);
        hashMap.put("bytesLoaded", Integer.toString(this.f23116c));
        hashMap.put("totalBytes", Integer.toString(this.f23117d));
        hashMap.put("cacheReady", "0");
        this.f.a("onPrecacheEvent", hashMap);
    }
}
