package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.interfaces.ECPrivateKey;
import java.security.spec.ECPrivateKeySpec;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgas.class */
public final class zzgas extends zzfyh<zzfxy, zzgej> {
    public zzgas(Class cls) {
        super(cls);
    }

    @Override // com.google.android.gms.internal.ads.zzfyh
    public final /* bridge */ /* synthetic */ zzfxy zzb(zzgej zzgejVar) throws GeneralSecurityException {
        zzgej zzgejVar2 = zzgejVar;
        zzgeg zzc = zzgejVar2.zzf().zzc();
        zzgep zzf = zzc.zzf();
        int zzc2 = zzgbd.zzc(zzf.zzg());
        byte[] zzE = zzgejVar2.zzg().zzE();
        return new zzghi((ECPrivateKey) zzghp.zzg.zza("EC").generatePrivate(new ECPrivateKeySpec(new BigInteger(1, zzE), zzghn.zze(zzc2))), zzf.zze().zzE(), zzgbd.zzb(zzf.zzh()), zzgbd.zzd(zzc.zzi()), new zzgbe(zzc.zza().zze()));
    }
}
