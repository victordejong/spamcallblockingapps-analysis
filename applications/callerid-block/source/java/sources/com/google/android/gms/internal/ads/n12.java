package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/n12.class */
final class n12 {
    static {
        Charset.forName("UTF-8");
    }

    /* renamed from: a */
    public static g82 m6473a(b82 b82Var) {
        d82 E = g82.E();
        E.q(b82Var.E());
        for (a82 a82Var : b82Var.F()) {
            e82 E2 = f82.E();
            E2.q(a82Var.F().E());
            E2.r(a82Var.G());
            E2.t(a82Var.I());
            E2.s(a82Var.H());
            E.r(E2.m());
        }
        return E.m();
    }

    /* renamed from: b */
    public static void m6472b(b82 b82Var) {
        int E = b82Var.E();
        int i = 0;
        boolean z = false;
        boolean z2 = true;
        for (a82 a82Var : b82Var.F()) {
            if (a82Var.G() == zzeoa.c) {
                if (!a82Var.E()) {
                    throw new GeneralSecurityException(String.format("key %d has no key data", Integer.valueOf(a82Var.H())));
                }
                if (a82Var.I() == zzepe.b) {
                    throw new GeneralSecurityException(String.format("key %d has unknown prefix", Integer.valueOf(a82Var.H())));
                }
                if (a82Var.G() == zzeoa.b) {
                    throw new GeneralSecurityException(String.format("key %d has unknown status", Integer.valueOf(a82Var.H())));
                }
                boolean z3 = z;
                if (a82Var.H() == E) {
                    if (z) {
                        throw new GeneralSecurityException("keyset contains multiple primary keys");
                    }
                    z3 = true;
                }
                z2 &= a82Var.F().G() == zzenx.e;
                i++;
                z = z3;
            }
        }
        if (i != 0) {
            if (!z && !z2) {
                throw new GeneralSecurityException("keyset doesn't contain a valid primary key");
            }
            return;
        }
        throw new GeneralSecurityException("keyset must contain at least one ENABLED key");
    }
}
