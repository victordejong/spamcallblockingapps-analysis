package org.spongycastle.crypto.prng.drbg;

import java.math.BigInteger;
import org.spongycastle.asn1.nist.NISTNamedCurves;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.prng.EntropySource;
import org.spongycastle.math.p032ec.ECCurve;
import org.spongycastle.math.p032ec.ECMultiplier;
import org.spongycastle.math.p032ec.ECPoint;
import org.spongycastle.math.p032ec.FixedPointCombMultiplier;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.BigIntegers;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/prng/drbg/DualECSP800DRBG.class */
public class DualECSP800DRBG implements SP80090DRBG {
    private static final int MAX_ADDITIONAL_INPUT = 4096;
    private static final int MAX_ENTROPY_LENGTH = 4096;
    private static final int MAX_PERSONALIZATION_STRING = 4096;
    private static final long RESEED_MAX = 2147483648L;

    /* renamed from: _P */
    private ECPoint f1455_P;

    /* renamed from: _Q */
    private ECPoint f1456_Q;
    private ECCurve.C2401Fp _curve;
    private Digest _digest;
    private EntropySource _entropySource;
    private ECMultiplier _fixedPointMultiplier;
    private int _outlen;
    private long _reseedCounter;

    /* renamed from: _s */
    private byte[] f1457_s;
    private int _sLength;
    private int _securityStrength;
    private int _seedlen;
    private static final BigInteger p256_Px = new BigInteger("6b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296", 16);
    private static final BigInteger p256_Py = new BigInteger("4fe342e2fe1a7f9b8ee7eb4a7c0f9e162bce33576b315ececbb6406837bf51f5", 16);
    private static final BigInteger p256_Qx = new BigInteger("c97445f45cdef9f0d3e05e1e585fc297235b82b5be8ff3efca67c59852018192", 16);
    private static final BigInteger p256_Qy = new BigInteger("b28ef557ba31dfcbdd21ac46e2a91e3c304f44cb87058ada2cb815151e610046", 16);
    private static final BigInteger p384_Px = new BigInteger("aa87ca22be8b05378eb1c71ef320ad746e1d3b628ba79b9859f741e082542a385502f25dbf55296c3a545e3872760ab7", 16);
    private static final BigInteger p384_Py = new BigInteger("3617de4a96262c6f5d9e98bf9292dc29f8f41dbd289a147ce9da3113b5f0b8c00a60b1ce1d7e819d7a431d7c90ea0e5f", 16);
    private static final BigInteger p384_Qx = new BigInteger("8e722de3125bddb05580164bfe20b8b432216a62926c57502ceede31c47816edd1e89769124179d0b695106428815065", 16);
    private static final BigInteger p384_Qy = new BigInteger("023b1660dd701d0839fd45eec36f9ee7b32e13b315dc02610aa1b636e346df671f790f84c5e09b05674dbb7e45c803dd", 16);
    private static final BigInteger p521_Px = new BigInteger("c6858e06b70404e9cd9e3ecb662395b4429c648139053fb521f828af606b4d3dbaa14b5e77efe75928fe1dc127a2ffa8de3348b3c1856a429bf97e7e31c2e5bd66", 16);
    private static final BigInteger p521_Py = new BigInteger("11839296a789a3bc0045c8a5fb42c7d1bd998f54449579b446817afbd17273e662c97ee72995ef42640c550b9013fad0761353c7086a272c24088be94769fd16650", 16);
    private static final BigInteger p521_Qx = new BigInteger("1b9fa3e518d683c6b65763694ac8efbaec6fab44f2276171a42726507dd08add4c3b3f4c1ebc5b1222ddba077f722943b24c3edfa0f85fe24d0c8c01591f0be6f63", 16);
    private static final BigInteger p521_Qy = new BigInteger("1f3bdba585295d9a1110d1df1f9430ef8442c5018976ff3437ef91b81dc0b8132c8d5c39c32d0e004a3092b7d327c0e7a4d26d2c7b69b58f9066652911e457779de", 16);
    private static final DualECPoints[] nistPoints = new DualECPoints[3];

    static {
        ECCurve.C2401Fp fp = (ECCurve.C2401Fp) NISTNamedCurves.getByName("P-256").getCurve();
        nistPoints[0] = new DualECPoints(128, fp.createPoint(p256_Px, p256_Py), fp.createPoint(p256_Qx, p256_Qy), 1);
        ECCurve.C2401Fp fp2 = (ECCurve.C2401Fp) NISTNamedCurves.getByName("P-384").getCurve();
        nistPoints[1] = new DualECPoints(192, fp2.createPoint(p384_Px, p384_Py), fp2.createPoint(p384_Qx, p384_Qy), 1);
        ECCurve.C2401Fp fp3 = (ECCurve.C2401Fp) NISTNamedCurves.getByName("P-521").getCurve();
        nistPoints[2] = new DualECPoints(256, fp3.createPoint(p521_Px, p521_Py), fp3.createPoint(p521_Qx, p521_Qy), 1);
    }

    public DualECSP800DRBG(Digest digest, int i, EntropySource entropySource, byte[] bArr, byte[] bArr2) {
        this(nistPoints, digest, i, entropySource, bArr, bArr2);
    }

