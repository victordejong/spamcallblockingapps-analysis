package org.spongycastle.crypto.params;

import java.security.SecureRandom;
import org.spongycastle.crypto.KeyGenerationParameters;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/params/GOST3410KeyGenerationParameters.class */
public class GOST3410KeyGenerationParameters extends KeyGenerationParameters {
    private GOST3410Parameters params;

    public GOST3410KeyGenerationParameters(SecureRandom secureRandom, GOST3410Parameters gOST3410Parameters) {
        super(secureRandom, gOST3410Parameters.getP().bitLength() - 1);
        this.params = gOST3410Parameters;
    }

    public GOST3410Parameters getParameters() {
        return this.params;
    }
}
