package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeby.class */
final class zzeby extends zzeba<zzeej, zzeeg> {
    private final /* synthetic */ zzebw zzicw;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzeby(zzebw zzebwVar, Class cls) {
        super(cls);
        this.zzicw = zzebwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* synthetic */ void zzd(zzeej zzeejVar) throws GeneralSecurityException {
        zzeej zzeejVar2 = zzeejVar;
        zzeiv.zzfu(zzeejVar2.getKeySize());
        zzebw zzebwVar = this.zzicw;
        zzebw.zza(zzeejVar2.zzbbt());
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* synthetic */ zzeeg zze(zzeej zzeejVar) throws GeneralSecurityException {
        zzeej zzeejVar2 = zzeejVar;
        return (zzeeg) ((zzelb) zzeeg.zzbbu().zzc(zzeejVar2.zzbbt()).zzu(zzejr.zzt(zzeiu.zzft(zzeejVar2.getKeySize()))).zzey(0).zzbiw());
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* synthetic */ zzeej zzr(zzejr zzejrVar) throws zzelo {
        return zzeej.zzh(zzejrVar, zzeko.zzbhw());
    }
}
