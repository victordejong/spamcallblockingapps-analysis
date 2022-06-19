package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzedp.class */
final class zzedp extends zzeba<zzefz, zzefv> {
    private final /* synthetic */ zzedn zzidw;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzedp(zzedn zzednVar, Class cls) {
        super(cls);
        this.zzidw = zzednVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* synthetic */ void zzd(zzefz zzefzVar) throws GeneralSecurityException {
        zzefz zzefzVar2 = zzefzVar;
        if (zzefzVar2.getKeySize() >= 16) {
            zzedn.zza(zzefzVar2.zzbdo());
            return;
        }
        throw new GeneralSecurityException("key too short");
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* synthetic */ zzefv zze(zzefz zzefzVar) throws GeneralSecurityException {
        zzefz zzefzVar2 = zzefzVar;
        return (zzefv) ((zzelb) zzefv.zzbdp().zzfi(0).zzd(zzefzVar2.zzbdo()).zzae(zzejr.zzt(zzeiu.zzft(zzefzVar2.getKeySize()))).zzbiw());
    }

    @Override // com.google.android.gms.internal.ads.zzeba
    public final /* synthetic */ zzefz zzr(zzejr zzejrVar) throws zzelo {
        return zzefz.zzu(zzejrVar, zzeko.zzbhw());
    }
}
