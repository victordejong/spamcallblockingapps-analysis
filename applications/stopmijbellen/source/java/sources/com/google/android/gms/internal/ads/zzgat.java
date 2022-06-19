package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECPoint;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgat.class */
final class zzgat extends zzfyg<zzged, zzgej> {
    public final /* synthetic */ zzgau zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgat(zzgau zzgauVar, Class cls) {
        super(cls);
        this.zza = zzgauVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final /* synthetic */ zzged zza(zzgjf zzgjfVar) throws zzgkx {
        return zzged.zzd(zzgjfVar, zzgjx.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final /* bridge */ /* synthetic */ zzgej zzc(zzged zzgedVar) throws GeneralSecurityException {
        zzged zzgedVar2 = zzgedVar;
        KeyPair zzb = zzghn.zzb(zzghn.zze(zzgbd.zzc(zzgedVar2.zze().zzf().zzg())));
        ECPublicKey eCPublicKey = (ECPublicKey) zzb.getPublic();
        ECPrivateKey eCPrivateKey = (ECPrivateKey) zzb.getPrivate();
        ECPoint w = eCPublicKey.getW();
        zzgel zzd = zzgem.zzd();
        zzd.zzb(0);
        zzd.zza(zzgedVar2.zze());
        zzd.zzc(zzgjf.zzv(w.getAffineX().toByteArray()));
        zzd.zzd(zzgjf.zzv(w.getAffineY().toByteArray()));
        zzgem zzah = zzd.zzah();
        zzgei zzc = zzgej.zzc();
        zzc.zzc(0);
        zzc.zzb(zzah);
        zzc.zza(zzgjf.zzv(eCPrivateKey.getS().toByteArray()));
        return zzc.zzah();
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final Map<String, zzfyf<zzged>> zzd() throws GeneralSecurityException {
        byte[] bArr;
        byte[] bArr2;
        byte[] bArr3;
        byte[] bArr4;
        byte[] bArr5;
        byte[] bArr6;
        byte[] bArr7;
        byte[] bArr8;
        byte[] bArr9;
        HashMap hashMap = new HashMap();
        zzfyd zza = zzfye.zza("AES128_GCM");
        bArr = zzgau.zza;
        hashMap.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM", zzgau.zzl(4, 5, 3, zza, bArr, 1));
        zzfyd zza2 = zzfye.zza("AES128_GCM");
        bArr2 = zzgau.zza;
        hashMap.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM_RAW", zzgau.zzl(4, 5, 3, zza2, bArr2, 3));
        zzfyd zza3 = zzfye.zza("AES128_GCM");
        bArr3 = zzgau.zza;
        hashMap.put("ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_GCM", zzgau.zzl(4, 5, 4, zza3, bArr3, 1));
        zzfyd zza4 = zzfye.zza("AES128_GCM");
        bArr4 = zzgau.zza;
        hashMap.put("ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_GCM_RAW", zzgau.zzl(4, 5, 4, zza4, bArr4, 3));
        zzfyd zza5 = zzfye.zza("AES128_GCM");
        bArr5 = zzgau.zza;
        hashMap.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM_COMPRESSED_WITHOUT_PREFIX", zzgau.zzl(4, 5, 4, zza5, bArr5, 3));
        zzfyd zza6 = zzfye.zza("AES128_CTR_HMAC_SHA256");
        bArr6 = zzgau.zza;
        hashMap.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256", zzgau.zzl(4, 5, 3, zza6, bArr6, 1));
        zzfyd zza7 = zzfye.zza("AES128_CTR_HMAC_SHA256");
        bArr7 = zzgau.zza;
        hashMap.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256_RAW", zzgau.zzl(4, 5, 3, zza7, bArr7, 3));
        zzfyd zza8 = zzfye.zza("AES128_CTR_HMAC_SHA256");
        bArr8 = zzgau.zza;
        hashMap.put("ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256", zzgau.zzl(4, 5, 4, zza8, bArr8, 1));
        zzfyd zza9 = zzfye.zza("AES128_CTR_HMAC_SHA256");
        bArr9 = zzgau.zza;
        hashMap.put("ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256_RAW", zzgau.zzl(4, 5, 4, zza9, bArr9, 3));
        return Collections.unmodifiableMap(hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final /* synthetic */ void zze(zzged zzgedVar) throws GeneralSecurityException {
        zzgbd.zza(zzgedVar.zze());
    }
}
