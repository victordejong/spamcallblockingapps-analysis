package org.bouncycastle.jce.provider;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.Principal;
import java.security.Provider;
import java.security.PublicKey;
import java.security.Security;
import java.security.Signature;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1OutputStream;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERIA5String;
import org.bouncycastle.asn1.DERNull;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.misc.MiscObjectIdentifiers;
import org.bouncycastle.asn1.misc.NetscapeCertType;
import org.bouncycastle.asn1.misc.NetscapeRevocationURL;
import org.bouncycastle.asn1.misc.VerisignCzagExtension;
import org.bouncycastle.asn1.util.ASN1Dump;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.BasicConstraints;
import org.bouncycastle.asn1.x509.KeyUsage;
import org.bouncycastle.asn1.x509.X509CertificateStructure;
import org.bouncycastle.asn1.x509.X509Extension;
import org.bouncycastle.asn1.x509.X509Extensions;
import org.bouncycastle.jce.X509Principal;
import org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.encoders.Hex;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/X509CertificateObject.class */
public class X509CertificateObject extends X509Certificate implements PKCS12BagAttributeCarrier {
    private PKCS12BagAttributeCarrier attrCarrier = new PKCS12BagAttributeCarrierImpl();
    private BasicConstraints basicConstraints;

    /* renamed from: c */
    private X509CertificateStructure f7631c;
    private int hashValue;
    private boolean hashValueSet;
    private boolean[] keyUsage;

    public X509CertificateObject(X509CertificateStructure x509CertificateStructure) {
        this.f7631c = x509CertificateStructure;
        try {
            byte[] extensionBytes = getExtensionBytes("2.5.29.19");
            if (extensionBytes != null) {
                this.basicConstraints = BasicConstraints.getInstance(ASN1Object.fromByteArray(extensionBytes));
            }
            try {
                byte[] extensionBytes2 = getExtensionBytes("2.5.29.15");
                if (extensionBytes2 == null) {
                    this.keyUsage = null;
                    return;
                }
                DERBitString dERBitString = DERBitString.getInstance(ASN1Object.fromByteArray(extensionBytes2));
                byte[] bytes = dERBitString.getBytes();
                int length = (bytes.length * 8) - dERBitString.getPadBits();
                this.keyUsage = new boolean[length >= 9 ? length : 9];
                for (int i = 0; i != length; i++) {
                    this.keyUsage[i] = (bytes[i / 8] & (128 >>> (i % 8))) != 0;
                }
            } catch (Exception e) {
                throw new CertificateParsingException("cannot construct KeyUsage: " + e);
            }
        } catch (Exception e2) {
            throw new CertificateParsingException("cannot construct BasicConstraints: " + e2);
        }
    }

    private int calculateHashCode() {
        try {
            byte[] encoded = getEncoded();
            int i = 0;
            for (int i2 = 1; i2 < encoded.length; i2++) {
                i += encoded[i2] * i2;
            }
            return i;
        } catch (CertificateEncodingException e) {
            return 0;
        }
    }

    private void checkSignature(PublicKey publicKey, Signature signature) {
        if (isAlgIdEqual(this.f7631c.getSignatureAlgorithm(), this.f7631c.getTBSCertificate().getSignature())) {
            X509SignatureUtil.setSignatureParameters(signature, this.f7631c.getSignatureAlgorithm().getParameters());
            signature.initVerify(publicKey);
            signature.update(getTBSCertificate());
            if (!signature.verify(getSignature())) {
                throw new InvalidKeyException("Public key presented not for certificate signature");
            }
            return;
        }
        throw new CertificateException("signature algorithm in TBS cert not same as outer cert");
    }

    private byte[] getExtensionBytes(String str) {
        X509Extension extension;
        X509Extensions extensions = this.f7631c.getTBSCertificate().getExtensions();
        if (extensions == null || (extension = extensions.getExtension(new DERObjectIdentifier(str))) == null) {
            return null;
        }
        return extension.getValue().getOctets();
    }

