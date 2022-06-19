package org.bouncycastle.jce.provider.symmetric;

import java.util.HashMap;
import org.bouncycastle.crypto.CipherKeyGenerator;
import org.bouncycastle.crypto.engines.Grain128Engine;
import org.bouncycastle.jce.provider.JCEKeyGenerator;
import org.bouncycastle.jce.provider.JCEStreamCipher;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Grain128.class */
public final class Grain128 {

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Grain128$Base.class */
    public static class Base extends JCEStreamCipher {
        public Base() {
            super(new Grain128Engine(), 12);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Grain128$KeyGen.class */
    public static class KeyGen extends JCEKeyGenerator {
        public KeyGen() {
            super("Grain128", 128, new CipherKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Grain128$Mappings.class */
    public static class Mappings extends HashMap {
        public Mappings() {
            put("Cipher.Grain128", "org.bouncycastle.jce.provider.symmetric.Grain128$Base");
            put("KeyGenerator.Grain128", "org.bouncycastle.jce.provider.symmetric.Grain128$KeyGen");
        }
    }

    private Grain128() {
    }
}
