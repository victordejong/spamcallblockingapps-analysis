package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzox.class */
public final class zzox {
    private final Map<String, String> zzbjf = new HashMap();
    private Map<String, String> zzbjg;

    public final Map<String, String> zzis() {
        Map<String, String> map;
        synchronized (this) {
            if (this.zzbjg == null) {
                this.zzbjg = Collections.unmodifiableMap(new HashMap(this.zzbjf));
            }
            map = this.zzbjg;
        }
        return map;
    }
}
