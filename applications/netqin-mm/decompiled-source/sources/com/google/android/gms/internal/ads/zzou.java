package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzou.class */
public final class zzou {

    /* renamed from: a */
    public final Map<String, String> f28756a = new HashMap();

    /* renamed from: b */
    public Map<String, String> f28757b;

    /* renamed from: a */
    public final Map<String, String> m11706a() {
        Map<String, String> map;
        synchronized (this) {
            if (this.f28757b == null) {
                this.f28757b = Collections.unmodifiableMap(new HashMap(this.f28756a));
            }
            map = this.f28757b;
        }
        return map;
    }
}
