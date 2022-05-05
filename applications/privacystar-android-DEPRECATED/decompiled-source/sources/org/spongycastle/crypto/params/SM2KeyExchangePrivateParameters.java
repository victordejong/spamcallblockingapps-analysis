package org.spongycastle.crypto.params;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.math.p032ec.ECPoint;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/params/SM2KeyExchangePrivateParameters.class */
public class SM2KeyExchangePrivateParameters implements CipherParameters {
    private final ECPrivateKeyParameters ephemeralPrivateKey;
    private final ECPoint ephemeralPublicPoint;
    private final boolean initiator;
    private final ECPrivateKeyParameters staticPrivateKey;
    private final ECPoint staticPublicPoint;

    public SM2KeyExchangePrivateParameters(boolean z, ECPrivateKeyParameters eCPrivateKeyParameters, ECPrivateKeyParameters eCPrivateKeyParameters2) {
        if (eCPrivateKeyParameters == null) {
            throw new NullPointerException("staticPrivateKey cannot be null");
        } else if (eCPrivateKeyParameters2 == null) {
            throw new NullPointerException("ephemeralPrivateKey cannot be null");
        } else {
            ECDomainParameters parameters = eCPrivateKeyParameters.getParameters();
            if (!parameters.equals(eCPrivateKeyParameters2.getParameters())) {
                throw new IllegalArgumentException("Static and ephemeral private keys have different domain parameters");
            }
            this.initiator = z;
            this.staticPrivateKey = eCPrivateKeyParameters;
            this.staticPublicPoint = parameters.getG().multiply(eCPrivateKeyParameters.getD()).normalize();
            this.ephemeralPrivateKey = eCPrivateKeyParameters2;
            this.ephemeralPublicPoint = parameters.getG().multiply(eCPrivateKeyParameters2.getD()).normalize();
        }
    }

    public ECPrivateKeyParameters getEphemeralPrivateKey() {
        return this.ephemeralPrivateKey;
    }

    public ECPoint getEphemeralPublicPoint() {
        return this.ephemeralPublicPoint;
    }

    public ECPrivateKeyParameters getStaticPrivateKey() {
        return this.staticPrivateKey;
    }

    public ECPoint getStaticPublicPoint() {
        return this.staticPublicPoint;
    }

    public boolean isInitiator() {
        return this.initiator;
    }
}
