package org.spongycastle.jcajce.provider.asymmetric.rsa;

import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SignatureException;
import java.security.SignatureSpi;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.AlgorithmParameterSpec;
import org.spongycastle.crypto.AsymmetricBlockCipher;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.digests.RIPEMD160Digest;
import org.spongycastle.crypto.digests.WhirlpoolDigest;
import org.spongycastle.crypto.engines.RSABlindedEngine;
import org.spongycastle.crypto.signers.ISO9796d2Signer;
import org.spongycastle.crypto.util.DigestFactory;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/rsa/ISOSignatureSpi.class */
public class ISOSignatureSpi extends SignatureSpi {
    private ISO9796d2Signer signer;

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/rsa/ISOSignatureSpi$MD5WithRSAEncryption.class */
    public static class MD5WithRSAEncryption extends ISOSignatureSpi {
        public MD5WithRSAEncryption() {
            super(DigestFactory.createMD5(), new RSABlindedEngine());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/rsa/ISOSignatureSpi$RIPEMD160WithRSAEncryption.class */
    public static class RIPEMD160WithRSAEncryption extends ISOSignatureSpi {
        public RIPEMD160WithRSAEncryption() {
            super(new RIPEMD160Digest(), new RSABlindedEngine());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/rsa/ISOSignatureSpi$SHA1WithRSAEncryption.class */
    public static class SHA1WithRSAEncryption extends ISOSignatureSpi {
        public SHA1WithRSAEncryption() {
            super(DigestFactory.createSHA1(), new RSABlindedEngine());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/rsa/ISOSignatureSpi$SHA224WithRSAEncryption.class */
    public static class SHA224WithRSAEncryption extends ISOSignatureSpi {
        public SHA224WithRSAEncryption() {
            super(DigestFactory.createSHA224(), new RSABlindedEngine());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/rsa/ISOSignatureSpi$SHA256WithRSAEncryption.class */
    public static class SHA256WithRSAEncryption extends ISOSignatureSpi {
        public SHA256WithRSAEncryption() {
            super(DigestFactory.createSHA256(), new RSABlindedEngine());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/rsa/ISOSignatureSpi$SHA384WithRSAEncryption.class */
    public static class SHA384WithRSAEncryption extends ISOSignatureSpi {
        public SHA384WithRSAEncryption() {
            super(DigestFactory.createSHA384(), new RSABlindedEngine());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/rsa/ISOSignatureSpi$SHA512WithRSAEncryption.class */
    public static class SHA512WithRSAEncryption extends ISOSignatureSpi {
        public SHA512WithRSAEncryption() {
            super(DigestFactory.createSHA512(), new RSABlindedEngine());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/rsa/ISOSignatureSpi$SHA512_224WithRSAEncryption.class */
    public static class SHA512_224WithRSAEncryption extends ISOSignatureSpi {
        public SHA512_224WithRSAEncryption() {
            super(DigestFactory.createSHA512_224(), new RSABlindedEngine());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/rsa/ISOSignatureSpi$SHA512_256WithRSAEncryption.class */
    public static class SHA512_256WithRSAEncryption extends ISOSignatureSpi {
        public SHA512_256WithRSAEncryption() {
            super(DigestFactory.createSHA512_256(), new RSABlindedEngine());
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/rsa/ISOSignatureSpi$WhirlpoolWithRSAEncryption.class */
    public static class WhirlpoolWithRSAEncryption extends ISOSignatureSpi {
        public WhirlpoolWithRSAEncryption() {
            super(new WhirlpoolDigest(), new RSABlindedEngine());
        }
    }

    protected ISOSignatureSpi(Digest digest, AsymmetricBlockCipher asymmetricBlockCipher) {
        this.signer = new ISO9796d2Signer(asymmetricBlockCipher, digest, true);
    }

    @Override // java.security.SignatureSpi
    protected Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override // java.security.SignatureSpi
    protected void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        this.signer.init(true, RSAUtil.generatePrivateKeyParameter((RSAPrivateKey) privateKey));
    }

    @Override // java.security.SignatureSpi
    protected void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        this.signer.init(false, RSAUtil.generatePublicKeyParameter((RSAPublicKey) publicKey));
    }

    @Override // java.security.SignatureSpi
    protected void engineSetParameter(String str, Object obj) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override // java.security.SignatureSpi
    protected void engineSetParameter(AlgorithmParameterSpec algorithmParameterSpec) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override // java.security.SignatureSpi
    protected byte[] engineSign() throws SignatureException {
        try {
            return this.signer.generateSignature();
        } catch (Exception e) {
            throw new SignatureException(e.toString());
        }
    }

    @Override // java.security.SignatureSpi
    protected void engineUpdate(byte b) throws SignatureException {
        this.signer.update(b);
    }

    @Override // java.security.SignatureSpi
    protected void engineUpdate(byte[] bArr, int i, int i2) throws SignatureException {
        this.signer.update(bArr, i, i2);
    }

    @Override // java.security.SignatureSpi
    protected boolean engineVerify(byte[] bArr) throws SignatureException {
        return this.signer.verifySignature(bArr);
    }
}
