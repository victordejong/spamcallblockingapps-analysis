package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgah.class */
public final class zzgah extends zzfyi<zzggp> {
    public zzgah() {
        super(zzggp.class, new zzgaf(zzfxu.class));
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final zzfyg<?, zzggp> zza() {
        return new zzgag(this, zzggs.class);
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final /* synthetic */ zzggp zzb(zzgjf zzgjfVar) throws zzgkx {
        return zzggp.zze(zzgjfVar, zzgjx.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final String zzf() {
        return "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key";
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final /* bridge */ /* synthetic */ void zzh(zzggp zzggpVar) throws GeneralSecurityException {
        zzggp zzggpVar2 = zzggpVar;
        zzgii.zzb(zzggpVar2.zza(), 0);
        if (zzggpVar2.zzf().zzd() == 32) {
            return;
        }
        throw new GeneralSecurityException("invalid XChaCha20Poly1305Key: incorrect key length");
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final int zzj() {
        return 3;
    }
}
