package org.bouncycastle.jce.provider.symmetric;

import java.util.HashMap;
import org.bouncycastle.crypto.CipherKeyGenerator;
import org.bouncycastle.crypto.engines.HC256Engine;
import org.bouncycastle.jce.provider.JCEKeyGenerator;
import org.bouncycastle.jce.provider.JCEStreamCipher;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/HC256.class */
public final class HC256 {

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/HC256$Base.class */
    public static class Base extends JCEStreamCipher {
        public Base() {
            super(new HC256Engine(), 32);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/HC256$KeyGen.class */
    public static class KeyGen extends JCEKeyGenerator {
        public KeyGen() {
            super("HC256", 256, new CipherKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/HC256$Mappings.class */
    public static class Mappings extends HashMap {
        public Mappings() {
            put("Cipher.HC256", "org.bouncycastle.jce.provider.symmetric.HC256$Base");
            put("KeyGenerator.HC256", "org.bouncycastle.jce.provider.symmetric.HC256$KeyGen");
        }
    }

    private HC256() {
    }
}
