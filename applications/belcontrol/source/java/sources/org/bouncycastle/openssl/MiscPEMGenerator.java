package org.bouncycastle.openssl;

import java.io.IOException;
import java.math.BigInteger;
import java.security.Key;
import java.security.KeyPair;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.Security;
import java.security.cert.CRLException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509CRL;
import java.security.cert.X509Certificate;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPrivateKey;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.interfaces.RSAPrivateKey;
import java.util.ArrayList;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.cms.ContentInfo;
import org.bouncycastle.asn1.pkcs.PrivateKeyInfo;
import org.bouncycastle.asn1.pkcs.RSAPrivateKeyStructure;
import org.bouncycastle.asn1.x509.DSAParameter;
import org.bouncycastle.jce.PKCS10CertificationRequest;
import org.bouncycastle.util.Strings;
import org.bouncycastle.util.encoders.Hex;
import org.bouncycastle.util.p013io.pem.PemGenerationException;
import org.bouncycastle.util.p013io.pem.PemHeader;
import org.bouncycastle.util.p013io.pem.PemObject;
import org.bouncycastle.util.p013io.pem.PemObjectGenerator;
import org.bouncycastle.x509.X509AttributeCertificate;
import org.bouncycastle.x509.X509V2AttributeCertificate;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/openssl/MiscPEMGenerator.class */
public class MiscPEMGenerator implements PemObjectGenerator {
    private String algorithm;
    private Object obj;
    private char[] password;
    private Provider provider;
    private SecureRandom random;

    public MiscPEMGenerator(Object obj) {
        this.obj = obj;
    }

    public MiscPEMGenerator(Object obj, String str, char[] cArr, SecureRandom secureRandom, String str2) {
        this.obj = obj;
        this.algorithm = str;
        this.password = cArr;
        this.random = secureRandom;
        if (str2 != null) {
            Provider provider = Security.getProvider(str2);
            this.provider = provider;
            if (provider != null) {
                return;
            }
            throw new NoSuchProviderException("cannot find provider: " + str2);
        }
    }

    public MiscPEMGenerator(Object obj, String str, char[] cArr, SecureRandom secureRandom, Provider provider) {
        this.obj = obj;
        this.algorithm = str;
        this.password = cArr;
        this.random = secureRandom;
        this.provider = provider;
    }

    private PemObject createPemObject(Object obj) {
        byte[] encoded;
        String str;
        if (obj instanceof PemObject) {
            return (PemObject) obj;
        }
        if (obj instanceof PemObjectGenerator) {
            return ((PemObjectGenerator) obj).generate();
        }
        if (obj instanceof X509Certificate) {
            try {
                encoded = ((X509Certificate) obj).getEncoded();
                str = "CERTIFICATE";
            } catch (CertificateEncodingException e) {
                throw new PemGenerationException("Cannot encode object: " + e.toString());
            }
        } else if (obj instanceof X509CRL) {
            try {
                encoded = ((X509CRL) obj).getEncoded();
                str = "X509 CRL";
            } catch (CRLException e2) {
                throw new PemGenerationException("Cannot encode object: " + e2.toString());
            }
        } else if (obj instanceof KeyPair) {
            return createPemObject(((KeyPair) obj).getPrivate());
        } else {
            if (obj instanceof PrivateKey) {
                PrivateKeyInfo privateKeyInfo = new PrivateKeyInfo((ASN1Sequence) ASN1Object.fromByteArray(((Key) obj).getEncoded()));
                if (obj instanceof RSAPrivateKey) {
                    encoded = privateKeyInfo.getPrivateKey().getEncoded();
                    str = "RSA PRIVATE KEY";
                } else if (obj instanceof DSAPrivateKey) {
                    DSAParameter dSAParameter = DSAParameter.getInstance(privateKeyInfo.getAlgorithmId().getParameters());
                    ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
                    aSN1EncodableVector.add(new DERInteger(0));
                    aSN1EncodableVector.add(new DERInteger(dSAParameter.getP()));
                    aSN1EncodableVector.add(new DERInteger(dSAParameter.getQ()));
                    aSN1EncodableVector.add(new DERInteger(dSAParameter.getG()));
                    BigInteger x = ((DSAPrivateKey) obj).getX();
                    aSN1EncodableVector.add(new DERInteger(dSAParameter.getG().modPow(x, dSAParameter.getP())));
                    aSN1EncodableVector.add(new DERInteger(x));
                    encoded = new DERSequence(aSN1EncodableVector).getEncoded();
                    str = "DSA PRIVATE KEY";
                } else if (!((PrivateKey) obj).getAlgorithm().equals("ECDSA")) {
                    throw new IOException("Cannot identify private key");
                } else {
                    encoded = privateKeyInfo.getPrivateKey().getEncoded();
                    str = "EC PRIVATE KEY";
                }
            } else if (obj instanceof PublicKey) {
                encoded = ((PublicKey) obj).getEncoded();
                str = "PUBLIC KEY";
            } else if (obj instanceof X509AttributeCertificate) {
                encoded = ((X509V2AttributeCertificate) obj).getEncoded();
                str = "ATTRIBUTE CERTIFICATE";
            } else if (obj instanceof PKCS10CertificationRequest) {
                encoded = ((PKCS10CertificationRequest) obj).getEncoded();
                str = "CERTIFICATE REQUEST";
            } else if (!(obj instanceof ContentInfo)) {
                throw new PemGenerationException("unknown object passed - can't encode.");
            } else {
                encoded = ((ContentInfo) obj).getEncoded();
                str = "PKCS7";
            }
        }
        return new PemObject(str, encoded);
    }

