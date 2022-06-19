package org.bouncycastle.crypto.agreement.srp;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.Digest;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/agreement/srp/SRP6Server.class */
public class SRP6Server {

    /* renamed from: A */
    public BigInteger f7301A;

    /* renamed from: B */
    public BigInteger f7302B;

    /* renamed from: N */
    public BigInteger f7303N;

    /* renamed from: S */
    public BigInteger f7304S;

    /* renamed from: b */
    public BigInteger f7305b;
    public Digest digest;

    /* renamed from: g */
    public BigInteger f7306g;
    public SecureRandom random;

    /* renamed from: u */
    public BigInteger f7307u;

    /* renamed from: v */
    public BigInteger f7308v;

    private BigInteger calculateS() {
        return this.f7308v.modPow(this.f7307u, this.f7303N).multiply(this.f7301A).mod(this.f7303N).modPow(this.f7305b, this.f7303N);
    }

    public BigInteger calculateSecret(BigInteger bigInteger) {
        BigInteger validatePublicValue = SRP6Util.validatePublicValue(this.f7303N, bigInteger);
        this.f7301A = validatePublicValue;
        this.f7307u = SRP6Util.calculateU(this.digest, this.f7303N, validatePublicValue, this.f7302B);
        BigInteger calculateS = calculateS();
        this.f7304S = calculateS;
        return calculateS;
    }

    public BigInteger generateServerCredentials() {
        BigInteger calculateK = SRP6Util.calculateK(this.digest, this.f7303N, this.f7306g);
        this.f7305b = selectPrivateValue();
        BigInteger mod = calculateK.multiply(this.f7308v).mod(this.f7303N).add(this.f7306g.modPow(this.f7305b, this.f7303N)).mod(this.f7303N);
        this.f7302B = mod;
        return mod;
    }

    public void init(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, Digest digest, SecureRandom secureRandom) {
        this.f7303N = bigInteger;
        this.f7306g = bigInteger2;
        this.f7308v = bigInteger3;
        this.random = secureRandom;
        this.digest = digest;
    }

    public BigInteger selectPrivateValue() {
        return SRP6Util.generatePrivateValue(this.digest, this.f7303N, this.f7306g, this.random);
    }
}
