package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/q23.class */
public final class q23 {

    /* renamed from: a */
    public static final Charset f28299a = Charset.forName("UTF-8");

    /* renamed from: a */
    public static r93 m12038a(m93 m93Var) {
        o93 m11637C = r93.m11637C();
        m11637C.m12705q(m93Var.m13336C());
        for (l93 l93Var : m93Var.m13335D()) {
            p93 m12008C = q93.m12008C();
            m12008C.m12340q(l93Var.m13663D().m16668C());
            m12008C.m12338s(l93Var.m13660G());
            m12008C.m12337t(l93Var.m13659H());
            m12008C.m12339r(l93Var.m13662E());
            m11637C.m12704r(m12008C.m15512n());
        }
        return m11637C.m15512n();
    }

    /* renamed from: b */
    public static void m12037b(m93 m93Var) {
        int m13336C = m93Var.m13336C();
        int i = 0;
        boolean z = false;
        boolean z2 = true;
        for (l93 l93Var : m93Var.m13335D()) {
            if (l93Var.m13660G() == 3) {
                if (!l93Var.m13664C()) {
                    throw new GeneralSecurityException(String.format("key %d has no key data", Integer.valueOf(l93Var.m13662E())));
                }
                if (l93Var.m13659H() == 2) {
                    throw new GeneralSecurityException(String.format("key %d has unknown prefix", Integer.valueOf(l93Var.m13662E())));
                }
                if (l93Var.m13660G() == 2) {
                    throw new GeneralSecurityException(String.format("key %d has unknown status", Integer.valueOf(l93Var.m13662E())));
                }
                boolean z3 = z;
                if (l93Var.m13662E() == m13336C) {
                    if (z) {
                        throw new GeneralSecurityException("keyset contains multiple primary keys");
                    }
                    z3 = true;
                }
                z2 &= l93Var.m13663D().m16661J() == 5;
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
