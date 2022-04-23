package org.spongycastle.math.p032ec;

import java.math.BigInteger;
import java.util.Hashtable;
import java.util.Random;
import org.spongycastle.math.field.FiniteField;
import org.spongycastle.math.field.FiniteFields;
import org.spongycastle.math.p032ec.ECFieldElement;
import org.spongycastle.math.p032ec.ECPoint;
import org.spongycastle.math.p032ec.endo.ECEndomorphism;
import org.spongycastle.math.p032ec.endo.GLVEndomorphism;
import org.spongycastle.util.BigIntegers;
import org.spongycastle.util.Integers;
/* renamed from: org.spongycastle.math.ec.ECCurve */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/ECCurve.class */
public abstract class ECCurve {
    public static final int COORD_AFFINE = 0;
    public static final int COORD_HOMOGENEOUS = 1;
    public static final int COORD_JACOBIAN = 2;
    public static final int COORD_JACOBIAN_CHUDNOVSKY = 3;
    public static final int COORD_JACOBIAN_MODIFIED = 4;
    public static final int COORD_LAMBDA_AFFINE = 5;
    public static final int COORD_LAMBDA_PROJECTIVE = 6;
    public static final int COORD_SKEWED = 7;

    /* renamed from: a */
    protected ECFieldElement f1536a;

    /* renamed from: b */
    protected ECFieldElement f1537b;
    protected BigInteger cofactor;
    protected FiniteField field;
    protected BigInteger order;
    protected int coord = 0;
    protected ECEndomorphism endomorphism = null;
    protected ECMultiplier multiplier = null;

    /* renamed from: org.spongycastle.math.ec.ECCurve$AbstractF2m */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/ECCurve$AbstractF2m.class */
    public static abstract class AbstractF2m extends ECCurve {

        /* renamed from: si */
        private BigInteger[] f1538si = null;

        /* JADX INFO: Access modifiers changed from: protected */
        public AbstractF2m(int i, int i2, int i3, int i4) {
            super(buildField(i, i2, i3, i4));
        }

        private static FiniteField buildField(int i, int i2, int i3, int i4) {
            if (i2 == 0) {
                throw new IllegalArgumentException("k1 must be > 0");
            } else if (i3 == 0) {
                if (i4 == 0) {
                    return FiniteFields.getBinaryExtensionField(new int[]{0, i2, i});
                }
                throw new IllegalArgumentException("k3 must be 0 if k2 == 0");
            } else if (i3 <= i2) {
                throw new IllegalArgumentException("k2 must be > k1");
            } else if (i4 > i3) {
                return FiniteFields.getBinaryExtensionField(new int[]{0, i2, i3, i4, i});
            } else {
                throw new IllegalArgumentException("k3 must be > k2");
            }
        }

        public static BigInteger inverse(int i, int[] iArr, BigInteger bigInteger) {
            return new LongArray(bigInteger).modInverse(i, iArr).toBigInteger();
        }

        private ECFieldElement solveQuadraticEquation(ECFieldElement eCFieldElement) {
            if (eCFieldElement.isZero()) {
                return eCFieldElement;
            }
            ECFieldElement fromBigInteger = fromBigInteger(ECConstants.ZERO);
            int fieldSize = getFieldSize();
            Random random = new Random();
            do {
                ECFieldElement fromBigInteger2 = fromBigInteger(new BigInteger(fieldSize, random));
                ECFieldElement eCFieldElement2 = eCFieldElement;
                for (int i = 1; i < fieldSize; i++) {
                    ECFieldElement square = eCFieldElement2.square();
                    fromBigInteger = fromBigInteger.square().add(square.multiply(fromBigInteger2));
                    eCFieldElement2 = square.add(eCFieldElement);
                }
                if (!eCFieldElement2.isZero()) {
                    return null;
                }
            } while (fromBigInteger.square().add(fromBigInteger).isZero());
            return fromBigInteger;
        }

