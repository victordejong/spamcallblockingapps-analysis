package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/acy.class */
public final class acy implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ String f23133a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ String f23134b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ int f23135c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ acu f23136d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public acy(acu acuVar, String str, String str2, int i) {
        this.f23136d = acuVar;
        this.f23133a = str;
        this.f23134b = str2;
        this.f23135c = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheComplete");
        hashMap.put("src", this.f23133a);
        hashMap.put("cachedSrc", this.f23134b);
        hashMap.put("totalBytes", Integer.toString(this.f23135c));
        this.f23136d.a("onPrecacheEvent", hashMap);
    }
}
