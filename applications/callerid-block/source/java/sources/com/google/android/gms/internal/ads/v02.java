package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/v02.class */
public final class v02 {

    /* renamed from: a */
    private final b82 f8859a;

    private v02(b82 b82Var) {
        this.f8859a = b82Var;
    }

    /* renamed from: a */
    public static final v02 m5323a(b82 b82Var) {
        if (b82Var == null || b82Var.G() <= 0) {
            throw new GeneralSecurityException("empty keyset");
        }
        return new v02(b82Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public final <P> P m5322b(Class<P> cls) {
        Class<?> m6605m = m12.m6605m(cls);
        if (m6605m == null) {
            String valueOf = String.valueOf(cls.getName());
            throw new GeneralSecurityException(valueOf.length() != 0 ? "No wrapper found for ".concat(valueOf) : new String("No wrapper found for "));
        }
        n12.m6472b(this.f8859a);
        d12 m7764b = d12.m7764b(m6605m);
        for (a82 a82Var : this.f8859a.F()) {
            if (a82Var.G() == zzeoa.c) {
                b12 m7762d = m7764b.m7762d(m12.m6607k(a82Var.F(), m6605m), a82Var);
                if (a82Var.H() == this.f8859a.E()) {
                    m7764b.m7763c(m7762d);
                }
            }
        }
        return (P) m12.m6606l(m7764b, cls);
    }

    public final String toString() {
        return n12.m6473a(this.f8859a).toString();
    }
}
