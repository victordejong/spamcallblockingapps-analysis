package org.bouncycastle.jce.provider.symmetric;

import java.util.HashMap;
import org.bouncycastle.crypto.CipherKeyGenerator;
import org.bouncycastle.crypto.engines.BlowfishEngine;
import org.bouncycastle.crypto.modes.CBCBlockCipher;
import org.bouncycastle.jce.provider.JCEBlockCipher;
import org.bouncycastle.jce.provider.JCEKeyGenerator;
import org.bouncycastle.jce.provider.JDKAlgorithmParameters;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Blowfish.class */
public final class Blowfish {

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Blowfish$AlgParams.class */
    public static class AlgParams extends JDKAlgorithmParameters.IVAlgorithmParameters {
        @Override // org.bouncycastle.jce.provider.JDKAlgorithmParameters.IVAlgorithmParameters, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "Blowfish IV";
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Blowfish$CBC.class */
    public static class CBC extends JCEBlockCipher {
        public CBC() {
            super(new CBCBlockCipher(new BlowfishEngine()), 64);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Blowfish$ECB.class */
    public static class ECB extends JCEBlockCipher {
        public ECB() {
            super(new BlowfishEngine());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Blowfish$KeyGen.class */
    public static class KeyGen extends JCEKeyGenerator {
        public KeyGen() {
            super("Blowfish", 128, new CipherKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Blowfish$Mappings.class */
    public static class Mappings extends HashMap {
        public Mappings() {
            put("Cipher.BLOWFISH", "org.bouncycastle.jce.provider.symmetric.Blowfish$ECB");
            put("Cipher.1.3.6.1.4.1.3029.1.2", "org.bouncycastle.jce.provider.symmetric.Blowfish$CBC");
            put("KeyGenerator.BLOWFISH", "org.bouncycastle.jce.provider.symmetric.Blowfish$KeyGen");
            put("Alg.Alias.KeyGenerator.1.3.6.1.4.1.3029.1.2", "BLOWFISH");
            put("AlgorithmParameters.BLOWFISH", "org.bouncycastle.jce.provider.symmetric.Blowfish$AlgParams");
            put("Alg.Alias.AlgorithmParameters.1.3.6.1.4.1.3029.1.2", "BLOWFISH");
        }
    }

    private Blowfish() {
    }
}
