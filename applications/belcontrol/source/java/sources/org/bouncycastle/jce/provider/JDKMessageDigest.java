package org.bouncycastle.jce.provider;

import java.security.MessageDigest;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.digests.GOST3411Digest;
import org.bouncycastle.crypto.digests.MD2Digest;
import org.bouncycastle.crypto.digests.MD4Digest;
import org.bouncycastle.crypto.digests.MD5Digest;
import org.bouncycastle.crypto.digests.RIPEMD128Digest;
import org.bouncycastle.crypto.digests.RIPEMD160Digest;
import org.bouncycastle.crypto.digests.RIPEMD256Digest;
import org.bouncycastle.crypto.digests.RIPEMD320Digest;
import org.bouncycastle.crypto.digests.SHA1Digest;
import org.bouncycastle.crypto.digests.SHA224Digest;
import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.crypto.digests.SHA384Digest;
import org.bouncycastle.crypto.digests.SHA512Digest;
import org.bouncycastle.crypto.digests.TigerDigest;
import org.bouncycastle.crypto.digests.WhirlpoolDigest;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKMessageDigest.class */
public class JDKMessageDigest extends MessageDigest {
    public Digest digest;

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKMessageDigest$GOST3411.class */
    public static class GOST3411 extends JDKMessageDigest implements Cloneable {
        public GOST3411() {
            super(new GOST3411Digest());
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() {
            GOST3411 gost3411 = (GOST3411) super.clone();
            gost3411.digest = new GOST3411Digest((GOST3411Digest) this.digest);
            return gost3411;
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKMessageDigest$MD2.class */
    public static class MD2 extends JDKMessageDigest implements Cloneable {
        public MD2() {
            super(new MD2Digest());
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() {
            MD2 md2 = (MD2) super.clone();
            md2.digest = new MD2Digest((MD2Digest) this.digest);
            return md2;
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKMessageDigest$MD4.class */
    public static class MD4 extends JDKMessageDigest implements Cloneable {
        public MD4() {
            super(new MD4Digest());
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() {
            MD4 md4 = (MD4) super.clone();
            md4.digest = new MD4Digest((MD4Digest) this.digest);
            return md4;
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKMessageDigest$MD5.class */
    public static class MD5 extends JDKMessageDigest implements Cloneable {
        public MD5() {
            super(new MD5Digest());
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() {
            MD5 md5 = (MD5) super.clone();
            md5.digest = new MD5Digest((MD5Digest) this.digest);
            return md5;
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKMessageDigest$RIPEMD128.class */
    public static class RIPEMD128 extends JDKMessageDigest implements Cloneable {
        public RIPEMD128() {
            super(new RIPEMD128Digest());
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() {
            RIPEMD128 ripemd128 = (RIPEMD128) super.clone();
            ripemd128.digest = new RIPEMD128Digest((RIPEMD128Digest) this.digest);
            return ripemd128;
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKMessageDigest$RIPEMD160.class */
    public static class RIPEMD160 extends JDKMessageDigest implements Cloneable {
        public RIPEMD160() {
            super(new RIPEMD160Digest());
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() {
            RIPEMD160 ripemd160 = (RIPEMD160) super.clone();
            ripemd160.digest = new RIPEMD160Digest((RIPEMD160Digest) this.digest);
            return ripemd160;
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKMessageDigest$RIPEMD256.class */
    public static class RIPEMD256 extends JDKMessageDigest implements Cloneable {
        public RIPEMD256() {
            super(new RIPEMD256Digest());
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() {
            RIPEMD256 ripemd256 = (RIPEMD256) super.clone();
            ripemd256.digest = new RIPEMD256Digest((RIPEMD256Digest) this.digest);
            return ripemd256;
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKMessageDigest$RIPEMD320.class */
    public static class RIPEMD320 extends JDKMessageDigest implements Cloneable {
        public RIPEMD320() {
            super(new RIPEMD320Digest());
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() {
            RIPEMD320 ripemd320 = (RIPEMD320) super.clone();
            ripemd320.digest = new RIPEMD320Digest((RIPEMD320Digest) this.digest);
            return ripemd320;
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKMessageDigest$SHA1.class */
    public static class SHA1 extends JDKMessageDigest implements Cloneable {
        public SHA1() {
            super(new SHA1Digest());
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() {
            SHA1 sha1 = (SHA1) super.clone();
            sha1.digest = new SHA1Digest((SHA1Digest) this.digest);
            return sha1;
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKMessageDigest$SHA224.class */
    public static class SHA224 extends JDKMessageDigest implements Cloneable {
        public SHA224() {
            super(new SHA224Digest());
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() {
            SHA224 sha224 = (SHA224) super.clone();
            sha224.digest = new SHA224Digest((SHA224Digest) this.digest);
            return sha224;
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKMessageDigest$SHA256.class */
    public static class SHA256 extends JDKMessageDigest implements Cloneable {
        public SHA256() {
            super(new SHA256Digest());
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() {
            SHA256 sha256 = (SHA256) super.clone();
            sha256.digest = new SHA256Digest((SHA256Digest) this.digest);
            return sha256;
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKMessageDigest$SHA384.class */
    public static class SHA384 extends JDKMessageDigest implements Cloneable {
        public SHA384() {
            super(new SHA384Digest());
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() {
            SHA384 sha384 = (SHA384) super.clone();
            sha384.digest = new SHA384Digest((SHA384Digest) this.digest);
            return sha384;
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKMessageDigest$SHA512.class */
    public static class SHA512 extends JDKMessageDigest implements Cloneable {
        public SHA512() {
            super(new SHA512Digest());
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() {
            SHA512 sha512 = (SHA512) super.clone();
            sha512.digest = new SHA512Digest((SHA512Digest) this.digest);
            return sha512;
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKMessageDigest$Tiger.class */
    public static class Tiger extends JDKMessageDigest implements Cloneable {
        public Tiger() {
            super(new TigerDigest());
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() {
            Tiger tiger = (Tiger) super.clone();
            tiger.digest = new TigerDigest((TigerDigest) this.digest);
            return tiger;
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKMessageDigest$Whirlpool.class */
    public static class Whirlpool extends JDKMessageDigest implements Cloneable {
        public Whirlpool() {
            super(new WhirlpoolDigest());
        }

        @Override // java.security.MessageDigest, java.security.MessageDigestSpi
        public Object clone() {
            Whirlpool whirlpool = (Whirlpool) super.clone();
            whirlpool.digest = new WhirlpoolDigest((WhirlpoolDigest) this.digest);
            return whirlpool;
        }
    }

    public JDKMessageDigest(Digest digest) {
        super(digest.getAlgorithmName());
        this.digest = digest;
    }

    @Override // java.security.MessageDigestSpi
    public byte[] engineDigest() {
        byte[] bArr = new byte[this.digest.getDigestSize()];
        this.digest.doFinal(bArr, 0);
        return bArr;
    }

    @Override // java.security.MessageDigestSpi
    public void engineReset() {
        this.digest.reset();
    }

    @Override // java.security.MessageDigestSpi
    public void engineUpdate(byte b) {
        this.digest.update(b);
    }

    @Override // java.security.MessageDigestSpi
    public void engineUpdate(byte[] bArr, int i, int i2) {
        this.digest.update(bArr, i, i2);
    }
}
