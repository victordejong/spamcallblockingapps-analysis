package org.bouncycastle.jce.provider.symmetric;

import java.util.HashMap;
import org.bouncycastle.crypto.CipherKeyGenerator;
import org.bouncycastle.crypto.engines.HC128Engine;
import org.bouncycastle.jce.provider.JCEKeyGenerator;
import org.bouncycastle.jce.provider.JCEStreamCipher;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/HC128.class */
public final class HC128 {

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/HC128$Base.class */
    public static class Base extends JCEStreamCipher {
        public Base() {
            super(new HC128Engine(), 16);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/HC128$KeyGen.class */
    public static class KeyGen extends JCEKeyGenerator {
        public KeyGen() {
            super("HC128", 128, new CipherKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/HC128$Mappings.class */
    public static class Mappings extends HashMap {
        public Mappings() {
            put("Cipher.HC128", "org.bouncycastle.jce.provider.symmetric.HC128$Base");
            put("KeyGenerator.HC128", "org.bouncycastle.jce.provider.symmetric.HC128$KeyGen");
        }
    }

    private HC128() {
    }
}
