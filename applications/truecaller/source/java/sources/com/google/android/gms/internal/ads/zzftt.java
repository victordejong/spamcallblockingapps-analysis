package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzftt.class */
public abstract class zzftt<PrimitiveT, KeyT> {
    private final Class<PrimitiveT> zza;

    public zzftt(Class<PrimitiveT> cls) {
        this.zza = cls;
    }

    public final Class<PrimitiveT> zza() {
        return this.zza;
    }

    public abstract PrimitiveT zzb(KeyT keyt) throws GeneralSecurityException;
}
