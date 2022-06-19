package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/e33.class */
public final class e33 extends w13<j63> {
    public e33() {
        super(j63.class, new b33(i13.class));
    }

    /* renamed from: k */
    public static /* synthetic */ t13<m63> m15591k(int i, int i2, int i3) {
        l63 m13358F = m63.m13358F();
        m13358F.m13678r(i);
        o63 m12376D = p63.m12376D();
        m12376D.m12717q(16);
        m13358F.m13679q(m12376D.m15512n());
        return new t13<>(m13358F.m15512n(), i3);
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: b */
    public final String mo8529b() {
        return "type.googleapis.com/google.crypto.tink.AesEaxKey";
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ j63 mo8528c(zzgex zzgexVar) {
        return j63.m14171F(zzgexVar, vd3.m10041a());
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo8527d(j63 j63Var) {
        j63 j63Var2 = j63Var;
        gc3.m14963b(j63Var2.m14174C(), 0);
        gc3.m14964a(j63Var2.m14172E().zzc());
        if (j63Var2.m14173D().m12377C() == 12 || j63Var2.m14173D().m12377C() == 16) {
            return;
        }
        throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: h */
    public final u13<?, j63> mo8526h() {
        return new c33(this, m63.class);
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: i */
    public final int mo8525i() {
        return 3;
    }
}
