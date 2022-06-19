package org.bouncycastle.crypto.agreement.srp;

import java.math.BigInteger;
import org.bouncycastle.crypto.Digest;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/agreement/srp/SRP6VerifierGenerator.class */
public class SRP6VerifierGenerator {

    /* renamed from: N */
    public BigInteger f7309N;
    public Digest digest;

    /* renamed from: g */
    public BigInteger f7310g;

    public BigInteger generateVerifier(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        return this.f7310g.modPow(SRP6Util.calculateX(this.digest, this.f7309N, bArr, bArr2, bArr3), this.f7309N);
    }

    public void init(BigInteger bigInteger, BigInteger bigInteger2, Digest digest) {
        this.f7309N = bigInteger;
        this.f7310g = bigInteger2;
        this.digest = digest;
    }
}