        @Override // org.spongycastle.math.p032ec.ECCurve
        public ECPoint createPoint(BigInteger bigInteger, BigInteger bigInteger2, boolean z) {
            ECFieldElement eCFieldElement;
            ECFieldElement fromBigInteger = fromBigInteger(bigInteger);
            ECFieldElement fromBigInteger2 = fromBigInteger(bigInteger2);
            switch (getCoordinateSystem()) {
                case 5:
                case 6:
                    if (!fromBigInteger.isZero()) {
                        eCFieldElement = fromBigInteger2.divide(fromBigInteger).add(fromBigInteger);
                        break;
                    } else {
                        eCFieldElement = fromBigInteger2;
                        if (!fromBigInteger2.square().equals(getB())) {
                            throw new IllegalArgumentException();
                        }
                    }
                    break;
                default:
                    eCFieldElement = fromBigInteger2;
                    break;
            }
            return createRawPoint(fromBigInteger, eCFieldElement, z);
        }

        @Override // org.spongycastle.math.p032ec.ECCurve
        protected ECPoint decompressPoint(int i, BigInteger bigInteger) {
            ECFieldElement eCFieldElement;
            ECFieldElement fromBigInteger = fromBigInteger(bigInteger);
            if (fromBigInteger.isZero()) {
                eCFieldElement = getB().sqrt();
            } else {
                ECFieldElement solveQuadraticEquation = solveQuadraticEquation(fromBigInteger.square().invert().multiply(getB()).add(getA()).add(fromBigInteger));
                if (solveQuadraticEquation != null) {
                    ECFieldElement eCFieldElement2 = solveQuadraticEquation;
                    if (solveQuadraticEquation.testBitZero() != (i == 1)) {
                        eCFieldElement2 = solveQuadraticEquation.addOne();
                    }
                    switch (getCoordinateSystem()) {
                        case 5:
                        case 6:
                            eCFieldElement = eCFieldElement2.add(fromBigInteger);
                            break;
                        default:
                            eCFieldElement = eCFieldElement2.multiply(fromBigInteger);
                            break;
                    }
                } else {
                    eCFieldElement = null;
                }
            }
            if (eCFieldElement != null) {
                return createRawPoint(fromBigInteger, eCFieldElement, true);
            }
            throw new IllegalArgumentException("Invalid point compression");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public BigInteger[] getSi() {
            BigInteger[] bigIntegerArr;
            synchronized (this) {
                if (this.f1538si == null) {
                    this.f1538si = Tnaf.getSi(this);
                }
                bigIntegerArr = this.f1538si;
            }
            return bigIntegerArr;
        }

        public boolean isKoblitz() {
            return this.order != null && this.cofactor != null && this.f1537b.isOne() && (this.f1536a.isZero() || this.f1536a.isOne());
        }

        @Override // org.spongycastle.math.p032ec.ECCurve
        public boolean isValidFieldElement(BigInteger bigInteger) {
            return bigInteger != null && bigInteger.signum() >= 0 && bigInteger.bitLength() <= getFieldSize();
        }
    }

    /* renamed from: org.spongycastle.math.ec.ECCurve$AbstractFp */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/ECCurve$AbstractFp.class */
    public static abstract class AbstractFp extends ECCurve {
        /* JADX INFO: Access modifiers changed from: protected */
        public AbstractFp(BigInteger bigInteger) {
            super(FiniteFields.getPrimeField(bigInteger));
        }

        @Override // org.spongycastle.math.p032ec.ECCurve
        protected ECPoint decompressPoint(int i, BigInteger bigInteger) {
            ECFieldElement fromBigInteger = fromBigInteger(bigInteger);
            ECFieldElement sqrt = fromBigInteger.square().add(this.f1536a).multiply(fromBigInteger).add(this.f1537b).sqrt();
            if (sqrt == null) {
                throw new IllegalArgumentException("Invalid point compression");
            }
            ECFieldElement eCFieldElement = sqrt;
            if (sqrt.testBitZero() != (i == 1)) {
                eCFieldElement = sqrt.negate();
            }
            return createRawPoint(fromBigInteger, eCFieldElement, true);
        }

