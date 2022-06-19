package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbln.class */
public final class zzbln {
    private static final AtomicReference<zzblm> zzb = new AtomicReference<>();
    public static final AtomicBoolean zza = new AtomicBoolean();

    public static zzblm zza() {
        return zzb.get();
    }

    public static void zzb(zzblm zzblmVar) {
        zzb.set(zzblmVar);
    }
}