    private PemObject createPemObject(Object obj, String str, char[] cArr, SecureRandom secureRandom) {
        byte[] bArr;
        if (obj instanceof KeyPair) {
            return createPemObject(((KeyPair) obj).getPrivate(), str, cArr, secureRandom);
        }
        String str2 = null;
        if (obj instanceof RSAPrivateCrtKey) {
            RSAPrivateCrtKey rSAPrivateCrtKey = (RSAPrivateCrtKey) obj;
            bArr = new RSAPrivateKeyStructure(rSAPrivateCrtKey.getModulus(), rSAPrivateCrtKey.getPublicExponent(), rSAPrivateCrtKey.getPrivateExponent(), rSAPrivateCrtKey.getPrimeP(), rSAPrivateCrtKey.getPrimeQ(), rSAPrivateCrtKey.getPrimeExponentP(), rSAPrivateCrtKey.getPrimeExponentQ(), rSAPrivateCrtKey.getCrtCoefficient()).getEncoded();
            str2 = "RSA PRIVATE KEY";
        } else if (obj instanceof DSAPrivateKey) {
            DSAPrivateKey dSAPrivateKey = (DSAPrivateKey) obj;
            DSAParams params = dSAPrivateKey.getParams();
            ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
            aSN1EncodableVector.add(new DERInteger(0));
            aSN1EncodableVector.add(new DERInteger(params.getP()));
            aSN1EncodableVector.add(new DERInteger(params.getQ()));
            aSN1EncodableVector.add(new DERInteger(params.getG()));
            BigInteger x = dSAPrivateKey.getX();
            aSN1EncodableVector.add(new DERInteger(params.getG().modPow(x, params.getP())));
            aSN1EncodableVector.add(new DERInteger(x));
            bArr = new DERSequence(aSN1EncodableVector).getEncoded();
            str2 = "DSA PRIVATE KEY";
        } else {
            if (obj instanceof PrivateKey) {
                PrivateKey privateKey = (PrivateKey) obj;
                if ("ECDSA".equals(privateKey.getAlgorithm())) {
                    bArr = PrivateKeyInfo.getInstance(ASN1Object.fromByteArray(privateKey.getEncoded())).getPrivateKey().getEncoded();
                    str2 = "EC PRIVATE KEY";
                }
            }
            bArr = null;
        }
        if (str2 == null || bArr == null) {
            throw new IllegalArgumentException("Object type not supported: " + obj.getClass().getName());
        }
        String upperCase = Strings.toUpperCase(str);
        String str3 = upperCase;
        if (upperCase.equals("DESEDE")) {
            str3 = "DES-EDE3-CBC";
        }
        byte[] bArr2 = new byte[str3.startsWith("AES-") ? 16 : 8];
        secureRandom.nextBytes(bArr2);
        byte[] crypt = PEMUtilities.crypt(true, this.provider, bArr, cArr, str3, bArr2);
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(new PemHeader("Proc-Type", "4,ENCRYPTED"));
        arrayList.add(new PemHeader("DEK-Info", str3 + "," + getHexEncoded(bArr2)));
        return new PemObject(str2, arrayList, crypt);
    }

    private String getHexEncoded(byte[] bArr) {
        byte[] encode = Hex.encode(bArr);
        char[] cArr = new char[encode.length];
        for (int i = 0; i != encode.length; i++) {
            cArr[i] = (char) encode[i];
        }
        return new String(cArr);
    }

    @Override // org.bouncycastle.util.p013io.pem.PemObjectGenerator
    public PemObject generate() {
        try {
            String str = this.algorithm;
            return str != null ? createPemObject(this.obj, str, this.password, this.random) : createPemObject(this.obj);
        } catch (IOException e) {
            throw new PemGenerationException("encoding exception: " + e.getMessage(), e);
        }
    }
}
