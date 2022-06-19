package com.google.android.gms.internal.ads;

import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bym.class */
public final class bym {

    /* renamed from: a */
    final ConcurrentHashMap<String, AbstractC12807os> f45098a = new ConcurrentHashMap<>();

    /* renamed from: b */
    final bjg f45099b;

    public bym(bjg bjgVar) {
        this.f45099b = bjgVar;
    }

    /* renamed from: a */
    public final AbstractC12807os m17564a(String str) {
        if (this.f45098a.containsKey(str)) {
            return this.f45098a.get(str);
        }
        return null;
    }
}
