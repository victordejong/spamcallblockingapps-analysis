package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfux.class */
public final class zzfux extends zzftu<zzfxu> {
    public zzfux() {
        super(zzfxu.class, new zzfuv(zzgdl.class));
    }

    public static final void zzl(zzfxu zzfxuVar) throws GeneralSecurityException {
        zzgdu.zzb(zzfxuVar.zza(), 0);
        zzgdu.zza(zzfxuVar.zzd().zzc());
        zzm(zzfxuVar.zzc());
    }

    public static final void zzm(zzfya zzfyaVar) throws GeneralSecurityException {
        if (zzfyaVar.zza() < 12 || zzfyaVar.zza() > 16) {
            throw new GeneralSecurityException("invalid IV size");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final String zzb() {
        return "type.googleapis.com/google.crypto.tink.AesCtrKey";
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final /* bridge */ /* synthetic */ zzfxu zzc(zzgex zzgexVar) throws zzggm {
        return zzfxu.zze(zzgexVar, zzgfm.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final /* bridge */ /* synthetic */ void zzd(zzfxu zzfxuVar) throws GeneralSecurityException {
        zzl(zzfxuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final zzfts<?, zzfxu> zzh() {
        return new zzfuw(this, zzfxx.class);
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final int zzi() {
        return 3;
    }
}
