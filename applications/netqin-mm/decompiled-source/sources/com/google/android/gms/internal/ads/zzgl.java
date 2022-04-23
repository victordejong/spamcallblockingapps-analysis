package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgl.class */
public final class zzgl<T> {

    /* renamed from: a */
    public final Map<String, AtomicReference<T>> f28234a = new HashMap();

    /* renamed from: a */
    public final AtomicReference<T> m12119a(String str) {
        synchronized (this) {
            if (!this.f28234a.containsKey(str)) {
                this.f28234a.put(str, new AtomicReference<>());
            }
        }
        return this.f28234a.get(str);
    }
}
