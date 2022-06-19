package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfuj.class */
public final class zzfuj implements zzful {
    public final /* synthetic */ zzfug zza;
    public final /* synthetic */ zzftu zzb;

    public zzfuj(zzfug zzfugVar, zzftu zzftuVar) {
        this.zza = zzfugVar;
        this.zzb = zzftuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzful
    public final <Q> zzftm<Q> zza(Class<Q> cls) throws GeneralSecurityException {
        try {
            return new zzfuf(this.zza, this.zzb, cls);
        } catch (IllegalArgumentException e) {
            throw new GeneralSecurityException("Primitive type not supported", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzful
    public final zzftm<?> zzb() {
        zzfug zzfugVar = this.zza;
        return new zzfuf(zzfugVar, this.zzb, zzfugVar.zzg());
    }

    @Override // com.google.android.gms.internal.ads.zzful
    public final Class<?> zzc() {
        return this.zza.getClass();
    }

    @Override // com.google.android.gms.internal.ads.zzful
    public final Set<Class<?>> zzd() {
        return this.zza.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzful
    public final Class<?> zze() {
        return this.zzb.getClass();
    }
}
