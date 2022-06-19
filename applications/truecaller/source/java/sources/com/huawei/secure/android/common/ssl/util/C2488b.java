package com.huawei.secure.android.common.ssl.util;

import android.net.http.SslCertificate;
import java.io.ByteArrayInputStream;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Principal;
import java.security.SignatureException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateFactory;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLEntry;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.secure.android.common.ssl.util.b */
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/ssl/util/b.class */
public class C2488b {

    /* renamed from: a */
    private static final String f8097a = "b";

    /* renamed from: b */
    private static final int f8098b = 5;

    /* renamed from: a */
    public static X509Certificate m36989a(SslCertificate sslCertificate) {
        X509Certificate x509Certificate;
        byte[] byteArray = SslCertificate.saveState(sslCertificate).getByteArray("x509-certificate");
        if (byteArray != null) {
            try {
                x509Certificate = (X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(byteArray));
            } catch (CertificateException e) {
                C2493g.m36957a(f8097a, "exception", e);
            }
            return x509Certificate;
        }
        x509Certificate = null;
        return x509Certificate;
    }

    /* renamed from: a */
    public static X509Certificate m36988a(String str) {
        X509Certificate x509Certificate;
        try {
            x509Certificate = (X509Certificate) CertificateFactory.getInstance("X509").generateCertificate(new ByteArrayInputStream(str.getBytes()));
        } catch (CertificateException e) {
            String str2 = f8097a;
            StringBuilder m8728C = C22128a.m8728C("generateX509FromStr: CertificateException");
            m8728C.append(e.getMessage());
            C2493g.m36956b(str2, m8728C.toString());
            x509Certificate = null;
        }
        return x509Certificate;
    }

    /* renamed from: a */
    public static boolean m36987a(X509Certificate x509Certificate) {
        if (x509Certificate == null || x509Certificate.getBasicConstraints() == -1) {
            return false;
        }
        return x509Certificate.getKeyUsage()[5];
    }

    /* renamed from: a */
    public static boolean m36986a(X509Certificate x509Certificate, String str) {
        if (!str.equals(x509Certificate.getSubjectDN().getName())) {
            C2493g.m36956b(f8097a, "verify: subject name is error");
            return false;
        }
        return true;
    }

