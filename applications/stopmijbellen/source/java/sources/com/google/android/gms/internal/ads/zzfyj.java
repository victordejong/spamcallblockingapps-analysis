package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfyj.class */
public final class zzfyj {
    private final zzgfq zza;

    private zzfyj(zzgfq zzgfqVar) {
        this.zza = zzgfqVar;
    }

    public static final zzfyj zza(zzgfq zzgfqVar) throws GeneralSecurityException {
        if (zzgfqVar == null || zzgfqVar.zza() <= 0) {
            throw new GeneralSecurityException("empty keyset");
        }
        return new zzfyj(zzgfqVar);
    }

    public final String toString() {
        return zzfzb.zza(this.zza).toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <P> P zzb(Class<P> cls) throws GeneralSecurityException {
        Class<?> zze = zzfza.zze(cls);
        if (zze == null) {
            String name = cls.getName();
            throw new GeneralSecurityException(name.length() != 0 ? "No wrapper found for ".concat(name) : new String("No wrapper found for "));
        }
        zzfzb.zzb(this.zza);
        zzfyr zzc = zzfyr.zzc(zze);
        for (zzgfp zzgfpVar : this.zza.zzf()) {
            if (zzgfpVar.zzf() == 3) {
                zzfyo zza = zzc.zza(zzfza.zzf(zzgfpVar.zzc(), zze), zzgfpVar);
                if (zzgfpVar.zza() == this.zza.zzc()) {
                    zzc.zze(zza);
                }
            }
        }
        return (P) zzfza.zzi(zzc, cls);
    }
}
