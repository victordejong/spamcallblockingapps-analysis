package scala;

import scala.collection.IndexedSeq;
import scala.collection.Seq;
import scala.collection.Seq$;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.immutable.Range;
import scala.collection.immutable.Range$;
import scala.collection.mutable.ArrayBuilder;
import scala.collection.mutable.ArrayBuilder$;
import scala.compat.Platform$;
import scala.math.Numeric$IntIsIntegral$;
import scala.reflect.ClassTag;
import scala.reflect.ClassTag$;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.IntRef;
import scala.runtime.ScalaRunTime$;
/* loaded from: classes3-dex2jar.jar:scala/Array$.class */
public final class Array$ extends FallbackArrayBuilding implements Serializable {
    public static final Array$ MODULE$ = null;
    private final boolean[] emptyBooleanArray = new boolean[0];
    private final byte[] emptyByteArray = new byte[0];
    private final char[] emptyCharArray = new char[0];
    private final double[] emptyDoubleArray = new double[0];
    private final float[] emptyFloatArray = new float[0];
    private final int[] emptyIntArray = new int[0];
    private final long[] emptyLongArray = new long[0];
    private final short[] emptyShortArray = new short[0];
    private final Object[] emptyObjectArray = new Object[0];

    static {
        new Array$();
    }

    private Array$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    private void slowcopy(Object obj, int i, Object obj2, int i2, int i3) {
        int i4 = i2;
        int i5 = i;
        while (i5 < i3 + i) {
            ScalaRunTime$.MODULE$.array_update(obj2, i4, ScalaRunTime$.MODULE$.array_apply(obj, i5));
            i5++;
            i4++;
        }
    }

    public <T> Object apply(Seq<T> seq, ClassTag<T> classTag) {
        Object newArray = classTag.newArray(seq.length());
        seq.iterator().foreach(new Array$$anonfun$apply$5(newArray, IntRef.create(0)));
        return newArray;
    }

    public byte[] apply(byte b, Seq<Object> seq) {
        byte[] bArr = new byte[seq.length() + 1];
        bArr[0] = b;
        seq.iterator().foreach(new Array$$anonfun$apply$7(bArr, IntRef.create(1)));
        return bArr;
    }

    public char[] apply(char c, Seq<Object> seq) {
        char[] cArr = new char[seq.length() + 1];
        cArr[0] = c;
        seq.iterator().foreach(new Array$$anonfun$apply$9(cArr, IntRef.create(1)));
        return cArr;
    }

    public double[] apply(double d, Seq<Object> seq) {
        double[] dArr = new double[seq.length() + 1];
        dArr[0] = d;
        seq.iterator().foreach(new Array$$anonfun$apply$4(dArr, IntRef.create(1)));
        return dArr;
    }

    public float[] apply(float f, Seq<Object> seq) {
        float[] fArr = new float[seq.length() + 1];
        fArr[0] = f;
        seq.iterator().foreach(new Array$$anonfun$apply$3(fArr, IntRef.create(1)));
        return fArr;
    }

    public int[] apply(int i, Seq<Object> seq) {
        int[] iArr = new int[seq.length() + 1];
        iArr[0] = i;
        seq.iterator().foreach(new Array$$anonfun$apply$1(iArr, IntRef.create(1)));
        return iArr;
    }

    public long[] apply(long j, Seq<Object> seq) {
        long[] jArr = new long[seq.length() + 1];
        jArr[0] = j;
        seq.iterator().foreach(new Array$$anonfun$apply$2(jArr, IntRef.create(1)));
        return jArr;
    }

    public BoxedUnit[] apply(BoxedUnit boxedUnit, Seq<BoxedUnit> seq) {
        BoxedUnit[] boxedUnitArr = new BoxedUnit[seq.length() + 1];
        boxedUnitArr[0] = boxedUnit;
        seq.iterator().foreach(new Array$$anonfun$apply$10(boxedUnitArr, IntRef.create(1)));
        return boxedUnitArr;
    }

    public short[] apply(short s, Seq<Object> seq) {
        short[] sArr = new short[seq.length() + 1];
        sArr[0] = s;
        seq.iterator().foreach(new Array$$anonfun$apply$8(sArr, IntRef.create(1)));
        return sArr;
    }

    public boolean[] apply(boolean z, Seq<Object> seq) {
        boolean[] zArr = new boolean[seq.length() + 1];
        zArr[0] = z;
        seq.iterator().foreach(new Array$$anonfun$apply$6(zArr, IntRef.create(1)));
        return zArr;
    }

    public <T> CanBuildFrom<Object, T, Object> canBuildFrom(ClassTag<T> classTag) {
        return new Array$$anon$2(classTag);
    }

    public <T> Object concat(Seq<Object> seq, ClassTag<T> classTag) {
        ArrayBuilder<T> newBuilder = newBuilder(classTag);
        newBuilder.sizeHint(BoxesRunTime.unboxToInt(((TraversableOnce) seq.map(new Array$$anonfun$concat$1(), Seq$.MODULE$.canBuildFrom())).sum(Numeric$IntIsIntegral$.MODULE$)));
        seq.foreach(new Array$$anonfun$concat$2(newBuilder));
        return newBuilder.result();
    }

