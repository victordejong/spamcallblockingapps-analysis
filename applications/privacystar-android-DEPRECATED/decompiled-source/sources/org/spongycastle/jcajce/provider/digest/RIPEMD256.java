package org.spongycastle.jcajce.provider.digest;

import org.spongycastle.asn1.teletrust.TeleTrusTObjectIdentifiers;
import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.digests.RIPEMD256Digest;
import org.spongycastle.crypto.macs.HMac;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseMac;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/digest/RIPEMD256.class */
public class RIPEMD256 {

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/digest/RIPEMD256$Digest.class */
    public static class Digest extends BCMessageDigest implements Cloneable {
        public Digest() {
            super(new RIPEMD256Digest());
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            Digest digest = (Digest) super.clone();
            digest.digest = new RIPEMD256Digest((RIPEMD256Digest) this.digest);
            return digest;
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/digest/RIPEMD256$HashMac.class */
    public static class HashMac extends BaseMac {
        public HashMac() {
            super(new HMac(new RIPEMD256Digest()));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/digest/RIPEMD256$KeyGenerator.class */
    public static class KeyGenerator extends BaseKeyGenerator {
        public KeyGenerator() {
            super("HMACRIPEMD256", 256, new CipherKeyGenerator());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/digest/RIPEMD256$Mappings.class */
    public static class Mappings extends DigestAlgorithmProvider {
        private static final String PREFIX = RIPEMD256.class.getName();

        @Override // org.spongycastle.jcajce.provider.util.AlgorithmProvider
        public void configure(ConfigurableProvider configurableProvider) {
            configurableProvider.addAlgorithm("MessageDigest.RIPEMD256", PREFIX + "$Digest");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest." + TeleTrusTObjectIdentifiers.ripemd256, "RIPEMD256");
            addHMACAlgorithm(configurableProvider, "RIPEMD256", PREFIX + "$HashMac", PREFIX + "$KeyGenerator");
        }
    }

    private RIPEMD256() {
    }
}
