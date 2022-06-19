package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzegd;
import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzecs.class */
public final class zzecs extends zzeax<zzehc> {
    public zzecs() {
        super(zzehc.class, new zzecv(zzeaq.class));
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key";
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final zzegd.zza zzbal() {
        return zzegd.zza.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final zzeba<?, zzehc> zzbao() {
        return new zzecu(this, zzehd.class);
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final /* synthetic */ void zzc(zzehc zzehcVar) throws GeneralSecurityException {
        zzehc zzehcVar2 = zzehcVar;
        zzeiv.zzz(zzehcVar2.getVersion(), 0);
        if (zzehcVar2.zzbbe().size() == 32) {
            return;
        }
        throw new GeneralSecurityException("invalid XChaCha20Poly1305Key: incorrect key length");
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final /* synthetic */ zzehc zzp(zzejr zzejrVar) throws zzelo {
        return zzehc.zzz(zzejrVar, zzeko.zzbhw());
    }
}
