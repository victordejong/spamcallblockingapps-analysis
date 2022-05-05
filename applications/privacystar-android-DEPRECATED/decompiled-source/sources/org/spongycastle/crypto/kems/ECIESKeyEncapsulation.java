package org.spongycastle.crypto.kems;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DerivationFunction;
import org.spongycastle.crypto.KeyEncapsulation;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECKeyParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.crypto.params.KDFParameters;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.math.p032ec.ECCurve;
import org.spongycastle.math.p032ec.ECMultiplier;
import org.spongycastle.math.p032ec.ECPoint;
import org.spongycastle.math.p032ec.FixedPointCombMultiplier;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.BigIntegers;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/kems/ECIESKeyEncapsulation.class */
public class ECIESKeyEncapsulation implements KeyEncapsulation {
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private boolean CofactorMode;
    private boolean OldCofactorMode;
    private boolean SingleHashMode;
    private DerivationFunction kdf;
    private ECKeyParameters key;
    private SecureRandom rnd;

    public ECIESKeyEncapsulation(DerivationFunction derivationFunction, SecureRandom secureRandom) {
        this.kdf = derivationFunction;
        this.rnd = secureRandom;
        this.CofactorMode = false;
        this.OldCofactorMode = false;
        this.SingleHashMode = false;
    }

    public ECIESKeyEncapsulation(DerivationFunction derivationFunction, SecureRandom secureRandom, boolean z, boolean z2, boolean z3) {
        this.kdf = derivationFunction;
        this.rnd = secureRandom;
        this.CofactorMode = z;
        this.OldCofactorMode = z2;
        this.SingleHashMode = z3;
    }

    protected ECMultiplier createBasePointMultiplier() {
        return new FixedPointCombMultiplier();
    }

    public CipherParameters decrypt(byte[] bArr, int i) {
        return decrypt(bArr, 0, bArr.length, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x005e, code lost:
        if (r6.OldCofactorMode != false) goto L_0x0061;
     */
    @Override // org.spongycastle.crypto.KeyEncapsulation
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.spongycastle.crypto.CipherParameters decrypt(byte[] r7, int r8, int r9, int r10) throws java.lang.IllegalArgumentException {
        /*
            r6 = this;
            r0 = r6
            org.spongycastle.crypto.params.ECKeyParameters r0 = r0.key
            boolean r0 = r0 instanceof org.spongycastle.crypto.params.ECPrivateKeyParameters
            if (r0 != 0) goto L_0x0014
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "Private key required for encryption"
            r1.<init>(r2)
            throw r0
        L_0x0014:
            r0 = r6
            org.spongycastle.crypto.params.ECKeyParameters r0 = r0.key
            org.spongycastle.crypto.params.ECPrivateKeyParameters r0 = (org.spongycastle.crypto.params.ECPrivateKeyParameters) r0
            r11 = r0
            r0 = r11
            org.spongycastle.crypto.params.ECDomainParameters r0 = r0.getParameters()
            r12 = r0
            r0 = r12
            org.spongycastle.math.ec.ECCurve r0 = r0.getCurve()
            r13 = r0
            r0 = r12
            java.math.BigInteger r0 = r0.getN()
            r14 = r0
            r0 = r12
            java.math.BigInteger r0 = r0.getH()
            r15 = r0
            r0 = r9
            byte[] r0 = new byte[r0]
            r12 = r0
            r0 = r7
            r1 = r8
            r2 = r12
            r3 = 0
            r4 = r9
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
            r0 = r13
            r1 = r12
            org.spongycastle.math.ec.ECPoint r0 = r0.decodePoint(r1)
            r13 = r0
            r0 = r6
            boolean r0 = r0.CofactorMode
            if (r0 != 0) goto L_0x0061
            r0 = r13
            r7 = r0
            r0 = r6
            boolean r0 = r0.OldCofactorMode
            if (r0 == 0) goto L_0x0069
        L_0x0061:
            r0 = r13
            r1 = r15
            org.spongycastle.math.ec.ECPoint r0 = r0.multiply(r1)
            r7 = r0
        L_0x0069:
            r0 = r11
            java.math.BigInteger r0 = r0.getD()
            r11 = r0
            r0 = r11
            r13 = r0
            r0 = r6
            boolean r0 = r0.CofactorMode
            if (r0 == 0) goto L_0x008e
            r0 = r11
            r1 = r15
            r2 = r14
            java.math.BigInteger r1 = r1.modInverse(r2)
            java.math.BigInteger r0 = r0.multiply(r1)
            r1 = r14
            java.math.BigInteger r0 = r0.mod(r1)
            r13 = r0
        L_0x008e:
            r0 = r6
            r1 = r10
            r2 = r12
            r3 = r7
            r4 = r13
            org.spongycastle.math.ec.ECPoint r3 = r3.multiply(r4)
            org.spongycastle.math.ec.ECPoint r3 = r3.normalize()
            org.spongycastle.math.ec.ECFieldElement r3 = r3.getAffineXCoord()
            byte[] r3 = r3.getEncoded()
            org.spongycastle.crypto.params.KeyParameter r0 = r0.deriveKey(r1, r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.crypto.kems.ECIESKeyEncapsulation.decrypt(byte[], int, int, int):org.spongycastle.crypto.CipherParameters");
    }

    protected KeyParameter deriveKey(int i, byte[] bArr, byte[] bArr2) {
        byte[] bArr3;
        if (!this.SingleHashMode) {
            bArr3 = Arrays.concatenate(bArr, bArr2);
            Arrays.fill(bArr2, (byte) 0);
        } else {
            bArr3 = bArr2;
        }
        try {
            this.kdf.init(new KDFParameters(bArr3, null));
            byte[] bArr4 = new byte[i];
            this.kdf.generateBytes(bArr4, 0, bArr4.length);
            return new KeyParameter(bArr4);
        } finally {
            Arrays.fill(bArr3, (byte) 0);
        }
    }

    public CipherParameters encrypt(byte[] bArr, int i) {
        return encrypt(bArr, 0, i);
    }

    @Override // org.spongycastle.crypto.KeyEncapsulation
    public CipherParameters encrypt(byte[] bArr, int i, int i2) throws IllegalArgumentException {
        if (!(this.key instanceof ECPublicKeyParameters)) {
            throw new IllegalArgumentException("Public key required for encryption");
        }
        ECPublicKeyParameters eCPublicKeyParameters = (ECPublicKeyParameters) this.key;
        ECDomainParameters parameters = eCPublicKeyParameters.getParameters();
        ECCurve curve = parameters.getCurve();
        BigInteger n = parameters.getN();
        BigInteger h = parameters.getH();
        BigInteger createRandomInRange = BigIntegers.createRandomInRange(ONE, n, this.rnd);
        ECPoint[] eCPointArr = {createBasePointMultiplier().multiply(parameters.getG(), createRandomInRange), eCPublicKeyParameters.getQ().multiply(this.CofactorMode ? createRandomInRange.multiply(h).mod(n) : createRandomInRange)};
        curve.normalizeAll(eCPointArr);
        ECPoint eCPoint = eCPointArr[0];
        ECPoint eCPoint2 = eCPointArr[1];
        byte[] encoded = eCPoint.getEncoded(false);
        System.arraycopy(encoded, 0, bArr, i, encoded.length);
        return deriveKey(i2, encoded, eCPoint2.getAffineXCoord().getEncoded());
    }

    @Override // org.spongycastle.crypto.KeyEncapsulation
    public void init(CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof ECKeyParameters)) {
            throw new IllegalArgumentException("EC key required");
        }
        this.key = (ECKeyParameters) cipherParameters;
    }
}
