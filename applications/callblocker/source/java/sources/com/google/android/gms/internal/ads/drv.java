package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/drv.class */
public final class drv {

    /* renamed from: a */
    private final Map<String, String> f15530a = new HashMap();

    /* renamed from: b */
    private Map<String, String> f15531b;

    /* renamed from: a */
    public final Map<String, String> m8787a() {
        Map<String, String> map;
        synchronized (this) {
            if (this.f15531b == null) {
                this.f15531b = Collections.unmodifiableMap(new HashMap(this.f15530a));
            }
            map = this.f15531b;
        }
        return map;
    }
}
