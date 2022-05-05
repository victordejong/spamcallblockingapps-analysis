package org.spongycastle.crypto.generators;

import java.math.BigInteger;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.DerivationParameters;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.MacDerivationFunction;
import org.spongycastle.crypto.params.KDFCounterParameters;
import org.spongycastle.crypto.params.KeyParameter;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/generators/KDFCounterBytesGenerator.class */
public class KDFCounterBytesGenerator implements MacDerivationFunction {
    private static final BigInteger INTEGER_MAX = BigInteger.valueOf(2147483647L);
    private static final BigInteger TWO = BigInteger.valueOf(2);
    private byte[] fixedInputDataCtrPrefix;
    private byte[] fixedInputData_afterCtr;
    private int generatedBytes;

    /* renamed from: h */
    private final int f1299h;
    private byte[] ios;

    /* renamed from: k */
    private byte[] f1300k;
    private int maxSizeExcl;
    private final Mac prf;

    public KDFCounterBytesGenerator(Mac mac) {
        this.prf = mac;
        this.f1299h = mac.getMacSize();
        this.f1300k = new byte[this.f1299h];
    }

    private void generateNext() {
        int i = (this.generatedBytes / this.f1299h) + 1;
        switch (this.ios.length) {
            case 1:
                break;
            case 4:
                this.ios[0] = (byte) (i >>> 24);
            case 3:
                this.ios[this.ios.length - 3] = (byte) (i >>> 16);
            case 2:
                this.ios[this.ios.length - 2] = (byte) (i >>> 8);
                break;
            default:
                throw new IllegalStateException("Unsupported size of counter i");
        }
        this.ios[this.ios.length - 1] = (byte) i;
        this.prf.update(this.fixedInputDataCtrPrefix, 0, this.fixedInputDataCtrPrefix.length);
        this.prf.update(this.ios, 0, this.ios.length);
        this.prf.update(this.fixedInputData_afterCtr, 0, this.fixedInputData_afterCtr.length);
        this.prf.doFinal(this.f1300k, 0);
    }

    @Override // org.spongycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int i, int i2) throws DataLengthException, IllegalArgumentException {
        int i3 = this.generatedBytes + i2;
        if (i3 < 0 || i3 >= this.maxSizeExcl) {
            throw new DataLengthException("Current KDFCTR may only be used for " + this.maxSizeExcl + " bytes");
        }
        if (this.generatedBytes % this.f1299h == 0) {
            generateNext();
        }
        int i4 = this.generatedBytes;
        int i5 = this.f1299h;
        int min = Math.min(this.f1299h - (this.generatedBytes % this.f1299h), i2);
        System.arraycopy(this.f1300k, i4 % i5, bArr, i, min);
        this.generatedBytes += min;
        int i6 = i2;
        while (true) {
            int i7 = i6 - min;
            i += min;
            if (i7 <= 0) {
                return i2;
            }
            generateNext();
            min = Math.min(this.f1299h, i7);
            System.arraycopy(this.f1300k, 0, bArr, i, min);
            this.generatedBytes += min;
            i6 = i7;
        }
    }

    @Override // org.spongycastle.crypto.MacDerivationFunction
    public Mac getMac() {
        return this.prf;
    }

    @Override // org.spongycastle.crypto.DerivationFunction
    public void init(DerivationParameters derivationParameters) {
        if (!(derivationParameters instanceof KDFCounterParameters)) {
            throw new IllegalArgumentException("Wrong type of arguments given");
        }
        KDFCounterParameters kDFCounterParameters = (KDFCounterParameters) derivationParameters;
        this.prf.init(new KeyParameter(kDFCounterParameters.getKI()));
        this.fixedInputDataCtrPrefix = kDFCounterParameters.getFixedInputDataCounterPrefix();
        this.fixedInputData_afterCtr = kDFCounterParameters.getFixedInputDataCounterSuffix();
        int r = kDFCounterParameters.getR();
        this.ios = new byte[r / 8];
        BigInteger multiply = TWO.pow(r).multiply(BigInteger.valueOf(this.f1299h));
        this.maxSizeExcl = multiply.compareTo(INTEGER_MAX) == 1 ? Integer.MAX_VALUE : multiply.intValue();
        this.generatedBytes = 0;
    }
}