    public DualECSP800DRBG(DualECPoints[] dualECPointsArr, Digest digest, int i, EntropySource entropySource, byte[] bArr, byte[] bArr2) {
        this._fixedPointMultiplier = new FixedPointCombMultiplier();
        this._digest = digest;
        this._entropySource = entropySource;
        this._securityStrength = i;
        if (Utils.isTooLarge(bArr, 512)) {
            throw new IllegalArgumentException("Personalization string too large");
        } else if (entropySource.entropySize() < i || entropySource.entropySize() > 4096) {
            throw new IllegalArgumentException("EntropySource must provide between " + i + " and 4096 bits");
        } else {
            byte[] concatenate = Arrays.concatenate(getEntropy(), bArr2, bArr);
            int i2 = 0;
            while (true) {
                if (i2 == dualECPointsArr.length) {
                    break;
                } else if (i > dualECPointsArr[i2].getSecurityStrength()) {
                    i2++;
                } else if (Utils.getMaxSecurityStrength(digest) < dualECPointsArr[i2].getSecurityStrength()) {
                    throw new IllegalArgumentException("Requested security strength is not supported by digest");
                } else {
                    this._seedlen = dualECPointsArr[i2].getSeedLen();
                    this._outlen = dualECPointsArr[i2].getMaxOutlen() / 8;
                    this.f1455_P = dualECPointsArr[i2].getP();
                    this.f1456_Q = dualECPointsArr[i2].getQ();
                }
            }
            if (this.f1455_P == null) {
                throw new IllegalArgumentException("security strength cannot be greater than 256 bits");
            }
            this.f1457_s = Utils.hash_df(this._digest, concatenate, this._seedlen);
            this._sLength = this.f1457_s.length;
            this._reseedCounter = 0L;
        }
    }

    private byte[] getEntropy() {
        byte[] entropy = this._entropySource.getEntropy();
        if (entropy.length >= (this._securityStrength + 7) / 8) {
            return entropy;
        }
        throw new IllegalStateException("Insufficient entropy provided by entropy source");
    }

    private BigInteger getScalarMultipleXCoord(ECPoint eCPoint, BigInteger bigInteger) {
        return this._fixedPointMultiplier.multiply(eCPoint, bigInteger).normalize().getAffineXCoord().toBigInteger();
    }

    private byte[] pad8(byte[] bArr, int i) {
        int i2 = i % 8;
        if (i2 == 0) {
            return bArr;
        }
        int i3 = 8 - i2;
        int i4 = 0;
        int length = bArr.length - 1;
        while (length >= 0) {
            int i5 = bArr[length] & 255;
            bArr[length] = (byte) ((i4 >> (8 - i3)) | (i5 << i3));
            length--;
            i4 = i5;
        }
        return bArr;
    }

    private byte[] xor(byte[] bArr, byte[] bArr2) {
        if (bArr2 == null) {
            return bArr;
        }
        byte[] bArr3 = new byte[bArr.length];
        for (int i = 0; i != bArr3.length; i++) {
            bArr3[i] = (byte) (bArr[i] ^ bArr2[i]);
        }
        return bArr3;
    }

    @Override // org.spongycastle.crypto.prng.drbg.SP80090DRBG
    public int generate(byte[] bArr, byte[] bArr2, boolean z) {
        int length = bArr.length;
        int length2 = bArr.length / this._outlen;
        if (Utils.isTooLarge(bArr2, 512)) {
            throw new IllegalArgumentException("Additional input too large");
        } else if (this._reseedCounter + length2 > RESEED_MAX) {
            return -1;
        } else {
            byte[] bArr3 = bArr2;
            if (z) {
                reseed(bArr2);
                bArr3 = null;
            }
            BigInteger bigInteger = bArr3 != null ? new BigInteger(1, xor(this.f1457_s, Utils.hash_df(this._digest, bArr3, this._seedlen))) : new BigInteger(1, this.f1457_s);
            Arrays.fill(bArr, (byte) 0);
            int i = 0;
            for (int i2 = 0; i2 < length2; i2++) {
                bigInteger = getScalarMultipleXCoord(this.f1455_P, bigInteger);
                byte[] byteArray = getScalarMultipleXCoord(this.f1456_Q, bigInteger).toByteArray();
                if (byteArray.length > this._outlen) {
                    System.arraycopy(byteArray, byteArray.length - this._outlen, bArr, i, this._outlen);
                } else {
                    System.arraycopy(byteArray, 0, bArr, (this._outlen - byteArray.length) + i, byteArray.length);
                }
                i += this._outlen;
                this._reseedCounter++;
            }
            BigInteger bigInteger2 = bigInteger;
            if (i < bArr.length) {
                bigInteger2 = getScalarMultipleXCoord(this.f1455_P, bigInteger);
                byte[] byteArray2 = getScalarMultipleXCoord(this.f1456_Q, bigInteger2).toByteArray();
                int length3 = bArr.length - i;
                if (byteArray2.length > this._outlen) {
                    System.arraycopy(byteArray2, byteArray2.length - this._outlen, bArr, i, length3);
                } else {
                    System.arraycopy(byteArray2, 0, bArr, i + (this._outlen - byteArray2.length), length3);
                }
                this._reseedCounter++;
            }
            this.f1457_s = BigIntegers.asUnsignedByteArray(this._sLength, getScalarMultipleXCoord(this.f1455_P, bigInteger2));
            return length * 8;
        }
    }

    @Override // org.spongycastle.crypto.prng.drbg.SP80090DRBG
    public int getBlockSize() {
        return this._outlen * 8;
    }

    @Override // org.spongycastle.crypto.prng.drbg.SP80090DRBG
    public void reseed(byte[] bArr) {
        if (Utils.isTooLarge(bArr, 512)) {
            throw new IllegalArgumentException("Additional input string too large");
        }
        this.f1457_s = Utils.hash_df(this._digest, Arrays.concatenate(pad8(this.f1457_s, this._seedlen), getEntropy(), bArr), this._seedlen);
        this._reseedCounter = 0L;
    }
}
