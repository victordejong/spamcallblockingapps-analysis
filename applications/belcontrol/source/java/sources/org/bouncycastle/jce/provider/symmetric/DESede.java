package org.bouncycastle.jce.provider.symmetric;

import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.util.HashMap;
import javax.crypto.SecretKey;
import javax.crypto.spec.DESedeKeySpec;
import javax.crypto.spec.SecretKeySpec;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.crypto.KeyGenerationParameters;
import org.bouncycastle.crypto.engines.DESedeEngine;
import org.bouncycastle.crypto.engines.DESedeWrapEngine;
import org.bouncycastle.crypto.engines.RFC3211WrapEngine;
import org.bouncycastle.crypto.generators.DESedeKeyGenerator;
import org.bouncycastle.crypto.macs.CBCBlockCipherMac;
import org.bouncycastle.crypto.macs.CFBBlockCipherMac;
import org.bouncycastle.crypto.macs.CMac;
import org.bouncycastle.crypto.modes.CBCBlockCipher;
import org.bouncycastle.crypto.paddings.ISO7816d4Padding;
import org.bouncycastle.jce.provider.JCEBlockCipher;
import org.bouncycastle.jce.provider.JCEKeyGenerator;
import org.bouncycastle.jce.provider.JCEMac;
import org.bouncycastle.jce.provider.JCESecretKeyFactory;
import org.bouncycastle.jce.provider.WrapCipherSpi;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/DESede.class */
public final class DESede {

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/DESede$CBC.class */
    public static class CBC extends JCEBlockCipher {
        public CBC() {
            super(new CBCBlockCipher(new DESedeEngine()), 64);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/DESede$CBCMAC.class */
    public static class CBCMAC extends JCEMac {
        public CBCMAC() {
            super(new CBCBlockCipherMac(new DESedeEngine()));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/DESede$CMAC.class */
    public static class CMAC extends JCEMac {
        public CMAC() {
            super(new CMac(new DESedeEngine()));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/DESede$DESede64.class */
    public static class DESede64 extends JCEMac {
        public DESede64() {
            super(new CBCBlockCipherMac(new DESedeEngine(), 64));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/DESede$DESede64with7816d4.class */
    public static class DESede64with7816d4 extends JCEMac {
        public DESede64with7816d4() {
            super(new CBCBlockCipherMac(new DESedeEngine(), 64, new ISO7816d4Padding()));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/DESede$DESedeCFB8.class */
    public static class DESedeCFB8 extends JCEMac {
        public DESedeCFB8() {
            super(new CFBBlockCipherMac(new DESedeEngine()));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/DESede$ECB.class */
    public static class ECB extends JCEBlockCipher {
        public ECB() {
            super(new DESedeEngine());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/DESede$KeyFactory.class */
    public static class KeyFactory extends JCESecretKeyFactory {
        public KeyFactory() {
            super("DESede", null);
        }

        @Override // org.bouncycastle.jce.provider.JCESecretKeyFactory, javax.crypto.SecretKeyFactorySpi
        public SecretKey engineGenerateSecret(KeySpec keySpec) {
            return keySpec instanceof DESedeKeySpec ? new SecretKeySpec(((DESedeKeySpec) keySpec).getKey(), "DESede") : super.engineGenerateSecret(keySpec);
        }

        @Override // org.bouncycastle.jce.provider.JCESecretKeyFactory, javax.crypto.SecretKeyFactorySpi
        public KeySpec engineGetKeySpec(SecretKey secretKey, Class cls) {
            if (cls != null) {
                if (secretKey == null) {
                    throw new InvalidKeySpecException("key parameter is null");
                }
                if (SecretKeySpec.class.isAssignableFrom(cls)) {
                    return new SecretKeySpec(secretKey.getEncoded(), this.algName);
                }
                if (!DESedeKeySpec.class.isAssignableFrom(cls)) {
                    throw new InvalidKeySpecException("Invalid KeySpec");
                }
                byte[] encoded = secretKey.getEncoded();
                try {
                    if (encoded.length != 16) {
                        return new DESedeKeySpec(encoded);
                    }
                    byte[] bArr = new byte[24];
                    System.arraycopy(encoded, 0, bArr, 0, 16);
                    System.arraycopy(encoded, 0, bArr, 16, 8);
                    return new DESedeKeySpec(bArr);
                } catch (Exception e) {
                    throw new InvalidKeySpecException(e.toString());
                }
            }
            throw new InvalidKeySpecException("keySpec parameter is null");
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/DESede$KeyGenerator.class */
    public static class KeyGenerator extends JCEKeyGenerator {
        private boolean keySizeSet = false;

        public KeyGenerator() {
            super("DESede", 192, new DESedeKeyGenerator());
        }

        @Override // org.bouncycastle.jce.provider.JCEKeyGenerator, javax.crypto.KeyGeneratorSpi
        public SecretKey engineGenerateKey() {
            if (this.uninitialised) {
                this.engine.init(new KeyGenerationParameters(new SecureRandom(), this.defaultKeySize));
                this.uninitialised = false;
            }
            if (!this.keySizeSet) {
                byte[] generateKey = this.engine.generateKey();
                System.arraycopy(generateKey, 0, generateKey, 16, 8);
                return new SecretKeySpec(generateKey, this.algName);
            }
            return new SecretKeySpec(this.engine.generateKey(), this.algName);
        }

        @Override // org.bouncycastle.jce.provider.JCEKeyGenerator, javax.crypto.KeyGeneratorSpi
        public void engineInit(int i, SecureRandom secureRandom) {
            super.engineInit(i, secureRandom);
            this.keySizeSet = true;
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/DESede$KeyGenerator3.class */
    public static class KeyGenerator3 extends JCEKeyGenerator {
        public KeyGenerator3() {
            super("DESede3", 192, new DESedeKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/DESede$Mappings.class */
    public static class Mappings extends HashMap {
        public Mappings() {
            put("Cipher.DESEDE", "org.bouncycastle.jce.provider.symmetric.DESede$ECB");
            StringBuilder sb = new StringBuilder();
            sb.append("Cipher.");
            ASN1ObjectIdentifier aSN1ObjectIdentifier = PKCSObjectIdentifiers.des_EDE3_CBC;
            sb.append(aSN1ObjectIdentifier);
            put(sb.toString(), "org.bouncycastle.jce.provider.symmetric.DESede$CBC");
            put("Cipher." + OIWObjectIdentifiers.desCBC, "org.bouncycastle.jce.provider.symmetric.DESede$CBC");
            put("Cipher.DESEDEWRAP", "org.bouncycastle.jce.provider.symmetric.DESede$Wrap");
            put("Cipher." + PKCSObjectIdentifiers.id_alg_CMS3DESwrap, "org.bouncycastle.jce.provider.symmetric.DESede$Wrap");
            put("Cipher.DESEDERFC3211WRAP", "org.bouncycastle.jce.provider.symmetric.DESede$RFC3211");
            put("KeyGenerator.DESEDE", "org.bouncycastle.jce.provider.symmetric.DESede$KeyGenerator");
            put("KeyGenerator." + aSN1ObjectIdentifier, "org.bouncycastle.jce.provider.symmetric.DESede$KeyGenerator3");
            put("KeyGenerator.DESEDEWRAP", "org.bouncycastle.jce.provider.symmetric.DESede$KeyGenerator");
            put("SecretKeyFactory.DESEDE", "org.bouncycastle.jce.provider.symmetric.DESede$KeyFactory");
            put("Mac.DESEDECMAC", "org.bouncycastle.jce.provider.symmetric.DESede$CMAC");
            put("Mac.DESEDEMAC", "org.bouncycastle.jce.provider.symmetric.DESede$CBCMAC");
            put("Alg.Alias.Mac.DESEDE", "DESEDEMAC");
            put("Mac.DESEDEMAC/CFB8", "org.bouncycastle.jce.provider.symmetric.DESede$DESedeCFB8");
            put("Alg.Alias.Mac.DESEDE/CFB8", "DESEDEMAC/CFB8");
            put("Mac.DESEDEMAC64", "org.bouncycastle.jce.provider.symmetric.DESede$DESede64");
            put("Alg.Alias.Mac.DESEDE64", "DESEDEMAC64");
            put("Mac.DESEDEMAC64WITHISO7816-4PADDING", "org.bouncycastle.jce.provider.symmetric.DESede$DESede64with7816d4");
            put("Alg.Alias.Mac.DESEDE64WITHISO7816-4PADDING", "DESEDEMAC64WITHISO7816-4PADDING");
            put("Alg.Alias.Mac.DESEDEISO9797ALG1MACWITHISO7816-4PADDING", "DESEDEMAC64WITHISO7816-4PADDING");
            put("Alg.Alias.Mac.DESEDEISO9797ALG1WITHISO7816-4PADDING", "DESEDEMAC64WITHISO7816-4PADDING");
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/DESede$RFC3211.class */
    public static class RFC3211 extends WrapCipherSpi {
        public RFC3211() {
            super(new RFC3211WrapEngine(new DESedeEngine()), 8);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/DESede$Wrap.class */
    public static class Wrap extends WrapCipherSpi {
        public Wrap() {
            super(new DESedeWrapEngine());
        }
    }

    private DESede() {
    }
}
