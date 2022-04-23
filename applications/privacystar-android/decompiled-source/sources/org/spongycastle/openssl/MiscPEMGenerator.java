package org.spongycastle.openssl;

import java.io.IOException;
import java.math.BigInteger;
import java.util.ArrayList;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.cms.ContentInfo;
import org.spongycastle.asn1.oiw.OIWObjectIdentifiers;
import org.spongycastle.asn1.p022x9.X9ObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.DSAParameter;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.cert.X509AttributeCertificateHolder;
import org.spongycastle.cert.X509CRLHolder;
import org.spongycastle.cert.X509CertificateHolder;
import org.spongycastle.pkcs.PKCS10CertificationRequest;
import org.spongycastle.util.Strings;
import org.spongycastle.util.p039io.pem.PemGenerationException;
import org.spongycastle.util.p039io.pem.PemHeader;
import org.spongycastle.util.p039io.pem.PemObject;
import org.spongycastle.util.p039io.pem.PemObjectGenerator;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openssl/MiscPEMGenerator.class */
public class MiscPEMGenerator implements PemObjectGenerator {
    private static final ASN1ObjectIdentifier[] dsaOids = {X9ObjectIdentifiers.id_dsa, OIWObjectIdentifiers.dsaWithSHA1};
    private static final byte[] hexEncodingTable = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70};
    private final PEMEncryptor encryptor;
    private final Object obj;

    public MiscPEMGenerator(Object obj) {
        this.obj = obj;
        this.encryptor = null;
    }

    public MiscPEMGenerator(Object obj, PEMEncryptor pEMEncryptor) {
        this.obj = obj;
        this.encryptor = pEMEncryptor;
    }

    private PemObject createPemObject(Object obj) throws IOException {
        byte[] bArr;
        String str;
        if (obj instanceof PemObject) {
            return (PemObject) obj;
        }
        if (obj instanceof PemObjectGenerator) {
            return ((PemObjectGenerator) obj).generate();
        }
        if (obj instanceof X509CertificateHolder) {
            str = "CERTIFICATE";
            bArr = ((X509CertificateHolder) obj).getEncoded();
        } else if (obj instanceof X509CRLHolder) {
            str = "X509 CRL";
            bArr = ((X509CRLHolder) obj).getEncoded();
        } else if (obj instanceof X509TrustedCertificateBlock) {
            str = "TRUSTED CERTIFICATE";
            bArr = ((X509TrustedCertificateBlock) obj).getEncoded();
        } else if (obj instanceof PrivateKeyInfo) {
            PrivateKeyInfo privateKeyInfo = (PrivateKeyInfo) obj;
            ASN1ObjectIdentifier algorithm = privateKeyInfo.getPrivateKeyAlgorithm().getAlgorithm();
            if (algorithm.equals(PKCSObjectIdentifiers.rsaEncryption)) {
                str = "RSA PRIVATE KEY";
                bArr = privateKeyInfo.parsePrivateKey().toASN1Primitive().getEncoded();
            } else if (algorithm.equals(dsaOids[0]) || algorithm.equals(dsaOids[1])) {
                str = "DSA PRIVATE KEY";
                DSAParameter instance = DSAParameter.getInstance(privateKeyInfo.getPrivateKeyAlgorithm().getParameters());
                ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
                aSN1EncodableVector.add(new ASN1Integer(0L));
                aSN1EncodableVector.add(new ASN1Integer(instance.getP()));
                aSN1EncodableVector.add(new ASN1Integer(instance.getQ()));
                aSN1EncodableVector.add(new ASN1Integer(instance.getG()));
                BigInteger value = ASN1Integer.getInstance(privateKeyInfo.parsePrivateKey()).getValue();
                aSN1EncodableVector.add(new ASN1Integer(instance.getG().modPow(value, instance.getP())));
                aSN1EncodableVector.add(new ASN1Integer(value));
                bArr = new DERSequence(aSN1EncodableVector).getEncoded();
            } else if (algorithm.equals(X9ObjectIdentifiers.id_ecPublicKey)) {
                str = "EC PRIVATE KEY";
                bArr = privateKeyInfo.parsePrivateKey().toASN1Primitive().getEncoded();
            } else {
                throw new IOException("Cannot identify private key");
            }
        } else if (obj instanceof SubjectPublicKeyInfo) {
            str = "PUBLIC KEY";
            bArr = ((SubjectPublicKeyInfo) obj).getEncoded();
        } else if (obj instanceof X509AttributeCertificateHolder) {
            str = "ATTRIBUTE CERTIFICATE";
            bArr = ((X509AttributeCertificateHolder) obj).getEncoded();
        } else if (obj instanceof PKCS10CertificationRequest) {
            str = "CERTIFICATE REQUEST";
            bArr = ((PKCS10CertificationRequest) obj).getEncoded();
        } else if (obj instanceof ContentInfo) {
            str = "PKCS7";
            bArr = ((ContentInfo) obj).getEncoded();
        } else {
            throw new PemGenerationException("unknown object passed - can't encode.");
        }
        if (this.encryptor == null) {
            return new PemObject(str, bArr);
        }
        String upperCase = Strings.toUpperCase(this.encryptor.getAlgorithm());
        String str2 = upperCase;
        if (upperCase.equals("DESEDE")) {
            str2 = "DES-EDE3-CBC";
        }
        byte[] iv = this.encryptor.getIV();
        byte[] encrypt = this.encryptor.encrypt(bArr);
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(new PemHeader("Proc-Type", "4,ENCRYPTED"));
        arrayList.add(new PemHeader("DEK-Info", str2 + "," + getHexEncoded(iv)));
        return new PemObject(str, arrayList, encrypt);
    }

    private String getHexEncoded(byte[] bArr) throws IOException {
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i != bArr.length; i++) {
            int i2 = bArr[i] & 255;
            int i3 = i * 2;
            cArr[i3] = (char) hexEncodingTable[i2 >>> 4];
            cArr[i3 + 1] = (char) hexEncodingTable[i2 & 15];
        }
        return new String(cArr);
    }

    @Override // org.spongycastle.util.p039io.pem.PemObjectGenerator
    public PemObject generate() throws PemGenerationException {
        try {
            return createPemObject(this.obj);
        } catch (IOException e) {
            throw new PemGenerationException("encoding exception: " + e.getMessage(), e);
        }
    }
}