        @Override // org.spongycastle.math.p032ec.ECCurve
        public boolean isValidFieldElement(BigInteger bigInteger) {
            return bigInteger != null && bigInteger.signum() >= 0 && bigInteger.compareTo(getField().getCharacteristic()) < 0;
        }
    }

    /* renamed from: org.spongycastle.math.ec.ECCurve$Config */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/ECCurve$Config.class */
    public class Config {
        protected int coord;
        protected ECEndomorphism endomorphism;
        protected ECMultiplier multiplier;

        Config(int i, ECEndomorphism eCEndomorphism, ECMultiplier eCMultiplier) {
            this.coord = i;
            this.endomorphism = eCEndomorphism;
            this.multiplier = eCMultiplier;
        }

        public ECCurve create() {
            if (!ECCurve.this.supportsCoordinateSystem(this.coord)) {
                throw new IllegalStateException("unsupported coordinate system");
            }
            ECCurve cloneCurve = ECCurve.this.cloneCurve();
            if (cloneCurve == ECCurve.this) {
                throw new IllegalStateException("implementation returned current curve");
            }
            synchronized (cloneCurve) {
                cloneCurve.coord = this.coord;
                cloneCurve.endomorphism = this.endomorphism;
                cloneCurve.multiplier = this.multiplier;
            }
            return cloneCurve;
        }

        public Config setCoordinateSystem(int i) {
            this.coord = i;
            return this;
        }

        public Config setEndomorphism(ECEndomorphism eCEndomorphism) {
            this.endomorphism = eCEndomorphism;
            return this;
        }

        public Config setMultiplier(ECMultiplier eCMultiplier) {
            this.multiplier = eCMultiplier;
            return this;
        }
    }

    /* renamed from: org.spongycastle.math.ec.ECCurve$F2m */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/ECCurve$F2m.class */
    public static class F2m extends AbstractF2m {
        private static final int F2M_DEFAULT_COORDS = 6;
        private ECPoint.F2m infinity;

        /* renamed from: k1 */
        private int f1539k1;

        /* renamed from: k2 */
        private int f1540k2;

        /* renamed from: k3 */
        private int f1541k3;

        /* renamed from: m */
        private int f1542m;

        public F2m(int i, int i2, int i3, int i4, BigInteger bigInteger, BigInteger bigInteger2) {
            this(i, i2, i3, i4, bigInteger, bigInteger2, (BigInteger) null, (BigInteger) null);
        }

        public F2m(int i, int i2, int i3, int i4, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
            super(i, i2, i3, i4);
            this.f1542m = i;
            this.f1539k1 = i2;
            this.f1540k2 = i3;
            this.f1541k3 = i4;
            this.order = bigInteger3;
            this.cofactor = bigInteger4;
            this.infinity = new ECPoint.F2m(this, null, null);
            this.f1536a = fromBigInteger(bigInteger);
            this.f1537b = fromBigInteger(bigInteger2);
            this.coord = 6;
        }

        protected F2m(int i, int i2, int i3, int i4, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, BigInteger bigInteger, BigInteger bigInteger2) {
            super(i, i2, i3, i4);
            this.f1542m = i;
            this.f1539k1 = i2;
            this.f1540k2 = i3;
            this.f1541k3 = i4;
            this.order = bigInteger;
            this.cofactor = bigInteger2;
            this.infinity = new ECPoint.F2m(this, null, null);
            this.f1536a = eCFieldElement;
            this.f1537b = eCFieldElement2;
            this.coord = 6;
        }

        public F2m(int i, int i2, BigInteger bigInteger, BigInteger bigInteger2) {
            this(i, i2, 0, 0, bigInteger, bigInteger2, (BigInteger) null, (BigInteger) null);
        }

        public F2m(int i, int i2, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
            this(i, i2, 0, 0, bigInteger, bigInteger2, bigInteger3, bigInteger4);
        }