    public void copy(Object obj, int i, Object obj2, int i2, int i3) {
        Class<?> cls = obj.getClass();
        if (!cls.isArray() || !obj2.getClass().isAssignableFrom(cls)) {
            slowcopy(obj, i, obj2, i2, i3);
            return;
        }
        Platform$ platform$ = Platform$.MODULE$;
        System.arraycopy(obj, i, obj2, i2, i3);
    }

    public <T> Object empty(ClassTag<T> classTag) {
        return classTag.newArray(0);
    }

    public boolean[] emptyBooleanArray() {
        return this.emptyBooleanArray;
    }

    public byte[] emptyByteArray() {
        return this.emptyByteArray;
    }

    public char[] emptyCharArray() {
        return this.emptyCharArray;
    }

    public double[] emptyDoubleArray() {
        return this.emptyDoubleArray;
    }

    public float[] emptyFloatArray() {
        return this.emptyFloatArray;
    }

    public int[] emptyIntArray() {
        return this.emptyIntArray;
    }

    public long[] emptyLongArray() {
        return this.emptyLongArray;
    }

    public Object[] emptyObjectArray() {
        return this.emptyObjectArray;
    }

    public short[] emptyShortArray() {
        return this.emptyShortArray;
    }

    public <T> Object fill(int i, Function0<T> function0, ClassTag<T> classTag) {
        ArrayBuilder<T> newBuilder = newBuilder(classTag);
        newBuilder.sizeHint(i);
        for (int i2 = 0; i2 < i; i2++) {
            newBuilder.$plus$eq((ArrayBuilder<T>) function0.apply());
        }
        return newBuilder.result();
    }

    public <T> Object[] fill(int i, int i2, Function0<T> function0, ClassTag<T> classTag) {
        return (Object[]) tabulate(i, new Array$$anonfun$fill$1(i2, function0, classTag), ClassTag$.MODULE$.apply(ScalaRunTime$.MODULE$.arrayClass(classTag.runtimeClass())));
    }

    public <T> Object[][] fill(int i, int i2, int i3, Function0<T> function0, ClassTag<T> classTag) {
        return (Object[][]) tabulate(i, new Array$$anonfun$fill$2(i2, i3, function0, classTag), ClassTag$.MODULE$.apply(ScalaRunTime$.MODULE$.arrayClass(ScalaRunTime$.MODULE$.arrayClass(classTag.runtimeClass()))));
    }

    public <T> Object[][][] fill(int i, int i2, int i3, int i4, Function0<T> function0, ClassTag<T> classTag) {
        return (Object[][][]) tabulate(i, new Array$$anonfun$fill$3(i2, i3, i4, function0, classTag), ClassTag$.MODULE$.apply(ScalaRunTime$.MODULE$.arrayClass(ScalaRunTime$.MODULE$.arrayClass(ScalaRunTime$.MODULE$.arrayClass(classTag.runtimeClass())))));
    }

    public <T> Object[][][][] fill(int i, int i2, int i3, int i4, int i5, Function0<T> function0, ClassTag<T> classTag) {
        return (Object[][][][]) tabulate(i, new Array$$anonfun$fill$4(i2, i3, i4, i5, function0, classTag), ClassTag$.MODULE$.apply(ScalaRunTime$.MODULE$.arrayClass(ScalaRunTime$.MODULE$.arrayClass(ScalaRunTime$.MODULE$.arrayClass(ScalaRunTime$.MODULE$.arrayClass(classTag.runtimeClass()))))));
    }

    public <T> Object iterate(T t, int i, Function1<T, T> function1, ClassTag<T> classTag) {
        ArrayBuilder<T> newBuilder = newBuilder(classTag);
        if (i > 0) {
            newBuilder.sizeHint(i);
            newBuilder.$plus$eq((ArrayBuilder<T>) t);
            int i2 = 1;
            while (i2 < i) {
                t = function1.apply(t);
                i2++;
                newBuilder.$plus$eq((ArrayBuilder<T>) t);
            }
        }
        return newBuilder.result();
    }

    public <T> ArrayBuilder<T> newBuilder(ClassTag<T> classTag) {
        return ArrayBuilder$.MODULE$.make(classTag);
    }

    public <T> Object ofDim(int i, ClassTag<T> classTag) {
        return classTag.newArray(i);
    }

    public <T> Object[] ofDim(int i, int i2, ClassTag<T> classTag) {
        Object[] objArr = (Object[]) ClassTag$.MODULE$.apply(ScalaRunTime$.MODULE$.arrayClass(classTag.runtimeClass())).newArray(i);
        Predef$ predef$ = Predef$.MODULE$;
        Range$ range$ = Range$.MODULE$;
        Range range = new Range(0, i, 1);
        range.scala$collection$immutable$Range$$validateMaxLength();
        boolean z = (range.start() == Integer.MIN_VALUE && range.end() == Integer.MIN_VALUE) ? false : true;
        int start = range.start();
        int terminalElement = range.terminalElement();
        int step = range.step();
        int i3 = 0;
        while (true) {
            if (!z ? i3 < range.numRangeElements() : start != terminalElement) {
                objArr[start] = classTag.newArray(i2);
                i3++;
                start += step;
            } else {
                return objArr;
            }
        }
    }

