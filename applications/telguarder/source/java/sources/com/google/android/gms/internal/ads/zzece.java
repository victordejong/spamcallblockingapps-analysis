package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzece.class */
final class zzece extends zzeba<zzeev, zzees> {
    private final /* synthetic */ zzecc zzicy;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzece(zzecc zzeccVar, Class cls) {
        super(cls);
        this.zzicy = zzeccVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* synthetic */ void zzd(zzeev zzeevVar) throws GeneralSecurityException {
        zzeiv.zzfu(zzeevVar.getKeySize());
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* synthetic */ zzees zze(zzeev zzeevVar) throws GeneralSecurityException {
        return (zzees) ((zzelb) zzees.zzbci().zzw(zzejr.zzt(zzeiu.zzft(zzeevVar.getKeySize()))).zzfa(0).zzbiw());
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* synthetic */ zzeev zzr(zzejr zzejrVar) throws zzelo {
        return zzeev.zzl(zzejrVar, zzeko.zzbhw());
    }
}
