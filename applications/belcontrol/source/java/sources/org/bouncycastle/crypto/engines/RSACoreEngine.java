package org.bouncycastle.crypto.engines;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.crypto.params.RSAKeyParameters;
import org.bouncycastle.crypto.params.RSAPrivateCrtKeyParameters;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/engines/RSACoreEngine.class */
public class RSACoreEngine {
    private boolean forEncryption;
    private RSAKeyParameters key;

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0032, code lost:
        if (r9 != r7.length) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.math.BigInteger convertInput(byte[] r7, int r8, int r9) {
        /*
            r6 = this;
            r0 = r9
            r1 = r6
            int r1 = r1.getInputBlockSize()
            r2 = 1
            int r1 = r1 + r2
            if (r0 > r1) goto L68
            r0 = r9
            r1 = r6
            int r1 = r1.getInputBlockSize()
            r2 = 1
            int r1 = r1 + r2
            if (r0 != r1) goto L28
            r0 = r6
            boolean r0 = r0.forEncryption
            if (r0 == 0) goto L1e
            goto L28
        L1e:
            org.bouncycastle.crypto.DataLengthException r0 = new org.bouncycastle.crypto.DataLengthException
            r1 = r0
            java.lang.String r2 = "input too large for RSA cipher."
            r1.<init>(r2)
            throw r0
        L28:
            r0 = r8
            if (r0 != 0) goto L35
            r0 = r7
            r10 = r0
            r0 = r9
            r1 = r7
            int r1 = r1.length
            if (r0 == r1) goto L43
        L35:
            r0 = r9
            byte[] r0 = new byte[r0]
            r10 = r0
            r0 = r7
            r1 = r8
            r2 = r10
            r3 = 0
            r4 = r9
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
        L43:
            java.math.BigInteger r0 = new java.math.BigInteger
            r1 = r0
            r2 = 1
            r3 = r10
            r1.<init>(r2, r3)
            r7 = r0
            r0 = r7
            r1 = r6
            org.bouncycastle.crypto.params.RSAKeyParameters r1 = r1.key
            java.math.BigInteger r1 = r1.getModulus()
            int r0 = r0.compareTo(r1)
            if (r0 >= 0) goto L5e
            r0 = r7
            return r0
        L5e:
            org.bouncycastle.crypto.DataLengthException r0 = new org.bouncycastle.crypto.DataLengthException
            r1 = r0
            java.lang.String r2 = "input too large for RSA cipher."
            r1.<init>(r2)
            throw r0
        L68:
            org.bouncycastle.crypto.DataLengthException r0 = new org.bouncycastle.crypto.DataLengthException
            r1 = r0
            java.lang.String r2 = "input too large for RSA cipher."
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.crypto.engines.RSACoreEngine.convertInput(byte[], int, int):java.math.BigInteger");
    }

    public byte[] convertOutput(BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (this.forEncryption) {
            if (byteArray[0] == 0 && byteArray.length > getOutputBlockSize()) {
                int length = byteArray.length - 1;
                byte[] bArr = new byte[length];
                System.arraycopy(byteArray, 1, bArr, 0, length);
                return bArr;
            } else if (byteArray.length < getOutputBlockSize()) {
                int outputBlockSize = getOutputBlockSize();
                byte[] bArr2 = new byte[outputBlockSize];
                System.arraycopy(byteArray, 0, bArr2, outputBlockSize - byteArray.length, byteArray.length);
                return bArr2;
            }
        } else if (byteArray[0] == 0) {
            int length2 = byteArray.length - 1;
            byte[] bArr3 = new byte[length2];
            System.arraycopy(byteArray, 1, bArr3, 0, length2);
            return bArr3;
        }
        return byteArray;
    }

    public int getInputBlockSize() {
        int bitLength = (this.key.getModulus().bitLength() + 7) / 8;
        int i = bitLength;
        if (this.forEncryption) {
            i = bitLength - 1;
        }
        return i;
    }

    public int getOutputBlockSize() {
        int bitLength = (this.key.getModulus().bitLength() + 7) / 8;
        return this.forEncryption ? bitLength : bitLength - 1;
    }

    public void init(boolean z, CipherParameters cipherParameters) {
        CipherParameters cipherParameters2 = cipherParameters;
        if (cipherParameters instanceof ParametersWithRandom) {
            cipherParameters2 = ((ParametersWithRandom) cipherParameters).getParameters();
        }
        this.key = (RSAKeyParameters) cipherParameters2;
        this.forEncryption = z;
    }

    public BigInteger processBlock(BigInteger bigInteger) {
        RSAKeyParameters rSAKeyParameters = this.key;
        if (rSAKeyParameters instanceof RSAPrivateCrtKeyParameters) {
            RSAPrivateCrtKeyParameters rSAPrivateCrtKeyParameters = (RSAPrivateCrtKeyParameters) rSAKeyParameters;
            BigInteger p = rSAPrivateCrtKeyParameters.getP();
            BigInteger q = rSAPrivateCrtKeyParameters.getQ();
            BigInteger dp = rSAPrivateCrtKeyParameters.getDP();
            BigInteger dq = rSAPrivateCrtKeyParameters.getDQ();
            BigInteger qInv = rSAPrivateCrtKeyParameters.getQInv();
            BigInteger modPow = bigInteger.remainder(p).modPow(dp, p);
            BigInteger modPow2 = bigInteger.remainder(q).modPow(dq, q);
            return modPow.subtract(modPow2).multiply(qInv).mod(p).multiply(q).add(modPow2);
        }
        return bigInteger.modPow(rSAKeyParameters.getExponent(), this.key.getModulus());
    }
}
