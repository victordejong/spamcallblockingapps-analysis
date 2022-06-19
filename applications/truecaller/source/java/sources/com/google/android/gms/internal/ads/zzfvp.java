package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfvp.class */
public final class zzfvp extends zzfts<zzgbt, zzgbq> {
    public final /* synthetic */ zzfvq zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfvp(zzfvq zzfvqVar, Class cls) {
        super(cls);
        this.zza = zzfvqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final /* bridge */ /* synthetic */ void zzb(zzgbt zzgbtVar) throws GeneralSecurityException {
        zzgbt zzgbtVar2 = zzgbtVar;
        if (zzgbtVar2.zza().isEmpty() || !zzgbtVar2.zzc()) {
            throw new GeneralSecurityException("invalid key format: missing KEK URI or DEK template");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final /* bridge */ /* synthetic */ zzgbt zzc(zzgex zzgexVar) throws zzggm {
        return zzgbt.zze(zzgexVar, zzgfm.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final /* bridge */ /* synthetic */ zzgbq zzd(zzgbt zzgbtVar) throws GeneralSecurityException {
        zzgbp zze = zzgbq.zze();
        zze.zzb(zzgbtVar);
        zze.zza(0);
        return zze.zzah();
    }
}
