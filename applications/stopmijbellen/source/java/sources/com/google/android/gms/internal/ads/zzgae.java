package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgae.class */
public final class zzgae extends zzfyi<zzgge> {
    public zzgae() {
        super(zzgge.class, new zzgac(zzfxu.class));
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final zzfyg<?, zzgge> zza() {
        return new zzgad(this, zzggh.class);
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final /* synthetic */ zzgge zzb(zzgjf zzgjfVar) throws zzgkx {
        return zzgge.zze(zzgjfVar, zzgjx.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final String zzf() {
        return "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey";
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final /* bridge */ /* synthetic */ void zzh(zzgge zzggeVar) throws GeneralSecurityException {
        zzgii.zzb(zzggeVar.zza(), 0);
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final int zzj() {
        return 6;
    }
}
