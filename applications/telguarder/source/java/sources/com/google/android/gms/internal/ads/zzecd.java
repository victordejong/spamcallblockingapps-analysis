package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzecd.class */
final class zzecd extends zzeba<zzeeo, zzeen> {
    private final /* synthetic */ zzecb zzicx;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzecd(zzecb zzecbVar, Class cls) {
        super(cls);
        this.zzicx = zzecbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* synthetic */ void zzd(zzeeo zzeeoVar) throws GeneralSecurityException {
        zzeeo zzeeoVar2 = zzeeoVar;
        zzeiv.zzfu(zzeeoVar2.getKeySize());
        if (zzeeoVar2.zzbcc().zzbbz() == 12 || zzeeoVar2.zzbcc().zzbbz() == 16) {
            return;
        }
        throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* synthetic */ zzeen zze(zzeeo zzeeoVar) throws GeneralSecurityException {
        zzeeo zzeeoVar2 = zzeeoVar;
        return (zzeen) ((zzelb) zzeen.zzbcd().zzv(zzejr.zzt(zzeiu.zzft(zzeeoVar2.getKeySize()))).zzb(zzeeoVar2.zzbcc()).zzez(0).zzbiw());
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* synthetic */ zzeeo zzr(zzejr zzejrVar) throws zzelo {
        return zzeeo.zzj(zzejrVar, zzeko.zzbhw());
    }
}
