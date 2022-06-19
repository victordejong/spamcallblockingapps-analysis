package org.bouncycastle.openssl;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.Reader;
import java.security.AlgorithmParameters;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.cert.CertificateFactory;
import java.security.spec.DSAPrivateKeySpec;
import java.security.spec.DSAPublicKeySpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.RSAPrivateCrtKeySpec;
import java.security.spec.RSAPublicKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.cms.ContentInfo;
import org.bouncycastle.asn1.p009x9.X9ObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.EncryptedPrivateKeyInfo;
import org.bouncycastle.asn1.pkcs.EncryptionScheme;
import org.bouncycastle.asn1.pkcs.KeyDerivationFunc;
import org.bouncycastle.asn1.pkcs.PBEParameter;
import org.bouncycastle.asn1.pkcs.PBES2Parameters;
import org.bouncycastle.asn1.pkcs.PBKDF2Params;
import org.bouncycastle.asn1.pkcs.PKCS12PBEParams;
import org.bouncycastle.asn1.pkcs.PrivateKeyInfo;
import org.bouncycastle.asn1.sec.ECPrivateKeyStructure;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.RSAPublicKeyStructure;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.jce.ECNamedCurveTable;
import org.bouncycastle.jce.PKCS10CertificationRequest;
import org.bouncycastle.jce.spec.ECNamedCurveParameterSpec;
import org.bouncycastle.util.encoders.Hex;
import org.bouncycastle.util.p013io.pem.PemHeader;
import org.bouncycastle.util.p013io.pem.PemObject;
import org.bouncycastle.util.p013io.pem.PemObjectParser;
import org.bouncycastle.util.p013io.pem.PemReader;
import org.bouncycastle.x509.X509V2AttributeCertificate;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/openssl/PEMReader.class */
public class PEMReader extends PemReader {
    private PasswordFinder pFinder;
    private final Map parsers;

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/openssl/PEMReader$DSAKeyPairParser.class */
    public class DSAKeyPairParser extends KeyPairParser {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DSAKeyPairParser(String str) {
            super(str);
            PEMReader.this = r5;
        }

