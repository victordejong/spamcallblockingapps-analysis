package com.google.android.gms.internal.ads;

import java.security.KeyPair;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECPoint;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/k43.class */
final class k43 extends u13<w73, c83> {

    /* renamed from: b */
    final /* synthetic */ l43 f25066b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k43(l43 l43Var, Class cls) {
        super(cls);
        this.f25066b = l43Var;
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8543b(w73 w73Var) {
        u43.m10414a(w73Var.m9774C());
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ w73 mo8542c(zzgex zzgexVar) {
        return w73.m9773D(zzgexVar, vd3.m10041a());
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ c83 mo8541d(w73 w73Var) {
        w73 w73Var2 = w73Var;
        KeyPair m13926c = kb3.m13926c(kb3.m13925d(u43.m10412c(w73Var2.m9774C().m8495C().m13958H())));
        ECPublicKey eCPublicKey = (ECPublicKey) m13926c.getPublic();
        ECPrivateKey eCPrivateKey = (ECPrivateKey) m13926c.getPrivate();
        ECPoint w = eCPublicKey.getW();
        e83 m15296H = f83.m15296H();
        m15296H.m15537q(0);
        m15296H.m15536r(w73Var2.m9774C());
        m15296H.m15535s(zzgex.zzt(w.getAffineX().toByteArray()));
        m15296H.m15534t(zzgex.zzt(w.getAffineY().toByteArray()));
        f83 m15512n = m15296H.m15512n();
        b83 m16106G = c83.m16106G();
        m16106G.m16432q(0);
        m16106G.m16431r(m15512n);
        m16106G.m16430s(zzgex.zzt(eCPrivateKey.getS().toByteArray()));
        return m16106G.m15512n();
    }

    @Override // com.google.android.gms.internal.ads.u13
    /* renamed from: e */
    public final Map<String, t13<w73>> mo8952e() {
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
        r13 m11179a = s13.m11179a("AES128_GCM");
        bArr = l43.f25930d;
        hashMap.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM", l43.m13725l(4, 5, 3, m11179a, bArr, 1));
        r13 m11179a2 = s13.m11179a("AES128_GCM");
        bArr2 = l43.f25930d;
        hashMap.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM_RAW", l43.m13725l(4, 5, 3, m11179a2, bArr2, 3));
        r13 m11179a3 = s13.m11179a("AES128_GCM");
        bArr3 = l43.f25930d;
        hashMap.put("ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_GCM", l43.m13725l(4, 5, 4, m11179a3, bArr3, 1));
        r13 m11179a4 = s13.m11179a("AES128_GCM");
        bArr4 = l43.f25930d;
        hashMap.put("ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_GCM_RAW", l43.m13725l(4, 5, 4, m11179a4, bArr4, 3));
        r13 m11179a5 = s13.m11179a("AES128_GCM");
        bArr5 = l43.f25930d;
        hashMap.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM_COMPRESSED_WITHOUT_PREFIX", l43.m13725l(4, 5, 4, m11179a5, bArr5, 3));
        r13 m11179a6 = s13.m11179a("AES128_CTR_HMAC_SHA256");
        bArr6 = l43.f25930d;
        hashMap.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256", l43.m13725l(4, 5, 3, m11179a6, bArr6, 1));
        r13 m11179a7 = s13.m11179a("AES128_CTR_HMAC_SHA256");
        bArr7 = l43.f25930d;
        hashMap.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256_RAW", l43.m13725l(4, 5, 3, m11179a7, bArr7, 3));
        r13 m11179a8 = s13.m11179a("AES128_CTR_HMAC_SHA256");
        bArr8 = l43.f25930d;
        hashMap.put("ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256", l43.m13725l(4, 5, 4, m11179a8, bArr8, 1));
        r13 m11179a9 = s13.m11179a("AES128_CTR_HMAC_SHA256");
        bArr9 = l43.f25930d;
        hashMap.put("ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256_RAW", l43.m13725l(4, 5, 4, m11179a9, bArr9, 3));
        return Collections.unmodifiableMap(hashMap);
    }
}
