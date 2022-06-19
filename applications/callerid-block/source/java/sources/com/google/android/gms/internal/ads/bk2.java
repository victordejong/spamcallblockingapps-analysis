package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bk2.class */
public final class bk2<T> {

    /* renamed from: a */
    private final Map<String, AtomicReference<T>> f6156a = new HashMap();

    /* renamed from: a */
    public final AtomicReference<T> m7964a(String str) {
        synchronized (this) {
            if (!this.f6156a.containsKey(str)) {
                this.f6156a.put(str, new AtomicReference<>());
            }
        }
        return this.f6156a.get(str);
    }
}
