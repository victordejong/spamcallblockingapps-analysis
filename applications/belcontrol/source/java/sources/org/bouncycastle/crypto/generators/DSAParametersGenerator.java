package org.bouncycastle.crypto.generators;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.params.DSAParameters;
import org.bouncycastle.util.BigIntegers;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/generators/DSAParametersGenerator.class */
public class DSAParametersGenerator {

    /* renamed from: L */
    private int f7519L;

    /* renamed from: N */
    private int f7520N;
    private int certainty;
    private SecureRandom random;
    private static final BigInteger ZERO = BigInteger.valueOf(0);
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private static final BigInteger TWO = BigInteger.valueOf(2);

    private static BigInteger calculateGenerator_FIPS186_2(BigInteger bigInteger, BigInteger bigInteger2, SecureRandom secureRandom) {
        BigInteger modPow;
        BigInteger divide = bigInteger.subtract(ONE).divide(bigInteger2);
        BigInteger subtract = bigInteger.subtract(TWO);
        do {
            modPow = BigIntegers.createRandomInRange(TWO, subtract, secureRandom).modPow(divide, bigInteger);
        } while (modPow.bitLength() <= 1);
        return modPow;
    }

    private static BigInteger calculateGenerator_FIPS186_3_Unverifiable(BigInteger bigInteger, BigInteger bigInteger2, SecureRandom secureRandom) {
        return calculateGenerator_FIPS186_2(bigInteger, bigInteger2, secureRandom);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x003f, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.bouncycastle.crypto.params.DSAParameters generateParameters_FIPS186_2() {
        /*
            Method dump skipped, instructions count: 398
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.crypto.generators.DSAParametersGenerator.generateParameters_FIPS186_2():org.bouncycastle.crypto.params.DSAParameters");
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0037, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.bouncycastle.crypto.params.DSAParameters generateParameters_FIPS186_3() {
        /*
            Method dump skipped, instructions count: 407
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.crypto.generators.DSAParametersGenerator.generateParameters_FIPS186_3():org.bouncycastle.crypto.params.DSAParameters");
    }

    private static int getDefaultN(int i) {
        return i > 1024 ? 256 : 160;
    }

    private static void hash(Digest digest, byte[] bArr, byte[] bArr2) {
        digest.update(bArr, 0, bArr.length);
        digest.doFinal(bArr2, 0);
    }

    private static void inc(byte[] bArr) {
        for (int length = bArr.length - 1; length >= 0; length--) {
            byte b = (byte) ((bArr[length] + 1) & 255);
            bArr[length] = b;
            if (b != 0) {
                return;
            }
        }
    }

    private void init(int i, int i2, int i3, SecureRandom secureRandom) {
        this.f7519L = i;
        this.f7520N = i2;
        this.certainty = i3;
        this.random = secureRandom;
    }

    public DSAParameters generateParameters() {
        return this.f7519L > 1024 ? generateParameters_FIPS186_3() : generateParameters_FIPS186_2();
    }

    public void init(int i, int i2, SecureRandom secureRandom) {
        init(i, getDefaultN(i), i2, secureRandom);
    }
}
