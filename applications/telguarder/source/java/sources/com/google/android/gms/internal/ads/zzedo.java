package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzedo.class */
final class zzedo extends zzeba<zzedy, zzedx> {
    public zzedo(zzedm zzedmVar, Class cls) {
        super(cls);
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* synthetic */ void zzd(zzedy zzedyVar) throws GeneralSecurityException {
        zzedy zzedyVar2 = zzedyVar;
        zzedm.zza(zzedyVar2.zzbbf());
        zzedm.zzeu(zzedyVar2.getKeySize());
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* synthetic */ zzedx zze(zzedy zzedyVar) throws GeneralSecurityException {
        zzedy zzedyVar2 = zzedyVar;
        return (zzedx) ((zzelb) zzedx.zzbbg().zzew(0).zzt(zzejr.zzt(zzeiu.zzft(zzedyVar2.getKeySize()))).zzd(zzedyVar2.zzbbf()).zzbiw());
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* synthetic */ zzedy zzr(zzejr zzejrVar) throws zzelo {
        return zzedy.zzd(zzejrVar, zzeko.zzbhw());
    }
}
