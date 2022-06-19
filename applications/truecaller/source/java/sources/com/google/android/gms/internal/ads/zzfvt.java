package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfvt.class */
public final class zzfvt extends zzftu<zzgcb> {
    public zzfvt() {
        super(zzgcb.class, new zzfvr(zzftg.class));
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final String zzb() {
        return "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key";
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final /* bridge */ /* synthetic */ zzgcb zzc(zzgex zzgexVar) throws zzggm {
        return zzgcb.zzd(zzgexVar, zzgfm.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final /* bridge */ /* synthetic */ void zzd(zzgcb zzgcbVar) throws GeneralSecurityException {
        zzgcb zzgcbVar2 = zzgcbVar;
        zzgdu.zzb(zzgcbVar2.zza(), 0);
        if (zzgcbVar2.zzc().zzc() == 32) {
            return;
        }
        throw new GeneralSecurityException("invalid XChaCha20Poly1305Key: incorrect key length");
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final zzfts<?, zzgcb> zzh() {
        return new zzfvs(this, zzgce.class);
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final int zzi() {
        return 3;
    }
}
