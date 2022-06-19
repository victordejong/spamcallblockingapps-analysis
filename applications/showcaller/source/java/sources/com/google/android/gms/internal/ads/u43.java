package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/u43.class */
final class u43 {
    /* renamed from: a */
    public static void m10414a(z73 z73Var) {
        kb3.m13925d(m10412c(z73Var.m8495C().m13958H()));
        m10413b(z73Var.m8495C().m13957I());
        if (z73Var.m8488J() != 2) {
            p23.m12453g(z73Var.m8494D().m10793C());
            return;
        }
        throw new GeneralSecurityException("unknown EC point format");
    }

    /* renamed from: b */
    public static String m10413b(int i) {
        int i2 = i - 2;
        if (i2 != 1) {
            if (i2 == 2) {
                return "HmacSha384";
            }
            if (i2 == 3) {
                return "HmacSha256";
            }
            if (i2 == 4) {
                return "HmacSha512";
            }
            if (i2 != 5) {
                throw new NoSuchAlgorithmException("hash unsupported for HMAC: ".concat(Integer.toString(o83.m12710a(i))));
            }
            return "HmacSha224";
        }
        return "HmacSha1";
    }

    /* renamed from: c */
    public static int m10412c(int i) {
        int i2 = i - 2;
        if (i2 != 2) {
            if (i2 == 3) {
                return 2;
            }
            if (i2 != 4) {
                throw new GeneralSecurityException("unknown curve type: ".concat(Integer.toString(m83.m13338a(i))));
            }
            return 3;
        }
        return 1;
    }

    /* renamed from: d */
    public static int m10411d(int i) {
        int i2 = i - 2;
        int i3 = 1;
        if (i2 != 1) {
            i3 = 2;
            if (i2 != 2) {
                if (i2 != 3) {
                    throw new GeneralSecurityException("unknown point format: ".concat(Integer.toString(q73.m12016a(i))));
                }
                return 3;
            }
        }
        return i3;
    }
}
