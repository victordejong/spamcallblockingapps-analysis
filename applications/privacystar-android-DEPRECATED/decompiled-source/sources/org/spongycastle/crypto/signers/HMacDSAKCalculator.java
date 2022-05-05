package org.spongycastle.crypto.signers;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.macs.HMac;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.BigIntegers;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/signers/HMacDSAKCalculator.class */
public class HMacDSAKCalculator implements DSAKCalculator {
    private static final BigInteger ZERO = BigInteger.valueOf(0);

    /* renamed from: K */
    private final byte[] f1462K;

    /* renamed from: V */
    private final byte[] f1463V;
    private final HMac hMac;

    /* renamed from: n */
    private BigInteger f1464n;

    public HMacDSAKCalculator(Digest digest) {
        this.hMac = new HMac(digest);
        this.f1463V = new byte[this.hMac.getMacSize()];
        this.f1462K = new byte[this.hMac.getMacSize()];
    }

    private BigInteger bitsToInt(byte[] bArr) {
        BigInteger bigInteger = new BigInteger(1, bArr);
        BigInteger bigInteger2 = bigInteger;
        if (bArr.length * 8 > this.f1464n.bitLength()) {
            bigInteger2 = bigInteger.shiftRight((bArr.length * 8) - this.f1464n.bitLength());
        }
        return bigInteger2;
    }

    @Override // org.spongycastle.crypto.signers.DSAKCalculator
    public void init(BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        this.f1464n = bigInteger;
        Arrays.fill(this.f1463V, (byte) 1);
        Arrays.fill(this.f1462K, (byte) 0);
        byte[] bArr2 = new byte[(bigInteger.bitLength() + 7) / 8];
        byte[] asUnsignedByteArray = BigIntegers.asUnsignedByteArray(bigInteger2);
        System.arraycopy(asUnsignedByteArray, 0, bArr2, bArr2.length - asUnsignedByteArray.length, asUnsignedByteArray.length);
        byte[] bArr3 = new byte[(bigInteger.bitLength() + 7) / 8];
        BigInteger bitsToInt = bitsToInt(bArr);
        BigInteger bigInteger3 = bitsToInt;
        if (bitsToInt.compareTo(bigInteger) >= 0) {
            bigInteger3 = bitsToInt.subtract(bigInteger);
        }
        byte[] asUnsignedByteArray2 = BigIntegers.asUnsignedByteArray(bigInteger3);
        System.arraycopy(asUnsignedByteArray2, 0, bArr3, bArr3.length - asUnsignedByteArray2.length, asUnsignedByteArray2.length);
        this.hMac.init(new KeyParameter(this.f1462K));
        this.hMac.update(this.f1463V, 0, this.f1463V.length);
        this.hMac.update((byte) 0);
        this.hMac.update(bArr2, 0, bArr2.length);
        this.hMac.update(bArr3, 0, bArr3.length);
        this.hMac.doFinal(this.f1462K, 0);
        this.hMac.init(new KeyParameter(this.f1462K));
        this.hMac.update(this.f1463V, 0, this.f1463V.length);
        this.hMac.doFinal(this.f1463V, 0);
        this.hMac.update(this.f1463V, 0, this.f1463V.length);
        this.hMac.update((byte) 1);
        this.hMac.update(bArr2, 0, bArr2.length);
        this.hMac.update(bArr3, 0, bArr3.length);
        this.hMac.doFinal(this.f1462K, 0);
        this.hMac.init(new KeyParameter(this.f1462K));
        this.hMac.update(this.f1463V, 0, this.f1463V.length);
        this.hMac.doFinal(this.f1463V, 0);
    }

    @Override // org.spongycastle.crypto.signers.DSAKCalculator
    public void init(BigInteger bigInteger, SecureRandom secureRandom) {
        throw new IllegalStateException("Operation not supported");
    }

    @Override // org.spongycastle.crypto.signers.DSAKCalculator
    public boolean isDeterministic() {
        return true;
    }

    @Override // org.spongycastle.crypto.signers.DSAKCalculator
    public BigInteger nextK() {
        byte[] bArr = new byte[(this.f1464n.bitLength() + 7) / 8];
        while (true) {
            int i = 0;
            while (i < bArr.length) {
                this.hMac.update(this.f1463V, 0, this.f1463V.length);
                this.hMac.doFinal(this.f1463V, 0);
                int min = Math.min(bArr.length - i, this.f1463V.length);
                System.arraycopy(this.f1463V, 0, bArr, i, min);
                i += min;
            }
            BigInteger bitsToInt = bitsToInt(bArr);
            if (bitsToInt.compareTo(ZERO) > 0 && bitsToInt.compareTo(this.f1464n) < 0) {
                return bitsToInt;
            }
            this.hMac.update(this.f1463V, 0, this.f1463V.length);
            this.hMac.update((byte) 0);
            this.hMac.doFinal(this.f1462K, 0);
            this.hMac.init(new KeyParameter(this.f1462K));
            this.hMac.update(this.f1463V, 0, this.f1463V.length);
            this.hMac.doFinal(this.f1463V, 0);
        }
    }
}
