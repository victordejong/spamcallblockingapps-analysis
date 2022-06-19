package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ecj.class */
public final class ecj {

    /* renamed from: a */
    private final Map<String, String> f48688a = new HashMap();

    /* renamed from: b */
    private Map<String, String> f48689b;

    /* renamed from: a */
    public final Map<String, String> m15274a() {
        Map<String, String> map;
        synchronized (this) {
            if (this.f48689b == null) {
                this.f48689b = Collections.unmodifiableMap(new HashMap(this.f48688a));
            }
            map = this.f48689b;
        }
        return map;
    }
}
