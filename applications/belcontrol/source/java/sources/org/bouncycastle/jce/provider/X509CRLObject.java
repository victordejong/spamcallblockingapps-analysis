package org.bouncycastle.jce.provider;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.Principal;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CRLException;
import java.security.cert.Certificate;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLEntry;
import java.security.cert.X509Certificate;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1OutputStream;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.util.ASN1Dump;
import org.bouncycastle.asn1.x509.CRLDistPoint;
import org.bouncycastle.asn1.x509.CRLNumber;
import org.bouncycastle.asn1.x509.CertificateList;
import org.bouncycastle.asn1.x509.IssuingDistributionPoint;
import org.bouncycastle.asn1.x509.TBSCertList;
import org.bouncycastle.asn1.x509.X509Extension;
import org.bouncycastle.asn1.x509.X509Extensions;
import org.bouncycastle.jce.X509Principal;
import org.bouncycastle.util.encoders.Hex;
import org.bouncycastle.x509.extension.X509ExtensionUtil;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/X509CRLObject.class */
public class X509CRLObject extends X509CRL {

    /* renamed from: c */
    private CertificateList f7630c;
    private boolean isIndirect;
    private String sigAlgName;
    private byte[] sigAlgParams;

    public X509CRLObject(CertificateList certificateList) {
        this.f7630c = certificateList;
        try {
            this.sigAlgName = X509SignatureUtil.getSignatureName(certificateList.getSignatureAlgorithm());
            if (certificateList.getSignatureAlgorithm().getParameters() != null) {
                this.sigAlgParams = ((ASN1Encodable) certificateList.getSignatureAlgorithm().getParameters()).getDEREncoded();
            } else {
                this.sigAlgParams = null;
            }
            this.isIndirect = isIndirectCRL();
        } catch (Exception e) {
            throw new CRLException("CRL contents invalid: " + e);
        }
    }

    private Set getExtensionOIDs(boolean z) {
        X509Extensions extensions;
        if (getVersion() != 2 || (extensions = this.f7630c.getTBSCertList().getExtensions()) == null) {
            return null;
        }
        HashSet hashSet = new HashSet();
        Enumeration oids = extensions.oids();
        while (oids.hasMoreElements()) {
            DERObjectIdentifier dERObjectIdentifier = (DERObjectIdentifier) oids.nextElement();
            if (z == extensions.getExtension(dERObjectIdentifier).isCritical()) {
                hashSet.add(dERObjectIdentifier.getId());
            }
        }
        return hashSet;
    }

    private boolean isIndirectCRL() {
        boolean isIndirectCRL;
        byte[] extensionValue = getExtensionValue(X509Extensions.IssuingDistributionPoint.getId());
        if (extensionValue != null) {
            try {
                isIndirectCRL = IssuingDistributionPoint.getInstance(X509ExtensionUtil.fromExtensionValue(extensionValue)).isIndirectCRL();
            } catch (Exception e) {
                throw new ExtCRLException("Exception reading IssuingDistributionPoint", e);
            }
        } else {
            isIndirectCRL = false;
        }
        return isIndirectCRL;
    }

    private Set loadCRLEntries() {
        HashSet hashSet = new HashSet();
        Enumeration revokedCertificateEnumeration = this.f7630c.getRevokedCertificateEnumeration();
        X500Principal issuerX500Principal = getIssuerX500Principal();
        while (true) {
            X500Principal x500Principal = issuerX500Principal;
            if (revokedCertificateEnumeration.hasMoreElements()) {
                X509CRLEntryObject x509CRLEntryObject = new X509CRLEntryObject((TBSCertList.CRLEntry) revokedCertificateEnumeration.nextElement(), this.isIndirect, x500Principal);
                hashSet.add(x509CRLEntryObject);
                issuerX500Principal = x509CRLEntryObject.getCertificateIssuer();
            } else {
                return hashSet;
            }
        }
    }

    @Override // java.security.cert.X509Extension
    public Set getCriticalExtensionOIDs() {
        return getExtensionOIDs(true);
    }

    @Override // java.security.cert.X509CRL
    public byte[] getEncoded() {
        try {
            return this.f7630c.getEncoded(ASN1Encodable.DER);
        } catch (IOException e) {
            throw new CRLException(e.toString());
        }
    }

    @Override // java.security.cert.X509Extension
    public byte[] getExtensionValue(String str) {
        X509Extension extension;
        X509Extensions extensions = this.f7630c.getTBSCertList().getExtensions();
        if (extensions == null || (extension = extensions.getExtension(new DERObjectIdentifier(str))) == null) {
            return null;
        }
        try {
            return extension.getValue().getEncoded();
        } catch (Exception e) {
            throw new IllegalStateException("error parsing " + e.toString());
        }
    }

    @Override // java.security.cert.X509CRL
    public Principal getIssuerDN() {
        return new X509Principal(this.f7630c.getIssuer());
    }

