package org.spongycastle.crypto.agreement.srp;

import java.math.BigInteger;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.params.SRP6GroupParameters;
/* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/agreement/srp/SRP6VerifierGenerator.class */
public class SRP6VerifierGenerator {

    /* renamed from: N */
    protected BigInteger f1044N;
    protected Digest digest;

    /* renamed from: g */
    protected BigInteger f1045g;

    public BigInteger generateVerifier(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        return this.f1045g.modPow(SRP6Util.calculateX(this.digest, this.f1044N, bArr, bArr2, bArr3), this.f1044N);
    }

    public void init(BigInteger bigInteger, BigInteger bigInteger2, Digest digest) {
        this.f1044N = bigInteger;
        this.f1045g = bigInteger2;
        this.digest = digest;
    }

    public void init(SRP6GroupParameters sRP6GroupParameters, Digest digest) {
        this.f1044N = sRP6GroupParameters.getN();
        this.f1045g = sRP6GroupParameters.getG();
        this.digest = digest;
    }
}
