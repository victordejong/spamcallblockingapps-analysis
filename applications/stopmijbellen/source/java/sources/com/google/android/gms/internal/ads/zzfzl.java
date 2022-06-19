package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfzl.class */
public final class zzfzl extends zzfyi<zzgci> {
    public zzfzl() {
        super(zzgci.class, new zzfzj(zzghz.class));
    }

    public static final void zzl(zzgci zzgciVar) throws GeneralSecurityException {
        zzgii.zzb(zzgciVar.zza(), 0);
        zzgii.zza(zzgciVar.zzh().zzd());
        zzm(zzgciVar.zzg());
    }

    public static final void zzm(zzgco zzgcoVar) throws GeneralSecurityException {
        if (zzgcoVar.zza() < 12 || zzgcoVar.zza() > 16) {
            throw new GeneralSecurityException("invalid IV size");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final zzfyg<?, zzgci> zza() {
        return new zzfzk(this, zzgcl.class);
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final /* synthetic */ zzgci zzb(zzgjf zzgjfVar) throws zzgkx {
        return zzgci.zzf(zzgjfVar, zzgjx.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final String zzf() {
        return "type.googleapis.com/google.crypto.tink.AesCtrKey";
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final /* bridge */ /* synthetic */ void zzh(zzgci zzgciVar) throws GeneralSecurityException {
        zzl(zzgciVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final int zzj() {
        return 3;
    }
}
