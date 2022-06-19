package org.bouncycastle.jce.provider.symmetric;

import java.util.HashMap;
import org.bouncycastle.crypto.CipherKeyGenerator;
import org.bouncycastle.crypto.engines.VMPCKSA3Engine;
import org.bouncycastle.jce.provider.JCEKeyGenerator;
import org.bouncycastle.jce.provider.JCEStreamCipher;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/VMPCKSA3.class */
public final class VMPCKSA3 {

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/VMPCKSA3$Base.class */
    public static class Base extends JCEStreamCipher {
        public Base() {
            super(new VMPCKSA3Engine(), 16);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/VMPCKSA3$KeyGen.class */
    public static class KeyGen extends JCEKeyGenerator {
        public KeyGen() {
            super("VMPC-KSA3", 128, new CipherKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/symmetric/VMPCKSA3$Mappings.class */
    public static class Mappings extends HashMap {
        public Mappings() {
            put("Cipher.VMPC-KSA3", "org.bouncycastle.jce.provider.symmetric.VMPCKSA3$Base");
            put("KeyGenerator.VMPC-KSA3", "org.bouncycastle.jce.provider.symmetric.VMPCKSA3$KeyGen");
        }
    }

    private VMPCKSA3() {
    }
}
