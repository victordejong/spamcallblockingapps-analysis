package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdu.class */
public final class zzdu {
    private final Map<String, String> zza = new HashMap();
    private Map<String, String> zzb;

    public final Map<String, String> zza() {
        Map<String, String> map;
        synchronized (this) {
            if (this.zzb == null) {
                this.zzb = Collections.unmodifiableMap(new HashMap(this.zza));
            }
            map = this.zzb;
        }
        return map;
    }
}
