package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/c53.class */
public final class c53 extends w13<r83> {
    public c53() {
        super(r83.class, new a53(a23.class));
    }

    /* renamed from: l */
    public static final void m16119l(r83 r83Var) {
        gc3.m14963b(r83Var.m11667C(), 0);
        if (r83Var.m11665E().zzc() >= 16) {
            m16117n(r83Var.m11666D());
            return;
        }
        throw new GeneralSecurityException("key too short");
    }

    /* renamed from: m */
    public static /* synthetic */ t13<u83> m16118m(int i, int i2, int i3, int i4) {
        t83 m10389F = u83.m10389F();
        w83 m9326D = x83.m9326D();
        m9326D.m9733r(i3);
        m9326D.m9734q(i2);
        m10389F.m10767q(m9326D.m15512n());
        m10389F.m10766r(i);
        return new t13<>(m10389F.m15512n(), i4);
    }

    /* renamed from: n */
    public static void m16117n(x83 x83Var) {
        if (x83Var.m9327C() >= 10) {
            int m9322H = x83Var.m9322H() - 2;
            if (m9322H == 1) {
                if (x83Var.m9327C() > 20) {
                    throw new GeneralSecurityException("tag size too big");
                }
                return;
            } else if (m9322H == 2) {
                if (x83Var.m9327C() > 48) {
                    throw new GeneralSecurityException("tag size too big");
                }
                return;
            } else if (m9322H == 3) {
                if (x83Var.m9327C() > 32) {
                    throw new GeneralSecurityException("tag size too big");
                }
                return;
            } else if (m9322H == 4) {
                if (x83Var.m9327C() > 64) {
                    throw new GeneralSecurityException("tag size too big");
                }
                return;
            } else if (m9322H != 5) {
                throw new GeneralSecurityException("unknown hash type");
            } else {
                if (x83Var.m9327C() > 28) {
                    throw new GeneralSecurityException("tag size too big");
                }
                return;
            }
        }
        throw new GeneralSecurityException("tag size too small");
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: b */
    public final String mo8529b() {
        return "type.googleapis.com/google.crypto.tink.HmacKey";
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ r83 mo8528c(zzgex zzgexVar) {
        return r83.m11664F(zzgexVar, vd3.m10041a());
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo8527d(r83 r83Var) {
        m16119l(r83Var);
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: h */
    public final u13<?, r83> mo8526h() {
        return new b53(this, u83.class);
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: i */
    public final int mo8525i() {
        return 3;
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: j */
    public final int mo9362j() {
        return 2;
    }
}
