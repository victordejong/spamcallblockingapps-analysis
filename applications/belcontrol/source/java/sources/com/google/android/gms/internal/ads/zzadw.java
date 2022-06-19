package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzadw.class */
public final class zzadw {
    private static final AtomicReference<zzadx> zzdfd = new AtomicReference<>();
    public static final AtomicBoolean zzdfe = new AtomicBoolean();

    public static void zza(zzadx zzadxVar) {
        zzdfd.set(zzadxVar);
    }

    public static zzadx zztc() {
        return zzdfd.get();
    }
}
