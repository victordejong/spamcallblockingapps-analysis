package org.bouncycastle.jce.provider.symmetric;

import java.util.HashMap;
import org.bouncycastle.crypto.CipherKeyGenerator;
import org.bouncycastle.crypto.engines.CAST6Engine;
import org.bouncycastle.jce.provider.JCEBlockCipher;
import org.bouncycastle.jce.provider.JCEKeyGenerator;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/CAST6.class */
public final class CAST6 {

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/CAST6$ECB.class */
    public static class ECB extends JCEBlockCipher {
        public ECB() {
            super(new CAST6Engine());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/CAST6$KeyGen.class */
    public static class KeyGen extends JCEKeyGenerator {
        public KeyGen() {
            super("CAST6", 256, new CipherKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/CAST6$Mappings.class */
    public static class Mappings extends HashMap {
        public Mappings() {
            put("Cipher.CAST6", "org.bouncycastle.jce.provider.symmetric.CAST6$ECB");
            put("KeyGenerator.CAST6", "org.bouncycastle.jce.provider.symmetric.CAST6$KeyGen");
        }
    }

    private CAST6() {
    }
}
