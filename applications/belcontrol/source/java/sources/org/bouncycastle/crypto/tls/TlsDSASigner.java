package org.bouncycastle.crypto.tls;

import java.security.SecureRandom;
import org.bouncycastle.crypto.DSA;
import org.bouncycastle.crypto.Signer;
import org.bouncycastle.crypto.digests.NullDigest;
import org.bouncycastle.crypto.digests.SHA1Digest;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.crypto.signers.DSADigestSigner;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/tls/TlsDSASigner.class */
public abstract class TlsDSASigner implements TlsSigner {
    @Override // org.bouncycastle.crypto.tls.TlsSigner
    public byte[] calculateRawSignature(SecureRandom secureRandom, AsymmetricKeyParameter asymmetricKeyParameter, byte[] bArr) {
        DSADigestSigner dSADigestSigner = new DSADigestSigner(createDSAImpl(), new NullDigest());
        dSADigestSigner.init(true, new ParametersWithRandom(asymmetricKeyParameter, secureRandom));
        dSADigestSigner.update(bArr, 16, 20);
        return dSADigestSigner.generateSignature();
    }

    public abstract DSA createDSAImpl();

    @Override // org.bouncycastle.crypto.tls.TlsSigner
    public Signer createVerifyer(AsymmetricKeyParameter asymmetricKeyParameter) {
        DSADigestSigner dSADigestSigner = new DSADigestSigner(createDSAImpl(), new SHA1Digest());
        dSADigestSigner.init(false, asymmetricKeyParameter);
        return dSADigestSigner;
    }
}
