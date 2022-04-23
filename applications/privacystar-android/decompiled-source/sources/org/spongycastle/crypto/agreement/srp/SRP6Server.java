package org.spongycastle.crypto.agreement.srp;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.CryptoException;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.params.SRP6GroupParameters;
/* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/agreement/srp/SRP6Server.class */
public class SRP6Server {

    /* renamed from: A */
    protected BigInteger f1034A;

    /* renamed from: B */
    protected BigInteger f1035B;
    protected BigInteger Key;

    /* renamed from: M1 */
    protected BigInteger f1036M1;

    /* renamed from: M2 */
    protected BigInteger f1037M2;

    /* renamed from: N */
    protected BigInteger f1038N;

    /* renamed from: S */
    protected BigInteger f1039S;

    /* renamed from: b */
    protected BigInteger f1040b;
    protected Digest digest;

    /* renamed from: g */
    protected BigInteger f1041g;
    protected SecureRandom random;

    /* renamed from: u */
    protected BigInteger f1042u;

    /* renamed from: v */
    protected BigInteger f1043v;

    private BigInteger calculateS() {
        return this.f1043v.modPow(this.f1042u, this.f1038N).multiply(this.f1034A).mod(this.f1038N).modPow(this.f1040b, this.f1038N);
    }

    public BigInteger calculateSecret(BigInteger bigInteger) throws CryptoException {
        this.f1034A = SRP6Util.validatePublicValue(this.f1038N, bigInteger);
        this.f1042u = SRP6Util.calculateU(this.digest, this.f1038N, this.f1034A, this.f1035B);
        this.f1039S = calculateS();
        return this.f1039S;
    }

    public BigInteger calculateServerEvidenceMessage() throws CryptoException {
        if (this.f1034A == null || this.f1036M1 == null || this.f1039S == null) {
            throw new CryptoException("Impossible to compute M2: some data are missing from the previous operations (A,M1,S)");
        }
        this.f1037M2 = SRP6Util.calculateM2(this.digest, this.f1038N, this.f1034A, this.f1036M1, this.f1039S);
        return this.f1037M2;
    }

    public BigInteger calculateSessionKey() throws CryptoException {
        if (this.f1039S == null || this.f1036M1 == null || this.f1037M2 == null) {
            throw new CryptoException("Impossible to compute Key: some data are missing from the previous operations (S,M1,M2)");
        }
        this.Key = SRP6Util.calculateKey(this.digest, this.f1038N, this.f1039S);
        return this.Key;
    }

    public BigInteger generateServerCredentials() {
        BigInteger calculateK = SRP6Util.calculateK(this.digest, this.f1038N, this.f1041g);
        this.f1040b = selectPrivateValue();
        this.f1035B = calculateK.multiply(this.f1043v).mod(this.f1038N).add(this.f1041g.modPow(this.f1040b, this.f1038N)).mod(this.f1038N);
        return this.f1035B;
    }

    public void init(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, Digest digest, SecureRandom secureRandom) {
        this.f1038N = bigInteger;
        this.f1041g = bigInteger2;
        this.f1043v = bigInteger3;
        this.random = secureRandom;
        this.digest = digest;
    }

    public void init(SRP6GroupParameters sRP6GroupParameters, BigInteger bigInteger, Digest digest, SecureRandom secureRandom) {
        init(sRP6GroupParameters.getN(), sRP6GroupParameters.getG(), bigInteger, digest, secureRandom);
    }

    protected BigInteger selectPrivateValue() {
        return SRP6Util.generatePrivateValue(this.digest, this.f1038N, this.f1041g, this.random);
    }

    public boolean verifyClientEvidenceMessage(BigInteger bigInteger) throws CryptoException {
        if (this.f1034A == null || this.f1035B == null || this.f1039S == null) {
            throw new CryptoException("Impossible to compute and verify M1: some data are missing from the previous operations (A,B,S)");
        } else if (!SRP6Util.calculateM1(this.digest, this.f1038N, this.f1034A, this.f1035B, this.f1039S).equals(bigInteger)) {
            return false;
        } else {
            this.f1036M1 = bigInteger;
            return true;
        }
    }
}
