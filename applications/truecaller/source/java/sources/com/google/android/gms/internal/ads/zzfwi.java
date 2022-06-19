package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfwi.class */
public final class zzfwi extends zzftu<zzfzy> {
    public zzfwi() {
        super(zzfzy.class, new zzfwh(zzftl.class));
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final String zzb() {
        return "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey";
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final /* bridge */ /* synthetic */ zzfzy zzc(zzgex zzgexVar) throws zzggm {
        return zzfzy.zzf(zzgexVar, zzgfm.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final /* bridge */ /* synthetic */ void zzd(zzfzy zzfzyVar) throws GeneralSecurityException {
        zzfzy zzfzyVar2 = zzfzyVar;
        zzgdu.zzb(zzfzyVar2.zza(), 0);
        zzfwp.zza(zzfzyVar2.zzc());
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final int zzi() {
        return 5;
    }
}
