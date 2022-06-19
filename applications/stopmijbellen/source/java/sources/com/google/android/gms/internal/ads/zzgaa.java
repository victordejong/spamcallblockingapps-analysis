package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgaa.class */
public final class zzgaa extends zzfyi<zzgfy> {
    public zzgaa() {
        super(zzgfy.class, new zzfzy(zzfxu.class));
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final zzfyg<?, zzgfy> zza() {
        return new zzfzz(this, zzggb.class);
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final /* synthetic */ zzgfy zzb(zzgjf zzgjfVar) throws zzgkx {
        return zzgfy.zze(zzgjfVar, zzgjx.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final String zzf() {
        return "type.googleapis.com/google.crypto.tink.KmsAeadKey";
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final /* bridge */ /* synthetic */ void zzh(zzgfy zzgfyVar) throws GeneralSecurityException {
        zzgii.zzb(zzgfyVar.zza(), 0);
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final int zzj() {
        return 6;
    }
}
