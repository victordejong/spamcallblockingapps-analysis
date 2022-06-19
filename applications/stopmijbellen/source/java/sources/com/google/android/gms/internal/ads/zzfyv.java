package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfyv.class */
final class zzfyv implements zzfyz {
    public final /* synthetic */ zzfya zza;

    public zzfyv(zzfya zzfyaVar) {
        this.zza = zzfyaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfyz
    public final <Q> zzfya<Q> zza(Class<Q> cls) throws GeneralSecurityException {
        if (this.zza.zzc().equals(cls)) {
            return this.zza;
        }
        throw new InternalError("This should never be called, as we always first check supportedPrimitives.");
    }

    @Override // com.google.android.gms.internal.ads.zzfyz
    public final zzfya<?> zzb() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzfyz
    public final Class<?> zzc() {
        return this.zza.getClass();
    }

    @Override // com.google.android.gms.internal.ads.zzfyz
    public final Class<?> zzd() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzfyz
    public final Set<Class<?>> zze() {
        return Collections.singleton(this.zza.zzc());
    }
}
