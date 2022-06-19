package com.google.android.gms.internal.ads;

import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/k33.class */
public final class k33 extends w13<y63> {
    public k33() {
        super(y63.class, new i33(i13.class));
    }

    /* renamed from: k */
    public static void m13984k(boolean z) {
        if (m13982m()) {
            p23.m12457c(new k33(), true);
        }
    }

    /* renamed from: l */
    public static /* synthetic */ t13<b73> m13983l(int i, int i2) {
        a73 m16435E = b73.m16435E();
        m16435E.m16675q(i);
        return new t13<>(m16435E.m15512n(), i2);
    }

    /* renamed from: m */
    private static boolean m13982m() {
        try {
            Cipher.getInstance("AES/GCM-SIV/NoPadding");
            return true;
        } catch (NoSuchAlgorithmException | NoSuchPaddingException e) {
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: b */
    public final String mo8529b() {
        return "type.googleapis.com/google.crypto.tink.AesGcmSivKey";
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ y63 mo8528c(zzgex zzgexVar) {
        return y63.m8925E(zzgexVar, vd3.m10041a());
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo8527d(y63 y63Var) {
        y63 y63Var2 = y63Var;
        gc3.m14963b(y63Var2.m8927C(), 0);
        gc3.m14964a(y63Var2.m8926D().zzc());
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: h */
    public final u13<?, y63> mo8526h() {
        return new j33(this, b73.class);
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: i */
    public final int mo8525i() {
        return 3;
    }
}
