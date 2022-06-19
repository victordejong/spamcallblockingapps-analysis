package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgbj.class */
final class zzgbj extends zzfyh<zzfym, zzgew> {
    public zzgbj(Class cls) {
        super(cls);
    }

    @Override // com.google.android.gms.internal.ads.zzfyh
    public final /* bridge */ /* synthetic */ zzfym zzb(zzgew zzgewVar) throws GeneralSecurityException {
        zzgie zzgieVar;
        zzgew zzgewVar2 = zzgewVar;
        int zzg = zzgewVar2.zzg().zzg();
        SecretKeySpec secretKeySpec = new SecretKeySpec(zzgewVar2.zzh().zzE(), "HMAC");
        int zza = zzgewVar2.zzg().zza();
        int i = zzg - 2;
        if (i == 1) {
            zzgieVar = new zzgie(new zzgid("HMACSHA1", secretKeySpec), zza);
        } else if (i == 2) {
            zzgieVar = new zzgie(new zzgid("HMACSHA384", secretKeySpec), zza);
        } else if (i == 3) {
            zzgieVar = new zzgie(new zzgid("HMACSHA256", secretKeySpec), zza);
        } else if (i == 4) {
            zzgieVar = new zzgie(new zzgid("HMACSHA512", secretKeySpec), zza);
        } else if (i != 5) {
            throw new GeneralSecurityException("unknown hash");
        } else {
            zzgieVar = new zzgie(new zzgid("HMACSHA224", secretKeySpec), zza);
        }
        return zzgieVar;
    }
}
