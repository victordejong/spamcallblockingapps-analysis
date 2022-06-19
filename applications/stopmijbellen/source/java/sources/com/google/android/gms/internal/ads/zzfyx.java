package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfyx.class */
final class zzfyx implements zzfyz {
    public final /* synthetic */ zzfyu zza;
    public final /* synthetic */ zzfyi zzb;

    public zzfyx(zzfyu zzfyuVar, zzfyi zzfyiVar) {
        this.zza = zzfyuVar;
        this.zzb = zzfyiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfyz
    public final <Q> zzfya<Q> zza(Class<Q> cls) throws GeneralSecurityException {
        try {
            return new zzfyt(this.zza, this.zzb, cls);
        } catch (IllegalArgumentException e) {
            throw new GeneralSecurityException("Primitive type not supported", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfyz
    public final zzfya<?> zzb() {
        zzfyu zzfyuVar = this.zza;
        return new zzfyt(zzfyuVar, this.zzb, zzfyuVar.zzc());
    }

    @Override // com.google.android.gms.internal.ads.zzfyz
    public final Class<?> zzc() {
        return this.zza.getClass();
    }

    @Override // com.google.android.gms.internal.ads.zzfyz
    public final Class<?> zzd() {
        return this.zzb.getClass();
    }

    @Override // com.google.android.gms.internal.ads.zzfyz
    public final Set<Class<?>> zze() {
        return this.zza.zzg();
    }
}
