package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzebx.class */
final class zzebx extends zzeba<zzeef, zzeec> {
    private final /* synthetic */ zzebv zzicv;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzebx(zzebv zzebvVar, Class cls) {
        super(cls);
        this.zzicv = zzebvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* synthetic */ void zzd(zzeef zzeefVar) throws GeneralSecurityException {
        zzeef zzeefVar2 = zzeefVar;
        new zzebw().zzbao().zzd(zzeefVar2.zzbbq());
        new zzedn().zzbao().zzd(zzeefVar2.zzbbr());
        zzeiv.zzfu(zzeefVar2.zzbbq().getKeySize());
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* synthetic */ zzeec zze(zzeef zzeefVar) throws GeneralSecurityException {
        zzeef zzeefVar2 = zzeefVar;
        zzeeg zze = new zzebw().zzbao().zze(zzeefVar2.zzbbq());
        return (zzeec) ((zzelb) zzeec.zzbbo().zzc(zze).zzc(new zzedn().zzbao().zze(zzeefVar2.zzbbr())).zzex(0).zzbiw());
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* synthetic */ zzeef zzr(zzejr zzejrVar) throws zzelo {
        return zzeef.zzf(zzejrVar, zzeko.zzbhw());
    }
}
