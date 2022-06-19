package org.bouncycastle.jce.provider.symmetric;

import java.util.HashMap;
import org.bouncycastle.crypto.CipherKeyGenerator;
import org.bouncycastle.crypto.engines.SerpentEngine;
import org.bouncycastle.jce.provider.JCEBlockCipher;
import org.bouncycastle.jce.provider.JCEKeyGenerator;
import org.bouncycastle.jce.provider.JDKAlgorithmParameters;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Serpent.class */
public final class Serpent {

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Serpent$AlgParams.class */
    public static class AlgParams extends JDKAlgorithmParameters.IVAlgorithmParameters {
        @Override // org.bouncycastle.jce.provider.JDKAlgorithmParameters.IVAlgorithmParameters, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "Serpent IV";
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Serpent$ECB.class */
    public static class ECB extends JCEBlockCipher {
        public ECB() {
            super(new SerpentEngine());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Serpent$KeyGen.class */
    public static class KeyGen extends JCEKeyGenerator {
        public KeyGen() {
            super("Serpent", 192, new CipherKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Serpent$Mappings.class */
    public static class Mappings extends HashMap {
        public Mappings() {
            put("Cipher.Serpent", "org.bouncycastle.jce.provider.symmetric.Serpent$ECB");
            put("KeyGenerator.Serpent", "org.bouncycastle.jce.provider.symmetric.Serpent$KeyGen");
            put("AlgorithmParameters.Serpent", "org.bouncycastle.jce.provider.symmetric.Serpent$AlgParams");
        }
    }

    private Serpent() {
    }
}
