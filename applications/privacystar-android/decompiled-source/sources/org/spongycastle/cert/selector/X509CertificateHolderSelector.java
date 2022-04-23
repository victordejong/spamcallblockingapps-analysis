package org.spongycastle.cert.selector;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.cms.IssuerAndSerialNumber;
import org.spongycastle.asn1.x500.X500Name;
import org.spongycastle.asn1.x509.Extension;
import org.spongycastle.cert.X509CertificateHolder;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Selector;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/selector/X509CertificateHolderSelector.class */
public class X509CertificateHolderSelector implements Selector {
    private X500Name issuer;
    private BigInteger serialNumber;
    private byte[] subjectKeyId;

    public X509CertificateHolderSelector(X500Name x500Name, BigInteger bigInteger) {
        this(x500Name, bigInteger, null);
    }

    public X509CertificateHolderSelector(X500Name x500Name, BigInteger bigInteger, byte[] bArr) {
        this.issuer = x500Name;
        this.serialNumber = bigInteger;
        this.subjectKeyId = bArr;
    }

    public X509CertificateHolderSelector(byte[] bArr) {
        this(null, null, bArr);
    }

    private boolean equalsObj(Object obj, Object obj2) {
        return obj != null ? obj.equals(obj2) : obj2 == null;
    }

    @Override // org.spongycastle.util.Selector
    public Object clone() {
        return new X509CertificateHolderSelector(this.issuer, this.serialNumber, this.subjectKeyId);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof X509CertificateHolderSelector)) {
            return false;
        }
        X509CertificateHolderSelector x509CertificateHolderSelector = (X509CertificateHolderSelector) obj;
        boolean z = false;
        if (Arrays.areEqual(this.subjectKeyId, x509CertificateHolderSelector.subjectKeyId)) {
            z = false;
            if (equalsObj(this.serialNumber, x509CertificateHolderSelector.serialNumber)) {
                z = false;
                if (equalsObj(this.issuer, x509CertificateHolderSelector.issuer)) {
                    z = true;
                }
            }
        }
        return z;
    }

    public X500Name getIssuer() {
        return this.issuer;
    }

    public BigInteger getSerialNumber() {
        return this.serialNumber;
    }

    public byte[] getSubjectKeyIdentifier() {
        return Arrays.clone(this.subjectKeyId);
    }

    public int hashCode() {
        int hashCode = Arrays.hashCode(this.subjectKeyId);
        int i = hashCode;
        if (this.serialNumber != null) {
            i = hashCode ^ this.serialNumber.hashCode();
        }
        int i2 = i;
        if (this.issuer != null) {
            i2 = i ^ this.issuer.hashCode();
        }
        return i2;
    }

    @Override // org.spongycastle.util.Selector
    public boolean match(Object obj) {
        if (obj instanceof X509CertificateHolder) {
            X509CertificateHolder x509CertificateHolder = (X509CertificateHolder) obj;
            if (getSerialNumber() != null) {
                IssuerAndSerialNumber issuerAndSerialNumber = new IssuerAndSerialNumber(x509CertificateHolder.toASN1Structure());
                boolean z = false;
                if (issuerAndSerialNumber.getName().equals(this.issuer)) {
                    z = false;
                    if (issuerAndSerialNumber.getSerialNumber().getValue().equals(this.serialNumber)) {
                        z = true;
                    }
                }
                return z;
            } else if (this.subjectKeyId == null) {
                return false;
            } else {
                Extension extension = x509CertificateHolder.getExtension(Extension.subjectKeyIdentifier);
                if (extension == null) {
                    return Arrays.areEqual(this.subjectKeyId, MSOutlookKeyIdCalculator.calculateKeyId(x509CertificateHolder.getSubjectPublicKeyInfo()));
                }
                return Arrays.areEqual(this.subjectKeyId, ASN1OctetString.getInstance(extension.getParsedValue()).getOctets());
            }
        } else if (obj instanceof byte[]) {
            return Arrays.areEqual(this.subjectKeyId, (byte[]) obj);
        } else {
            return false;
        }
    }
}