    private boolean isAlgIdEqual(AlgorithmIdentifier algorithmIdentifier, AlgorithmIdentifier algorithmIdentifier2) {
        if (!algorithmIdentifier.getObjectId().equals(algorithmIdentifier2.getObjectId())) {
            return false;
        }
        return algorithmIdentifier.getParameters() == null ? algorithmIdentifier2.getParameters() == null || algorithmIdentifier2.getParameters().equals(DERNull.INSTANCE) : algorithmIdentifier2.getParameters() == null ? algorithmIdentifier.getParameters() == null || algorithmIdentifier.getParameters().equals(DERNull.INSTANCE) : algorithmIdentifier.getParameters().equals(algorithmIdentifier2.getParameters());
    }

    @Override // java.security.cert.X509Certificate
    public void checkValidity() {
        checkValidity(new Date());
    }

    @Override // java.security.cert.X509Certificate
    public void checkValidity(Date date) {
        if (date.getTime() > getNotAfter().getTime()) {
            throw new CertificateExpiredException("certificate expired on " + this.f7631c.getEndDate().getTime());
        } else if (date.getTime() >= getNotBefore().getTime()) {
        } else {
            throw new CertificateNotYetValidException("certificate not valid till " + this.f7631c.getStartDate().getTime());
        }
    }

