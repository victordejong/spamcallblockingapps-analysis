package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfvm.class */
public final class zzfvm extends zzftu<zzgbk> {
    public zzfvm() {
        super(zzgbk.class, new zzfvk(zzftg.class));
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final String zzb() {
        return "type.googleapis.com/google.crypto.tink.KmsAeadKey";
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final /* bridge */ /* synthetic */ zzgbk zzc(zzgex zzgexVar) throws zzggm {
        return zzgbk.zzd(zzgexVar, zzgfm.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final /* bridge */ /* synthetic */ void zzd(zzgbk zzgbkVar) throws GeneralSecurityException {
        zzgdu.zzb(zzgbkVar.zza(), 0);
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final zzfts<?, zzgbk> zzh() {
        return new zzfvl(this, zzgbn.class);
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final int zzi() {
        return 6;
    }
}