        @Override // org.spongycastle.math.p032ec.ECCurve
        protected ECCurve cloneCurve() {
            return new F2m(this.f1542m, this.f1539k1, this.f1540k2, this.f1541k3, this.f1536a, this.f1537b, this.order, this.cofactor);
        }

        @Override // org.spongycastle.math.p032ec.ECCurve
        protected ECMultiplier createDefaultMultiplier() {
            return isKoblitz() ? new WTauNafMultiplier() : super.createDefaultMultiplier();
        }

        @Override // org.spongycastle.math.p032ec.ECCurve
        protected ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
            return new ECPoint.F2m(this, eCFieldElement, eCFieldElement2, z);
        }

        @Override // org.spongycastle.math.p032ec.ECCurve
        protected ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
            return new ECPoint.F2m(this, eCFieldElement, eCFieldElement2, eCFieldElementArr, z);
        }

        @Override // org.spongycastle.math.p032ec.ECCurve
        public ECFieldElement fromBigInteger(BigInteger bigInteger) {
            return new ECFieldElement.F2m(this.f1542m, this.f1539k1, this.f1540k2, this.f1541k3, bigInteger);
        }

        @Override // org.spongycastle.math.p032ec.ECCurve
        public int getFieldSize() {
            return this.f1542m;
        }

        public BigInteger getH() {
            return this.cofactor;
        }

        @Override // org.spongycastle.math.p032ec.ECCurve
        public ECPoint getInfinity() {
            return this.infinity;
        }

        public int getK1() {
            return this.f1539k1;
        }

        public int getK2() {
            return this.f1540k2;
        }

        public int getK3() {
            return this.f1541k3;
        }

        public int getM() {
            return this.f1542m;
        }

        public BigInteger getN() {
            return this.order;
        }

        public boolean isTrinomial() {
            return this.f1540k2 == 0 && this.f1541k3 == 0;
        }

