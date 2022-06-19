package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfvq.class */
public final class zzfvq extends zzftu<zzgbq> {
    public zzfvq() {
        super(zzgbq.class, new zzfvo(zzftg.class));
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final String zzb() {
        return "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey";
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final /* bridge */ /* synthetic */ zzgbq zzc(zzgex zzgexVar) throws zzggm {
        return zzgbq.zzd(zzgexVar, zzgfm.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final /* bridge */ /* synthetic */ void zzd(zzgbq zzgbqVar) throws GeneralSecurityException {
        zzgdu.zzb(zzgbqVar.zza(), 0);
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final zzfts<?, zzgbq> zzh() {
        return new zzfvp(this, zzgbt.class);
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final int zzi() {
        return 6;
    }
}
