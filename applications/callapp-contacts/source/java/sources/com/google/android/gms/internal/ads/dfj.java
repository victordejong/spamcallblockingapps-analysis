package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dfj.class */
final class dfj {
    /* renamed from: a */
    public static dkd m16810a(dhv dhvVar) throws GeneralSecurityException {
        int i = dfm.f47045b[dhvVar.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return dkd.NIST_P384;
            }
            if (i == 3) {
                return dkd.NIST_P521;
            }
            String valueOf = String.valueOf(dhvVar);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 20);
            sb.append("unknown curve type: ");
            sb.append(valueOf);
            throw new GeneralSecurityException(sb.toString());
        }
        return dkd.NIST_P256;
    }

    /* renamed from: a */
    public static dkh m16812a(dhh dhhVar) throws GeneralSecurityException {
        int i = dfm.f47046c[dhhVar.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return dkh.DO_NOT_USE_CRUNCHY_UNCOMPRESSED;
            }
            if (i == 3) {
                return dkh.COMPRESSED;
            }
            String valueOf = String.valueOf(dhhVar);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
            sb.append("unknown point format: ");
            sb.append(valueOf);
            throw new GeneralSecurityException(sb.toString());
        }
        return dkh.UNCOMPRESSED;
    }

    /* renamed from: a */
    public static String m16809a(dhw dhwVar) throws NoSuchAlgorithmException {
        int i = dfm.f47044a[dhwVar.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return "HmacSha256";
            }
            if (i == 3) {
                return "HmacSha512";
            }
            String valueOf = String.valueOf(dhwVar);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("hash unsupported for HMAC: ");
            sb.append(valueOf);
            throw new NoSuchAlgorithmException(sb.toString());
        }
        return "HmacSha1";
    }

    /* renamed from: a */
    public static void m16811a(dhn dhnVar) throws GeneralSecurityException {
        dkb.m16548a(m16810a(dhnVar.m16693a().m16665a()));
        m16809a(dhnVar.m16693a().m16664b());
        if (dhnVar.m16691c() != dhh.UNKNOWN_FORMAT) {
            ddm.m16844a(dhnVar.m16692b().m16699a());
            return;
        }
        throw new GeneralSecurityException("unknown EC point format");
    }
}
