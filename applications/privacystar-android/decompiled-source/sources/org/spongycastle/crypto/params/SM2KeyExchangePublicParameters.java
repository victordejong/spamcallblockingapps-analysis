package org.spongycastle.crypto.params;

import org.spongycastle.crypto.CipherParameters;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/params/SM2KeyExchangePublicParameters.class */
public class SM2KeyExchangePublicParameters implements CipherParameters {
    private ECPublicKeyParameters ephemeralPublicKey;
    private ECPublicKeyParameters staticPublicKey;

    public SM2KeyExchangePublicParameters(ECPublicKeyParameters eCPublicKeyParameters, ECPublicKeyParameters eCPublicKeyParameters2) {
        if (eCPublicKeyParameters == null) {
            throw new NullPointerException("staticPublicKey cannot be null");
        } else if (eCPublicKeyParameters2 == null) {
            throw new NullPointerException("ephemeralPublicKey cannot be null");
        } else if (!eCPublicKeyParameters.getParameters().equals(eCPublicKeyParameters2.getParameters())) {
            throw new IllegalArgumentException("Static and ephemeral public keys have different domain parameters");
        } else {
            this.staticPublicKey = eCPublicKeyParameters;
            this.ephemeralPublicKey = eCPublicKeyParameters2;
        }
    }

    public ECPublicKeyParameters getEphemeralPublicKey() {
        return this.ephemeralPublicKey;
    }

    public ECPublicKeyParameters getStaticPublicKey() {
        return this.staticPublicKey;
    }
}
