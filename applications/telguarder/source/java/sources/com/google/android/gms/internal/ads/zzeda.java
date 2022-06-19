package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzegd;
import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeda.class */
final class zzeda extends zzeax<zzefo> {
    public zzeda() {
        super(zzefo.class, new zzedd(zzeat.class));
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey";
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final zzegd.zza zzbal() {
        return zzegd.zza.ASYMMETRIC_PUBLIC;
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final /* synthetic */ void zzc(zzefo zzefoVar) throws GeneralSecurityException {
        zzefo zzefoVar2 = zzefoVar;
        zzeiv.zzz(zzefoVar2.getVersion(), 0);
        zzedh.zza(zzefoVar2.zzbcu());
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final /* synthetic */ zzefo zzp(zzejr zzejrVar) throws zzelo {
        return zzefo.zzs(zzejrVar, zzeko.zzbhw());
    }
}
