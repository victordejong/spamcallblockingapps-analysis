package com.google.api.client.p379a;

import java.io.ByteArrayInputStream;
import java.security.InvalidKeyException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.net.ssl.X509TrustManager;
/* renamed from: com.google.api.client.a.ab */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/ab.class */
public final class C15208ab {
    private C15208ab() {
    }

    /* renamed from: a */
    public static CertificateFactory m9276a() throws CertificateException {
        return CertificateFactory.getInstance("X.509");
    }

    /* renamed from: a */
    public static X509Certificate m9274a(Signature signature, X509TrustManager x509TrustManager, List<String> list, byte[] bArr, byte[] bArr2) throws InvalidKeyException, SignatureException {
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            X509Certificate[] x509CertificateArr = new X509Certificate[list.size()];
            int i = 0;
            for (String str : list) {
                try {
                    Certificate generateCertificate = certificateFactory.generateCertificate(new ByteArrayInputStream(C15223d.m9251a(str)));
                    if (!(generateCertificate instanceof X509Certificate)) {
                        return null;
                    }
                    x509CertificateArr[i] = (X509Certificate) generateCertificate;
                    i++;
                } catch (CertificateException e) {
                    return null;
                }
            }
            x509TrustManager.checkServerTrusted(x509CertificateArr, "RSA");
            if (!m9275a(signature, x509CertificateArr[0].getPublicKey(), bArr, bArr2)) {
                return null;
            }
            return x509CertificateArr[0];
        } catch (CertificateException e2) {
            return null;
        }
    }

    /* renamed from: a */
    public static boolean m9275a(Signature signature, PublicKey publicKey, byte[] bArr, byte[] bArr2) throws InvalidKeyException, SignatureException {
        signature.initVerify(publicKey);
        signature.update(bArr2);
        try {
            return signature.verify(bArr);
        } catch (SignatureException e) {
            return false;
        }
    }
}