    public <T> Object[][] ofDim(int i, int i2, int i3, ClassTag<T> classTag) {
        return (Object[][]) tabulate(i, new Array$$anonfun$ofDim$2(i2, i3, classTag), ClassTag$.MODULE$.apply(ScalaRunTime$.MODULE$.arrayClass(ScalaRunTime$.MODULE$.arrayClass(classTag.runtimeClass()))));
    }

    public <T> Object[][][] ofDim(int i, int i2, int i3, int i4, ClassTag<T> classTag) {
        return (Object[][][]) tabulate(i, new Array$$anonfun$ofDim$3(i2, i3, i4, classTag), ClassTag$.MODULE$.apply(ScalaRunTime$.MODULE$.arrayClass(ScalaRunTime$.MODULE$.arrayClass(ScalaRunTime$.MODULE$.arrayClass(classTag.runtimeClass())))));
    }

    public <T> Object[][][][] ofDim(int i, int i2, int i3, int i4, int i5, ClassTag<T> classTag) {
        return (Object[][][][]) tabulate(i, new Array$$anonfun$ofDim$4(i2, i3, i4, i5, classTag), ClassTag$.MODULE$.apply(ScalaRunTime$.MODULE$.arrayClass(ScalaRunTime$.MODULE$.arrayClass(ScalaRunTime$.MODULE$.arrayClass(ScalaRunTime$.MODULE$.arrayClass(classTag.runtimeClass()))))));
    }

    public int[] range(int i, int i2) {
        return range(i, i2, 1);
    }

    public int[] range(int i, int i2, int i3) {
        if (i3 != 0) {
            ArrayBuilder newBuilder = newBuilder(ClassTag$.MODULE$.Int());
            newBuilder.sizeHint(Range$.MODULE$.count(i, i2, i3, false));
            while (true) {
                boolean z = true;
                if (i3 >= 0 ? i >= i2 : i2 >= i) {
                    z = false;
                }
                if (!z) {
                    return (int[]) newBuilder.result();
                }
                newBuilder.$plus$eq((ArrayBuilder) BoxesRunTime.boxToInteger(i));
                i += i3;
            }
        } else {
            throw new IllegalArgumentException("zero step");
        }
    }

    public <T> Object tabulate(int i, Function1<Object, T> function1, ClassTag<T> classTag) {
        ArrayBuilder<T> newBuilder = newBuilder(classTag);
        newBuilder.sizeHint(i);
        for (int i2 = 0; i2 < i; i2++) {
            newBuilder.$plus$eq((ArrayBuilder<T>) function1.apply(BoxesRunTime.boxToInteger(i2)));
        }
        return newBuilder.result();
    }

    public <T> Object[] tabulate(int i, int i2, Function2<Object, Object, T> function2, ClassTag<T> classTag) {
        return (Object[]) tabulate(i, new Array$$anonfun$tabulate$1(i2, function2, classTag), ClassTag$.MODULE$.apply(ScalaRunTime$.MODULE$.arrayClass(classTag.runtimeClass())));
    }

    public <T> Object[][] tabulate(int i, int i2, int i3, Function3<Object, Object, Object, T> function3, ClassTag<T> classTag) {
        return (Object[][]) tabulate(i, new Array$$anonfun$tabulate$2(i2, i3, function3, classTag), ClassTag$.MODULE$.apply(ScalaRunTime$.MODULE$.arrayClass(ScalaRunTime$.MODULE$.arrayClass(classTag.runtimeClass()))));
    }

    public <T> Object[][][] tabulate(int i, int i2, int i3, int i4, Function4<Object, Object, Object, Object, T> function4, ClassTag<T> classTag) {
        return (Object[][][]) tabulate(i, new Array$$anonfun$tabulate$3(i2, i3, i4, function4, classTag), ClassTag$.MODULE$.apply(ScalaRunTime$.MODULE$.arrayClass(ScalaRunTime$.MODULE$.arrayClass(ScalaRunTime$.MODULE$.arrayClass(classTag.runtimeClass())))));
    }

    public <T> Object[][][][] tabulate(int i, int i2, int i3, int i4, int i5, Function5<Object, Object, Object, Object, Object, T> function5, ClassTag<T> classTag) {
        return (Object[][][][]) tabulate(i, new Array$$anonfun$tabulate$4(i2, i3, i4, i5, function5, classTag), ClassTag$.MODULE$.apply(ScalaRunTime$.MODULE$.arrayClass(ScalaRunTime$.MODULE$.arrayClass(ScalaRunTime$.MODULE$.arrayClass(ScalaRunTime$.MODULE$.arrayClass(classTag.runtimeClass()))))));
    }

    public <T> Option<IndexedSeq<T>> unapplySeq(Object obj) {
        return obj == null ? None$.MODULE$ : new Some(Predef$.MODULE$.genericArrayOps(obj).toIndexedSeq());
    }
}
