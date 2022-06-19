package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.ni */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ni.class */
public final class C6776ni {

    /* renamed from: a */
    private final Map<String, String> f27150a = new HashMap();

    /* renamed from: b */
    private Map<String, String> f27151b;

    /* renamed from: a */
    public final Map<String, String> m12897a() {
        Map<String, String> map;
        synchronized (this) {
            if (this.f27151b == null) {
                this.f27151b = Collections.unmodifiableMap(new HashMap(this.f27150a));
            }
            map = this.f27151b;
        }
        return map;
    }
}
