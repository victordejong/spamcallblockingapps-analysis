package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgao.class */
public final class zzgao extends zzfyi<zzgdm> {
    public zzgao() {
        super(zzgdm.class, new zzgam(zzfxx.class));
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final zzfyg<?, zzgdm> zza() {
        return new zzgan(this, zzgdp.class);
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final /* synthetic */ zzgdm zzb(zzgjf zzgjfVar) throws zzgkx {
        return zzgdm.zze(zzgjfVar, zzgjx.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final String zzf() {
        return "type.googleapis.com/google.crypto.tink.AesSivKey";
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final /* bridge */ /* synthetic */ void zzh(zzgdm zzgdmVar) throws GeneralSecurityException {
        zzgdm zzgdmVar2 = zzgdmVar;
        zzgii.zzb(zzgdmVar2.zza(), 0);
        if (zzgdmVar2.zzf().zzd() == 64) {
            return;
        }
        int zzd = zzgdmVar2.zzf().zzd();
        StringBuilder sb = new StringBuilder(61);
        sb.append("invalid key size: ");
        sb.append(zzd);
        sb.append(". Valid keys must have 64 bytes.");
        throw new InvalidKeyException(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final int zzj() {
        return 3;
    }
}
