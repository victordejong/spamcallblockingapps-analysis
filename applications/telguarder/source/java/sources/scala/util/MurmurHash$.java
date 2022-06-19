package scala.util;

import scala.collection.Iterator$;
import scala.collection.Iterator$$anon$7;
import scala.collection.TraversableOnce;
import scala.reflect.ClassTag$;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.IntRef;
import scala.runtime.ScalaRunTime$;
/* loaded from: classes3-dex2jar.jar:scala/util/MurmurHash$.class */
public final class MurmurHash$ {
    public static final MurmurHash$ MODULE$ = null;
    private final int finalMixer1;
    private final int finalMixer2;
    private final int hiddenMagicA;
    private final int hiddenMagicB;
    private final int hiddenMixerA;
    private final int hiddenMixerB;
    private final int seedArray;
    private final int seedString;
    private final int[] storedMagicA = (int[]) new Iterator$$anon$7(BoxesRunTime.boxToInteger(-1789642873), new MurmurHash$$anonfun$1()).take(23).toArray(ClassTag$.MODULE$.Int());
    private final int[] storedMagicB = (int[]) new Iterator$$anon$7(BoxesRunTime.boxToInteger(718793509), new MurmurHash$$anonfun$2()).take(23).toArray(ClassTag$.MODULE$.Int());
    private final int visibleMagic;
    private final int visibleMixer;

    static {
        new MurmurHash$();
    }

    private MurmurHash$() {
        MODULE$ = this;
        Iterator$ iterator$ = Iterator$.MODULE$;
        Iterator$ iterator$2 = Iterator$.MODULE$;
    }

    private final int finalMixer1() {
        return -2048144789;
    }

    private final int finalMixer2() {
        return -1028477387;
    }

    private final int hiddenMagicA() {
        return -1789642873;
    }

    private final int hiddenMagicB() {
        return 718793509;
    }

    private final int hiddenMixerA() {
        return 2071795100;
    }

    private final int hiddenMixerB() {
        return 1808688022;
    }

    private final int seedArray() {
        return 1007110753;
    }

    private final int seedString() {
        return -137723950;
    }

    private final int visibleMagic() {
        return -1759636613;
    }

    private final int visibleMixer() {
        return 1390208809;
    }

    public <T> int arrayHash(Object obj) {
        int startHash = startHash(ScalaRunTime$.MODULE$.array_length(obj) * 1007110753);
        int i = -1789642873;
        int i2 = 718793509;
        for (int i3 = 0; i3 < ScalaRunTime$.MODULE$.array_length(obj); i3++) {
            startHash = extendHash(startHash, ScalaRunTime$.MODULE$.hash(ScalaRunTime$.MODULE$.array_apply(obj, i3)), i, i2);
            i = nextMagicA(i);
            i2 = nextMagicB(i2);
        }
        return finalizeHash(startHash);
    }

    public int arrayHash$mBc$sp(byte[] bArr) {
        int startHash = startHash(bArr.length * 1007110753);
        int i = -1789642873;
        int i2 = 718793509;
        for (byte b : bArr) {
            startHash = extendHash(startHash, b, i, i2);
            i = nextMagicA(i);
            i2 = nextMagicB(i2);
        }
        return finalizeHash(startHash);
    }

    public int arrayHash$mCc$sp(char[] cArr) {
        int startHash = startHash(cArr.length * 1007110753);
        int i = -1789642873;
        int i2 = 718793509;
        for (char c : cArr) {
            startHash = extendHash(startHash, c, i, i2);
            i = nextMagicA(i);
            i2 = nextMagicB(i2);
        }
        return finalizeHash(startHash);
    }

    public int arrayHash$mDc$sp(double[] dArr) {
        int startHash = startHash(dArr.length * 1007110753);
        int i = -1789642873;
        int i2 = 718793509;
        for (double d : dArr) {
            startHash = extendHash(startHash, ScalaRunTime$.MODULE$.hash(d), i, i2);
            i = nextMagicA(i);
            i2 = nextMagicB(i2);
        }
        return finalizeHash(startHash);
    }

    public int arrayHash$mFc$sp(float[] fArr) {
        int startHash = startHash(fArr.length * 1007110753);
        int i = -1789642873;
        int i2 = 718793509;
        for (float f : fArr) {
            startHash = extendHash(startHash, ScalaRunTime$.MODULE$.hash(f), i, i2);
            i = nextMagicA(i);
            i2 = nextMagicB(i2);
        }
        return finalizeHash(startHash);
    }

