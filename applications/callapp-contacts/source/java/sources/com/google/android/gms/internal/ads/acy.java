package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/acy.class */
public final class acy implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f39952a;

    /* renamed from: b */
    private final /* synthetic */ String f39953b;

    /* renamed from: c */
    private final /* synthetic */ int f39954c;

    /* renamed from: d */
    private final /* synthetic */ acu f39955d;

    public acy(acu acuVar, String str, String str2, int i) {
        this.f39955d = acuVar;
        this.f39952a = str;
        this.f39953b = str2;
        this.f39954c = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheComplete");
        hashMap.put("src", this.f39952a);
        hashMap.put("cachedSrc", this.f39953b);
        hashMap.put("totalBytes", Integer.toString(this.f39954c));
        this.f39955d.m18872a("onPrecacheEvent", hashMap);
    }
}