    /* renamed from: a */
    public static boolean m36985a(X509Certificate x509Certificate, X509Certificate x509Certificate2) {
        try {
            x509Certificate2.verify(x509Certificate.getPublicKey());
            if (m36980b(new X509Certificate[]{x509Certificate, x509Certificate2})) {
                return true;
            }
            C2493g.m36956b(f8097a, "verify: date not right");
            return false;
        } catch (InvalidKeyException e) {
            String str = f8097a;
            StringBuilder m8728C = C22128a.m8728C("verify: publickey InvalidKeyException ");
            m8728C.append(e.getMessage());
            C2493g.m36956b(str, m8728C.toString());
            return false;
        } catch (NoSuchAlgorithmException e2) {
            String str2 = f8097a;
            StringBuilder m8728C2 = C22128a.m8728C("verify: publickey NoSuchAlgorithmException ");
            m8728C2.append(e2.getMessage());
            C2493g.m36956b(str2, m8728C2.toString());
            return false;
        } catch (NoSuchProviderException e3) {
            String str3 = f8097a;
            StringBuilder m8728C3 = C22128a.m8728C("verify: publickey NoSuchProviderException ");
            m8728C3.append(e3.getMessage());
            C2493g.m36956b(str3, m8728C3.toString());
            return false;
        } catch (SignatureException e4) {
            String str4 = f8097a;
            StringBuilder m8728C4 = C22128a.m8728C("verify: publickey SignatureException ");
            m8728C4.append(e4.getMessage());
            C2493g.m36956b(str4, m8728C4.toString());
            return false;
        } catch (CertificateException e5) {
            String str5 = f8097a;
            StringBuilder m8728C5 = C22128a.m8728C("verify: publickey CertificateException ");
            m8728C5.append(e5.getMessage());
            C2493g.m36956b(str5, m8728C5.toString());
            return false;
        } catch (Exception e6) {
            String str6 = f8097a;
            StringBuilder m8728C6 = C22128a.m8728C("verify: Exception ");
            m8728C6.append(e6.getMessage());
            C2493g.m36956b(str6, m8728C6.toString());
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m36984a(X509Certificate x509Certificate, X509Certificate[] x509CertificateArr) throws NoSuchProviderException, CertificateException, NoSuchAlgorithmException, InvalidKeyException, SignatureException {
        Principal principal = null;
        int i = 0;
        while (i < x509CertificateArr.length) {
            X509Certificate x509Certificate2 = x509CertificateArr[i];
            Principal issuerDN = x509Certificate2.getIssuerDN();
            Principal subjectDN = x509Certificate2.getSubjectDN();
            if (principal != null) {
                if (!issuerDN.equals(principal)) {
                    C2493g.m36956b(f8097a, "verify: principalIssuer not match");
                    return false;
                }
                x509CertificateArr[i].verify(x509CertificateArr[i - 1].getPublicKey());
            }
            i++;
            principal = subjectDN;
        }
        return m36985a(x509Certificate, x509CertificateArr[0]) && m36980b(x509CertificateArr) && m36987a(x509Certificate) && m36982a(x509CertificateArr);
    }

    /* renamed from: a */
    public static boolean m36983a(X509Certificate x509Certificate, X509Certificate[] x509CertificateArr, X509CRL x509crl, String str) throws NoSuchAlgorithmException, CertificateException, NoSuchProviderException, InvalidKeyException, SignatureException {
        return !m36984a(x509Certificate, x509CertificateArr) && !m36981a(x509CertificateArr, x509crl) && m36986a(x509CertificateArr[x509CertificateArr.length - 1], str) && m36980b(x509CertificateArr);
    }

    /* renamed from: a */
    public static boolean m36982a(X509Certificate[] x509CertificateArr) {
        for (int i = 0; i < x509CertificateArr.length - 1; i++) {
            if (!m36987a(x509CertificateArr[i])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public static boolean m36981a(X509Certificate[] x509CertificateArr, X509CRL x509crl) {
        ArrayList arrayList = new ArrayList();
        for (X509Certificate x509Certificate : x509CertificateArr) {
            arrayList.add(x509Certificate.getSerialNumber());
        }
        if (x509crl != null) {
            try {
                Set<? extends X509CRLEntry> revokedCertificates = x509crl.getRevokedCertificates();
                if (revokedCertificates == null || revokedCertificates.isEmpty()) {
                    return true;
                }
                Iterator<? extends X509CRLEntry> it = revokedCertificates.iterator();
                do {
                    if (!it.hasNext()) {
                        return true;
                    }
                } while (!arrayList.contains(it.next().getSerialNumber()));
                C2493g.m36956b(f8097a, "verify: certificate revoked");
                return false;
            } catch (Exception e) {
                String str = f8097a;
                StringBuilder m8728C = C22128a.m8728C("verify: revoked verify exception : ");
                m8728C.append(e.getMessage());
                C2493g.m36956b(str, m8728C.toString());
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public static boolean m36980b(X509Certificate[] x509CertificateArr) {
        CertificateException e;
        Date date = new Date();
        for (X509Certificate x509Certificate : x509CertificateArr) {
            try {
                x509Certificate.checkValidity(date);
            } catch (CertificateExpiredException e2) {
                e = e2;
                String str = f8097a;
                StringBuilder m8728C = C22128a.m8728C("verifyCertificateDate: exception : ");
                m8728C.append(e.getMessage());
                C2493g.m36956b(str, m8728C.toString());
                return false;
            } catch (CertificateNotYetValidException e3) {
                e = e3;
                String str2 = f8097a;
                StringBuilder m8728C2 = C22128a.m8728C("verifyCertificateDate: exception : ");
                m8728C2.append(e.getMessage());
                C2493g.m36956b(str2, m8728C2.toString());
                return false;
            } catch (Exception e4) {
                String str3 = f8097a;
                StringBuilder m8728C3 = C22128a.m8728C("verifyCertificateDate : exception : ");
                m8728C3.append(e4.getMessage());
                C2493g.m36956b(str3, m8728C3.toString());
                return false;
            }
        }
        return true;
    }
}
