package org.spongycastle.x509;

import java.io.IOException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import org.spongycastle.asn1.ASN1Encoding;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.x509.Certificate;
import org.spongycastle.asn1.x509.CertificatePair;
import org.spongycastle.jcajce.util.BCJcaJceHelper;
import org.spongycastle.jcajce.util.JcaJceHelper;
import org.spongycastle.jce.provider.X509CertificateObject;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/x509/X509CertificatePair.class */
public class X509CertificatePair {
    private final JcaJceHelper bcHelper = new BCJcaJceHelper();
    private X509Certificate forward;
    private X509Certificate reverse;

    public X509CertificatePair(X509Certificate x509Certificate, X509Certificate x509Certificate2) {
        this.forward = x509Certificate;
        this.reverse = x509Certificate2;
    }

    public X509CertificatePair(CertificatePair certificatePair) throws CertificateParsingException {
        if (certificatePair.getForward() != null) {
            this.forward = new X509CertificateObject(certificatePair.getForward());
        }
        if (certificatePair.getReverse() != null) {
            this.reverse = new X509CertificateObject(certificatePair.getReverse());
        }
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof X509CertificatePair)) {
            return false;
        }
        X509CertificatePair x509CertificatePair = (X509CertificatePair) obj;
        boolean equals = this.forward != null ? this.forward.equals(x509CertificatePair.forward) : x509CertificatePair.forward == null;
        boolean equals2 = this.reverse != null ? this.reverse.equals(x509CertificatePair.reverse) : x509CertificatePair.reverse == null;
        boolean z = false;
        if (equals) {
            z = false;
            if (equals2) {
                z = true;
            }
        }
        return z;
    }

    public byte[] getEncoded() throws CertificateEncodingException {
        Certificate certificate;
        try {
            Certificate certificate2 = null;
            if (this.forward != null) {
                Certificate instance = Certificate.getInstance(new ASN1InputStream(this.forward.getEncoded()).readObject());
                certificate = instance;
                if (instance == null) {
                    throw new CertificateEncodingException("unable to get encoding for forward");
                }
            } else {
                certificate = null;
            }
            if (this.reverse != null) {
                Certificate instance2 = Certificate.getInstance(new ASN1InputStream(this.reverse.getEncoded()).readObject());
                certificate2 = instance2;
                if (instance2 == null) {
                    throw new CertificateEncodingException("unable to get encoding for reverse");
                }
            }
            return new CertificatePair(certificate, certificate2).getEncoded(ASN1Encoding.DER);
        } catch (IOException e) {
            throw new ExtCertificateEncodingException(e.toString(), e);
        } catch (IllegalArgumentException e2) {
            throw new ExtCertificateEncodingException(e2.toString(), e2);
        }
    }

    public X509Certificate getForward() {
        return this.forward;
    }

    public X509Certificate getReverse() {
        return this.reverse;
    }

    public int hashCode() {
        int i = -1;
        if (this.forward != null) {
            i = (-1) ^ this.forward.hashCode();
        }
        int i2 = i;
        if (this.reverse != null) {
            i2 = (i * 17) ^ this.reverse.hashCode();
        }
        return i2;
    }
}
