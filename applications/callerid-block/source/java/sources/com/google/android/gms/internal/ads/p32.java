package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/p32.class */
final class p32 {
    /* renamed from: a */
    public static void m6230a(t62 t62Var) {
        x92.m4958d(m6228c(t62Var.E().E()));
        m6229b(t62Var.E().F());
        if (t62Var.G() != zzemo.b) {
            m12.m6611g(t62Var.F().E());
            return;
        }
        throw new GeneralSecurityException("unknown EC point format");
    }

    /* renamed from: b */
    public static String m6229b(zzenk zzenkVar) {
        zzemo zzemoVar = zzemo.b;
        zzeni zzeniVar = zzeni.b;
        zzenk zzenkVar2 = zzenk.b;
        int ordinal = zzenkVar.ordinal();
        if (ordinal != 1) {
            if (ordinal == 3) {
                return "HmacSha256";
            }
            if (ordinal == 4) {
                return "HmacSha512";
            }
            String valueOf = String.valueOf(zzenkVar);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("hash unsupported for HMAC: ");
            sb.append(valueOf);
            throw new NoSuchAlgorithmException(sb.toString());
        }
        return "HmacSha1";
    }

    /* renamed from: c */
    public static int m6228c(zzeni zzeniVar) {
        zzemo zzemoVar = zzemo.b;
        zzeni zzeniVar2 = zzeni.b;
        zzenk zzenkVar = zzenk.b;
        int ordinal = zzeniVar.ordinal();
        int i = 1;
        if (ordinal != 1) {
            i = 2;
            if (ordinal != 2) {
                if (ordinal == 3) {
                    return 3;
                }
                String valueOf = String.valueOf(zzeniVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 20);
                sb.append("unknown curve type: ");
                sb.append(valueOf);
                throw new GeneralSecurityException(sb.toString());
            }
        }
        return i;
    }

    /* renamed from: d */
    public static int m6227d(zzemo zzemoVar) {
        zzemo zzemoVar2 = zzemo.b;
        zzeni zzeniVar = zzeni.b;
        zzenk zzenkVar = zzenk.b;
        int ordinal = zzemoVar.ordinal();
        int i = 1;
        if (ordinal != 1) {
            i = 2;
            if (ordinal != 2) {
                if (ordinal == 3) {
                    return 3;
                }
                String valueOf = String.valueOf(zzemoVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
                sb.append("unknown point format: ");
                sb.append(valueOf);
                throw new GeneralSecurityException(sb.toString());
            }
        }
        return i;
    }
}
