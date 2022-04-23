package org.spongycastle.crypto.params;

import org.spongycastle.crypto.CipherParameters;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/params/MQVPrivateParameters.class */
public class MQVPrivateParameters implements CipherParameters {
    private ECPrivateKeyParameters ephemeralPrivateKey;
    private ECPublicKeyParameters ephemeralPublicKey;
    private ECPrivateKeyParameters staticPrivateKey;

    public MQVPrivateParameters(ECPrivateKeyParameters eCPrivateKeyParameters, ECPrivateKeyParameters eCPrivateKeyParameters2) {
        this(eCPrivateKeyParameters, eCPrivateKeyParameters2, null);
    }

    public MQVPrivateParameters(ECPrivateKeyParameters eCPrivateKeyParameters, ECPrivateKeyParameters eCPrivateKeyParameters2, ECPublicKeyParameters eCPublicKeyParameters) {
        ECPublicKeyParameters eCPublicKeyParameters2;
        if (eCPrivateKeyParameters == null) {
            throw new NullPointerException("staticPrivateKey cannot be null");
        } else if (eCPrivateKeyParameters2 == null) {
            throw new NullPointerException("ephemeralPrivateKey cannot be null");
        } else {
            ECDomainParameters parameters = eCPrivateKeyParameters.getParameters();
            if (!parameters.equals(eCPrivateKeyParameters2.getParameters())) {
                throw new IllegalArgumentException("Static and ephemeral private keys have different domain parameters");
            }
            if (eCPublicKeyParameters == null) {
                eCPublicKeyParameters2 = new ECPublicKeyParameters(parameters.getG().multiply(eCPrivateKeyParameters2.getD()), parameters);
            } else {
                eCPublicKeyParameters2 = eCPublicKeyParameters;
                if (!parameters.equals(eCPublicKeyParameters.getParameters())) {
                    throw new IllegalArgumentException("Ephemeral public key has different domain parameters");
                }
            }
            this.staticPrivateKey = eCPrivateKeyParameters;
            this.ephemeralPrivateKey = eCPrivateKeyParameters2;
            this.ephemeralPublicKey = eCPublicKeyParameters2;
        }
    }

    public ECPrivateKeyParameters getEphemeralPrivateKey() {
        return this.ephemeralPrivateKey;
    }

    public ECPublicKeyParameters getEphemeralPublicKey() {
        return this.ephemeralPublicKey;
    }

    public ECPrivateKeyParameters getStaticPrivateKey() {
        return this.staticPrivateKey;
    }
}
