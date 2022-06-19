package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cr2.class */
public final class cr2 {

    /* renamed from: a */
    private final Map<String, String> f6291a = new HashMap();

    /* renamed from: b */
    private Map<String, String> f6292b;

    /* renamed from: a */
    public final Map<String, String> m7782a() {
        Map<String, String> map;
        synchronized (this) {
            if (this.f6292b == null) {
                this.f6292b = Collections.unmodifiableMap(new HashMap(this.f6291a));
            }
            map = this.f6292b;
        }
        return map;
    }
}
