package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzftv.class */
public final class zzftv {
    private final zzgbc zza;

    private zzftv(zzgbc zzgbcVar) {
        this.zza = zzgbcVar;
    }

    public static final zzftv zza(zzgbc zzgbcVar) throws GeneralSecurityException {
        if (zzgbcVar == null || zzgbcVar.zzd() <= 0) {
            throw new GeneralSecurityException("empty keyset");
        }
        return new zzftv(zzgbcVar);
    }

    public final String toString() {
        return zzfun.zza(this.zza).toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <P> P zzb(Class<P> cls) throws GeneralSecurityException {
        Class<?> zzn = zzfum.zzn(cls);
        if (zzn == null) {
            String name = cls.getName();
            throw new GeneralSecurityException(name.length() != 0 ? "No wrapper found for ".concat(name) : new String("No wrapper found for "));
        }
        zzfun.zzb(this.zza);
        zzfud zzb = zzfud.zzb(zzn);
        for (zzgbb zzgbbVar : this.zza.zzc()) {
            if (zzgbbVar.zzf() == 3) {
                zzfua zzd = zzb.zzd(zzfum.zzk(zzgbbVar.zzc(), zzn), zzgbbVar);
                if (zzgbbVar.zzd() == this.zza.zza()) {
                    zzb.zzc(zzd);
                }
            }
        }
        return (P) zzfum.zzl(zzb, cls);
    }
}
