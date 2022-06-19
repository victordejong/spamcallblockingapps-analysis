package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfuh.class */
public final class zzfuh implements zzful {
    public final /* synthetic */ zzftm zza;

    public zzfuh(zzftm zzftmVar) {
        this.zza = zzftmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzful
    public final <Q> zzftm<Q> zza(Class<Q> cls) throws GeneralSecurityException {
        if (this.zza.zze().equals(cls)) {
            return this.zza;
        }
        throw new InternalError("This should never be called, as we always first check supportedPrimitives.");
    }

    @Override // com.google.android.gms.internal.ads.zzful
    public final zzftm<?> zzb() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzful
    public final Class<?> zzc() {
        return this.zza.getClass();
    }

    @Override // com.google.android.gms.internal.ads.zzful
    public final Set<Class<?>> zzd() {
        return Collections.singleton(this.zza.zze());
    }

    @Override // com.google.android.gms.internal.ads.zzful
    public final Class<?> zze() {
        return null;
    }
}
