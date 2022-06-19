package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzegd;
import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeci.class */
public final class zzeci extends zzeax<zzefa> {
    public zzeci() {
        super(zzefa.class, new zzecl(zzeaq.class));
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key";
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final zzegd.zza zzbal() {
        return zzegd.zza.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final zzeba<?, zzefa> zzbao() {
        return new zzeck(this, zzefd.class);
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final /* synthetic */ void zzc(zzefa zzefaVar) throws GeneralSecurityException {
        zzefa zzefaVar2 = zzefaVar;
        zzeiv.zzz(zzefaVar2.getVersion(), 0);
        if (zzefaVar2.zzbbe().size() == 32) {
            return;
        }
        throw new GeneralSecurityException("invalid ChaCha20Poly1305Key: incorrect key length");
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final /* synthetic */ zzefa zzp(zzejr zzejrVar) throws zzelo {
        return zzefa.zzo(zzejrVar, zzeko.zzbhw());
    }
}
