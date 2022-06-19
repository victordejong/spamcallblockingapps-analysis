package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfvj.class */
public final class zzfvj extends zzftu<zzfze> {
    public zzfvj() {
        super(zzfze.class, new zzfvh(zzftg.class));
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final String zzb() {
        return "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key";
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final /* bridge */ /* synthetic */ zzfze zzc(zzgex zzgexVar) throws zzggm {
        return zzfze.zzd(zzgexVar, zzgfm.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final /* bridge */ /* synthetic */ void zzd(zzfze zzfzeVar) throws GeneralSecurityException {
        zzfze zzfzeVar2 = zzfzeVar;
        zzgdu.zzb(zzfzeVar2.zza(), 0);
        if (zzfzeVar2.zzc().zzc() == 32) {
            return;
        }
        throw new GeneralSecurityException("invalid ChaCha20Poly1305Key: incorrect key length");
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final zzfts<?, zzfze> zzh() {
        return new zzfvi(this, zzfzh.class);
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final int zzi() {
        return 3;
    }
}
