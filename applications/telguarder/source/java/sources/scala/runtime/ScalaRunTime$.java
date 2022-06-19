package scala.runtime;

import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.util.Objects;
import scala.MatchError;
import scala.Predef$;
import scala.Product;
import scala.StringContext;
import scala.Tuple2;
import scala.UninitializedError;
import scala.collection.AbstractIterator;
import scala.collection.Iterator;
import scala.collection.Seq;
import scala.collection.Traversable;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.TraversableView;
import scala.collection.generic.IsTraversableLike;
import scala.collection.generic.Sorted;
import scala.collection.immutable.IndexedSeq$;
import scala.collection.immutable.NumericRange;
import scala.collection.immutable.Range;
import scala.collection.immutable.Range$;
import scala.collection.immutable.StringLike;
import scala.collection.mutable.StringBuilder;
import scala.collection.mutable.WrappedArray$;
import scala.reflect.ClassTag;
import scala.reflect.ClassTag$;
import scala.reflect.package$;
import scala.util.hashing.MurmurHash3$;
/* loaded from: classes3-dex2jar.jar:scala/runtime/ScalaRunTime$.class */
public final class ScalaRunTime$ {
    public static final ScalaRunTime$ MODULE$ = null;

    static {
        new ScalaRunTime$();
    }

    private ScalaRunTime$() {
        MODULE$ = this;
    }

    private final String arrayToString$1(Object obj, int i) {
        String str;
        Class<?> componentType = obj.getClass().getComponentType();
        if (componentType != null && componentType.equals(BoxedUnit.class)) {
            RichInt$ richInt$ = RichInt$.MODULE$;
            Predef$ predef$ = Predef$.MODULE$;
            RichInt$ richInt$2 = RichInt$.MODULE$;
            Predef$ predef$2 = Predef$.MODULE$;
            str = ((TraversableOnce) richInt$.until$extension0(0, richInt$2.min$extension(array_length(obj), i)).map(new ScalaRunTime$$anonfun$arrayToString$1$1(), IndexedSeq$.MODULE$.canBuildFrom())).mkString("Array(", ", ", ")");
        } else {
            str = ((TraversableOnce) ((TraversableLike) WrappedArray$.MODULE$.make(obj).take(i)).map(new ScalaRunTime$$anonfun$arrayToString$1$2(i), WrappedArray$.MODULE$.canBuildFrom(ClassTag$.MODULE$.apply(String.class)))).mkString("Array(", ", ", ")");
        }
        return str;
    }

    private boolean isArrayClass(Class<?> cls, int i) {
        boolean z;
        while (true) {
            z = true;
            if (!cls.isArray()) {
                z = false;
                break;
            } else if (i == 1) {
                break;
            } else {
                cls = cls.getComponentType();
                i--;
            }
        }
        return z;
    }

    private final boolean isScalaClass$1(Object obj) {
        return packageOf$1(obj).startsWith("scala.");
    }

    private final boolean isScalaCompilerClass$1(Object obj) {
        return packageOf$1(obj).startsWith("scala.tools.nsc.");
    }

    private final boolean isSubClassOf$1(Class cls, String str) {
        boolean z = false;
        try {
            z = Class.forName(str, false, cls.getClassLoader()).isAssignableFrom(cls);
        } catch (ClassNotFoundException e) {
        }
        return z;
    }

    private final boolean isXmlMetaData$1(Class cls) {
        return isSubClassOf$1(cls, "scala.xml.MetaData");
    }

    private final boolean isXmlNode$1(Class cls) {
        return isSubClassOf$1(cls, "scala.xml.Node");
    }

    private final String packageOf$1(Object obj) {
        Package r0 = obj.getClass().getPackage();
        return r0 == null ? "" : r0.getName();
    }

    private final boolean useOwnToString$1(Object obj) {
        boolean z;
        if (!((obj instanceof Range) || (obj instanceof NumericRange)) && !(obj instanceof Sorted) && !(obj instanceof StringLike) && !(obj instanceof TraversableView)) {
            z = false;
            if (obj instanceof Traversable) {
                Traversable traversable = (Traversable) obj;
                if (traversable.hasDefiniteSize() && isScalaClass$1(traversable) && !isScalaCompilerClass$1(traversable) && !isXmlNode$1(traversable.getClass()) && !isXmlMetaData$1(traversable.getClass())) {
                    z = false;
                }
            }
            return z;
        }
        z = true;
        return z;
    }

    public boolean _equals(Product product, Object obj) {
        boolean z;
        if (obj instanceof Product) {
            Product product2 = (Product) obj;
            if (product.productArity() == product2.productArity()) {
                z = product.productIterator().sameElements(product2.productIterator());
                return z;
            }
        }
        z = false;
        return z;
    }

    public int _hashCode(Product product) {
        return MurmurHash3$.MODULE$.productHash(product);
    }