    public int arrayHash$mIc$sp(int[] iArr) {
        int startHash = startHash(iArr.length * 1007110753);
        int i = -1789642873;
        int i2 = 718793509;
        for (int i3 : iArr) {
            startHash = extendHash(startHash, i3, i, i2);
            i = nextMagicA(i);
            i2 = nextMagicB(i2);
        }
        return finalizeHash(startHash);
    }

    public int arrayHash$mJc$sp(long[] jArr) {
        int startHash = startHash(jArr.length * 1007110753);
        int i = -1789642873;
        int i2 = 718793509;
        for (long j : jArr) {
            startHash = extendHash(startHash, ScalaRunTime$.MODULE$.hash(j), i, i2);
            i = nextMagicA(i);
            i2 = nextMagicB(i2);
        }
        return finalizeHash(startHash);
    }

    public int arrayHash$mSc$sp(short[] sArr) {
        int startHash = startHash(sArr.length * 1007110753);
        int i = -1789642873;
        int i2 = 718793509;
        for (short s : sArr) {
            startHash = extendHash(startHash, s, i, i2);
            i = nextMagicA(i);
            i2 = nextMagicB(i2);
        }
        return finalizeHash(startHash);
    }

    public int arrayHash$mVc$sp(BoxedUnit[] boxedUnitArr) {
        int startHash = startHash(boxedUnitArr.length * 1007110753);
        int i = -1789642873;
        int i2 = 718793509;
        for (int i3 = 0; i3 < boxedUnitArr.length; i3++) {
            startHash = extendHash(startHash, 0, i, i2);
            i = nextMagicA(i);
            i2 = nextMagicB(i2);
        }
        return finalizeHash(startHash);
    }

    public int arrayHash$mZc$sp(boolean[] zArr) {
        int startHash = startHash(zArr.length * 1007110753);
        int i = -1789642873;
        int i2 = 718793509;
        for (boolean z : zArr) {
            startHash = extendHash(startHash, z ? 1231 : 1237, i, i2);
            i = nextMagicA(i);
            i2 = nextMagicB(i2);
        }
        return finalizeHash(startHash);
    }

    public int extendHash(int i, int i2, int i3, int i4) {
        return ((i ^ (Integer.rotateLeft(i2 * i3, 11) * i4)) * 3) + 1390208809;
    }

    public int finalizeHash(int i) {
        int i2 = (i ^ (i >>> 16)) * (-2048144789);
        int i3 = (i2 ^ (i2 >>> 13)) * (-1028477387);
        return i3 ^ (i3 >>> 16);
    }

    public int nextMagicA(int i) {
        return (i * 5) + 2071795100;
    }

    public int nextMagicB(int i) {
        return (i * 5) + 1808688022;
    }

    public int startHash(int i) {
        return i ^ (-1759636613);
    }

    public int startMagicA() {
        return -1789642873;
    }

    public int startMagicB() {
        return 718793509;
    }

    public int[] storedMagicA() {
        return this.storedMagicA;
    }

    public int[] storedMagicB() {
        return this.storedMagicB;
    }

    public int stringHash(String str) {
        int startHash = startHash(str.length() * (-137723950));
        int i = -1789642873;
        int i2 = 718793509;
        int i3 = 0;
        while (true) {
            int i4 = i3 + 1;
            if (i4 >= str.length()) {
                break;
            }
            startHash = extendHash(startHash, (str.charAt(i3) << 16) + str.charAt(i4), i, i2);
            i = nextMagicA(i);
            i2 = nextMagicB(i2);
            i3 += 2;
        }
        int i5 = startHash;
        if (i3 < str.length()) {
            i5 = extendHash(startHash, str.charAt(i3), i, i2);
        }
        return finalizeHash(i5);
    }

    public <T> int symmetricHash(TraversableOnce<T> traversableOnce, int i) {
        IntRef create = IntRef.create(0);
        IntRef create2 = IntRef.create(0);
        IntRef create3 = IntRef.create(0);
        IntRef create4 = IntRef.create(1);
        traversableOnce.seq().foreach(new MurmurHash$$anonfun$symmetricHash$1(create, create2, create3, create4));
        return finalizeHash(extendHash(extendHash(extendHash(startHash(i * create3.elem), create.elem, storedMagicA()[0], storedMagicB()[0]), create2.elem, storedMagicA()[1], storedMagicB()[1]), create4.elem, storedMagicA()[2], storedMagicB()[2]));
    }
}
