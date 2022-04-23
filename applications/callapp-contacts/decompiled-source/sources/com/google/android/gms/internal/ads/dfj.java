package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dfj.class */
final class dfj {
    public static dkd a(dhv dhvVar) throws GeneralSecurityException {
        int i = dfm.f26804b[dhvVar.ordinal()];
        if (i == 1) {
            return dkd.NIST_P256;
        }
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

    public static dkh a(dhh dhhVar) throws GeneralSecurityException {
        int i = dfm.f26805c[dhhVar.ordinal()];
        if (i == 1) {
            return dkh.UNCOMPRESSED;
        }
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

    public static String a(dhw dhwVar) throws NoSuchAlgorithmException {
        int i = dfm.f26803a[dhwVar.ordinal()];
        if (i == 1) {
            return "HmacSha1";
        }
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

    public static void a(dhn dhnVar) throws GeneralSecurityException {
        dkb.a(a(dhnVar.a().a()));
        a(dhnVar.a().b());
        if (dhnVar.c() != dhh.UNKNOWN_FORMAT) {
            ddm.a(dhnVar.b().a());
            return;
        }
        throw new GeneralSecurityException("unknown EC point format");
    }
}