        @Override // org.spongycastle.math.p032ec.ECCurve
        public boolean supportsCoordinateSystem(int i) {
            if (i == 6) {
                return true;
            }
            switch (i) {
                case 0:
                case 1:
                    return true;
                default:
                    return false;
            }
        }
    }

    /* renamed from: org.spongycastle.math.ec.ECCurve$Fp */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/ECCurve$Fp.class */
    public static class C2401Fp extends AbstractFp {
        private static final int FP_DEFAULT_COORDS = 4;
        ECPoint.C2403Fp infinity;

        /* renamed from: q */
        BigInteger f1543q;

        /* renamed from: r */
        BigInteger f1544r;

        public C2401Fp(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
            this(bigInteger, bigInteger2, bigInteger3, null, null);
        }

        public C2401Fp(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5) {
            super(bigInteger);
            this.f1543q = bigInteger;
            this.f1544r = ECFieldElement.C2402Fp.calculateResidue(bigInteger);
            this.infinity = new ECPoint.C2403Fp(this, null, null);
            this.f1536a = fromBigInteger(bigInteger2);
            this.f1537b = fromBigInteger(bigInteger3);
            this.order = bigInteger4;
            this.cofactor = bigInteger5;
            this.coord = 4;
        }

        protected C2401Fp(BigInteger bigInteger, BigInteger bigInteger2, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
            this(bigInteger, bigInteger2, eCFieldElement, eCFieldElement2, null, null);
        }

        protected C2401Fp(BigInteger bigInteger, BigInteger bigInteger2, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, BigInteger bigInteger3, BigInteger bigInteger4) {
            super(bigInteger);
            this.f1543q = bigInteger;
            this.f1544r = bigInteger2;
            this.infinity = new ECPoint.C2403Fp(this, null, null);
            this.f1536a = eCFieldElement;
            this.f1537b = eCFieldElement2;
            this.order = bigInteger3;
            this.cofactor = bigInteger4;
            this.coord = 4;
        }

        @Override // org.spongycastle.math.p032ec.ECCurve
        protected ECCurve cloneCurve() {
            return new C2401Fp(this.f1543q, this.f1544r, this.f1536a, this.f1537b, this.order, this.cofactor);
        }

        @Override // org.spongycastle.math.p032ec.ECCurve
        protected ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
            return new ECPoint.C2403Fp(this, eCFieldElement, eCFieldElement2, z);
        }

        @Override // org.spongycastle.math.p032ec.ECCurve
        protected ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
            return new ECPoint.C2403Fp(this, eCFieldElement, eCFieldElement2, eCFieldElementArr, z);
        }

        @Override // org.spongycastle.math.p032ec.ECCurve
        public ECFieldElement fromBigInteger(BigInteger bigInteger) {
            return new ECFieldElement.C2402Fp(this.f1543q, this.f1544r, bigInteger);
        }

        @Override // org.spongycastle.math.p032ec.ECCurve
        public int getFieldSize() {
            return this.f1543q.bitLength();
        }

        @Override // org.spongycastle.math.p032ec.ECCurve
        public ECPoint getInfinity() {
            return this.infinity;
        }

        public BigInteger getQ() {
            return this.f1543q;
        }

        @Override // org.spongycastle.math.p032ec.ECCurve
        public ECPoint importPoint(ECPoint eCPoint) {
            if (this != eCPoint.getCurve() && getCoordinateSystem() == 2 && !eCPoint.isInfinity()) {
                switch (eCPoint.getCurve().getCoordinateSystem()) {
                    case 2:
                    case 3:
                    case 4:
                        return new ECPoint.C2403Fp(this, fromBigInteger(eCPoint.f1551x.toBigInteger()), fromBigInteger(eCPoint.f1552y.toBigInteger()), new ECFieldElement[]{fromBigInteger(eCPoint.f1553zs[0].toBigInteger())}, eCPoint.withCompression);
                }
            }
            return super.importPoint(eCPoint);
        }

        @Override // org.spongycastle.math.p032ec.ECCurve
        public boolean supportsCoordinateSystem(int i) {
            if (i == 4) {
                return true;
            }
            switch (i) {
                case 0:
                case 1:
                case 2:
                    return true;
                default:
                    return false;
            }
        }
    }

    protected ECCurve(FiniteField finiteField) {
        this.field = finiteField;
    }

    public static int[] getAllCoordinateSystems() {
        return new int[]{0, 1, 2, 3, 4, 5, 6, 7};
    }

    protected void checkPoint(ECPoint eCPoint) {
        if (eCPoint == null || this != eCPoint.getCurve()) {
            throw new IllegalArgumentException("'point' must be non-null and on this curve");
        }
    }

    protected void checkPoints(ECPoint[] eCPointArr) {
        checkPoints(eCPointArr, 0, eCPointArr.length);
    }

    protected void checkPoints(ECPoint[] eCPointArr, int i, int i2) {
        if (eCPointArr == null) {
            throw new IllegalArgumentException("'points' cannot be null");
        } else if (i < 0 || i2 < 0 || i > eCPointArr.length - i2) {
            throw new IllegalArgumentException("invalid range specified for 'points'");
        } else {
            for (int i3 = 0; i3 < i2; i3++) {
                ECPoint eCPoint = eCPointArr[i + i3];
                if (eCPoint != null && this != eCPoint.getCurve()) {
                    throw new IllegalArgumentException("'points' entries must be null or on this curve");
                }
            }
        }
    }

    protected abstract ECCurve cloneCurve();

    public Config configure() {
        Config config;
        synchronized (this) {
            config = new Config(this.coord, this.endomorphism, this.multiplier);
        }
        return config;
    }

    protected ECMultiplier createDefaultMultiplier() {
        return this.endomorphism instanceof GLVEndomorphism ? new GLVMultiplier(this, (GLVEndomorphism) this.endomorphism) : new WNafL2RMultiplier();
    }

    public ECPoint createPoint(BigInteger bigInteger, BigInteger bigInteger2) {
        return createPoint(bigInteger, bigInteger2, false);
    }

    public ECPoint createPoint(BigInteger bigInteger, BigInteger bigInteger2, boolean z) {
        return createRawPoint(fromBigInteger(bigInteger), fromBigInteger(bigInteger2), z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract ECPoint createRawPoint(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z);

    public ECPoint decodePoint(byte[] bArr) {
        ECPoint eCPoint;
        int fieldSize = (getFieldSize() + 7) / 8;
        boolean z = false;
        byte b = bArr[0];
        switch (b) {
            case 0:
                if (bArr.length == 1) {
                    eCPoint = getInfinity();
                    break;
                } else {
                    throw new IllegalArgumentException("Incorrect length for infinity encoding");
                }
            case 1:
            case 5:
            default:
                throw new IllegalArgumentException("Invalid point encoding 0x" + Integer.toString(b, 16));
            case 2:
            case 3:
                if (bArr.length != fieldSize + 1) {
                    throw new IllegalArgumentException("Incorrect length for compressed encoding");
                }
                ECPoint decompressPoint = decompressPoint(b & 1, BigIntegers.fromUnsignedByteArray(bArr, 1, fieldSize));
                eCPoint = decompressPoint;
                if (!decompressPoint.satisfiesCofactor()) {
                    throw new IllegalArgumentException("Invalid point");
                }
                break;
            case 4:
                if (bArr.length == (fieldSize * 2) + 1) {
                    eCPoint = validatePoint(BigIntegers.fromUnsignedByteArray(bArr, 1, fieldSize), BigIntegers.fromUnsignedByteArray(bArr, fieldSize + 1, fieldSize));
                    break;
                } else {
                    throw new IllegalArgumentException("Incorrect length for uncompressed encoding");
                }
            case 6:
            case 7:
                if (bArr.length == (fieldSize * 2) + 1) {
                    BigInteger fromUnsignedByteArray = BigIntegers.fromUnsignedByteArray(bArr, 1, fieldSize);
                    BigInteger fromUnsignedByteArray2 = BigIntegers.fromUnsignedByteArray(bArr, fieldSize + 1, fieldSize);
                    boolean testBit = fromUnsignedByteArray2.testBit(0);
                    if (b == 7) {
                        z = true;
                    }
                    if (testBit == z) {
                        eCPoint = validatePoint(fromUnsignedByteArray, fromUnsignedByteArray2);
                        break;
                    } else {
                        throw new IllegalArgumentException("Inconsistent Y coordinate in hybrid encoding");
                    }
                } else {
                    throw new IllegalArgumentException("Incorrect length for hybrid encoding");
                }
        }
        if (b == 0 || !eCPoint.isInfinity()) {
            return eCPoint;
        }
        throw new IllegalArgumentException("Invalid infinity encoding");
    }

    protected abstract ECPoint decompressPoint(int i, BigInteger bigInteger);

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof ECCurve) && equals((ECCurve) obj));
    }

    public boolean equals(ECCurve eCCurve) {
        return this == eCCurve || (eCCurve != null && getField().equals(eCCurve.getField()) && getA().toBigInteger().equals(eCCurve.getA().toBigInteger()) && getB().toBigInteger().equals(eCCurve.getB().toBigInteger()));
    }

    public abstract ECFieldElement fromBigInteger(BigInteger bigInteger);

    public ECFieldElement getA() {
        return this.f1536a;
    }

    public ECFieldElement getB() {
        return this.f1537b;
    }

    public BigInteger getCofactor() {
        return this.cofactor;
    }

    public int getCoordinateSystem() {
        return this.coord;
    }

    public ECEndomorphism getEndomorphism() {
        return this.endomorphism;
    }

    public FiniteField getField() {
        return this.field;
    }

    public abstract int getFieldSize();

    public abstract ECPoint getInfinity();

    public ECMultiplier getMultiplier() {
        ECMultiplier eCMultiplier;
        synchronized (this) {
            if (this.multiplier == null) {
                this.multiplier = createDefaultMultiplier();
            }
            eCMultiplier = this.multiplier;
        }
        return eCMultiplier;
    }

    public BigInteger getOrder() {
        return this.order;
    }

    public PreCompInfo getPreCompInfo(ECPoint eCPoint, String str) {
        PreCompInfo preCompInfo;
        checkPoint(eCPoint);
        synchronized (eCPoint) {
            Hashtable hashtable = eCPoint.preCompTable;
            preCompInfo = hashtable == null ? null : (PreCompInfo) hashtable.get(str);
        }
        return preCompInfo;
    }

    public int hashCode() {
        return (getField().hashCode() ^ Integers.rotateLeft(getA().toBigInteger().hashCode(), 8)) ^ Integers.rotateLeft(getB().toBigInteger().hashCode(), 16);
    }

    public ECPoint importPoint(ECPoint eCPoint) {
        if (this == eCPoint.getCurve()) {
            return eCPoint;
        }
        if (eCPoint.isInfinity()) {
            return getInfinity();
        }
        ECPoint normalize = eCPoint.normalize();
        return validatePoint(normalize.getXCoord().toBigInteger(), normalize.getYCoord().toBigInteger(), normalize.withCompression);
    }

    public abstract boolean isValidFieldElement(BigInteger bigInteger);

    public void normalizeAll(ECPoint[] eCPointArr) {
        normalizeAll(eCPointArr, 0, eCPointArr.length, null);
    }

    public void normalizeAll(ECPoint[] eCPointArr, int i, int i2, ECFieldElement eCFieldElement) {
        checkPoints(eCPointArr, i, i2);
        int coordinateSystem = getCoordinateSystem();
        if (coordinateSystem != 0 && coordinateSystem != 5) {
            ECFieldElement[] eCFieldElementArr = new ECFieldElement[i2];
            int[] iArr = new int[i2];
            int i3 = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                int i5 = i + i4;
                ECPoint eCPoint = eCPointArr[i5];
                i3 = i3;
                if (eCPoint != null) {
                    if (eCFieldElement == null) {
                        i3 = i3;
                        if (eCPoint.isNormalized()) {
                        }
                    }
                    eCFieldElementArr[i3] = eCPoint.getZCoord(0);
                    iArr[i3] = i5;
                    i3++;
                }
            }
            if (i3 != 0) {
                ECAlgorithms.montgomeryTrick(eCFieldElementArr, 0, i3, eCFieldElement);
                for (int i6 = 0; i6 < i3; i6++) {
                    int i7 = iArr[i6];
                    eCPointArr[i7] = eCPointArr[i7].normalize(eCFieldElementArr[i6]);
                }
            }
        } else if (eCFieldElement != null) {
            throw new IllegalArgumentException("'iso' not valid for affine coordinates");
        }
    }

    public void setPreCompInfo(ECPoint eCPoint, String str, PreCompInfo preCompInfo) {
        checkPoint(eCPoint);
        synchronized (eCPoint) {
            Hashtable hashtable = eCPoint.preCompTable;
            Hashtable hashtable2 = hashtable;
            if (hashtable == null) {
                hashtable2 = new Hashtable(4);
                eCPoint.preCompTable = hashtable2;
            }
            hashtable2.put(str, preCompInfo);
        }
    }

    public boolean supportsCoordinateSystem(int i) {
        return i == 0;
    }

    public ECPoint validatePoint(BigInteger bigInteger, BigInteger bigInteger2) {
        ECPoint createPoint = createPoint(bigInteger, bigInteger2);
        if (createPoint.isValid()) {
            return createPoint;
        }
        throw new IllegalArgumentException("Invalid point coordinates");
    }

    public ECPoint validatePoint(BigInteger bigInteger, BigInteger bigInteger2, boolean z) {
        ECPoint createPoint = createPoint(bigInteger, bigInteger2, z);
        if (createPoint.isValid()) {
            return createPoint;
        }
        throw new IllegalArgumentException("Invalid point coordinates");
    }
}