        @Override // org.bouncycastle.util.p013io.pem.PemObjectParser
        public Object parseObject(PemObject pemObject) {
            try {
                ASN1Sequence readKeyPair = readKeyPair(pemObject);
                if (readKeyPair.size() != 6) {
                    throw new PEMException("malformed sequence in DSA private key");
                }
                DERInteger dERInteger = (DERInteger) readKeyPair.getObjectAt(1);
                DERInteger dERInteger2 = (DERInteger) readKeyPair.getObjectAt(2);
                DERInteger dERInteger3 = (DERInteger) readKeyPair.getObjectAt(3);
                DERInteger dERInteger4 = (DERInteger) readKeyPair.getObjectAt(4);
                DSAPrivateKeySpec dSAPrivateKeySpec = new DSAPrivateKeySpec(((DERInteger) readKeyPair.getObjectAt(5)).getValue(), dERInteger.getValue(), dERInteger2.getValue(), dERInteger3.getValue());
                DSAPublicKeySpec dSAPublicKeySpec = new DSAPublicKeySpec(dERInteger4.getValue(), dERInteger.getValue(), dERInteger2.getValue(), dERInteger3.getValue());
                KeyFactory keyFactory = KeyFactory.getInstance("DSA", this.provider);
                return new KeyPair(keyFactory.generatePublic(dSAPublicKeySpec), keyFactory.generatePrivate(dSAPrivateKeySpec));
            } catch (IOException e) {
                throw e;
            } catch (Exception e2) {
                throw new PEMException("problem creating DSA private key: " + e2.toString(), e2);
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/openssl/PEMReader$ECDSAKeyPairParser.class */
    public class ECDSAKeyPairParser extends KeyPairParser {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ECDSAKeyPairParser(String str) {
            super(str);
            PEMReader.this = r5;
        }

        @Override // org.bouncycastle.util.p013io.pem.PemObjectParser
        public Object parseObject(PemObject pemObject) {
            try {
                ECPrivateKeyStructure eCPrivateKeyStructure = new ECPrivateKeyStructure(readKeyPair(pemObject));
                AlgorithmIdentifier algorithmIdentifier = new AlgorithmIdentifier(X9ObjectIdentifiers.id_ecPublicKey, eCPrivateKeyStructure.getParameters());
                PrivateKeyInfo privateKeyInfo = new PrivateKeyInfo(algorithmIdentifier, eCPrivateKeyStructure.getDERObject());
                SubjectPublicKeyInfo subjectPublicKeyInfo = new SubjectPublicKeyInfo(algorithmIdentifier, eCPrivateKeyStructure.getPublicKey().getBytes());
                PKCS8EncodedKeySpec pKCS8EncodedKeySpec = new PKCS8EncodedKeySpec(privateKeyInfo.getEncoded());
                X509EncodedKeySpec x509EncodedKeySpec = new X509EncodedKeySpec(subjectPublicKeyInfo.getEncoded());
                KeyFactory keyFactory = KeyFactory.getInstance("ECDSA", this.provider);
                return new KeyPair(keyFactory.generatePublic(x509EncodedKeySpec), keyFactory.generatePrivate(pKCS8EncodedKeySpec));
            } catch (IOException e) {
                throw e;
            } catch (Exception e2) {
                throw new PEMException("problem creating EC private key: " + e2.toString(), e2);
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/openssl/PEMReader$ECNamedCurveSpecParser.class */
    public class ECNamedCurveSpecParser implements PemObjectParser {
        private ECNamedCurveSpecParser() {
            PEMReader.this = r4;
        }

        @Override // org.bouncycastle.util.p013io.pem.PemObjectParser
        public Object parseObject(PemObject pemObject) {
            try {
                ECNamedCurveParameterSpec parameterSpec = ECNamedCurveTable.getParameterSpec(((DERObjectIdentifier) ASN1Object.fromByteArray(pemObject.getContent())).getId());
                if (parameterSpec != null) {
                    return parameterSpec;
                }
                throw new IOException("object ID not found in EC curve table");
            } catch (IOException e) {
                throw e;
            } catch (Exception e2) {
                throw new PEMException("exception extracting EC named curve: " + e2.toString());
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/openssl/PEMReader$EncryptedPrivateKeyParser.class */
    public class EncryptedPrivateKeyParser implements PemObjectParser {
        private String asymProvider;
        private String symProvider;

        public EncryptedPrivateKeyParser(String str, String str2) {
            PEMReader.this = r4;
            this.symProvider = str;
            this.asymProvider = str2;
        }

        @Override // org.bouncycastle.util.p013io.pem.PemObjectParser
        public Object parseObject(PemObject pemObject) {
            try {
                EncryptedPrivateKeyInfo encryptedPrivateKeyInfo = EncryptedPrivateKeyInfo.getInstance(ASN1Object.fromByteArray(pemObject.getContent()));
                AlgorithmIdentifier encryptionAlgorithm = encryptedPrivateKeyInfo.getEncryptionAlgorithm();
                if (PEMReader.this.pFinder == null) {
                    throw new PEMException("no PasswordFinder specified");
                }
                if (PEMUtilities.isPKCS5Scheme2(encryptionAlgorithm.getAlgorithm())) {
                    PBES2Parameters pBES2Parameters = PBES2Parameters.getInstance(encryptionAlgorithm.getParameters());
                    KeyDerivationFunc keyDerivationFunc = pBES2Parameters.getKeyDerivationFunc();
                    EncryptionScheme encryptionScheme = pBES2Parameters.getEncryptionScheme();
                    PBKDF2Params pBKDF2Params = (PBKDF2Params) keyDerivationFunc.getParameters();
                    int intValue = pBKDF2Params.getIterationCount().intValue();
                    byte[] salt = pBKDF2Params.getSalt();
                    String id = encryptionScheme.getAlgorithm().getId();
                    SecretKey generateSecretKeyForPKCS5Scheme2 = PEMUtilities.generateSecretKeyForPKCS5Scheme2(id, PEMReader.this.pFinder.getPassword(), salt, intValue);
                    Cipher cipher = Cipher.getInstance(id, this.symProvider);
                    AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance(id, this.symProvider);
                    algorithmParameters.init(encryptionScheme.getParameters().getDERObject().getEncoded());
                    cipher.init(2, generateSecretKeyForPKCS5Scheme2, algorithmParameters);
                    PrivateKeyInfo privateKeyInfo = PrivateKeyInfo.getInstance(ASN1Object.fromByteArray(cipher.doFinal(encryptedPrivateKeyInfo.getEncryptedData())));
                    return KeyFactory.getInstance(privateKeyInfo.getAlgorithmId().getAlgorithm().getId(), this.asymProvider).generatePrivate(new PKCS8EncodedKeySpec(privateKeyInfo.getEncoded()));
                } else if (PEMUtilities.isPKCS12(encryptionAlgorithm.getAlgorithm())) {
                    PKCS12PBEParams pKCS12PBEParams = PKCS12PBEParams.getInstance(encryptionAlgorithm.getParameters());
                    String id2 = encryptionAlgorithm.getAlgorithm().getId();
                    PBEKeySpec pBEKeySpec = new PBEKeySpec(PEMReader.this.pFinder.getPassword());
                    SecretKeyFactory secretKeyFactory = SecretKeyFactory.getInstance(id2, this.symProvider);
                    PBEParameterSpec pBEParameterSpec = new PBEParameterSpec(pKCS12PBEParams.getIV(), pKCS12PBEParams.getIterations().intValue());
                    Cipher cipher2 = Cipher.getInstance(id2, this.symProvider);
                    cipher2.init(2, secretKeyFactory.generateSecret(pBEKeySpec), pBEParameterSpec);
                    PrivateKeyInfo privateKeyInfo2 = PrivateKeyInfo.getInstance(ASN1Object.fromByteArray(cipher2.doFinal(encryptedPrivateKeyInfo.getEncryptedData())));
                    return KeyFactory.getInstance(privateKeyInfo2.getAlgorithmId().getAlgorithm().getId(), this.asymProvider).generatePrivate(new PKCS8EncodedKeySpec(privateKeyInfo2.getEncoded()));
                } else if (!PEMUtilities.isPKCS5Scheme1(encryptionAlgorithm.getAlgorithm())) {
                    throw new PEMException("Unknown algorithm: " + encryptionAlgorithm.getAlgorithm());
                } else {
                    PBEParameter pBEParameter = PBEParameter.getInstance(encryptionAlgorithm.getParameters());
                    String id3 = encryptionAlgorithm.getAlgorithm().getId();
                    PBEKeySpec pBEKeySpec2 = new PBEKeySpec(PEMReader.this.pFinder.getPassword());
                    SecretKeyFactory secretKeyFactory2 = SecretKeyFactory.getInstance(id3, this.symProvider);
                    PBEParameterSpec pBEParameterSpec2 = new PBEParameterSpec(pBEParameter.getSalt(), pBEParameter.getIterationCount().intValue());
                    Cipher cipher3 = Cipher.getInstance(id3, this.symProvider);
                    cipher3.init(2, secretKeyFactory2.generateSecret(pBEKeySpec2), pBEParameterSpec2);
                    PrivateKeyInfo privateKeyInfo3 = PrivateKeyInfo.getInstance(ASN1Object.fromByteArray(cipher3.doFinal(encryptedPrivateKeyInfo.getEncryptedData())));
                    return KeyFactory.getInstance(privateKeyInfo3.getAlgorithmId().getAlgorithm().getId(), this.asymProvider).generatePrivate(new PKCS8EncodedKeySpec(privateKeyInfo3.getEncoded()));
                }
            } catch (IOException e) {
                throw e;
            } catch (Exception e2) {
                throw new PEMException("problem parsing ENCRYPTED PRIVATE KEY: " + e2.toString(), e2);
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/openssl/PEMReader$KeyPairParser.class */
    public abstract class KeyPairParser implements PemObjectParser {
        public String provider;

        public KeyPairParser(String str) {
            PEMReader.this = r4;
            this.provider = str;
        }

        public ASN1Sequence readKeyPair(PemObject pemObject) {
            boolean z = false;
            String str = null;
            for (PemHeader pemHeader : pemObject.getHeaders()) {
                if (pemHeader.getName().equals("Proc-Type") && pemHeader.getValue().equals("4,ENCRYPTED")) {
                    z = true;
                } else if (pemHeader.getName().equals("DEK-Info")) {
                    str = pemHeader.getValue();
                }
            }
            byte[] content = pemObject.getContent();
            byte[] bArr = content;
            if (z) {
                if (PEMReader.this.pFinder == null) {
                    throw new PasswordException("No password finder specified, but a password is required");
                }
                char[] password = PEMReader.this.pFinder.getPassword();
                if (password == null) {
                    throw new PasswordException("Password is null, but a password is required");
                }
                StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
                bArr = PEMUtilities.crypt(false, this.provider, content, password, stringTokenizer.nextToken(), Hex.decode(stringTokenizer.nextToken()));
            }
            try {
                return (ASN1Sequence) ASN1Object.fromByteArray(bArr);
            } catch (IOException e) {
                if (!z) {
                    throw new PEMException(e.getMessage(), e);
                }
                throw new PEMException("exception decoding - please check password and data.", e);
            } catch (ClassCastException e2) {
                if (!z) {
                    throw new PEMException(e2.getMessage(), e2);
                }
                throw new PEMException("exception decoding - please check password and data.", e2);
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/openssl/PEMReader$PKCS10CertificationRequestParser.class */
    public class PKCS10CertificationRequestParser implements PemObjectParser {
        private PKCS10CertificationRequestParser() {
            PEMReader.this = r4;
        }

        @Override // org.bouncycastle.util.p013io.pem.PemObjectParser
        public Object parseObject(PemObject pemObject) {
            try {
                return new PKCS10CertificationRequest(pemObject.getContent());
            } catch (Exception e) {
                throw new PEMException("problem parsing certrequest: " + e.toString(), e);
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/openssl/PEMReader$PKCS7Parser.class */
    public class PKCS7Parser implements PemObjectParser {
        private PKCS7Parser() {
            PEMReader.this = r4;
        }

        @Override // org.bouncycastle.util.p013io.pem.PemObjectParser
        public Object parseObject(PemObject pemObject) {
            try {
                return ContentInfo.getInstance(new ASN1InputStream(pemObject.getContent()).readObject());
            } catch (Exception e) {
                throw new PEMException("problem parsing PKCS7 object: " + e.toString(), e);
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/openssl/PEMReader$PrivateKeyParser.class */
    public class PrivateKeyParser implements PemObjectParser {
        private String provider;

        public PrivateKeyParser(String str) {
            PEMReader.this = r4;
            this.provider = str;
        }

        @Override // org.bouncycastle.util.p013io.pem.PemObjectParser
        public Object parseObject(PemObject pemObject) {
            try {
                PrivateKeyInfo privateKeyInfo = PrivateKeyInfo.getInstance(ASN1Object.fromByteArray(pemObject.getContent()));
                return KeyFactory.getInstance(privateKeyInfo.getAlgorithmId().getAlgorithm().getId(), this.provider).generatePrivate(new PKCS8EncodedKeySpec(pemObject.getContent()));
            } catch (Exception e) {
                throw new PEMException("problem parsing PRIVATE KEY: " + e.toString(), e);
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/openssl/PEMReader$PublicKeyParser.class */
    public class PublicKeyParser implements PemObjectParser {
        private String provider;

        public PublicKeyParser(String str) {
            PEMReader.this = r4;
            this.provider = str;
        }

        @Override // org.bouncycastle.util.p013io.pem.PemObjectParser
        public Object parseObject(PemObject pemObject) {
            X509EncodedKeySpec x509EncodedKeySpec = new X509EncodedKeySpec(pemObject.getContent());
            for (int i = 0; i < 2; i++) {
                try {
                    return KeyFactory.getInstance(new String[]{"DSA", "RSA"}[i], this.provider).generatePublic(x509EncodedKeySpec);
                } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
                } catch (NoSuchProviderException e2) {
                    throw new RuntimeException("can't find provider " + this.provider);
                }
            }
            return null;
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/openssl/PEMReader$RSAKeyPairParser.class */
    public class RSAKeyPairParser extends KeyPairParser {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RSAKeyPairParser(String str) {
            super(str);
            PEMReader.this = r5;
        }

        @Override // org.bouncycastle.util.p013io.pem.PemObjectParser
        public Object parseObject(PemObject pemObject) {
            IOException e;
            Exception e2;
            ASN1Sequence readKeyPair;
            try {
                readKeyPair = readKeyPair(pemObject);
            } catch (IOException e3) {
                e = e3;
            } catch (Exception e4) {
                e2 = e4;
            }
            try {
                if (readKeyPair.size() != 9) {
                    throw new PEMException("malformed sequence in RSA private key");
                }
                DERInteger dERInteger = (DERInteger) readKeyPair.getObjectAt(1);
                DERInteger dERInteger2 = (DERInteger) readKeyPair.getObjectAt(2);
                DERInteger dERInteger3 = (DERInteger) readKeyPair.getObjectAt(3);
                DERInteger dERInteger4 = (DERInteger) readKeyPair.getObjectAt(4);
                DERInteger dERInteger5 = (DERInteger) readKeyPair.getObjectAt(5);
                DERInteger dERInteger6 = (DERInteger) readKeyPair.getObjectAt(6);
                DERInteger dERInteger7 = (DERInteger) readKeyPair.getObjectAt(7);
                DERInteger dERInteger8 = (DERInteger) readKeyPair.getObjectAt(8);
                RSAPublicKeySpec rSAPublicKeySpec = new RSAPublicKeySpec(dERInteger.getValue(), dERInteger2.getValue());
                RSAPrivateCrtKeySpec rSAPrivateCrtKeySpec = new RSAPrivateCrtKeySpec(dERInteger.getValue(), dERInteger2.getValue(), dERInteger3.getValue(), dERInteger4.getValue(), dERInteger5.getValue(), dERInteger6.getValue(), dERInteger7.getValue(), dERInteger8.getValue());
                KeyFactory keyFactory = KeyFactory.getInstance("RSA", this.provider);
                return new KeyPair(keyFactory.generatePublic(rSAPublicKeySpec), keyFactory.generatePrivate(rSAPrivateCrtKeySpec));
            } catch (IOException e5) {
                e = e5;
                throw e;
            } catch (Exception e6) {
                e2 = e6;
                throw new PEMException("problem creating RSA private key: " + e2.toString(), e2);
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/openssl/PEMReader$RSAPublicKeyParser.class */
    public class RSAPublicKeyParser implements PemObjectParser {
        private String provider;

        public RSAPublicKeyParser(String str) {
            PEMReader.this = r4;
            this.provider = str;
        }

        @Override // org.bouncycastle.util.p013io.pem.PemObjectParser
        public Object parseObject(PemObject pemObject) {
            try {
                RSAPublicKeyStructure rSAPublicKeyStructure = new RSAPublicKeyStructure((ASN1Sequence) new ASN1InputStream(pemObject.getContent()).readObject());
                return KeyFactory.getInstance("RSA", this.provider).generatePublic(new RSAPublicKeySpec(rSAPublicKeyStructure.getModulus(), rSAPublicKeyStructure.getPublicExponent()));
            } catch (IOException e) {
                throw e;
            } catch (NoSuchProviderException e2) {
                throw new IOException("can't find provider " + this.provider);
            } catch (Exception e3) {
                throw new PEMException("problem extracting key: " + e3.toString(), e3);
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/openssl/PEMReader$X509AttributeCertificateParser.class */
    public class X509AttributeCertificateParser implements PemObjectParser {
        private X509AttributeCertificateParser() {
            PEMReader.this = r4;
        }

        @Override // org.bouncycastle.util.p013io.pem.PemObjectParser
        public Object parseObject(PemObject pemObject) {
            return new X509V2AttributeCertificate(pemObject.getContent());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/openssl/PEMReader$X509CRLParser.class */
    public class X509CRLParser implements PemObjectParser {
        private String provider;

        public X509CRLParser(String str) {
            PEMReader.this = r4;
            this.provider = str;
        }

        @Override // org.bouncycastle.util.p013io.pem.PemObjectParser
        public Object parseObject(PemObject pemObject) {
            try {
                return CertificateFactory.getInstance("X.509", this.provider).generateCRL(new ByteArrayInputStream(pemObject.getContent()));
            } catch (Exception e) {
                throw new PEMException("problem parsing cert: " + e.toString(), e);
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/openssl/PEMReader$X509CertificateParser.class */
    public class X509CertificateParser implements PemObjectParser {
        private String provider;

        public X509CertificateParser(String str) {
            PEMReader.this = r4;
            this.provider = str;
        }

        @Override // org.bouncycastle.util.p013io.pem.PemObjectParser
        public Object parseObject(PemObject pemObject) {
            try {
                return CertificateFactory.getInstance("X.509", this.provider).generateCertificate(new ByteArrayInputStream(pemObject.getContent()));
            } catch (Exception e) {
                throw new PEMException("problem parsing cert: " + e.toString(), e);
            }
        }
    }

    public PEMReader(Reader reader) {
        this(reader, null, "BC");
    }

    public PEMReader(Reader reader, PasswordFinder passwordFinder) {
        this(reader, passwordFinder, "BC");
    }

    public PEMReader(Reader reader, PasswordFinder passwordFinder, String str) {
        this(reader, passwordFinder, str, str);
    }

    public PEMReader(Reader reader, PasswordFinder passwordFinder, String str, String str2) {
        super(reader);
        HashMap hashMap = new HashMap();
        this.parsers = hashMap;
        this.pFinder = passwordFinder;
        hashMap.put("CERTIFICATE REQUEST", new PKCS10CertificationRequestParser());
        hashMap.put("NEW CERTIFICATE REQUEST", new PKCS10CertificationRequestParser());
        hashMap.put("CERTIFICATE", new X509CertificateParser(str2));
        hashMap.put("X509 CERTIFICATE", new X509CertificateParser(str2));
        hashMap.put("X509 CRL", new X509CRLParser(str2));
        hashMap.put("PKCS7", new PKCS7Parser());
        hashMap.put("ATTRIBUTE CERTIFICATE", new X509AttributeCertificateParser());
        hashMap.put("EC PARAMETERS", new ECNamedCurveSpecParser());
        hashMap.put("PUBLIC KEY", new PublicKeyParser(str2));
        hashMap.put("RSA PUBLIC KEY", new RSAPublicKeyParser(str2));
        hashMap.put("RSA PRIVATE KEY", new RSAKeyPairParser(str2));
        hashMap.put("DSA PRIVATE KEY", new DSAKeyPairParser(str2));
        hashMap.put("EC PRIVATE KEY", new ECDSAKeyPairParser(str2));
        hashMap.put("ENCRYPTED PRIVATE KEY", new EncryptedPrivateKeyParser(str, str2));
        hashMap.put("PRIVATE KEY", new PrivateKeyParser(str2));
    }

    public Object readObject() {
        PemObject readPemObject = readPemObject();
        if (readPemObject != null) {
            String type = readPemObject.getType();
            if (this.parsers.containsKey(type)) {
                return ((PemObjectParser) this.parsers.get(type)).parseObject(readPemObject);
            }
            throw new IOException("unrecognised object: " + type);
        }
        return null;
    }
}
