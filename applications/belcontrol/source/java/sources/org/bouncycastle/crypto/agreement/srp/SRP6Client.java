package org.bouncycastle.crypto.agreement.srp;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.Digest;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/agreement/srp/SRP6Client.class */
public class SRP6Client {

    /* renamed from: A */
    public BigInteger f7293A;

    /* renamed from: B */
    public BigInteger f7294B;

    /* renamed from: N */
    public BigInteger f7295N;

    /* renamed from: S */
    public BigInteger f7296S;

    /* renamed from: a */
    public BigInteger f7297a;
    public Digest digest;

    /* renamed from: g */
    public BigInteger f7298g;
    public SecureRandom random;

    /* renamed from: u */
    public BigInteger f7299u;

    /* renamed from: x */
    public BigInteger f7300x;

    private BigInteger calculateS() {
        BigInteger calculateK = SRP6Util.calculateK(this.digest, this.f7295N, this.f7298g);
        return this.f7294B.subtract(this.f7298g.modPow(this.f7300x, this.f7295N).multiply(calculateK).mod(this.f7295N)).mod(this.f7295N).modPow(this.f7299u.multiply(this.f7300x).add(this.f7297a), this.f7295N);
    }

    public BigInteger calculateSecret(BigInteger bigInteger) {
        BigInteger validatePublicValue = SRP6Util.validatePublicValue(this.f7295N, bigInteger);
        this.f7294B = validatePublicValue;
        this.f7299u = SRP6Util.calculateU(this.digest, this.f7295N, this.f7293A, validatePublicValue);
        BigInteger calculateS = calculateS();
        this.f7296S = calculateS;
        return calculateS;
    }

    public BigInteger generateClientCredentials(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        this.f7300x = SRP6Util.calculateX(this.digest, this.f7295N, bArr, bArr2, bArr3);
        BigInteger selectPrivateValue = selectPrivateValue();
        this.f7297a = selectPrivateValue;
        BigInteger modPow = this.f7298g.modPow(selectPrivateValue, this.f7295N);
        this.f7293A = modPow;
        return modPow;
    }

    public void init(BigInteger bigInteger, BigInteger bigInteger2, Digest digest, SecureRandom secureRandom) {
        this.f7295N = bigInteger;
        this.f7298g = bigInteger2;
        this.digest = digest;
        this.random = secureRandom;
    }

    public BigInteger selectPrivateValue() {
        return SRP6Util.generatePrivateValue(this.digest, this.f7295N, this.f7298g, this.random);
    }
}
