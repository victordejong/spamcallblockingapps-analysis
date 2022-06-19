package scala.util.hashing;

import scala.Product;
import scala.collection.Map;
import scala.collection.Seq;
import scala.collection.Set;
import scala.collection.TraversableOnce;
import scala.collection.immutable.List;
import scala.runtime.BoxedUnit;
import scala.util.hashing.MurmurHash3;
/* loaded from: classes3-dex2jar.jar:scala/util/hashing/MurmurHash3$.class */
public final class MurmurHash3$ extends MurmurHash3 {
    public static final MurmurHash3$ MODULE$ = null;
    private final int arraySeed;
    private final int productSeed;
    private final int stringSeed;
    private final int symmetricSeed;
    private final int traversableSeed;
    private final int seqSeed = 83007;
    private final int mapSeed = 77116;
    private final int setSeed = 83010;

    static {
        new MurmurHash3$();
    }

    private MurmurHash3$() {
        MODULE$ = this;
    }

    public <T> int arrayHash(Object obj) {
        return arrayHash(obj, 1007110753);
    }

    public int arrayHash$mBc$sp(byte[] bArr) {
        return arrayHash$mBc$sp(bArr, 1007110753);
    }

    public int arrayHash$mCc$sp(char[] cArr) {
        return arrayHash$mCc$sp(cArr, 1007110753);
    }

    public int arrayHash$mDc$sp(double[] dArr) {
        return arrayHash$mDc$sp(dArr, 1007110753);
    }

    public int arrayHash$mFc$sp(float[] fArr) {
        return arrayHash$mFc$sp(fArr, 1007110753);
    }

    public int arrayHash$mIc$sp(int[] iArr) {
        return arrayHash$mIc$sp(iArr, 1007110753);
    }

    public int arrayHash$mJc$sp(long[] jArr) {
        return arrayHash$mJc$sp(jArr, 1007110753);
    }

    public int arrayHash$mSc$sp(short[] sArr) {
        return arrayHash$mSc$sp(sArr, 1007110753);
    }

    public int arrayHash$mVc$sp(BoxedUnit[] boxedUnitArr) {
        return arrayHash$mVc$sp(boxedUnitArr, 1007110753);
    }

    public int arrayHash$mZc$sp(boolean[] zArr) {
        return arrayHash$mZc$sp(zArr, 1007110753);
    }

    public <T> MurmurHash3.ArrayHashing<T> arrayHashing() {
        return new MurmurHash3.ArrayHashing<>();
    }

    public MurmurHash3.ArrayHashing<Object> arrayHashing$mBc$sp() {
        return new MurmurHash3.ArrayHashing<Object>() { // from class: scala.util.hashing.MurmurHash3$ArrayHashing$mcB$sp
            public int hash(byte[] bArr) {
                return hash$mcB$sp(bArr);
            }

            @Override // scala.util.hashing.MurmurHash3.ArrayHashing
            public int hash$mcB$sp(byte[] bArr) {
                return MurmurHash3$.MODULE$.arrayHash$mBc$sp(bArr);
            }
        };
    }

    public MurmurHash3.ArrayHashing<Object> arrayHashing$mCc$sp() {
        return new MurmurHash3.ArrayHashing<Object>() { // from class: scala.util.hashing.MurmurHash3$ArrayHashing$mcC$sp
            public int hash(char[] cArr) {
                return hash$mcC$sp(cArr);
            }

            @Override // scala.util.hashing.MurmurHash3.ArrayHashing
            public int hash$mcC$sp(char[] cArr) {
                return MurmurHash3$.MODULE$.arrayHash$mCc$sp(cArr);
            }
        };
    }

    public MurmurHash3.ArrayHashing<Object> arrayHashing$mDc$sp() {
        return new MurmurHash3.ArrayHashing<Object>() { // from class: scala.util.hashing.MurmurHash3$ArrayHashing$mcD$sp
            public int hash(double[] dArr) {
                return hash$mcD$sp(dArr);
            }

            @Override // scala.util.hashing.MurmurHash3.ArrayHashing
            public int hash$mcD$sp(double[] dArr) {
                return MurmurHash3$.MODULE$.arrayHash$mDc$sp(dArr);
            }
        };
    }

    public MurmurHash3.ArrayHashing<Object> arrayHashing$mFc$sp() {
        return new MurmurHash3.ArrayHashing<Object>() { // from class: scala.util.hashing.MurmurHash3$ArrayHashing$mcF$sp
            public int hash(float[] fArr) {
                return hash$mcF$sp(fArr);
            }

            @Override // scala.util.hashing.MurmurHash3.ArrayHashing
            public int hash$mcF$sp(float[] fArr) {
                return MurmurHash3$.MODULE$.arrayHash$mFc$sp(fArr);
            }
        };
    }

    public MurmurHash3.ArrayHashing<Object> arrayHashing$mIc$sp() {
        return new MurmurHash3.ArrayHashing<Object>() { // from class: scala.util.hashing.MurmurHash3$ArrayHashing$mcI$sp
            public int hash(int[] iArr) {
                return hash$mcI$sp(iArr);
            }

            @Override // scala.util.hashing.MurmurHash3.ArrayHashing
            public int hash$mcI$sp(int[] iArr) {
                return MurmurHash3$.MODULE$.arrayHash$mIc$sp(iArr);
            }
        };
    }

