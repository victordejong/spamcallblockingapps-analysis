package org.spongycastle.crypto.engines;

import java.math.BigInteger;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.crypto.params.RSAKeyParameters;
import org.spongycastle.crypto.params.RSAPrivateCrtKeyParameters;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/engines/RSACoreEngine.class */
class RSACoreEngine {
    private boolean forEncryption;
    private RSAKeyParameters key;

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0039, code lost:
        if (r9 != r7.length) goto L_0x003c;
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
            if (r0 <= r1) goto L_0x0014
            org.spongycastle.crypto.DataLengthException r0 = new org.spongycastle.crypto.DataLengthException
            r1 = r0
            java.lang.String r2 = "input too large for RSA cipher."
            r1.<init>(r2)
            throw r0
        L_0x0014:
            r0 = r9
            r1 = r6
            int r1 = r1.getInputBlockSize()
            r2 = 1
            int r1 = r1 + r2
            if (r0 != r1) goto L_0x002f
            r0 = r6
            boolean r0 = r0.forEncryption
            if (r0 != 0) goto L_0x002f
            org.spongycastle.crypto.DataLengthException r0 = new org.spongycastle.crypto.DataLengthException
            r1 = r0
            java.lang.String r2 = "input too large for RSA cipher."
            r1.<init>(r2)
            throw r0
        L_0x002f:
            r0 = r8
            if (r0 != 0) goto L_0x003c
            r0 = r7
            r10 = r0
            r0 = r9
            r1 = r7
            int r1 = r1.length
            if (r0 == r1) goto L_0x004a
        L_0x003c:
            r0 = r9
            byte[] r0 = new byte[r0]
            r10 = r0
            r0 = r7
            r1 = r8
            r2 = r10
            r3 = 0
            r4 = r9
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
        L_0x004a:
            java.math.BigInteger r0 = new java.math.BigInteger
            r1 = r0
            r2 = 1
            r3 = r10
            r1.<init>(r2, r3)
            r7 = r0
            r0 = r7
            r1 = r6
            org.spongycastle.crypto.params.RSAKeyParameters r1 = r1.key
            java.math.BigInteger r1 = r1.getModulus()
            int r0 = r0.compareTo(r1)
            if (r0 < 0) goto L_0x006d
            org.spongycastle.crypto.DataLengthException r0 = new org.spongycastle.crypto.DataLengthException
            r1 = r0
            java.lang.String r2 = "input too large for RSA cipher."
            r1.<init>(r2)
            throw r0
        L_0x006d:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.crypto.engines.RSACoreEngine.convertInput(byte[], int, int):java.math.BigInteger");
    }

    public byte[] convertOutput(BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (this.forEncryption) {
            if (byteArray[0] == 0 && byteArray.length > getOutputBlockSize()) {
                byte[] bArr = new byte[byteArray.length - 1];
                System.arraycopy(byteArray, 1, bArr, 0, bArr.length);
                return bArr;
            } else if (byteArray.length < getOutputBlockSize()) {
                byte[] bArr2 = new byte[getOutputBlockSize()];
                System.arraycopy(byteArray, 0, bArr2, bArr2.length - byteArray.length, byteArray.length);
                return bArr2;
            }
        } else if (byteArray[0] == 0) {
            byte[] bArr3 = new byte[byteArray.length - 1];
            System.arraycopy(byteArray, 1, bArr3, 0, bArr3.length);
            return bArr3;
        }
        return byteArray;
    }

    public int getInputBlockSize() {
        int bitLength = this.key.getModulus().bitLength();
        return this.forEncryption ? ((bitLength + 7) / 8) - 1 : (bitLength + 7) / 8;
    }

    public int getOutputBlockSize() {
        int bitLength = this.key.getModulus().bitLength();
        return this.forEncryption ? (bitLength + 7) / 8 : ((bitLength + 7) / 8) - 1;
    }

    public void init(boolean z, CipherParameters cipherParameters) {
        if (cipherParameters instanceof ParametersWithRandom) {
            this.key = (RSAKeyParameters) ((ParametersWithRandom) cipherParameters).getParameters();
        } else {
            this.key = (RSAKeyParameters) cipherParameters;
        }
        this.forEncryption = z;
    }

    public BigInteger processBlock(BigInteger bigInteger) {
        if (!(this.key instanceof RSAPrivateCrtKeyParameters)) {
            return bigInteger.modPow(this.key.getExponent(), this.key.getModulus());
        }
        RSAPrivateCrtKeyParameters rSAPrivateCrtKeyParameters = (RSAPrivateCrtKeyParameters) this.key;
        BigInteger p = rSAPrivateCrtKeyParameters.getP();
        BigInteger q = rSAPrivateCrtKeyParameters.getQ();
        BigInteger dp = rSAPrivateCrtKeyParameters.getDP();
        BigInteger dq = rSAPrivateCrtKeyParameters.getDQ();
        BigInteger qInv = rSAPrivateCrtKeyParameters.getQInv();
        BigInteger modPow = bigInteger.remainder(p).modPow(dp, p);
        BigInteger modPow2 = bigInteger.remainder(q).modPow(dq, q);
        return modPow.subtract(modPow2).multiply(qInv).mod(p).multiply(q).add(modPow2);
    }
}
