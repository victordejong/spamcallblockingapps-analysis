package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.vh */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vh.class */
public final class C7071vh {

    /* renamed from: a */
    private final Map<String, String> f31180a = new HashMap();

    /* renamed from: b */
    private Map<String, String> f31181b;

    /* renamed from: a */
    public final Map<String, String> m10023a() {
        Map<String, String> map;
        synchronized (this) {
            if (this.f31181b == null) {
                this.f31181b = Collections.unmodifiableMap(new HashMap(this.f31180a));
            }
            map = this.f31181b;
        }
        return map;
    }
}
