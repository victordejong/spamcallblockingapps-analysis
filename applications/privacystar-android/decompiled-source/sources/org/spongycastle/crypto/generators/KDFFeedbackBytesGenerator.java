package org.spongycastle.crypto.generators;

import java.math.BigInteger;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.DerivationParameters;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.MacDerivationFunction;
import org.spongycastle.crypto.params.KDFFeedbackParameters;
import org.spongycastle.crypto.params.KeyParameter;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/generators/KDFFeedbackBytesGenerator.class */
public class KDFFeedbackBytesGenerator implements MacDerivationFunction {
    private static final BigInteger INTEGER_MAX = BigInteger.valueOf(2147483647L);
    private static final BigInteger TWO = BigInteger.valueOf(2);
    private byte[] fixedInputData;
    private int generatedBytes;

    /* renamed from: h */
    private final int f1304h;
    private byte[] ios;

    /* renamed from: iv */
    private byte[] f1305iv;

    /* renamed from: k */
    private byte[] f1306k;
    private int maxSizeExcl;
    private final Mac prf;
    private boolean useCounter;

    public KDFFeedbackBytesGenerator(Mac mac) {
        this.prf = mac;
        this.f1304h = mac.getMacSize();
        this.f1306k = new byte[this.f1304h];
    }

    private void generateNext() {
        if (this.generatedBytes == 0) {
            this.prf.update(this.f1305iv, 0, this.f1305iv.length);
        } else {
            this.prf.update(this.f1306k, 0, this.f1306k.length);
        }
        if (this.useCounter) {
            int i = (this.generatedBytes / this.f1304h) + 1;
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
            this.prf.update(this.ios, 0, this.ios.length);
        }
        this.prf.update(this.fixedInputData, 0, this.fixedInputData.length);
        this.prf.doFinal(this.f1306k, 0);
    }

    @Override // org.spongycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int i, int i2) throws DataLengthException, IllegalArgumentException {
        int i3 = this.generatedBytes + i2;
        if (i3 < 0 || i3 >= this.maxSizeExcl) {
            throw new DataLengthException("Current KDFCTR may only be used for " + this.maxSizeExcl + " bytes");
        }
        if (this.generatedBytes % this.f1304h == 0) {
            generateNext();
        }
        int i4 = this.generatedBytes;
        int i5 = this.f1304h;
        int min = Math.min(this.f1304h - (this.generatedBytes % this.f1304h), i2);
        System.arraycopy(this.f1306k, i4 % i5, bArr, i, min);
        this.generatedBytes += min;
        int i6 = i2;
        while (true) {
            int i7 = i6 - min;
            i += min;
            if (i7 <= 0) {
                return i2;
            }
            generateNext();
            min = Math.min(this.f1304h, i7);
            System.arraycopy(this.f1306k, 0, bArr, i, min);
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
        if (!(derivationParameters instanceof KDFFeedbackParameters)) {
            throw new IllegalArgumentException("Wrong type of arguments given");
        }
        KDFFeedbackParameters kDFFeedbackParameters = (KDFFeedbackParameters) derivationParameters;
        this.prf.init(new KeyParameter(kDFFeedbackParameters.getKI()));
        this.fixedInputData = kDFFeedbackParameters.getFixedInputData();
        int r = kDFFeedbackParameters.getR();
        this.ios = new byte[r / 8];
        int i = Integer.MAX_VALUE;
        if (kDFFeedbackParameters.useCounter()) {
            BigInteger multiply = TWO.pow(r).multiply(BigInteger.valueOf(this.f1304h));
            if (multiply.compareTo(INTEGER_MAX) != 1) {
                i = multiply.intValue();
            }
            this.maxSizeExcl = i;
        } else {
            this.maxSizeExcl = Integer.MAX_VALUE;
        }
        this.f1305iv = kDFFeedbackParameters.getIV();
        this.useCounter = kDFFeedbackParameters.useCounter();
        this.generatedBytes = 0;
    }
}
