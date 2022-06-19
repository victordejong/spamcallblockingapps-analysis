package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzegd;
import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzedm.class */
public final class zzedm extends zzeax<zzedx> {
    public zzedm() {
        super(zzedx.class, new zzedl(zzebd.class));
    }

    public static void zza(zzeeb zzeebVar) throws GeneralSecurityException {
        if (zzeebVar.zzbbj() >= 10) {
            if (zzeebVar.zzbbj() > 16) {
                throw new GeneralSecurityException("tag size too long");
            }
            return;
        }
        throw new GeneralSecurityException("tag size too short");
    }

    public static void zzeu(int i) throws GeneralSecurityException {
        if (i == 32) {
            return;
        }
        throw new GeneralSecurityException("AesCmacKey size wrong, must be 32 bytes");
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.AesCmacKey";
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final zzegd.zza zzbal() {
        return zzegd.zza.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final zzeba<?, zzedx> zzbao() {
        return new zzedo(this, zzedy.class);
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final /* synthetic */ void zzc(zzedx zzedxVar) throws GeneralSecurityException {
        zzedx zzedxVar2 = zzedxVar;
        zzeiv.zzz(zzedxVar2.getVersion(), 0);
        zzeu(zzedxVar2.zzbbe().size());
        zza(zzedxVar2.zzbbf());
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final /* synthetic */ zzedx zzp(zzejr zzejrVar) throws zzelo {
        return zzedx.zzc(zzejrVar, zzeko.zzbhw());
    }
}
