package org.bouncycastle.jce.provider;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.KeyGeneratorSpi;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import org.bouncycastle.crypto.CipherKeyGenerator;
import org.bouncycastle.crypto.KeyGenerationParameters;
import org.bouncycastle.crypto.generators.DESKeyGenerator;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JCEKeyGenerator.class */
public class JCEKeyGenerator extends KeyGeneratorSpi {
    public String algName;
    public int defaultKeySize;
    public CipherKeyGenerator engine;
    public int keySize;
    public boolean uninitialised = true;

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JCEKeyGenerator$DES.class */
    public static class DES extends JCEKeyGenerator {
        public DES() {
            super("DES", 64, new DESKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JCEKeyGenerator$GOST28147.class */
    public static class GOST28147 extends JCEKeyGenerator {
        public GOST28147() {
            super("GOST28147", 256, new CipherKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JCEKeyGenerator$HMACSHA1.class */
    public static class HMACSHA1 extends JCEKeyGenerator {
        public HMACSHA1() {
            super("HMACSHA1", 160, new CipherKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JCEKeyGenerator$HMACSHA224.class */
    public static class HMACSHA224 extends JCEKeyGenerator {
        public HMACSHA224() {
            super("HMACSHA224", 224, new CipherKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JCEKeyGenerator$HMACSHA256.class */
    public static class HMACSHA256 extends JCEKeyGenerator {
        public HMACSHA256() {
            super("HMACSHA256", 256, new CipherKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JCEKeyGenerator$HMACSHA384.class */
    public static class HMACSHA384 extends JCEKeyGenerator {
        public HMACSHA384() {
            super("HMACSHA384", 384, new CipherKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JCEKeyGenerator$HMACSHA512.class */
    public static class HMACSHA512 extends JCEKeyGenerator {
        public HMACSHA512() {
            super("HMACSHA512", 512, new CipherKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JCEKeyGenerator$HMACTIGER.class */
    public static class HMACTIGER extends JCEKeyGenerator {
        public HMACTIGER() {
            super("HMACTIGER", 192, new CipherKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JCEKeyGenerator$MD2HMAC.class */
    public static class MD2HMAC extends JCEKeyGenerator {
        public MD2HMAC() {
            super("HMACMD2", 128, new CipherKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JCEKeyGenerator$MD4HMAC.class */
    public static class MD4HMAC extends JCEKeyGenerator {
        public MD4HMAC() {
            super("HMACMD4", 128, new CipherKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JCEKeyGenerator$MD5HMAC.class */
    public static class MD5HMAC extends JCEKeyGenerator {
        public MD5HMAC() {
            super("HMACMD5", 128, new CipherKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JCEKeyGenerator$RC2.class */
    public static class RC2 extends JCEKeyGenerator {
        public RC2() {
            super("RC2", 128, new CipherKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JCEKeyGenerator$RIPEMD128HMAC.class */
    public static class RIPEMD128HMAC extends JCEKeyGenerator {
        public RIPEMD128HMAC() {
            super("HMACRIPEMD128", 128, new CipherKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JCEKeyGenerator$RIPEMD160HMAC.class */
    public static class RIPEMD160HMAC extends JCEKeyGenerator {
        public RIPEMD160HMAC() {
            super("HMACRIPEMD160", 160, new CipherKeyGenerator());
        }
    }

    public JCEKeyGenerator(String str, int i, CipherKeyGenerator cipherKeyGenerator) {
        this.algName = str;
        this.defaultKeySize = i;
        this.keySize = i;
        this.engine = cipherKeyGenerator;
    }

    @Override // javax.crypto.KeyGeneratorSpi
    public SecretKey engineGenerateKey() {
        if (this.uninitialised) {
            this.engine.init(new KeyGenerationParameters(new SecureRandom(), this.defaultKeySize));
            this.uninitialised = false;
        }
        return new SecretKeySpec(this.engine.generateKey(), this.algName);
    }

    @Override // javax.crypto.KeyGeneratorSpi
    public void engineInit(int i, SecureRandom secureRandom) {
        try {
            this.engine.init(new KeyGenerationParameters(secureRandom, i));
            this.uninitialised = false;
        } catch (IllegalArgumentException e) {
            throw new InvalidParameterException(e.getMessage());
        }
    }

    @Override // javax.crypto.KeyGeneratorSpi
    public void engineInit(SecureRandom secureRandom) {
        if (secureRandom != null) {
            this.engine.init(new KeyGenerationParameters(secureRandom, this.defaultKeySize));
            this.uninitialised = false;
        }
    }

    @Override // javax.crypto.KeyGeneratorSpi
    public void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) {
        throw new InvalidAlgorithmParameterException("Not Implemented");
    }
}
