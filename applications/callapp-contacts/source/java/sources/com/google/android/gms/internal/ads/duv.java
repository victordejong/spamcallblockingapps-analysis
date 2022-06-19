package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/duv.class */
public final class duv<T> {

    /* renamed from: a */
    private final Map<String, AtomicReference<T>> f47645a = new HashMap();

    /* renamed from: a */
    public final AtomicReference<T> m15696a(String str) {
        synchronized (this) {
            if (!this.f47645a.containsKey(str)) {
                this.f47645a.put(str, new AtomicReference<>());
            }
        }
        return this.f47645a.get(str);
    }
}
