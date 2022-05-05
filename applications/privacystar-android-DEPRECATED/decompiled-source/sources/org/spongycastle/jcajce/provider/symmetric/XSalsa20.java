package org.spongycastle.jcajce.provider.symmetric;

import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.engines.XSalsa20Engine;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseStreamCipher;
import org.spongycastle.jcajce.provider.util.AlgorithmProvider;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/XSalsa20.class */
public final class XSalsa20 {

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/XSalsa20$Base.class */
    public static class Base extends BaseStreamCipher {
        public Base() {
            super(new XSalsa20Engine(), 24);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/XSalsa20$KeyGen.class */
    public static class KeyGen extends BaseKeyGenerator {
        public KeyGen() {
            super("XSalsa20", 256, new CipherKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/XSalsa20$Mappings.class */
    public static class Mappings extends AlgorithmProvider {
        private static final String PREFIX = XSalsa20.class.getName();

        @Override // org.spongycastle.jcajce.provider.util.AlgorithmProvider
        public void configure(ConfigurableProvider configurableProvider) {
            configurableProvider.addAlgorithm("Cipher.XSALSA20", PREFIX + "$Base");
            configurableProvider.addAlgorithm("KeyGenerator.XSALSA20", PREFIX + "$KeyGen");
        }
    }

    private XSalsa20() {
    }
}
