package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfwa.class */
public final class zzfwa extends zzftu<zzfyy> {
    public zzfwa() {
        super(zzfyy.class, new zzfvy(zzftj.class));
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final String zzb() {
        return "type.googleapis.com/google.crypto.tink.AesSivKey";
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final /* bridge */ /* synthetic */ zzfyy zzc(zzgex zzgexVar) throws zzggm {
        return zzfyy.zzd(zzgexVar, zzgfm.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final /* bridge */ /* synthetic */ void zzd(zzfyy zzfyyVar) throws GeneralSecurityException {
        zzfyy zzfyyVar2 = zzfyyVar;
        zzgdu.zzb(zzfyyVar2.zza(), 0);
        if (zzfyyVar2.zzc().zzc() == 64) {
            return;
        }
        throw new InvalidKeyException(C22128a.m8686M1(61, "invalid key size: ", zzfyyVar2.zzc().zzc(), ". Valid keys must have 64 bytes."));
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final zzfts<?, zzfyy> zzh() {
        return new zzfvz(this, zzfzb.class);
    }

    @Override // com.google.android.gms.internal.ads.zzftu
    public final int zzi() {
        return 3;
    }
}
