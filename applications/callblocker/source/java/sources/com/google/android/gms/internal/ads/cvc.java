package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cvc.class */
final class cvc {
    /* renamed from: a */
    public static czt m10645a(cxk cxkVar) {
        czt cztVar;
        switch (cvf.f13722b[cxkVar.ordinal()]) {
            case 1:
                cztVar = czt.NIST_P256;
                break;
            case 2:
                cztVar = czt.NIST_P384;
                break;
            case 3:
                cztVar = czt.NIST_P521;
                break;
            default:
                String valueOf = String.valueOf(cxkVar);
                throw new GeneralSecurityException(new StringBuilder(String.valueOf(valueOf).length() + 20).append("unknown curve type: ").append(valueOf).toString());
        }
        return cztVar;
    }

    /* renamed from: a */
    public static czw m10647a(cww cwwVar) {
        czw czwVar;
        switch (cvf.f13723c[cwwVar.ordinal()]) {
            case 1:
                czwVar = czw.UNCOMPRESSED;
                break;
            case 2:
                czwVar = czw.DO_NOT_USE_CRUNCHY_UNCOMPRESSED;
                break;
            case 3:
                czwVar = czw.COMPRESSED;
                break;
            default:
                String valueOf = String.valueOf(cwwVar);
                throw new GeneralSecurityException(new StringBuilder(String.valueOf(valueOf).length() + 22).append("unknown point format: ").append(valueOf).toString());
        }
        return czwVar;
    }

    /* renamed from: a */
    public static String m10644a(cxm cxmVar) {
        String str;
        switch (cvf.f13721a[cxmVar.ordinal()]) {
            case 1:
                str = "HmacSha1";
                break;
            case 2:
                str = "HmacSha256";
                break;
            case 3:
                str = "HmacSha512";
                break;
            default:
                String valueOf = String.valueOf(cxmVar);
                throw new NoSuchAlgorithmException(new StringBuilder(String.valueOf(valueOf).length() + 27).append("hash unsupported for HMAC: ").append(valueOf).toString());
        }
        return str;
    }

    /* renamed from: a */
    public static void m10646a(cxc cxcVar) {
        czr.m10290a(m10645a(cxcVar.m10497a().m10457a()));
        m10644a(cxcVar.m10497a().m10456b());
        if (cxcVar.m10495c() == cww.UNKNOWN_FORMAT) {
            throw new GeneralSecurityException("unknown EC point format");
        }
        cti.m10682a(cxcVar.m10496b().m10503a());
    }
}
