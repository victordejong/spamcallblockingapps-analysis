package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/l43.class */
public final class l43 extends j23<c83, f83> {

    /* renamed from: d */
    private static final byte[] f25930d = new byte[0];

    public l43() {
        super(c83.class, f83.class, new j43(m13.class));
    }

    /* renamed from: l */
    public static /* synthetic */ t13<w73> m13725l(int i, int i2, int i3, r13 r13Var, byte[] bArr, int i4) {
        v73 m9772E = w73.m9772E();
        j83 m13962D = k83.m13962D();
        int i5 = 4;
        m13962D.m14161r(4);
        m13962D.m14160s(5);
        m13962D.m14162q(zzgex.zzt(bArr));
        k83 m15512n = m13962D.m15512n();
        c93 m15858E = d93.m15858E();
        m15858E.m16100q(r13Var.m11735a());
        m15858E.m16099r(zzgex.zzt(r13Var.m11734b()));
        int m11732d = r13Var.m11732d() - 1;
        if (m11732d == 0) {
            i5 = 3;
        } else if (m11732d != 1) {
            i5 = m11732d != 2 ? 6 : 5;
        }
        m15858E.m16098s(i5);
        d93 m15512n2 = m15858E.m15512n();
        s73 m10792D = t73.m10792D();
        m10792D.m11100q(m15512n2);
        t73 m15512n3 = m10792D.m15512n();
        y73 m8493E = z73.m8493E();
        m8493E.m8901q(m15512n);
        m8493E.m8900r(m15512n3);
        m8493E.m8899s(i3);
        m9772E.m10078q(m8493E.m15512n());
        return new t13<>(m9772E.m15512n(), i4);
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: b */
    public final String mo8529b() {
        return "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey";
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ mf3 mo8528c(zzgex zzgexVar) {
        return c83.m16107F(zzgexVar, vd3.m10041a());
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo8527d(mf3 mf3Var) {
        c83 c83Var = (c83) mf3Var;
        if (!c83Var.m16108E().zzr()) {
            gc3.m14963b(c83Var.m16110C(), 0);
            u43.m10414a(c83Var.m16109D().m15300D());
            return;
        }
        throw new GeneralSecurityException("invalid ECIES private key");
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: h */
    public final u13<w73, c83> mo8526h() {
        return new k43(this, w73.class);
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: i */
    public final int mo8525i() {
        return 4;
    }
}
