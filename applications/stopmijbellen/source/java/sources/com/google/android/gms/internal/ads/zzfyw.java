package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfyw.class */
final class zzfyw implements zzfyz {
    public final /* synthetic */ zzfyi zza;

    public zzfyw(zzfyi zzfyiVar) {
        this.zza = zzfyiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfyz
    public final <Q> zzfya<Q> zza(Class<Q> cls) throws GeneralSecurityException {
        try {
            return new zzfyc(this.zza, cls);
        } catch (IllegalArgumentException e) {
            throw new GeneralSecurityException("Primitive type not supported", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfyz
    public final zzfya<?> zzb() {
        zzfyi zzfyiVar = this.zza;
        return new zzfyc(zzfyiVar, zzfyiVar.zzc());
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
        return this.zza.zzg();
    }
}
