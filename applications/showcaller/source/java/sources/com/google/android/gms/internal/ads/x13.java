package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/x13.class */
public final class x13 {

    /* renamed from: a */
    private final m93 f31883a;

    private x13(m93 m93Var) {
        this.f31883a = m93Var;
    }

    /* renamed from: a */
    public static final x13 m9375a(m93 m93Var) {
        if (m93Var == null || m93Var.m13334E() <= 0) {
            throw new GeneralSecurityException("empty keyset");
        }
        return new x13(m93Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public final <P> P m9374b(Class<P> cls) {
        Class<?> m12446n = p23.m12446n(cls);
        if (m12446n == null) {
            String name = cls.getName();
            throw new GeneralSecurityException(name.length() != 0 ? "No wrapper found for ".concat(name) : new String("No wrapper found for "));
        }
        q23.m12037b(this.f31883a);
        g23 m14994b = g23.m14994b(m12446n);
        for (l93 l93Var : this.f31883a.m13335D()) {
            if (l93Var.m13660G() == 3) {
                d23 m14992d = m14994b.m14992d(p23.m12449k(l93Var.m13663D(), m12446n), l93Var);
                if (l93Var.m13662E() == this.f31883a.m13336C()) {
                    m14994b.m14993c(m14992d);
                }
            }
        }
        return (P) p23.m12448l(m14994b, cls);
    }

    public final String toString() {
        return q23.m12038a(this.f31883a).toString();
    }
}
