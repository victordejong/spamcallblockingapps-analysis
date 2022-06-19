package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dkd.class */
public final class dkd<T> {

    /* renamed from: a */
    private final Map<String, AtomicReference<T>> f14521a = new HashMap();

    /* renamed from: a */
    public final AtomicReference<T> m9359a(String str) {
        synchronized (this) {
            if (!this.f14521a.containsKey(str)) {
                this.f14521a.put(str, new AtomicReference<>());
            }
        }
        return this.f14521a.get(str);
    }
}
