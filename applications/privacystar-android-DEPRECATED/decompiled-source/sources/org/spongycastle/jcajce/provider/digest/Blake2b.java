package org.spongycastle.jcajce.provider.digest;

import org.spongycastle.asn1.misc.MiscObjectIdentifiers;
import org.spongycastle.crypto.digests.Blake2bDigest;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/digest/Blake2b.class */
public class Blake2b {

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/digest/Blake2b$Blake2b160.class */
    public static class Blake2b160 extends BCMessageDigest implements Cloneable {
        public Blake2b160() {
            super(new Blake2bDigest(160));
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            Blake2b160 blake2b160 = (Blake2b160) super.clone();
            blake2b160.digest = new Blake2bDigest((Blake2bDigest) this.digest);
            return blake2b160;
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/digest/Blake2b$Blake2b256.class */
    public static class Blake2b256 extends BCMessageDigest implements Cloneable {
        public Blake2b256() {
            super(new Blake2bDigest(256));
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            Blake2b256 blake2b256 = (Blake2b256) super.clone();
            blake2b256.digest = new Blake2bDigest((Blake2bDigest) this.digest);
            return blake2b256;
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/digest/Blake2b$Blake2b384.class */
    public static class Blake2b384 extends BCMessageDigest implements Cloneable {
        public Blake2b384() {
            super(new Blake2bDigest(384));
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            Blake2b384 blake2b384 = (Blake2b384) super.clone();
            blake2b384.digest = new Blake2bDigest((Blake2bDigest) this.digest);
            return blake2b384;
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/digest/Blake2b$Blake2b512.class */
    public static class Blake2b512 extends BCMessageDigest implements Cloneable {
        public Blake2b512() {
            super(new Blake2bDigest(512));
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() throws CloneNotSupportedException {
            Blake2b512 blake2b512 = (Blake2b512) super.clone();
            blake2b512.digest = new Blake2bDigest((Blake2bDigest) this.digest);
            return blake2b512;
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/digest/Blake2b$Mappings.class */
    public static class Mappings extends DigestAlgorithmProvider {
        private static final String PREFIX = Blake2b.class.getName();

        @Override // org.spongycastle.jcajce.provider.util.AlgorithmProvider
        public void configure(ConfigurableProvider configurableProvider) {
            configurableProvider.addAlgorithm("MessageDigest.BLAKE2B-512", PREFIX + "$Blake2b512");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest." + MiscObjectIdentifiers.id_blake2b512, "BLAKE2B-512");
            configurableProvider.addAlgorithm("MessageDigest.BLAKE2B-384", PREFIX + "$Blake2b384");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest." + MiscObjectIdentifiers.id_blake2b384, "BLAKE2B-384");
            configurableProvider.addAlgorithm("MessageDigest.BLAKE2B-256", PREFIX + "$Blake2b256");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest." + MiscObjectIdentifiers.id_blake2b256, "BLAKE2B-256");
            configurableProvider.addAlgorithm("MessageDigest.BLAKE2B-160", PREFIX + "$Blake2b160");
            configurableProvider.addAlgorithm("Alg.Alias.MessageDigest." + MiscObjectIdentifiers.id_blake2b160, "BLAKE2B-160");
        }
    }

    private Blake2b() {
    }
}