    @Override // java.security.cert.Certificate
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Certificate)) {
            return false;
        }
        try {
            return Arrays.areEqual(getEncoded(), ((Certificate) obj).getEncoded());
        } catch (CertificateEncodingException e) {
            return false;
        }
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public DEREncodable getBagAttribute(DERObjectIdentifier dERObjectIdentifier) {
        return this.attrCarrier.getBagAttribute(dERObjectIdentifier);
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public Enumeration getBagAttributeKeys() {
        return this.attrCarrier.getBagAttributeKeys();
    }

    @Override // java.security.cert.X509Certificate
    public int getBasicConstraints() {
        BasicConstraints basicConstraints = this.basicConstraints;
        if (basicConstraints == null || !basicConstraints.isCA()) {
            return -1;
        }
        if (this.basicConstraints.getPathLenConstraint() != null) {
            return this.basicConstraints.getPathLenConstraint().intValue();
        }
        return Integer.MAX_VALUE;
    }

    @Override // java.security.cert.X509Extension
    public Set getCriticalExtensionOIDs() {
        if (getVersion() == 3) {
            HashSet hashSet = new HashSet();
            X509Extensions extensions = this.f7631c.getTBSCertificate().getExtensions();
            if (extensions == null) {
                return null;
            }
            Enumeration oids = extensions.oids();
            while (oids.hasMoreElements()) {
                DERObjectIdentifier dERObjectIdentifier = (DERObjectIdentifier) oids.nextElement();
                if (extensions.getExtension(dERObjectIdentifier).isCritical()) {
                    hashSet.add(dERObjectIdentifier.getId());
                }
            }
            return hashSet;
        }
        return null;
    }

    @Override // java.security.cert.Certificate
    public byte[] getEncoded() {
        try {
            return this.f7631c.getEncoded(ASN1Encodable.DER);
        } catch (IOException e) {
            throw new CertificateEncodingException(e.toString());
        }
    }

    @Override // java.security.cert.X509Certificate
    public List getExtendedKeyUsage() {
        byte[] extensionBytes = getExtensionBytes("2.5.29.37");
        if (extensionBytes != null) {
            try {
                ASN1Sequence aSN1Sequence = (ASN1Sequence) new ASN1InputStream(extensionBytes).readObject();
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i != aSN1Sequence.size(); i++) {
                    arrayList.add(((DERObjectIdentifier) aSN1Sequence.getObjectAt(i)).getId());
                }
                return Collections.unmodifiableList(arrayList);
            } catch (Exception e) {
                throw new CertificateParsingException("error processing extended key usage extension");
            }
        }
        return null;
    }

    @Override // java.security.cert.X509Extension
    public byte[] getExtensionValue(String str) {
        X509Extension extension;
        X509Extensions extensions = this.f7631c.getTBSCertificate().getExtensions();
        if (extensions == null || (extension = extensions.getExtension(new DERObjectIdentifier(str))) == null) {
            return null;
        }
        try {
            return extension.getValue().getEncoded();
        } catch (Exception e) {
            throw new IllegalStateException("error parsing " + e.toString());
        }
    }

    @Override // java.security.cert.X509Certificate
    public Principal getIssuerDN() {
        return new X509Principal(this.f7631c.getIssuer());
    }

    @Override // java.security.cert.X509Certificate
    public boolean[] getIssuerUniqueID() {
        DERBitString issuerUniqueId = this.f7631c.getTBSCertificate().getIssuerUniqueId();
        if (issuerUniqueId != null) {
            byte[] bytes = issuerUniqueId.getBytes();
            int length = (bytes.length * 8) - issuerUniqueId.getPadBits();
            boolean[] zArr = new boolean[length];
            for (int i = 0; i != length; i++) {
                zArr[i] = (bytes[i / 8] & (128 >>> (i % 8))) != 0;
            }
            return zArr;
        }
        return null;
    }

    @Override // java.security.cert.X509Certificate
    public X500Principal getIssuerX500Principal() {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            new ASN1OutputStream(byteArrayOutputStream).writeObject(this.f7631c.getIssuer());
            return new X500Principal(byteArrayOutputStream.toByteArray());
        } catch (IOException e) {
            throw new IllegalStateException("can't encode issuer DN");
        }
    }

    @Override // java.security.cert.X509Certificate
    public boolean[] getKeyUsage() {
        return this.keyUsage;
    }

    @Override // java.security.cert.X509Extension
    public Set getNonCriticalExtensionOIDs() {
        if (getVersion() == 3) {
            HashSet hashSet = new HashSet();
            X509Extensions extensions = this.f7631c.getTBSCertificate().getExtensions();
            if (extensions == null) {
                return null;
            }
            Enumeration oids = extensions.oids();
            while (oids.hasMoreElements()) {
                DERObjectIdentifier dERObjectIdentifier = (DERObjectIdentifier) oids.nextElement();
                if (!extensions.getExtension(dERObjectIdentifier).isCritical()) {
                    hashSet.add(dERObjectIdentifier.getId());
                }
            }
            return hashSet;
        }
        return null;
    }

    @Override // java.security.cert.X509Certificate
    public Date getNotAfter() {
        return this.f7631c.getEndDate().getDate();
    }

    @Override // java.security.cert.X509Certificate
    public Date getNotBefore() {
        return this.f7631c.getStartDate().getDate();
    }

    @Override // java.security.cert.Certificate
    public PublicKey getPublicKey() {
        return JDKKeyFactory.createPublicKeyFromPublicKeyInfo(this.f7631c.getSubjectPublicKeyInfo());
    }

    @Override // java.security.cert.X509Certificate
    public BigInteger getSerialNumber() {
        return this.f7631c.getSerialNumber().getValue();
    }

    @Override // java.security.cert.X509Certificate
    public String getSigAlgName() {
        Provider provider = Security.getProvider(BouncyCastleProvider.PROVIDER_NAME);
        if (provider != null) {
            String property = provider.getProperty("Alg.Alias.Signature." + getSigAlgOID());
            if (property != null) {
                return property;
            }
        }
        Provider[] providers = Security.getProviders();
        for (int i = 0; i != providers.length; i++) {
            String property2 = providers[i].getProperty("Alg.Alias.Signature." + getSigAlgOID());
            if (property2 != null) {
                return property2;
            }
        }
        return getSigAlgOID();
    }

    @Override // java.security.cert.X509Certificate
    public String getSigAlgOID() {
        return this.f7631c.getSignatureAlgorithm().getObjectId().getId();
    }

    @Override // java.security.cert.X509Certificate
    public byte[] getSigAlgParams() {
        if (this.f7631c.getSignatureAlgorithm().getParameters() != null) {
            return this.f7631c.getSignatureAlgorithm().getParameters().getDERObject().getDEREncoded();
        }
        return null;
    }

    @Override // java.security.cert.X509Certificate
    public byte[] getSignature() {
        return this.f7631c.getSignature().getBytes();
    }

    @Override // java.security.cert.X509Certificate
    public Principal getSubjectDN() {
        return new X509Principal(this.f7631c.getSubject());
    }

    @Override // java.security.cert.X509Certificate
    public boolean[] getSubjectUniqueID() {
        DERBitString subjectUniqueId = this.f7631c.getTBSCertificate().getSubjectUniqueId();
        if (subjectUniqueId != null) {
            byte[] bytes = subjectUniqueId.getBytes();
            int length = (bytes.length * 8) - subjectUniqueId.getPadBits();
            boolean[] zArr = new boolean[length];
            for (int i = 0; i != length; i++) {
                zArr[i] = (bytes[i / 8] & (128 >>> (i % 8))) != 0;
            }
            return zArr;
        }
        return null;
    }

    @Override // java.security.cert.X509Certificate
    public X500Principal getSubjectX500Principal() {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            new ASN1OutputStream(byteArrayOutputStream).writeObject(this.f7631c.getSubject());
            return new X500Principal(byteArrayOutputStream.toByteArray());
        } catch (IOException e) {
            throw new IllegalStateException("can't encode issuer DN");
        }
    }

    @Override // java.security.cert.X509Certificate
    public byte[] getTBSCertificate() {
        try {
            return this.f7631c.getTBSCertificate().getEncoded(ASN1Encodable.DER);
        } catch (IOException e) {
            throw new CertificateEncodingException(e.toString());
        }
    }

    @Override // java.security.cert.X509Certificate
    public int getVersion() {
        return this.f7631c.getVersion();
    }

    @Override // java.security.cert.X509Extension
    public boolean hasUnsupportedCriticalExtension() {
        X509Extensions extensions;
        if (getVersion() != 3 || (extensions = this.f7631c.getTBSCertificate().getExtensions()) == null) {
            return false;
        }
        Enumeration oids = extensions.oids();
        while (oids.hasMoreElements()) {
            DERObjectIdentifier dERObjectIdentifier = (DERObjectIdentifier) oids.nextElement();
            String id = dERObjectIdentifier.getId();
            if (!id.equals(RFC3280CertPathUtilities.KEY_USAGE) && !id.equals(RFC3280CertPathUtilities.CERTIFICATE_POLICIES) && !id.equals(RFC3280CertPathUtilities.POLICY_MAPPINGS) && !id.equals(RFC3280CertPathUtilities.INHIBIT_ANY_POLICY) && !id.equals(RFC3280CertPathUtilities.CRL_DISTRIBUTION_POINTS) && !id.equals(RFC3280CertPathUtilities.ISSUING_DISTRIBUTION_POINT) && !id.equals(RFC3280CertPathUtilities.DELTA_CRL_INDICATOR) && !id.equals(RFC3280CertPathUtilities.POLICY_CONSTRAINTS) && !id.equals(RFC3280CertPathUtilities.BASIC_CONSTRAINTS) && !id.equals(RFC3280CertPathUtilities.SUBJECT_ALTERNATIVE_NAME) && !id.equals(RFC3280CertPathUtilities.NAME_CONSTRAINTS) && extensions.getExtension(dERObjectIdentifier).isCritical()) {
                return true;
            }
        }
        return false;
    }

    @Override // java.security.cert.Certificate
    public int hashCode() {
        int i;
        synchronized (this) {
            if (!this.hashValueSet) {
                this.hashValue = calculateHashCode();
                this.hashValueSet = true;
            }
            i = this.hashValue;
        }
        return i;
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public void setBagAttribute(DERObjectIdentifier dERObjectIdentifier, DEREncodable dEREncodable) {
        this.attrCarrier.setBagAttribute(dERObjectIdentifier, dEREncodable);
    }

    @Override // java.security.cert.Certificate
    public String toString() {
        Object verisignCzagExtension;
        StringBuffer stringBuffer = new StringBuffer();
        String property = System.getProperty("line.separator");
        stringBuffer.append("  [0]         Version: ");
        stringBuffer.append(getVersion());
        stringBuffer.append(property);
        stringBuffer.append("         SerialNumber: ");
        stringBuffer.append(getSerialNumber());
        stringBuffer.append(property);
        stringBuffer.append("             IssuerDN: ");
        stringBuffer.append(getIssuerDN());
        stringBuffer.append(property);
        stringBuffer.append("           Start Date: ");
        stringBuffer.append(getNotBefore());
        stringBuffer.append(property);
        stringBuffer.append("           Final Date: ");
        stringBuffer.append(getNotAfter());
        stringBuffer.append(property);
        stringBuffer.append("            SubjectDN: ");
        stringBuffer.append(getSubjectDN());
        stringBuffer.append(property);
        stringBuffer.append("           Public Key: ");
        stringBuffer.append(getPublicKey());
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
        X509Extensions extensions = this.f7631c.getTBSCertificate().getExtensions();
        if (extensions != null) {
            Enumeration oids = extensions.oids();
            if (oids.hasMoreElements()) {
                stringBuffer.append("       Extensions: \n");
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
                        stringBuffer.append("*****");
                    }
                    if (dERObjectIdentifier.equals(X509Extensions.BasicConstraints)) {
                        verisignCzagExtension = new BasicConstraints((ASN1Sequence) aSN1InputStream.readObject());
                    } else if (dERObjectIdentifier.equals(X509Extensions.KeyUsage)) {
                        verisignCzagExtension = new KeyUsage((DERBitString) aSN1InputStream.readObject());
                    } else if (dERObjectIdentifier.equals(MiscObjectIdentifiers.netscapeCertType)) {
                        verisignCzagExtension = new NetscapeCertType((DERBitString) aSN1InputStream.readObject());
                    } else if (dERObjectIdentifier.equals(MiscObjectIdentifiers.netscapeRevocationURL)) {
                        verisignCzagExtension = new NetscapeRevocationURL((DERIA5String) aSN1InputStream.readObject());
                    } else if (dERObjectIdentifier.equals(MiscObjectIdentifiers.verisignCzagExtension)) {
                        verisignCzagExtension = new VerisignCzagExtension((DERIA5String) aSN1InputStream.readObject());
                    } else {
                        stringBuffer.append(dERObjectIdentifier.getId());
                        stringBuffer.append(" value = ");
                        stringBuffer.append(ASN1Dump.dumpAsString(aSN1InputStream.readObject()));
                        stringBuffer.append(property);
                    }
                    stringBuffer.append(verisignCzagExtension);
                    stringBuffer.append(property);
                }
                stringBuffer.append(property);
            }
        }
        return stringBuffer.toString();
    }

    @Override // java.security.cert.Certificate
    public final void verify(PublicKey publicKey) {
        Signature signature;
        String signatureName = X509SignatureUtil.getSignatureName(this.f7631c.getSignatureAlgorithm());
        try {
            signature = Signature.getInstance(signatureName, BouncyCastleProvider.PROVIDER_NAME);
        } catch (Exception e) {
            signature = Signature.getInstance(signatureName);
        }
        checkSignature(publicKey, signature);
    }

    @Override // java.security.cert.Certificate
    public final void verify(PublicKey publicKey, String str) {
        checkSignature(publicKey, Signature.getInstance(X509SignatureUtil.getSignatureName(this.f7631c.getSignatureAlgorithm()), str));
    }
}
