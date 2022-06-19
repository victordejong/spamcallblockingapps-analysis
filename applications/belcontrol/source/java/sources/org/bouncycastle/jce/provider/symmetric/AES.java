package org.bouncycastle.jce.provider.symmetric;

import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import javax.crypto.spec.IvParameterSpec;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.crypto.BufferedBlockCipher;
import org.bouncycastle.crypto.CipherKeyGenerator;
import org.bouncycastle.crypto.engines.AESFastEngine;
import org.bouncycastle.crypto.engines.AESWrapEngine;
import org.bouncycastle.crypto.engines.RFC3211WrapEngine;
import org.bouncycastle.crypto.macs.CMac;
import org.bouncycastle.crypto.modes.CBCBlockCipher;
import org.bouncycastle.crypto.modes.CFBBlockCipher;
import org.bouncycastle.crypto.modes.OFBBlockCipher;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.jce.provider.JCEBlockCipher;
import org.bouncycastle.jce.provider.JCEKeyGenerator;
import org.bouncycastle.jce.provider.JCEMac;
import org.bouncycastle.jce.provider.JDKAlgorithmParameterGenerator;
import org.bouncycastle.jce.provider.JDKAlgorithmParameters;
import org.bouncycastle.jce.provider.WrapCipherSpi;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/AES.class */
public final class AES {

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/AES$AESCMAC.class */
    public static class AESCMAC extends JCEMac {
        public AESCMAC() {
            super(new CMac(new AESFastEngine()));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/AES$AlgParamGen.class */
    public static class AlgParamGen extends JDKAlgorithmParameterGenerator {
        @Override // java.security.AlgorithmParameterGeneratorSpi
        public AlgorithmParameters engineGenerateParameters() {
            byte[] bArr = new byte[16];
            if (this.random == null) {
                this.random = new SecureRandom();
            }
            this.random.nextBytes(bArr);
            try {
                AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance("AES", BouncyCastleProvider.PROVIDER_NAME);
                algorithmParameters.init(new IvParameterSpec(bArr));
                return algorithmParameters;
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }

        @Override // java.security.AlgorithmParameterGeneratorSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for AES parameter generation.");
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/AES$AlgParams.class */
    public static class AlgParams extends JDKAlgorithmParameters.IVAlgorithmParameters {
        @Override // org.bouncycastle.jce.provider.JDKAlgorithmParameters.IVAlgorithmParameters, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "AES IV";
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/AES$CBC.class */
    public static class CBC extends JCEBlockCipher {
        public CBC() {
            super(new CBCBlockCipher(new AESFastEngine()), 128);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/AES$CFB.class */
    public static class CFB extends JCEBlockCipher {
        public CFB() {
            super(new BufferedBlockCipher(new CFBBlockCipher(new AESFastEngine(), 128)), 128);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/AES$ECB.class */
    public static class ECB extends JCEBlockCipher {
        public ECB() {
            super(new AESFastEngine());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/AES$KeyGen.class */
    public static class KeyGen extends JCEKeyGenerator {
        public KeyGen() {
            this(192);
        }

        public KeyGen(int i) {
            super("AES", i, new CipherKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/AES$KeyGen128.class */
    public static class KeyGen128 extends KeyGen {
        public KeyGen128() {
            super(128);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/AES$KeyGen192.class */
    public static class KeyGen192 extends KeyGen {
        public KeyGen192() {
            super(192);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/AES$KeyGen256.class */
    public static class KeyGen256 extends KeyGen {
        public KeyGen256() {
            super(256);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/AES$Mappings.class */
    public static class Mappings extends HashMap {
        private static final String wrongAES128 = "2.16.840.1.101.3.4.2";
        private static final String wrongAES192 = "2.16.840.1.101.3.4.22";
        private static final String wrongAES256 = "2.16.840.1.101.3.4.42";

        public Mappings() {
            put("AlgorithmParameters.AES", "org.bouncycastle.jce.provider.symmetric.AES$AlgParams");
            put("Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.2", "AES");
            put("Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.22", "AES");
            put("Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.42", "AES");
            StringBuilder sb = new StringBuilder();
            sb.append("Alg.Alias.AlgorithmParameters.");
            ASN1ObjectIdentifier aSN1ObjectIdentifier = NISTObjectIdentifiers.id_aes128_CBC;
            sb.append(aSN1ObjectIdentifier);
            put(sb.toString(), "AES");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Alg.Alias.AlgorithmParameters.");
            ASN1ObjectIdentifier aSN1ObjectIdentifier2 = NISTObjectIdentifiers.id_aes192_CBC;
            sb2.append(aSN1ObjectIdentifier2);
            put(sb2.toString(), "AES");
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Alg.Alias.AlgorithmParameters.");
            ASN1ObjectIdentifier aSN1ObjectIdentifier3 = NISTObjectIdentifiers.id_aes256_CBC;
            sb3.append(aSN1ObjectIdentifier3);
            put(sb3.toString(), "AES");
            put("AlgorithmParameterGenerator.AES", "org.bouncycastle.jce.provider.symmetric.AES$AlgParamGen");
            put("Alg.Alias.AlgorithmParameterGenerator.2.16.840.1.101.3.4.2", "AES");
            put("Alg.Alias.AlgorithmParameterGenerator.2.16.840.1.101.3.4.22", "AES");
            put("Alg.Alias.AlgorithmParameterGenerator.2.16.840.1.101.3.4.42", "AES");
            put("Alg.Alias.AlgorithmParameterGenerator." + aSN1ObjectIdentifier, "AES");
            put("Alg.Alias.AlgorithmParameterGenerator." + aSN1ObjectIdentifier2, "AES");
            put("Alg.Alias.AlgorithmParameterGenerator." + aSN1ObjectIdentifier3, "AES");
            put("Cipher.AES", "org.bouncycastle.jce.provider.symmetric.AES$ECB");
            put("Alg.Alias.Cipher.2.16.840.1.101.3.4.2", "AES");
            put("Alg.Alias.Cipher.2.16.840.1.101.3.4.22", "AES");
            put("Alg.Alias.Cipher.2.16.840.1.101.3.4.42", "AES");
            StringBuilder sb4 = new StringBuilder();
            sb4.append("Cipher.");
            ASN1ObjectIdentifier aSN1ObjectIdentifier4 = NISTObjectIdentifiers.id_aes128_ECB;
            sb4.append(aSN1ObjectIdentifier4);
            put(sb4.toString(), "org.bouncycastle.jce.provider.symmetric.AES$ECB");
            StringBuilder sb5 = new StringBuilder();
            sb5.append("Cipher.");
            ASN1ObjectIdentifier aSN1ObjectIdentifier5 = NISTObjectIdentifiers.id_aes192_ECB;
            sb5.append(aSN1ObjectIdentifier5);
            put(sb5.toString(), "org.bouncycastle.jce.provider.symmetric.AES$ECB");
            StringBuilder sb6 = new StringBuilder();
            sb6.append("Cipher.");
            ASN1ObjectIdentifier aSN1ObjectIdentifier6 = NISTObjectIdentifiers.id_aes256_ECB;
            sb6.append(aSN1ObjectIdentifier6);
            put(sb6.toString(), "org.bouncycastle.jce.provider.symmetric.AES$ECB");
            put("Cipher." + aSN1ObjectIdentifier, "org.bouncycastle.jce.provider.symmetric.AES$CBC");
            put("Cipher." + aSN1ObjectIdentifier2, "org.bouncycastle.jce.provider.symmetric.AES$CBC");
            put("Cipher." + aSN1ObjectIdentifier3, "org.bouncycastle.jce.provider.symmetric.AES$CBC");
            StringBuilder sb7 = new StringBuilder();
            sb7.append("Cipher.");
            ASN1ObjectIdentifier aSN1ObjectIdentifier7 = NISTObjectIdentifiers.id_aes128_OFB;
            sb7.append(aSN1ObjectIdentifier7);
            put(sb7.toString(), "org.bouncycastle.jce.provider.symmetric.AES$OFB");
            StringBuilder sb8 = new StringBuilder();
            sb8.append("Cipher.");
            ASN1ObjectIdentifier aSN1ObjectIdentifier8 = NISTObjectIdentifiers.id_aes192_OFB;
            sb8.append(aSN1ObjectIdentifier8);
            put(sb8.toString(), "org.bouncycastle.jce.provider.symmetric.AES$OFB");
            StringBuilder sb9 = new StringBuilder();
            sb9.append("Cipher.");
            ASN1ObjectIdentifier aSN1ObjectIdentifier9 = NISTObjectIdentifiers.id_aes256_OFB;
            sb9.append(aSN1ObjectIdentifier9);
            put(sb9.toString(), "org.bouncycastle.jce.provider.symmetric.AES$OFB");
            StringBuilder sb10 = new StringBuilder();
            sb10.append("Cipher.");
            ASN1ObjectIdentifier aSN1ObjectIdentifier10 = NISTObjectIdentifiers.id_aes128_CFB;
            sb10.append(aSN1ObjectIdentifier10);
            put(sb10.toString(), "org.bouncycastle.jce.provider.symmetric.AES$CFB");
            StringBuilder sb11 = new StringBuilder();
            sb11.append("Cipher.");
            ASN1ObjectIdentifier aSN1ObjectIdentifier11 = NISTObjectIdentifiers.id_aes192_CFB;
            sb11.append(aSN1ObjectIdentifier11);
            put(sb11.toString(), "org.bouncycastle.jce.provider.symmetric.AES$CFB");
            StringBuilder sb12 = new StringBuilder();
            sb12.append("Cipher.");
            ASN1ObjectIdentifier aSN1ObjectIdentifier12 = NISTObjectIdentifiers.id_aes256_CFB;
            sb12.append(aSN1ObjectIdentifier12);
            put(sb12.toString(), "org.bouncycastle.jce.provider.symmetric.AES$CFB");
            put("Cipher.AESWRAP", "org.bouncycastle.jce.provider.symmetric.AES$Wrap");
            StringBuilder sb13 = new StringBuilder();
            sb13.append("Alg.Alias.Cipher.");
            ASN1ObjectIdentifier aSN1ObjectIdentifier13 = NISTObjectIdentifiers.id_aes128_wrap;
            sb13.append(aSN1ObjectIdentifier13);
            put(sb13.toString(), "AESWRAP");
            StringBuilder sb14 = new StringBuilder();
            sb14.append("Alg.Alias.Cipher.");
            ASN1ObjectIdentifier aSN1ObjectIdentifier14 = NISTObjectIdentifiers.id_aes192_wrap;
            sb14.append(aSN1ObjectIdentifier14);
            put(sb14.toString(), "AESWRAP");
            StringBuilder sb15 = new StringBuilder();
            sb15.append("Alg.Alias.Cipher.");
            ASN1ObjectIdentifier aSN1ObjectIdentifier15 = NISTObjectIdentifiers.id_aes256_wrap;
            sb15.append(aSN1ObjectIdentifier15);
            put(sb15.toString(), "AESWRAP");
            put("Cipher.AESRFC3211WRAP", "org.bouncycastle.jce.provider.symmetric.AES$RFC3211Wrap");
            put("KeyGenerator.AES", "org.bouncycastle.jce.provider.symmetric.AES$KeyGen");
            put("KeyGenerator.2.16.840.1.101.3.4.2", "org.bouncycastle.jce.provider.symmetric.AES$KeyGen128");
            put("KeyGenerator.2.16.840.1.101.3.4.22", "org.bouncycastle.jce.provider.symmetric.AES$KeyGen192");
            put("KeyGenerator.2.16.840.1.101.3.4.42", "org.bouncycastle.jce.provider.symmetric.AES$KeyGen256");
            put("KeyGenerator." + aSN1ObjectIdentifier4, "org.bouncycastle.jce.provider.symmetric.AES$KeyGen128");
            put("KeyGenerator." + aSN1ObjectIdentifier, "org.bouncycastle.jce.provider.symmetric.AES$KeyGen128");
            put("KeyGenerator." + aSN1ObjectIdentifier7, "org.bouncycastle.jce.provider.symmetric.AES$KeyGen128");
            put("KeyGenerator." + aSN1ObjectIdentifier10, "org.bouncycastle.jce.provider.symmetric.AES$KeyGen128");
            put("KeyGenerator." + aSN1ObjectIdentifier5, "org.bouncycastle.jce.provider.symmetric.AES$KeyGen192");
            put("KeyGenerator." + aSN1ObjectIdentifier2, "org.bouncycastle.jce.provider.symmetric.AES$KeyGen192");
            put("KeyGenerator." + aSN1ObjectIdentifier8, "org.bouncycastle.jce.provider.symmetric.AES$KeyGen192");
            put("KeyGenerator." + aSN1ObjectIdentifier11, "org.bouncycastle.jce.provider.symmetric.AES$KeyGen192");
            put("KeyGenerator." + aSN1ObjectIdentifier6, "org.bouncycastle.jce.provider.symmetric.AES$KeyGen256");
            put("KeyGenerator." + aSN1ObjectIdentifier3, "org.bouncycastle.jce.provider.symmetric.AES$KeyGen256");
            put("KeyGenerator." + aSN1ObjectIdentifier9, "org.bouncycastle.jce.provider.symmetric.AES$KeyGen256");
            put("KeyGenerator." + aSN1ObjectIdentifier12, "org.bouncycastle.jce.provider.symmetric.AES$KeyGen256");
            put("KeyGenerator.AESWRAP", "org.bouncycastle.jce.provider.symmetric.AES$KeyGen");
            put("KeyGenerator." + aSN1ObjectIdentifier13, "org.bouncycastle.jce.provider.symmetric.AES$KeyGen128");
            put("KeyGenerator." + aSN1ObjectIdentifier14, "org.bouncycastle.jce.provider.symmetric.AES$KeyGen192");
            put("KeyGenerator." + aSN1ObjectIdentifier15, "org.bouncycastle.jce.provider.symmetric.AES$KeyGen256");
            put("Mac.AESCMAC", "org.bouncycastle.jce.provider.symmetric.AES$AESCMAC");
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/AES$OFB.class */
    public static class OFB extends JCEBlockCipher {
        public OFB() {
            super(new BufferedBlockCipher(new OFBBlockCipher(new AESFastEngine(), 128)), 128);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/AES$RFC3211Wrap.class */
    public static class RFC3211Wrap extends WrapCipherSpi {
        public RFC3211Wrap() {
            super(new RFC3211WrapEngine(new AESFastEngine()), 16);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/AES$Wrap.class */
    public static class Wrap extends WrapCipherSpi {
        public Wrap() {
            super(new AESWrapEngine());
        }
    }

    private AES() {
    }
}
