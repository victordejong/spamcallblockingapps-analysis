package org.bouncycastle.jce.provider.symmetric;

import java.util.HashMap;
import org.bouncycastle.crypto.CipherKeyGenerator;
import org.bouncycastle.crypto.engines.Grainv1Engine;
import org.bouncycastle.jce.provider.JCEKeyGenerator;
import org.bouncycastle.jce.provider.JCEStreamCipher;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Grainv1.class */
public final class Grainv1 {

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Grainv1$Base.class */
    public static class Base extends JCEStreamCipher {
        public Base() {
            super(new Grainv1Engine(), 8);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Grainv1$KeyGen.class */
    public static class KeyGen extends JCEKeyGenerator {
        public KeyGen() {
            super("Grainv1", 80, new CipherKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/Grainv1$Mappings.class */
    public static class Mappings extends HashMap {
        public Mappings() {
            put("Cipher.Grainv1", "org.bouncycastle.jce.provider.symmetric.Grainv1$Base");
            put("KeyGenerator.Grainv1", "org.bouncycastle.jce.provider.symmetric.Grainv1$KeyGen");
        }
    }

    private Grainv1() {
    }
}
