package org.bouncycastle.jce.provider.symmetric;

import java.util.HashMap;
import org.bouncycastle.crypto.CipherKeyGenerator;
import org.bouncycastle.crypto.engines.SkipjackEngine;
import org.bouncycastle.crypto.macs.CBCBlockCipherMac;
import org.bouncycastle.crypto.macs.CFBBlockCipherMac;
import org.bouncycastle.jce.provider.JCEBlockCipher;
import org.bouncycastle.jce.provider.JCEKeyGenerator;
import org.bouncycastle.jce.provider.JCEMac;
import org.bouncycastle.jce.provider.JDKAlgorithmParameters;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Skipjack.class */
public final class Skipjack {

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Skipjack$AlgParams.class */
    public static class AlgParams extends JDKAlgorithmParameters.IVAlgorithmParameters {
        @Override // org.bouncycastle.jce.provider.JDKAlgorithmParameters.IVAlgorithmParameters, java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "Skipjack IV";
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Skipjack$ECB.class */
    public static class ECB extends JCEBlockCipher {
        public ECB() {
            super(new SkipjackEngine());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Skipjack$KeyGen.class */
    public static class KeyGen extends JCEKeyGenerator {
        public KeyGen() {
            super("Skipjack", 80, new CipherKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Skipjack$Mac.class */
    public static class Mac extends JCEMac {
        public Mac() {
            super(new CBCBlockCipherMac(new SkipjackEngine()));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Skipjack$MacCFB8.class */
    public static class MacCFB8 extends JCEMac {
        public MacCFB8() {
            super(new CFBBlockCipherMac(new SkipjackEngine()));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Skipjack$Mappings.class */
    public static class Mappings extends HashMap {
        public Mappings() {
            put("Cipher.SKIPJACK", "org.bouncycastle.jce.provider.symmetric.Skipjack$ECB");
            put("KeyGenerator.SKIPJACK", "org.bouncycastle.jce.provider.symmetric.Skipjack$KeyGen");
            put("AlgorithmParameters.SKIPJACK", "org.bouncycastle.jce.provider.symmetric.Skipjack$AlgParams");
            put("Mac.SKIPJACKMAC", "org.bouncycastle.jce.provider.symmetric.Skipjack$Mac");
            put("Alg.Alias.Mac.SKIPJACK", "SKIPJACKMAC");
            put("Mac.SKIPJACKMAC/CFB8", "org.bouncycastle.jce.provider.symmetric.Skipjack$MacCFB8");
            put("Alg.Alias.Mac.SKIPJACK/CFB8", "SKIPJACKMAC/CFB8");
        }
    }

    private Skipjack() {
    }
}
