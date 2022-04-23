package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/v02.class */
public final class v02 {

    /* renamed from: a */
    private final b82 f8859a;

    private v02(b82 b82Var) {
        this.f8859a = b82Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static final v02 m5323a(b82 b82Var) {
        if (b82Var != null && b82Var.G() > 0) {
            return new v02(b82Var);
        }
        throw new GeneralSecurityException("empty keyset");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public final <P> P m5322b(Class<P> cls) {
        Class<?> m = m12.m6605m(cls);
        if (m == null) {
            String valueOf = String.valueOf(cls.getName());
            throw new GeneralSecurityException(valueOf.length() != 0 ? "No wrapper found for ".concat(valueOf) : new String("No wrapper found for "));
        }
        n12.m6472b(this.f8859a);
        d12 b = d12.m7764b(m);
        for (a82 a82Var : this.f8859a.F()) {
            if (a82Var.G() == zzeoa.c) {
                b12 d = b.m7762d(m12.m6607k(a82Var.F(), m), a82Var);
                if (a82Var.H() == this.f8859a.E()) {
                    b.m7763c(d);
                }
            }
        }
        return (P) m12.m6606l(b, cls);
    }

    public final String toString() {
        return n12.m6473a(this.f8859a).toString();
    }
}
