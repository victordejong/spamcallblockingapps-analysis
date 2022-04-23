package org.spongycastle.cert;

import java.io.IOException;
import java.io.OutputStream;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1GeneralizedTime;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.DEROutputStream;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.AttributeCertificate;
import org.spongycastle.asn1.x509.AttributeCertificateInfo;
import org.spongycastle.asn1.x509.Certificate;
import org.spongycastle.asn1.x509.CertificateList;
import org.spongycastle.asn1.x509.Extensions;
import org.spongycastle.asn1.x509.ExtensionsGenerator;
import org.spongycastle.asn1.x509.TBSCertList;
import org.spongycastle.asn1.x509.TBSCertificate;
import org.spongycastle.operator.ContentSigner;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/CertUtils.class */
public class CertUtils {
    private static Set EMPTY_SET = Collections.unmodifiableSet(new HashSet());
    private static List EMPTY_LIST = Collections.unmodifiableList(new ArrayList());

    CertUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void addExtension(ExtensionsGenerator extensionsGenerator, ASN1ObjectIdentifier aSN1ObjectIdentifier, boolean z, ASN1Encodable aSN1Encodable) throws CertIOException {
        try {
            extensionsGenerator.addExtension(aSN1ObjectIdentifier, z, aSN1Encodable);
        } catch (IOException e) {
            throw new CertIOException("cannot encode extension: " + e.getMessage(), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean[] bitStringToBoolean(DERBitString dERBitString) {
        if (dERBitString == null) {
            return null;
        }
        byte[] bytes = dERBitString.getBytes();
        boolean[] zArr = new boolean[(bytes.length * 8) - dERBitString.getPadBits()];
        for (int i = 0; i != zArr.length; i++) {
            zArr[i] = (bytes[i / 8] & (128 >>> (i % 8))) != 0;
        }
        return zArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DERBitString booleanToBitString(boolean[] zArr) {
        byte[] bArr = new byte[(zArr.length + 7) / 8];
        for (int i = 0; i != zArr.length; i++) {
            int i2 = i / 8;
            bArr[i2] = (byte) (bArr[i2] | (zArr[i] ? 1 << (7 - (i % 8)) : 0));
        }
        int length = zArr.length % 8;
        return length == 0 ? new DERBitString(bArr) : new DERBitString(bArr, 8 - length);
    }

    private static AttributeCertificate generateAttrStructure(AttributeCertificateInfo attributeCertificateInfo, AlgorithmIdentifier algorithmIdentifier, byte[] bArr) {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(attributeCertificateInfo);
        aSN1EncodableVector.add(algorithmIdentifier);
        aSN1EncodableVector.add(new DERBitString(bArr));
        return AttributeCertificate.getInstance(new DERSequence(aSN1EncodableVector));
    }

    private static CertificateList generateCRLStructure(TBSCertList tBSCertList, AlgorithmIdentifier algorithmIdentifier, byte[] bArr) {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(tBSCertList);
        aSN1EncodableVector.add(algorithmIdentifier);
        aSN1EncodableVector.add(new DERBitString(bArr));
        return CertificateList.getInstance(new DERSequence(aSN1EncodableVector));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static X509AttributeCertificateHolder generateFullAttrCert(ContentSigner contentSigner, AttributeCertificateInfo attributeCertificateInfo) {
        try {
            return new X509AttributeCertificateHolder(generateAttrStructure(attributeCertificateInfo, contentSigner.getAlgorithmIdentifier(), generateSig(contentSigner, attributeCertificateInfo)));
        } catch (IOException e) {
            throw new IllegalStateException("cannot produce attribute certificate signature");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static X509CRLHolder generateFullCRL(ContentSigner contentSigner, TBSCertList tBSCertList) {
        try {
            return new X509CRLHolder(generateCRLStructure(tBSCertList, contentSigner.getAlgorithmIdentifier(), generateSig(contentSigner, tBSCertList)));
        } catch (IOException e) {
            throw new IllegalStateException("cannot produce certificate signature");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static X509CertificateHolder generateFullCert(ContentSigner contentSigner, TBSCertificate tBSCertificate) {
        try {
            return new X509CertificateHolder(generateStructure(tBSCertificate, contentSigner.getAlgorithmIdentifier(), generateSig(contentSigner, tBSCertificate)));
        } catch (IOException e) {
            throw new IllegalStateException("cannot produce certificate signature");
        }
    }

    private static byte[] generateSig(ContentSigner contentSigner, ASN1Encodable aSN1Encodable) throws IOException {
        OutputStream outputStream = contentSigner.getOutputStream();
        new DEROutputStream(outputStream).writeObject(aSN1Encodable);
        outputStream.close();
        return contentSigner.getSignature();
    }

    private static Certificate generateStructure(TBSCertificate tBSCertificate, AlgorithmIdentifier algorithmIdentifier, byte[] bArr) {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(tBSCertificate);
        aSN1EncodableVector.add(algorithmIdentifier);
        aSN1EncodableVector.add(new DERBitString(bArr));
        return Certificate.getInstance(new DERSequence(aSN1EncodableVector));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Set getCriticalExtensionOIDs(Extensions extensions) {
        return extensions == null ? EMPTY_SET : Collections.unmodifiableSet(new HashSet(Arrays.asList(extensions.getCriticalExtensionOIDs())));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List getExtensionOIDs(Extensions extensions) {
        return extensions == null ? EMPTY_LIST : Collections.unmodifiableList(Arrays.asList(extensions.getExtensionOIDs()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Set getNonCriticalExtensionOIDs(Extensions extensions) {
        return extensions == null ? EMPTY_SET : Collections.unmodifiableSet(new HashSet(Arrays.asList(extensions.getNonCriticalExtensionOIDs())));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isAlgIdEqual(AlgorithmIdentifier algorithmIdentifier, AlgorithmIdentifier algorithmIdentifier2) {
        if (!algorithmIdentifier.getAlgorithm().equals(algorithmIdentifier2.getAlgorithm())) {
            return false;
        }
        return algorithmIdentifier.getParameters() == null ? algorithmIdentifier2.getParameters() == null || algorithmIdentifier2.getParameters().equals(DERNull.INSTANCE) : algorithmIdentifier2.getParameters() == null ? algorithmIdentifier.getParameters() == null || algorithmIdentifier.getParameters().equals(DERNull.INSTANCE) : algorithmIdentifier.getParameters().equals(algorithmIdentifier2.getParameters());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Date recoverDate(ASN1GeneralizedTime aSN1GeneralizedTime) {
        try {
            return aSN1GeneralizedTime.getDate();
        } catch (ParseException e) {
            throw new IllegalStateException("unable to recover date: " + e.getMessage());
        }
    }
}
