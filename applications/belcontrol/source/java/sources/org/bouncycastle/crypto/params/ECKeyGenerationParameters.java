package org.bouncycastle.crypto.params;

import java.security.SecureRandom;
import org.bouncycastle.crypto.KeyGenerationParameters;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/params/ECKeyGenerationParameters.class */
public class ECKeyGenerationParameters extends KeyGenerationParameters {
    private ECDomainParameters domainParams;

    public ECKeyGenerationParameters(ECDomainParameters eCDomainParameters, SecureRandom secureRandom) {
        super(secureRandom, eCDomainParameters.getN().bitLength());
        this.domainParams = eCDomainParameters;
    }

    public ECDomainParameters getDomainParameters() {
        return this.domainParams;
    }
}
