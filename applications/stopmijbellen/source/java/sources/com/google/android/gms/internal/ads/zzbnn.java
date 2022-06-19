package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbnn.class */
public final class zzbnn {
    private static final AtomicReference<zzbnl> zzb = new AtomicReference<>();
    private static final AtomicReference<zzbnm> zzc = new AtomicReference<>();
    public static final AtomicBoolean zza = new AtomicBoolean();

    public static zzbnl zza() {
        return zzb.get();
    }

    public static zzbnm zzb() {
        return zzc.get();
    }

    public static void zzc(zzbnl zzbnlVar) {
        zzb.set(zzbnlVar);
    }
}
