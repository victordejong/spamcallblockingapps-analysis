package org.bouncycastle.jce.provider.symmetric;

import java.util.HashMap;
import org.bouncycastle.crypto.CipherKeyGenerator;
import org.bouncycastle.crypto.engines.RijndaelEngine;
import org.bouncycastle.jce.provider.JCEBlockCipher;
import org.bouncycastle.jce.provider.JCEKeyGenerator;
import org.bouncycastle.jce.provider.JDKAlgorithmParameters;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Rijndael.class */
public final class Rijndael {

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Rijndael$AlgParams.class */
    public static class AlgParams extends JDKAlgorithmParameters.IVAlgorithmParameters {
        @Override // org.bouncycastle.jce.provider.JDKAlgorithmParameters.IVAlgorithmParameters, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "Rijndael IV";
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Rijndael$ECB.class */
    public static class ECB extends JCEBlockCipher {
        public ECB() {
            super(new RijndaelEngine());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Rijndael$KeyGen.class */
    public static class KeyGen extends JCEKeyGenerator {
        public KeyGen() {
            super("Rijndael", 192, new CipherKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Rijndael$Mappings.class */
    public static class Mappings extends HashMap {
        public Mappings() {
            put("Cipher.RIJNDAEL", "org.bouncycastle.jce.provider.symmetric.Rijndael$ECB");
            put("KeyGenerator.RIJNDAEL", "org.bouncycastle.jce.provider.symmetric.Rijndael$KeyGen");
            put("AlgorithmParameters.RIJNDAEL", "org.bouncycastle.jce.provider.symmetric.Rijndael$AlgParams");
        }
    }

    private Rijndael() {
    }
}
