package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgaw.class */
final class zzgaw extends zzfyi<zzgem> {
    public zzgaw() {
        super(zzgem.class, new zzgav(zzfxz.class));
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final /* synthetic */ zzgem zzb(zzgjf zzgjfVar) throws zzgkx {
        return zzgem.zzg(zzgjfVar, zzgjx.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final String zzf() {
        return "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey";
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final /* bridge */ /* synthetic */ void zzh(zzgem zzgemVar) throws GeneralSecurityException {
        zzgem zzgemVar2 = zzgemVar;
        zzgii.zzb(zzgemVar2.zza(), 0);
        zzgbd.zza(zzgemVar2.zzc());
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final int zzj() {
        return 5;
    }
}
