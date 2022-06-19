package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfzx.class */
public final class zzfzx extends zzfyi<zzgds> {
    public zzfzx() {
        super(zzgds.class, new zzfzv(zzfxu.class));
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final zzfyg<?, zzgds> zza() {
        return new zzfzw(this, zzgdv.class);
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final /* synthetic */ zzgds zzb(zzgjf zzgjfVar) throws zzgkx {
        return zzgds.zze(zzgjfVar, zzgjx.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final String zzf() {
        return "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key";
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final /* bridge */ /* synthetic */ void zzh(zzgds zzgdsVar) throws GeneralSecurityException {
        zzgds zzgdsVar2 = zzgdsVar;
        zzgii.zzb(zzgdsVar2.zza(), 0);
        if (zzgdsVar2.zzf().zzd() == 32) {
            return;
        }
        throw new GeneralSecurityException("invalid ChaCha20Poly1305Key: incorrect key length");
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final int zzj() {
        return 3;
    }
}
