package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfwv.class */
public final class zzfwv extends zzftt<zzfty, zzgai> {
    public zzfwv(Class cls) {
        super(cls);
    }

    @Override // com.google.android.gms.internal.ads.zzftt
    public final /* bridge */ /* synthetic */ zzfty zzb(zzgai zzgaiVar) throws GeneralSecurityException {
        zzgdq zzgdqVar;
        zzgai zzgaiVar2 = zzgaiVar;
        int zzg = zzgaiVar2.zzc().zzg();
        SecretKeySpec secretKeySpec = new SecretKeySpec(zzgaiVar2.zzd().zzz(), "HMAC");
        int zza = zzgaiVar2.zzc().zza();
        int i = zzg - 2;
        if (i == 1) {
            zzgdqVar = new zzgdq(new zzgdp("HMACSHA1", secretKeySpec), zza);
        } else if (i == 2) {
            zzgdqVar = new zzgdq(new zzgdp("HMACSHA384", secretKeySpec), zza);
        } else if (i == 3) {
            zzgdqVar = new zzgdq(new zzgdp("HMACSHA256", secretKeySpec), zza);
        } else if (i == 4) {
            zzgdqVar = new zzgdq(new zzgdp("HMACSHA512", secretKeySpec), zza);
        } else if (i != 5) {
            throw new GeneralSecurityException("unknown hash");
        } else {
            zzgdqVar = new zzgdq(new zzgdp("HMACSHA224", secretKeySpec), zza);
        }
        return zzgdqVar;
    }
}