    public String _toString(Product product) {
        return product.productIterator().mkString(new StringBuilder().append((Object) product.productPrefix()).append((Object) "(").toString(), ",", ")");
    }

    public <T> Class<T> anyValClass(T t, ClassTag<T> classTag) {
        return (Class<T>) package$.MODULE$.classTag(classTag).runtimeClass();
    }

    public Class<?> arrayClass(Class<?> cls) {
        Class cls2 = Void.TYPE;
        return (cls != null ? !cls.equals(cls2) : cls2 != null) ? Array.newInstance(cls, 0).getClass() : BoxedUnit[].class;
    }

    public Class<?> arrayElementClass(Object obj) {
        Class<?> cls;
        if (obj instanceof Class) {
            cls = ((Class) obj).getComponentType();
        } else if (!(obj instanceof ClassTag)) {
            throw new UnsupportedOperationException(new StringContext(Predef$.MODULE$.wrapRefArray(new String[]{"unsupported schematic ", " (", ")"})).m361s(Predef$.MODULE$.genericWrapArray(new Object[]{obj, obj.getClass()})));
        } else {
            cls = ((ClassTag) obj).runtimeClass();
        }
        return cls;
    }

    public Object array_apply(Object obj, int i) {
        Integer num;
        if (obj instanceof Object[]) {
            num = ((Object[]) obj)[i];
        } else if (obj instanceof int[]) {
            num = BoxesRunTime.boxToInteger(((int[]) obj)[i]);
        } else if (obj instanceof double[]) {
            num = BoxesRunTime.boxToDouble(((double[]) obj)[i]);
        } else if (obj instanceof long[]) {
            num = BoxesRunTime.boxToLong(((long[]) obj)[i]);
        } else if (obj instanceof float[]) {
            num = BoxesRunTime.boxToFloat(((float[]) obj)[i]);
        } else if (obj instanceof char[]) {
            num = BoxesRunTime.boxToCharacter(((char[]) obj)[i]);
        } else if (obj instanceof byte[]) {
            num = BoxesRunTime.boxToByte(((byte[]) obj)[i]);
        } else if (obj instanceof short[]) {
            num = BoxesRunTime.boxToShort(((short[]) obj)[i]);
        } else if (obj instanceof boolean[]) {
            num = BoxesRunTime.boxToBoolean(((boolean[]) obj)[i]);
        } else if (!(obj instanceof BoxedUnit[])) {
            Objects.requireNonNull(obj);
            throw new MatchError(obj);
        } else {
            num = ((BoxedUnit[]) obj)[i];
        }
        return num;
    }

    public Object array_clone(Object obj) {
        Object[] objArr;
        if (obj instanceof Object[]) {
            objArr = ArrayRuntime.cloneArray((Object[]) obj);
        } else if (obj instanceof int[]) {
            objArr = ArrayRuntime.cloneArray((int[]) obj);
        } else if (obj instanceof double[]) {
            objArr = ArrayRuntime.cloneArray((double[]) obj);
        } else if (obj instanceof long[]) {
            objArr = ArrayRuntime.cloneArray((long[]) obj);
        } else if (obj instanceof float[]) {
            objArr = ArrayRuntime.cloneArray((float[]) obj);
        } else if (obj instanceof char[]) {
            objArr = ArrayRuntime.cloneArray((char[]) obj);
        } else if (obj instanceof byte[]) {
            objArr = ArrayRuntime.cloneArray((byte[]) obj);
        } else if (obj instanceof short[]) {
            objArr = ArrayRuntime.cloneArray((short[]) obj);
        } else if (obj instanceof boolean[]) {
            objArr = ArrayRuntime.cloneArray((boolean[]) obj);
        } else if (!(obj instanceof BoxedUnit[])) {
            Objects.requireNonNull(obj);
            throw new MatchError(obj);
        } else {
            objArr = (BoxedUnit[]) obj;
        }
        return objArr;
    }

    public int array_length(Object obj) {
        int i;
        if (obj instanceof Object[]) {
            i = ((Object[]) obj).length;
        } else if (obj instanceof int[]) {
            i = ((int[]) obj).length;
        } else if (obj instanceof double[]) {
            i = ((double[]) obj).length;
        } else if (obj instanceof long[]) {
            i = ((long[]) obj).length;
        } else if (obj instanceof float[]) {
            i = ((float[]) obj).length;
        } else if (obj instanceof char[]) {
            i = ((char[]) obj).length;
        } else if (obj instanceof byte[]) {
            i = ((byte[]) obj).length;
        } else if (obj instanceof short[]) {
            i = ((short[]) obj).length;
        } else if (obj instanceof boolean[]) {
            i = ((boolean[]) obj).length;
        } else if (!(obj instanceof BoxedUnit[])) {
            Objects.requireNonNull(obj);
            throw new MatchError(obj);
        } else {
            i = ((BoxedUnit[]) obj).length;
        }
        return i;
    }

