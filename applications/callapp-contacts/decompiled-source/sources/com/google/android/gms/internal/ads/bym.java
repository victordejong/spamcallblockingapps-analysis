package com.google.android.gms.internal.ads;

import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bym.class */
public final class bym {

    /* renamed from: a  reason: collision with root package name */
    final ConcurrentHashMap<String, os> f25400a = new ConcurrentHashMap<>();

    /* renamed from: b  reason: collision with root package name */
    final bjg f25401b;

    public bym(bjg bjgVar) {
        this.f25401b = bjgVar;
    }

    public final os a(String str) {
        if (this.f25400a.containsKey(str)) {
            return this.f25400a.get(str);
        }
        return null;
    }
}
