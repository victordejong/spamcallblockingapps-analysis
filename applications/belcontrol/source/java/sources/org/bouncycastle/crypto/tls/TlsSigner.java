package org.bouncycastle.crypto.tls;

import java.security.SecureRandom;
import org.bouncycastle.crypto.Signer;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/tls/TlsSigner.class */
public interface TlsSigner {
    byte[] calculateRawSignature(SecureRandom secureRandom, AsymmetricKeyParameter asymmetricKeyParameter, byte[] bArr);

    Signer createVerifyer(AsymmetricKeyParameter asymmetricKeyParameter);

    boolean isValidPublicKey(AsymmetricKeyParameter asymmetricKeyParameter);
}
