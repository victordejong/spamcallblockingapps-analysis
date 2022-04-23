package org.spongycastle.cms.jcajce;

import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.Provider;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import java.util.HashSet;
import java.util.Set;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.cms.IssuerAndSerialNumber;
import org.spongycastle.asn1.p022x9.X9ObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.sec.SECObjectIdentifiers;
import org.spongycastle.asn1.x509.Certificate;
import org.spongycastle.asn1.x509.Extension;
import org.spongycastle.cms.CMSException;
import org.spongycastle.jcajce.util.AlgorithmParametersUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/jcajce/CMSUtils.class */
public class CMSUtils {
    private static final Set mqvAlgs = new HashSet();
    private static final Set ecAlgs = new HashSet();

    static {
        mqvAlgs.add(X9ObjectIdentifiers.mqvSinglePass_sha1kdf_scheme);
        mqvAlgs.add(SECObjectIdentifiers.mqvSinglePass_sha224kdf_scheme);
        mqvAlgs.add(SECObjectIdentifiers.mqvSinglePass_sha256kdf_scheme);
        mqvAlgs.add(SECObjectIdentifiers.mqvSinglePass_sha384kdf_scheme);
        mqvAlgs.add(SECObjectIdentifiers.mqvSinglePass_sha512kdf_scheme);
        ecAlgs.add(X9ObjectIdentifiers.dhSinglePass_cofactorDH_sha1kdf_scheme);
        ecAlgs.add(X9ObjectIdentifiers.dhSinglePass_stdDH_sha1kdf_scheme);
        ecAlgs.add(SECObjectIdentifiers.dhSinglePass_cofactorDH_sha224kdf_scheme);
        ecAlgs.add(SECObjectIdentifiers.dhSinglePass_stdDH_sha224kdf_scheme);
        ecAlgs.add(SECObjectIdentifiers.dhSinglePass_cofactorDH_sha256kdf_scheme);
        ecAlgs.add(SECObjectIdentifiers.dhSinglePass_stdDH_sha256kdf_scheme);
        ecAlgs.add(SECObjectIdentifiers.dhSinglePass_cofactorDH_sha384kdf_scheme);
        ecAlgs.add(SECObjectIdentifiers.dhSinglePass_stdDH_sha384kdf_scheme);
        ecAlgs.add(SECObjectIdentifiers.dhSinglePass_cofactorDH_sha512kdf_scheme);
        ecAlgs.add(SECObjectIdentifiers.dhSinglePass_stdDH_sha512kdf_scheme);
    }

    CMSUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static EnvelopedDataHelper createContentHelper(String str) {
        return str != null ? new EnvelopedDataHelper(new NamedJcaJceExtHelper(str)) : new EnvelopedDataHelper(new DefaultJcaJceExtHelper());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static EnvelopedDataHelper createContentHelper(Provider provider) {
        return provider != null ? new EnvelopedDataHelper(new ProviderJcaJceExtHelper(provider)) : new EnvelopedDataHelper(new DefaultJcaJceExtHelper());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ASN1Encodable extractParameters(AlgorithmParameters algorithmParameters) throws CMSException {
        try {
            return AlgorithmParametersUtils.extractParameters(algorithmParameters);
        } catch (IOException e) {
            throw new CMSException("cannot extract parameters: " + e.getMessage(), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static IssuerAndSerialNumber getIssuerAndSerialNumber(X509Certificate x509Certificate) throws CertificateEncodingException {
        return new IssuerAndSerialNumber(Certificate.getInstance(x509Certificate.getEncoded()).getIssuer(), x509Certificate.getSerialNumber());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] getSubjectKeyId(X509Certificate x509Certificate) {
        byte[] extensionValue = x509Certificate.getExtensionValue(Extension.subjectKeyIdentifier.getId());
        if (extensionValue != null) {
            return ASN1OctetString.getInstance(ASN1OctetString.getInstance(extensionValue).getOctets()).getOctets();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isEC(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return ecAlgs.contains(aSN1ObjectIdentifier);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isMQV(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return mqvAlgs.contains(aSN1ObjectIdentifier);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isRFC2631(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return aSN1ObjectIdentifier.equals(PKCSObjectIdentifiers.id_alg_ESDH) || aSN1ObjectIdentifier.equals(PKCSObjectIdentifiers.id_alg_SSDH);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void loadParameters(AlgorithmParameters algorithmParameters, ASN1Encodable aSN1Encodable) throws CMSException {
        try {
            AlgorithmParametersUtils.loadParameters(algorithmParameters, aSN1Encodable);
        } catch (IOException e) {
            throw new CMSException("error encoding algorithm parameters.", e);
        }
    }
}
