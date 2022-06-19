package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.internal.ads.a2 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/a2.class */
public final class C6277a2<T> {

    /* renamed from: a */
    private final Map<String, AtomicReference<T>> f19796a = new HashMap();

    /* renamed from: a */
    public final AtomicReference<T> m16716a(String str) {
        synchronized (this) {
            if (!this.f19796a.containsKey(str)) {
                this.f19796a.put(str, new AtomicReference<>());
            }
        }
        return this.f19796a.get(str);
    }
}
