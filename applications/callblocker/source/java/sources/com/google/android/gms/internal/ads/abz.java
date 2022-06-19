package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/abz.class */
public final class abz implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f7794a;

    /* renamed from: b */
    private final /* synthetic */ String f7795b;

    /* renamed from: c */
    private final /* synthetic */ String f7796c;

    /* renamed from: d */
    private final /* synthetic */ String f7797d;

    /* renamed from: e */
    private final /* synthetic */ abt f7798e;

    public abz(abt abtVar, String str, String str2, String str3, String str4) {
        this.f7798e = abtVar;
        this.f7794a = str;
        this.f7795b = str2;
        this.f7796c = str3;
        this.f7797d = str4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String m13656c;
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheCanceled");
        hashMap.put("src", this.f7794a);
        if (!TextUtils.isEmpty(this.f7795b)) {
            hashMap.put("cachedSrc", this.f7795b);
        }
        abt abtVar = this.f7798e;
        m13656c = abt.m13656c(this.f7796c);
        hashMap.put("type", m13656c);
        hashMap.put("reason", this.f7796c);
        if (!TextUtils.isEmpty(this.f7797d)) {
            hashMap.put("message", this.f7797d);
        }
        this.f7798e.m13657a("onPrecacheEvent", hashMap);
    }
}