    public MurmurHash3.ArrayHashing<Object> arrayHashing$mJc$sp() {
        return new MurmurHash3.ArrayHashing<Object>() { // from class: scala.util.hashing.MurmurHash3$ArrayHashing$mcJ$sp
            public int hash(long[] jArr) {
                return hash$mcJ$sp(jArr);
            }

            @Override // scala.util.hashing.MurmurHash3.ArrayHashing
            public int hash$mcJ$sp(long[] jArr) {
                return MurmurHash3$.MODULE$.arrayHash$mJc$sp(jArr);
            }
        };
    }

    public MurmurHash3.ArrayHashing<Object> arrayHashing$mSc$sp() {
        return new MurmurHash3.ArrayHashing<Object>() { // from class: scala.util.hashing.MurmurHash3$ArrayHashing$mcS$sp
            public int hash(short[] sArr) {
                return hash$mcS$sp(sArr);
            }

            @Override // scala.util.hashing.MurmurHash3.ArrayHashing
            public int hash$mcS$sp(short[] sArr) {
                return MurmurHash3$.MODULE$.arrayHash$mSc$sp(sArr);
            }
        };
    }

    public MurmurHash3.ArrayHashing<BoxedUnit> arrayHashing$mVc$sp() {
        return new MurmurHash3.ArrayHashing<BoxedUnit>() { // from class: scala.util.hashing.MurmurHash3$ArrayHashing$mcV$sp
            public int hash(BoxedUnit[] boxedUnitArr) {
                return hash$mcV$sp(boxedUnitArr);
            }

            @Override // scala.util.hashing.MurmurHash3.ArrayHashing
            public int hash$mcV$sp(BoxedUnit[] boxedUnitArr) {
                return MurmurHash3$.MODULE$.arrayHash$mVc$sp(boxedUnitArr);
            }
        };
    }

    public MurmurHash3.ArrayHashing<Object> arrayHashing$mZc$sp() {
        return new MurmurHash3.ArrayHashing<Object>() { // from class: scala.util.hashing.MurmurHash3$ArrayHashing$mcZ$sp
            public int hash(boolean[] zArr) {
                return hash$mcZ$sp(zArr);
            }

            @Override // scala.util.hashing.MurmurHash3.ArrayHashing
            public int hash$mcZ$sp(boolean[] zArr) {
                return MurmurHash3$.MODULE$.arrayHash$mZc$sp(zArr);
            }
        };
    }

    public final int arraySeed() {
        return 1007110753;
    }

    public int bytesHash(byte[] bArr) {
        return bytesHash(bArr, 1007110753);
    }

    public Object bytesHashing() {
        return new Hashing<byte[]>() { // from class: scala.util.hashing.MurmurHash3$$anon$1
            public int hash(byte[] bArr) {
                return MurmurHash3$.MODULE$.bytesHash(bArr);
            }
        };
    }

    public int mapHash(Map<?, ?> map) {
        return unorderedHash(map, mapSeed());
    }

    public final int mapSeed() {
        return this.mapSeed;
    }

    public int orderedHash(TraversableOnce<Object> traversableOnce) {
        return orderedHash(traversableOnce, -1248659538);
    }

    public Object orderedHashing() {
        return new Hashing<TraversableOnce<Object>>() { // from class: scala.util.hashing.MurmurHash3$$anon$2
            public int hash(TraversableOnce<Object> traversableOnce) {
                return MurmurHash3$.MODULE$.orderedHash(traversableOnce);
            }
        };
    }

    public int productHash(Product product) {
        return productHash(product, -889275714);
    }

    public Object productHashing() {
        return new Hashing<Product>() { // from class: scala.util.hashing.MurmurHash3$$anon$3
            public int hash(Product product) {
                return MurmurHash3$.MODULE$.productHash(product);
            }
        };
    }

    public final int productSeed() {
        return -889275714;
    }

    public int seqHash(Seq<?> seq) {
        return seq instanceof List ? listHash((List) seq, seqSeed()) : orderedHash(seq, seqSeed());
    }

    public final int seqSeed() {
        return this.seqSeed;
    }

    public int setHash(Set<?> set) {
        return unorderedHash(set, setSeed());
    }

    public final int setSeed() {
        return this.setSeed;
    }

    public int stringHash(String str) {
        return stringHash(str, -137723950);
    }

    public Object stringHashing() {
        return new Hashing<String>() { // from class: scala.util.hashing.MurmurHash3$$anon$4
            public int hash(String str) {
                return MurmurHash3$.MODULE$.stringHash(str);
            }
        };
    }

    public final int stringSeed() {
        return -137723950;
    }

    public final int symmetricSeed() {
        return -1248659538;
    }

    public final int traversableSeed() {
        return -415593707;
    }

    public int unorderedHash(TraversableOnce<Object> traversableOnce) {
        return unorderedHash(traversableOnce, -415593707);
    }

    public Object unorderedHashing() {
        return new Hashing<TraversableOnce<Object>>() { // from class: scala.util.hashing.MurmurHash3$$anon$5
            public int hash(TraversableOnce<Object> traversableOnce) {
                return MurmurHash3$.MODULE$.unorderedHash(traversableOnce);
            }
        };
    }
}