    @Override // java.security.cert.X509CRL
    public X500Principal getIssuerX500Principal() {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            new ASN1OutputStream(byteArrayOutputStream).writeObject(this.f7630c.getIssuer());
            return new X500Principal(byteArrayOutputStream.toByteArray());
        } catch (IOException e) {
            throw new IllegalStateException("can't encode issuer DN");
        }
    }

    @Override // java.security.cert.X509CRL
    public Date getNextUpdate() {
        if (this.f7630c.getNextUpdate() != null) {
            return this.f7630c.getNextUpdate().getDate();
        }
        return null;
    }

    @Override // java.security.cert.X509Extension
    public Set getNonCriticalExtensionOIDs() {
        return getExtensionOIDs(false);
    }

    @Override // java.security.cert.X509CRL
    public X509CRLEntry getRevokedCertificate(BigInteger bigInteger) {
        Enumeration revokedCertificateEnumeration = this.f7630c.getRevokedCertificateEnumeration();
        X500Principal issuerX500Principal = getIssuerX500Principal();
        while (true) {
            X500Principal x500Principal = issuerX500Principal;
            if (revokedCertificateEnumeration.hasMoreElements()) {
                TBSCertList.CRLEntry cRLEntry = (TBSCertList.CRLEntry) revokedCertificateEnumeration.nextElement();
                X509CRLEntryObject x509CRLEntryObject = new X509CRLEntryObject(cRLEntry, this.isIndirect, x500Principal);
                if (bigInteger.equals(cRLEntry.getUserCertificate().getValue())) {
                    return x509CRLEntryObject;
                }
                issuerX500Principal = x509CRLEntryObject.getCertificateIssuer();
            } else {
                return null;
            }
        }
    }

    @Override // java.security.cert.X509CRL
    public Set getRevokedCertificates() {
        Set loadCRLEntries = loadCRLEntries();
        if (!loadCRLEntries.isEmpty()) {
            return Collections.unmodifiableSet(loadCRLEntries);
        }
        return null;
    }

    @Override // java.security.cert.X509CRL
    public String getSigAlgName() {
        return this.sigAlgName;
    }

    @Override // java.security.cert.X509CRL
    public String getSigAlgOID() {
        return this.f7630c.getSignatureAlgorithm().getObjectId().getId();
    }

    @Override // java.security.cert.X509CRL
    public byte[] getSigAlgParams() {
        byte[] bArr = this.sigAlgParams;
        if (bArr != null) {
            int length = bArr.length;
            byte[] bArr2 = new byte[length];
            System.arraycopy(bArr, 0, bArr2, 0, length);
            return bArr2;
        }
        return null;
    }

    @Override // java.security.cert.X509CRL
    public byte[] getSignature() {
        return this.f7630c.getSignature().getBytes();
    }

    @Override // java.security.cert.X509CRL
    public byte[] getTBSCertList() {
        try {
            return this.f7630c.getTBSCertList().getEncoded(ASN1Encodable.DER);
        } catch (IOException e) {
            throw new CRLException(e.toString());
        }
    }

    @Override // java.security.cert.X509CRL
    public Date getThisUpdate() {
        return this.f7630c.getThisUpdate().getDate();
    }

    @Override // java.security.cert.X509CRL
    public int getVersion() {
        return this.f7630c.getVersion();
    }

    @Override // java.security.cert.X509Extension
    public boolean hasUnsupportedCriticalExtension() {
        Set criticalExtensionOIDs = getCriticalExtensionOIDs();
        if (criticalExtensionOIDs == null) {
            return false;
        }
        criticalExtensionOIDs.remove(RFC3280CertPathUtilities.ISSUING_DISTRIBUTION_POINT);
        criticalExtensionOIDs.remove(RFC3280CertPathUtilities.DELTA_CRL_INDICATOR);
        return !criticalExtensionOIDs.isEmpty();
    }

    @Override // java.security.cert.CRL
    public boolean isRevoked(Certificate certificate) {
        if (certificate.getType().equals("X.509")) {
            TBSCertList.CRLEntry[] revokedCertificates = this.f7630c.getRevokedCertificates();
            if (revokedCertificates == null) {
                return false;
            }
            BigInteger serialNumber = ((X509Certificate) certificate).getSerialNumber();
            for (TBSCertList.CRLEntry cRLEntry : revokedCertificates) {
                if (cRLEntry.getUserCertificate().getValue().equals(serialNumber)) {
                    return true;
                }
            }
            return false;
        }
        throw new RuntimeException("X.509 CRL used with non X.509 Cert");
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x0280 -> B:15:0x0128). Please submit an issue!!! */
    @Override // java.security.cert.CRL
    public String toString() {
        String str;
        String dumpAsString;
        Object cRLDistPoint;
        StringBuffer stringBuffer = new StringBuffer();
        String property = System.getProperty("line.separator");
        stringBuffer.append("              Version: ");
        stringBuffer.append(getVersion());
        stringBuffer.append(property);
        stringBuffer.append("             IssuerDN: ");
        stringBuffer.append(getIssuerDN());
        stringBuffer.append(property);
        stringBuffer.append("          This update: ");
        stringBuffer.append(getThisUpdate());
        stringBuffer.append(property);
        stringBuffer.append("          Next update: ");
        stringBuffer.append(getNextUpdate());
        stringBuffer.append(property);
        stringBuffer.append("  Signature Algorithm: ");
        stringBuffer.append(getSigAlgName());
        stringBuffer.append(property);
        byte[] signature = getSignature();
        stringBuffer.append("            Signature: ");
        stringBuffer.append(new String(Hex.encode(signature, 0, 20)));
        stringBuffer.append(property);
        int i = 20;
        while (i < signature.length) {
            int length = signature.length;
            stringBuffer.append("                       ");
            stringBuffer.append(i < length - 20 ? new String(Hex.encode(signature, i, 20)) : new String(Hex.encode(signature, i, signature.length - i)));
            stringBuffer.append(property);
            i += 20;
        }
        X509Extensions extensions = this.f7630c.getTBSCertList().getExtensions();
        if (extensions != null) {
            Enumeration oids = extensions.oids();
            if (oids.hasMoreElements()) {
                str = "           Extensions: ";
                stringBuffer.append(str);
                stringBuffer.append(property);
            }
            while (oids.hasMoreElements()) {
                DERObjectIdentifier dERObjectIdentifier = (DERObjectIdentifier) oids.nextElement();
                X509Extension extension = extensions.getExtension(dERObjectIdentifier);
                if (extension.getValue() != null) {
                    ASN1InputStream aSN1InputStream = new ASN1InputStream(extension.getValue().getOctets());
                    stringBuffer.append("                       critical(");
                    stringBuffer.append(extension.isCritical());
                    stringBuffer.append(") ");
                    try {
                    } catch (Exception e) {
                        stringBuffer.append(dERObjectIdentifier.getId());
                        stringBuffer.append(" value = ");
                        str = "*****";
                    }
                    if (dERObjectIdentifier.equals(X509Extensions.CRLNumber)) {
                        cRLDistPoint = new CRLNumber(DERInteger.getInstance(aSN1InputStream.readObject()).getPositiveValue());
                    } else {
                        if (dERObjectIdentifier.equals(X509Extensions.DeltaCRLIndicator)) {
                            dumpAsString = "Base CRL: " + new CRLNumber(DERInteger.getInstance(aSN1InputStream.readObject()).getPositiveValue());
                        } else if (dERObjectIdentifier.equals(X509Extensions.IssuingDistributionPoint)) {
                            cRLDistPoint = new IssuingDistributionPoint((ASN1Sequence) aSN1InputStream.readObject());
                        } else if (dERObjectIdentifier.equals(X509Extensions.CRLDistributionPoints)) {
                            cRLDistPoint = new CRLDistPoint((ASN1Sequence) aSN1InputStream.readObject());
                        } else if (dERObjectIdentifier.equals(X509Extensions.FreshestCRL)) {
                            cRLDistPoint = new CRLDistPoint((ASN1Sequence) aSN1InputStream.readObject());
                        } else {
                            stringBuffer.append(dERObjectIdentifier.getId());
                            stringBuffer.append(" value = ");
                            dumpAsString = ASN1Dump.dumpAsString(aSN1InputStream.readObject());
                        }
                        stringBuffer.append(dumpAsString);
                        stringBuffer.append(property);
                    }
                    stringBuffer.append(cRLDistPoint);
                    stringBuffer.append(property);
                } else {
                    stringBuffer.append(property);
                }
            }
        }
        Set<Object> revokedCertificates = getRevokedCertificates();
        if (revokedCertificates != null) {
            for (Object obj : revokedCertificates) {
                stringBuffer.append(obj);
                stringBuffer.append(property);
            }
        }
        return stringBuffer.toString();
    }

    @Override // java.security.cert.X509CRL
    public void verify(PublicKey publicKey) {
        verify(publicKey, BouncyCastleProvider.PROVIDER_NAME);
    }

    @Override // java.security.cert.X509CRL
    public void verify(PublicKey publicKey, String str) {
        if (this.f7630c.getSignatureAlgorithm().equals(this.f7630c.getTBSCertList().getSignature())) {
            Signature signature = Signature.getInstance(getSigAlgName(), str);
            signature.initVerify(publicKey);
            signature.update(getTBSCertList());
            if (!signature.verify(getSignature())) {
                throw new SignatureException("CRL does not verify with supplied public key.");
            }
            return;
        }
        throw new CRLException("Signature algorithm on CertificateList does not match TBSCertList.");
    }
}
