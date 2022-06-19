package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzegd;
import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzecb.class */
public final class zzecb extends zzeax<zzeen> {
    public zzecb() {
        super(zzeen.class, new zzeca(zzeaq.class));
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.AesEaxKey";
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final zzegd.zza zzbal() {
        return zzegd.zza.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final zzeba<?, zzeen> zzbao() {
        return new zzecd(this, zzeeo.class);
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final /* synthetic */ void zzc(zzeen zzeenVar) throws GeneralSecurityException {
        zzeen zzeenVar2 = zzeenVar;
        zzeiv.zzz(zzeenVar2.getVersion(), 0);
        zzeiv.zzfu(zzeenVar2.zzbbe().size());
        if (zzeenVar2.zzbcc().zzbbz() == 12 || zzeenVar2.zzbcc().zzbbz() == 16) {
            return;
        }
        throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final /* synthetic */ zzeen zzp(zzejr zzejrVar) throws zzelo {
        return zzeen.zzi(zzejrVar, zzeko.zzbhw());
    }
}
