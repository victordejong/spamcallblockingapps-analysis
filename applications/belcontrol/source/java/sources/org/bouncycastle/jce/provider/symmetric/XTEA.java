package org.bouncycastle.jce.provider.symmetric;

import java.util.HashMap;
import org.bouncycastle.crypto.CipherKeyGenerator;
import org.bouncycastle.crypto.engines.XTEAEngine;
import org.bouncycastle.jce.provider.JCEBlockCipher;
import org.bouncycastle.jce.provider.JCEKeyGenerator;
import org.bouncycastle.jce.provider.JDKAlgorithmParameters;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/XTEA.class */
public final class XTEA {

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/XTEA$AlgParams.class */
    public static class AlgParams extends JDKAlgorithmParameters.IVAlgorithmParameters {
        @Override // org.bouncycastle.jce.provider.JDKAlgorithmParameters.IVAlgorithmParameters, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "XTEA IV";
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/XTEA$ECB.class */
    public static class ECB extends JCEBlockCipher {
        public ECB() {
            super(new XTEAEngine());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/XTEA$KeyGen.class */
    public static class KeyGen extends JCEKeyGenerator {
        public KeyGen() {
            super("XTEA", 128, new CipherKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/XTEA$Mappings.class */
    public static class Mappings extends HashMap {
        public Mappings() {
            put("Cipher.XTEA", "org.bouncycastle.jce.provider.symmetric.XTEA$ECB");
            put("KeyGenerator.XTEA", "org.bouncycastle.jce.provider.symmetric.XTEA$KeyGen");
            put("AlgorithmParameters.XTEA", "org.bouncycastle.jce.provider.symmetric.XTEA$AlgParams");
        }
    }

    private XTEA() {
    }
}
