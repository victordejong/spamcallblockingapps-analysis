package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzegd;
import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzecr.class */
public final class zzecr extends zzeax<zzegt> {
    public zzecr() {
        super(zzegt.class, new zzecq(zzeaq.class));
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey";
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final zzegd.zza zzbal() {
        return zzegd.zza.REMOTE;
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final zzeba<?, zzegt> zzbao() {
        return new zzect(this, zzegw.class);
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final /* synthetic */ void zzc(zzegt zzegtVar) throws GeneralSecurityException {
        zzeiv.zzz(zzegtVar.getVersion(), 0);
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final /* synthetic */ zzegt zzp(zzejr zzejrVar) throws zzelo {
        return zzegt.zzx(zzejrVar, zzeko.zzbhw());
    }
}
