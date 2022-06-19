package org.bouncycastle.crypto.signers;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DSA;
import org.bouncycastle.crypto.params.ECKeyParameters;
import org.bouncycastle.crypto.params.ECPrivateKeyParameters;
import org.bouncycastle.crypto.params.ECPublicKeyParameters;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.math.p012ec.ECAlgorithms;
import org.bouncycastle.math.p012ec.ECConstants;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/signers/ECDSASigner.class */
public class ECDSASigner implements ECConstants, DSA {
    public ECKeyParameters key;
    public SecureRandom random;

    private BigInteger calculateE(BigInteger bigInteger, byte[] bArr) {
        if (bigInteger.bitLength() > bArr.length * 8) {
            return new BigInteger(1, bArr);
        }
        int length = bArr.length * 8;
        BigInteger bigInteger2 = new BigInteger(1, bArr);
        BigInteger bigInteger3 = bigInteger2;
        if (length - bigInteger.bitLength() > 0) {
            bigInteger3 = bigInteger2.shiftRight(length - bigInteger.bitLength());
        }
        return bigInteger3;
    }

    @Override // org.bouncycastle.crypto.DSA
    public BigInteger[] generateSignature(byte[] bArr) {
        BigInteger bigInteger;
        BigInteger mod;
        BigInteger mod2;
        BigInteger n = this.key.getParameters().getN();
        BigInteger calculateE = calculateE(n, bArr);
        do {
            int bitLength = n.bitLength();
            while (true) {
                BigInteger bigInteger2 = new BigInteger(bitLength, this.random);
                bigInteger = ECConstants.ZERO;
                if (!bigInteger2.equals(bigInteger) && bigInteger2.compareTo(n) < 0) {
                    mod = this.key.getParameters().getG().multiply(bigInteger2).getX().toBigInteger().mod(n);
                    if (!mod.equals(bigInteger)) {
                        mod2 = bigInteger2.modInverse(n).multiply(calculateE.add(((ECPrivateKeyParameters) this.key).getD().multiply(mod))).mod(n);
                    }
                }
            }
        } while (mod2.equals(bigInteger));
        return new BigInteger[]{mod, mod2};
    }

    @Override // org.bouncycastle.crypto.DSA
    public void init(boolean z, CipherParameters cipherParameters) {
        ECPrivateKeyParameters eCPrivateKeyParameters;
        if (!z) {
            eCPrivateKeyParameters = (ECPublicKeyParameters) cipherParameters;
        } else if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            this.random = parametersWithRandom.getRandom();
            this.key = (ECPrivateKeyParameters) parametersWithRandom.getParameters();
            return;
        } else {
            this.random = new SecureRandom();
            eCPrivateKeyParameters = (ECPrivateKeyParameters) cipherParameters;
        }
        this.key = eCPrivateKeyParameters;
    }

    @Override // org.bouncycastle.crypto.DSA
    public boolean verifySignature(byte[] bArr, BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger n = this.key.getParameters().getN();
        BigInteger calculateE = calculateE(n, bArr);
        BigInteger bigInteger3 = ECConstants.ONE;
        if (bigInteger.compareTo(bigInteger3) < 0 || bigInteger.compareTo(n) >= 0 || bigInteger2.compareTo(bigInteger3) < 0 || bigInteger2.compareTo(n) >= 0) {
            return false;
        }
        BigInteger modInverse = bigInteger2.modInverse(n);
        return ECAlgorithms.sumOfTwoMultiplies(this.key.getParameters().getG(), calculateE.multiply(modInverse).mod(n), ((ECPublicKeyParameters) this.key).getQ(), bigInteger.multiply(modInverse).mod(n)).getX().toBigInteger().mod(n).equals(bigInteger);
    }
}
