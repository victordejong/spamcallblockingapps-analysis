package org.spongycastle.pqc.jcajce.provider.sphincs;

import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.SignatureException;
import java.security.spec.AlgorithmParameterSpec;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.digests.SHA3Digest;
import org.spongycastle.crypto.digests.SHA512Digest;
import org.spongycastle.crypto.digests.SHA512tDigest;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.pqc.crypto.sphincs.SPHINCS256Signer;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/jcajce/provider/sphincs/SignatureSpi.class */
public class SignatureSpi extends java.security.SignatureSpi {
    private Digest digest;
    private SecureRandom random;
    private SPHINCS256Signer signer;

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/jcajce/provider/sphincs/SignatureSpi$withSha3_512.class */
    public static class withSha3_512 extends SignatureSpi {
        public withSha3_512() {
            super(new SHA3Digest(512), new SPHINCS256Signer(new SHA3Digest(256), new SHA3Digest(512)));
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/jcajce/provider/sphincs/SignatureSpi$withSha512.class */
    public static class withSha512 extends SignatureSpi {
        public withSha512() {
            super(new SHA512Digest(), new SPHINCS256Signer(new SHA512tDigest(256), new SHA512Digest()));
        }
    }

    protected SignatureSpi(Digest digest, SPHINCS256Signer sPHINCS256Signer) {
        this.digest = digest;
        this.signer = sPHINCS256Signer;
    }

    @Override // java.security.SignatureSpi
    protected Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override // java.security.SignatureSpi
    protected void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        if (privateKey instanceof BCSphincs256PrivateKey) {
            CipherParameters keyParams = ((BCSphincs256PrivateKey) privateKey).getKeyParams();
            CipherParameters cipherParameters = keyParams;
            if (this.random != null) {
                cipherParameters = new ParametersWithRandom(keyParams, this.random);
            }
            this.digest.reset();
            this.signer.init(true, cipherParameters);
            return;
        }
        throw new InvalidKeyException("unknown private key passed to SPHINCS-256");
    }

    @Override // java.security.SignatureSpi
    protected void engineInitSign(PrivateKey privateKey, SecureRandom secureRandom) throws InvalidKeyException {
        this.random = secureRandom;
        engineInitSign(privateKey);
    }

    @Override // java.security.SignatureSpi
    protected void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        if (publicKey instanceof BCSphincs256PublicKey) {
            CipherParameters keyParams = ((BCSphincs256PublicKey) publicKey).getKeyParams();
            this.digest.reset();
            this.signer.init(false, keyParams);
            return;
        }
        throw new InvalidKeyException("unknown public key passed to SPHINCS-256");
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
        byte[] bArr = new byte[this.digest.getDigestSize()];
        this.digest.doFinal(bArr, 0);
        try {
            return this.signer.generateSignature(bArr);
        } catch (Exception e) {
            throw new SignatureException(e.toString());
        }
    }

    @Override // java.security.SignatureSpi
    protected void engineUpdate(byte b) throws SignatureException {
        this.digest.update(b);
    }

    @Override // java.security.SignatureSpi
    protected void engineUpdate(byte[] bArr, int i, int i2) throws SignatureException {
        this.digest.update(bArr, i, i2);
    }

    @Override // java.security.SignatureSpi
    protected boolean engineVerify(byte[] bArr) throws SignatureException {
        byte[] bArr2 = new byte[this.digest.getDigestSize()];
        this.digest.doFinal(bArr2, 0);
        return this.signer.verifySignature(bArr2, bArr);
    }
}
