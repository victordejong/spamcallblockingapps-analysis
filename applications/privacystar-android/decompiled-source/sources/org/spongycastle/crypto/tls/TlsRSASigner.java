package org.spongycastle.crypto.tls;

import org.spongycastle.crypto.AsymmetricBlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.CryptoException;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.Signer;
import org.spongycastle.crypto.digests.NullDigest;
import org.spongycastle.crypto.encodings.PKCS1Encoding;
import org.spongycastle.crypto.engines.RSABlindedEngine;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.crypto.params.RSAKeyParameters;
import org.spongycastle.crypto.signers.GenericSigner;
import org.spongycastle.crypto.signers.RSADigestSigner;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/TlsRSASigner.class */
public class TlsRSASigner extends AbstractTlsSigner {
    protected AsymmetricBlockCipher createRSAImpl() {
        return new PKCS1Encoding(new RSABlindedEngine());
    }

    @Override // org.spongycastle.crypto.tls.TlsSigner
    public Signer createSigner(SignatureAndHashAlgorithm signatureAndHashAlgorithm, AsymmetricKeyParameter asymmetricKeyParameter) {
        return makeSigner(signatureAndHashAlgorithm, false, true, new ParametersWithRandom(asymmetricKeyParameter, this.context.getSecureRandom()));
    }

    @Override // org.spongycastle.crypto.tls.TlsSigner
    public Signer createVerifyer(SignatureAndHashAlgorithm signatureAndHashAlgorithm, AsymmetricKeyParameter asymmetricKeyParameter) {
        return makeSigner(signatureAndHashAlgorithm, false, false, asymmetricKeyParameter);
    }

    @Override // org.spongycastle.crypto.tls.TlsSigner
    public byte[] generateRawSignature(SignatureAndHashAlgorithm signatureAndHashAlgorithm, AsymmetricKeyParameter asymmetricKeyParameter, byte[] bArr) throws CryptoException {
        Signer makeSigner = makeSigner(signatureAndHashAlgorithm, true, true, new ParametersWithRandom(asymmetricKeyParameter, this.context.getSecureRandom()));
        makeSigner.update(bArr, 0, bArr.length);
        return makeSigner.generateSignature();
    }

    @Override // org.spongycastle.crypto.tls.TlsSigner
    public boolean isValidPublicKey(AsymmetricKeyParameter asymmetricKeyParameter) {
        return (asymmetricKeyParameter instanceof RSAKeyParameters) && !asymmetricKeyParameter.isPrivate();
    }

    protected Signer makeSigner(SignatureAndHashAlgorithm signatureAndHashAlgorithm, boolean z, boolean z2, CipherParameters cipherParameters) {
        if ((signatureAndHashAlgorithm != null) != TlsUtils.isTLSv12(this.context)) {
            throw new IllegalStateException();
        } else if (signatureAndHashAlgorithm == null || signatureAndHashAlgorithm.getSignature() == 1) {
            Digest nullDigest = z ? new NullDigest() : signatureAndHashAlgorithm == null ? new CombinedHash() : TlsUtils.createHash(signatureAndHashAlgorithm.getHash());
            Signer rSADigestSigner = signatureAndHashAlgorithm != null ? new RSADigestSigner(nullDigest, TlsUtils.getOIDForHashAlgorithm(signatureAndHashAlgorithm.getHash())) : new GenericSigner(createRSAImpl(), nullDigest);
            rSADigestSigner.init(z2, cipherParameters);
            return rSADigestSigner;
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // org.spongycastle.crypto.tls.TlsSigner
    public boolean verifyRawSignature(SignatureAndHashAlgorithm signatureAndHashAlgorithm, byte[] bArr, AsymmetricKeyParameter asymmetricKeyParameter, byte[] bArr2) throws CryptoException {
        Signer makeSigner = makeSigner(signatureAndHashAlgorithm, true, false, asymmetricKeyParameter);
        makeSigner.update(bArr2, 0, bArr2.length);
        return makeSigner.verifySignature(bArr);
    }
}