    public void array_update(Object obj, int i, Object obj2) {
        if (obj instanceof Object[]) {
            ((Object[]) obj)[i] = obj2;
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        } else if (obj instanceof int[]) {
            ((int[]) obj)[i] = BoxesRunTime.unboxToInt(obj2);
            BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
        } else if (obj instanceof double[]) {
            ((double[]) obj)[i] = BoxesRunTime.unboxToDouble(obj2);
            BoxedUnit boxedUnit3 = BoxedUnit.UNIT;
        } else if (obj instanceof long[]) {
            ((long[]) obj)[i] = BoxesRunTime.unboxToLong(obj2);
            BoxedUnit boxedUnit4 = BoxedUnit.UNIT;
        } else if (obj instanceof float[]) {
            ((float[]) obj)[i] = BoxesRunTime.unboxToFloat(obj2);
            BoxedUnit boxedUnit5 = BoxedUnit.UNIT;
        } else if (obj instanceof char[]) {
            ((char[]) obj)[i] = BoxesRunTime.unboxToChar(obj2);
            BoxedUnit boxedUnit6 = BoxedUnit.UNIT;
        } else if (obj instanceof byte[]) {
            ((byte[]) obj)[i] = BoxesRunTime.unboxToByte(obj2);
            BoxedUnit boxedUnit7 = BoxedUnit.UNIT;
        } else if (obj instanceof short[]) {
            ((short[]) obj)[i] = BoxesRunTime.unboxToShort(obj2);
            BoxedUnit boxedUnit8 = BoxedUnit.UNIT;
        } else if (obj instanceof boolean[]) {
            ((boolean[]) obj)[i] = BoxesRunTime.unboxToBoolean(obj2);
            BoxedUnit boxedUnit9 = BoxedUnit.UNIT;
        } else if (!(obj instanceof BoxedUnit[])) {
            Objects.requireNonNull(obj);
            throw new MatchError(obj);
        } else {
            ((BoxedUnit[]) obj)[i] = (BoxedUnit) obj2;
            BoxedUnit boxedUnit10 = BoxedUnit.UNIT;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x0107, code lost:
        if (r0.equals(r4) != false) goto L65;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> java.lang.Class<?> box(java.lang.Class<T> r4) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.runtime.ScalaRunTime$.box(java.lang.Class):java.lang.Class");
    }

    public <T> T checkInitialized(T t) {
        if (t != null) {
            return t;
        }
        throw new UninitializedError();
    }

    public <Repr> Repr drop(Repr repr, int i, IsTraversableLike<Repr> isTraversableLike) {
        return isTraversableLike.conversion().apply(repr).drop(i);
    }

    public Method ensureAccessible(Method method) {
        return (Method) package$.MODULE$.ensureAccessible(method);
    }

    public int hash(byte b) {
        return b;
    }

    public int hash(char c) {
        return c;
    }

    public int hash(double d) {
        int i = (int) d;
        if (i == d) {
            return i;
        }
        long j = (long) d;
        if (j == d) {
            return BoxesRunTime.boxToLong(j).hashCode();
        }
        float f = (float) d;
        return (((double) f) == d ? BoxesRunTime.boxToFloat(f) : BoxesRunTime.boxToDouble(d)).hashCode();
    }

    public int hash(float f) {
        int i = (int) f;
        if (i == f) {
            return i;
        }
        long j = f;
        return ((double) j) == ((double) f) ? hash(j) : BoxesRunTime.boxToFloat(f).hashCode();
    }

    public int hash(int i) {
        return i;
    }

    public int hash(long j) {
        int i = (int) j;
        return i ^ (((int) (j >>> 32)) + (i >>> 31));
    }

    public int hash(Number number) {
        return BoxesRunTime.hashFromNumber(number);
    }

    public int hash(Object obj) {
        return obj == null ? 0 : obj instanceof Number ? BoxesRunTime.hashFromNumber((Number) obj) : obj.hashCode();
    }

    public int hash(BoxedUnit boxedUnit) {
        return 0;
    }

    public int hash(short s) {
        return s;
    }

    public int hash(boolean z) {
        return BoxesRunTime.boxToBoolean(z).hashCode();
    }

    public boolean inlinedEquals(Object obj, Object obj2) {
        return obj == obj2 ? true : obj == null ? false : obj instanceof Number ? BoxesRunTime.equalsNumObject((Number) obj, obj2) : obj instanceof Character ? BoxesRunTime.equalsCharObject((Character) obj, obj2) : obj.equals(obj2);
    }

    public boolean isAnyVal(Object obj) {
        boolean z = true;
        if (!(obj instanceof Byte) && !(obj instanceof Short) && !(obj instanceof Character) && !(obj instanceof Integer) && !(obj instanceof Long) && !(obj instanceof Float) && !(obj instanceof Double) && !(obj instanceof Boolean) && !(obj instanceof BoxedUnit)) {
            z = false;
        }
        return z;
    }

    public boolean isArray(Object obj, int i) {
        return obj != null && isArrayClass(obj.getClass(), i);
    }

    public int isArray$default$2() {
        return 1;
    }

    public boolean isTuple(Object obj) {
        return obj != null && obj.getClass().getName().startsWith("scala.Tuple");
    }

    public boolean isValueClass(Class<?> cls) {
        return cls.isPrimitive();
    }

    public String replStringOf(Object obj, int i) {
        String stringOf = stringOf(obj, i);
        return new StringBuilder().append(stringOf.contains("\n") ? "\n" : "").append((Object) stringOf).append((Object) "\n").toString();
    }

    public boolean sameElements(Seq<Object> seq, Seq<Object> seq2) {
        return seq.sameElements(seq2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x006c, code lost:
        if (r0.isWhitespace$extension(scala.runtime.BoxesRunTime.unboxToChar(new scala.collection.immutable.StringOps(r0).last())) != false) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String scala$runtime$ScalaRunTime$$inner$1(java.lang.Object r6, int r7) {
        /*
            Method dump skipped, instructions count: 536
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.runtime.ScalaRunTime$.scala$runtime$ScalaRunTime$$inner$1(java.lang.Object, int):java.lang.String");
    }

    public final String scala$runtime$ScalaRunTime$$mapInner$1(Object obj, int i) {
        String str;
        if (obj instanceof Tuple2) {
            Tuple2 tuple2 = (Tuple2) obj;
            str = new StringBuilder().append((Object) scala$runtime$ScalaRunTime$$inner$1(tuple2.mo269_1(), i)).append((Object) " -> ").append((Object) scala$runtime$ScalaRunTime$$inner$1(tuple2.mo268_2(), i)).toString();
        } else {
            str = scala$runtime$ScalaRunTime$$inner$1(obj, i);
        }
        return str;
    }

    public String stringOf(Object obj) {
        return stringOf(obj, Integer.MAX_VALUE);
    }

    public String stringOf(Object obj, int i) {
        String str;
        try {
            str = scala$runtime$ScalaRunTime$$inner$1(obj, i);
        } catch (Throwable th) {
            boolean z = true;
            if (!(th instanceof UnsupportedOperationException) && !(th instanceof AssertionError)) {
                z = false;
            }
            if (!z) {
                throw th;
            }
            str = String.valueOf(obj);
        }
        return str;
    }

    public <T> Object[] toArray(Seq<T> seq) {
        Object[] objArr = new Object[seq.length()];
        seq.foreach(new ScalaRunTime$$anonfun$toArray$1(objArr, IntRef.create(0)));
        return objArr;
    }

    public Object[] toObjectArray(Object obj) {
        Object[] objArr;
        if (obj instanceof Object[]) {
            objArr = (Object[]) obj;
        } else {
            int array_length = array_length(obj);
            Object[] objArr2 = new Object[array_length];
            Predef$ predef$ = Predef$.MODULE$;
            Range$ range$ = Range$.MODULE$;
            Range range = new Range(0, array_length, 1);
            range.scala$collection$immutable$Range$$validateMaxLength();
            boolean z = (range.start() == Integer.MIN_VALUE && range.end() == Integer.MIN_VALUE) ? false : true;
            int start = range.start();
            int terminalElement = range.terminalElement();
            int step = range.step();
            int i = 0;
            while (true) {
                if (!(!z ? i < range.numRangeElements() : start != terminalElement)) {
                    break;
                }
                ScalaRunTime$ scalaRunTime$ = MODULE$;
                scalaRunTime$.array_update(objArr2, start, scalaRunTime$.array_apply(obj, start));
                i++;
                start += step;
            }
            objArr = objArr2;
        }
        return objArr;
    }

    public <T> Iterator<T> typedProductIterator(Product product) {
        return new AbstractIterator<T>(product) { // from class: scala.runtime.ScalaRunTime$$anon$1

            /* renamed from: c */
            private int f1630c = 0;
            private final int cmax;
            private final Product x$2;

            {
                this.x$2 = product;
                this.cmax = product.productArity();
            }

            /* renamed from: c */
            private int m19c() {
                return this.f1630c;
            }

            private void c_$eq(int i) {
                this.f1630c = i;
            }

            private int cmax() {
                return this.cmax;
            }

            @Override // scala.collection.Iterator
            public boolean hasNext() {
                return m19c() < cmax();
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
            @Override // scala.collection.Iterator
            public T next() {
                ?? productElement = this.x$2.productElement(m19c());
                c_$eq(m19c() + 1);
                return productElement;
            }
        };
    }
}
