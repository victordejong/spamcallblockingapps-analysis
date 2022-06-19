package scala;

import scala.DeprecatedPredef;
import scala.Predef;
import scala.collection.IndexedSeq;
import scala.collection.Seq;
import scala.collection.generic.CanBuildFrom;
import scala.collection.immutable.List;
import scala.collection.immutable.List$;
import scala.collection.immutable.Map$;
import scala.collection.immutable.Set$;
import scala.collection.immutable.StringOps;
import scala.collection.mutable.ArrayOps;
import scala.collection.mutable.Builder;
import scala.collection.mutable.StringBuilder;
import scala.collection.mutable.StringBuilder$;
import scala.reflect.ClassManifestFactory$;
import scala.reflect.ClassTag;
import scala.reflect.Manifest;
import scala.reflect.ManifestFactory$;
import scala.reflect.NoManifest$;
import scala.reflect.OptManifest;
import scala.reflect.package$;
import scala.runtime.BoxedUnit;
import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/Predef$.class */
public final class Predef$ extends LowPriorityImplicits implements DeprecatedPredef {
    public static final Predef$ MODULE$ = null;
    private final Map$ Map = Map$.MODULE$;
    private final Set$ Set = Set$.MODULE$;
    private final ClassManifestFactory$ ClassManifest = package$.MODULE$.ClassManifest();
    private final ManifestFactory$ Manifest = package$.MODULE$.Manifest();
    private final NoManifest$ NoManifest = NoManifest$.MODULE$;
    private final CanBuildFrom<String, Object, String> StringCanBuildFrom = new CanBuildFrom<String, Object, String>() { // from class: scala.Predef$$anon$3
        @Override // scala.collection.generic.CanBuildFrom
        public Builder<Object, String> apply() {
            return StringBuilder$.MODULE$.newBuilder();
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.mutable.StringBuilder] */
        public StringBuilder apply(String str) {
            return apply();
        }
    };
    private final Predef$$less$colon$less<Object, Object> singleton_$less$colon$less = new Predef$$less$colon$less<Object, Object>() { // from class: scala.Predef$$anon$1
        @Override // scala.Function1
        public Object apply(Object obj) {
            return obj;
        }
    };
    public final Predef$$eq$colon$eq<Object, Object> scala$Predef$$singleton_$eq$colon$eq = new Predef$$eq$colon$eq<Object, Object>() { // from class: scala.Predef$$anon$2
        @Override // scala.Function1
        public Object apply(Object obj) {
            return obj;
        }
    };

    static {
        new Predef$();
    }

    private Predef$() {
        MODULE$ = this;
        DeprecatedPredef.Cclass.$init$(this);
        package$ package_ = package$.MODULE$;
        List$ list$ = List$.MODULE$;
    }

    public <A> Predef$$less$colon$less<A, A> $conforms() {
        return (Predef$$less$colon$less<A, A>) this.singleton_$less$colon$less;
    }

    public Nothing$ $qmark$qmark$qmark() {
        throw new NotImplementedError();
    }

    public Predef.ArrayCharSequence ArrayCharSequence(char[] cArr) {
        return new Predef.ArrayCharSequence(cArr);
    }

    public <A> A ArrowAssoc(A a) {
        return a;
    }

    public boolean Boolean2boolean(Boolean bool) {
        return bool.booleanValue();
    }

    public byte Byte2byte(Byte b) {
        return b.byteValue();
    }

    public char Character2char(Character ch) {
        return ch.charValue();
    }

    public ClassManifestFactory$ ClassManifest() {
        return this.ClassManifest;
    }

    public double Double2double(Double d) {
        return d.doubleValue();
    }

    public <A> A Ensuring(A a) {
        return a;
    }

    public float Float2float(Float f) {
        return f.floatValue();
    }

    public int Integer2int(Integer num) {
        return num.intValue();
    }

    public long Long2long(Long l) {
        return l.longValue();
    }

    public ManifestFactory$ Manifest() {
        return this.Manifest;
    }

    public Map$ Map() {
        return this.Map;
    }

    public NoManifest$ NoManifest() {
        return this.NoManifest;
    }

    public Throwable RichException(Throwable th) {
        return th;
    }

    public Predef.SeqCharSequence SeqCharSequence(IndexedSeq<Object> indexedSeq) {
        return new Predef.SeqCharSequence(indexedSeq);
    }

    public Set$ Set() {
        return this.Set;
    }

    public short Short2short(Short sh) {
        return sh.shortValue();
    }

    public Object StringAdd(Object obj) {
        return new Predef.StringAdd(obj);
    }

    public CanBuildFrom<String, Object, String> StringCanBuildFrom() {
        return this.StringCanBuildFrom;
    }

    public <A> A StringFormat(A a) {
        return a;
    }

    @Override // scala.DeprecatedPredef
    public <A> A any2ArrowAssoc(A a) {
        return (A) DeprecatedPredef.Cclass.any2ArrowAssoc(this, a);
    }

    @Override // scala.DeprecatedPredef
    public <A> A any2Ensuring(A a) {
        return (A) DeprecatedPredef.Cclass.any2Ensuring(this, a);
    }

    public <A> A any2stringadd(A a) {
        return a;
    }

    @Override // scala.DeprecatedPredef
    public Object any2stringfmt(Object obj) {
        return DeprecatedPredef.Cclass.any2stringfmt(this, obj);
    }

    @Override // scala.DeprecatedPredef
    public CharSequence arrayToCharSequence(char[] cArr) {
        return DeprecatedPredef.Cclass.arrayToCharSequence(this, cArr);
    }

    /* renamed from: assert */
    public void m5971assert(boolean z) {
        if (z) {
            return;
        }
        throw new AssertionError("assertion failed");
    }

    /* renamed from: assert */
    public final void m5972assert(boolean z, Function0<Object> function0) {
        if (z) {
            return;
        }
        throw new AssertionError(new StringBuilder().append((Object) "assertion failed: ").append(function0.apply()).toString());
    }

    public void assume(boolean z) {
        if (z) {
            return;
        }
        throw new AssertionError("assumption failed");
    }

    public final void assume(boolean z, Function0<Object> function0) {
        if (z) {
            return;
        }
        throw new AssertionError(new StringBuilder().append((Object) "assumption failed: ").append(function0.apply()).toString());
    }

    public String augmentString(String str) {
        return str;
    }

    public Boolean boolean2Boolean(boolean z) {
        return Boolean.valueOf(z);
    }

    public ArrayOps<Object> booleanArrayOps(boolean[] zArr) {
        return new ArrayOps.ofBoolean(zArr);
    }

    public Byte byte2Byte(byte b) {
        return Byte.valueOf(b);
    }

    public ArrayOps<Object> byteArrayOps(byte[] bArr) {
        return new ArrayOps.ofByte(bArr);
    }

    public Character char2Character(char c) {
        return Character.valueOf(c);
    }

    public ArrayOps<Object> charArrayOps(char[] cArr) {
        return new ArrayOps.ofChar(cArr);
    }

    public <T> ClassTag<T> classManifest(ClassTag<T> classTag) {
        return classTag;
    }

    public <T> Class<T> classOf() {
        return null;
    }

    public <A> Predef$$less$colon$less<A, A> conforms() {
        return $conforms();
    }

    public Double double2Double(double d) {
        return Double.valueOf(d);
    }

    public ArrayOps<Object> doubleArrayOps(double[] dArr) {
        return new ArrayOps.ofDouble(dArr);
    }

    public Nothing$ error(String str) {
        return scala.sys.package$.MODULE$.error(str);
    }

    @Override // scala.DeprecatedPredef
    public Throwable exceptionWrapper(Throwable th) {
        return DeprecatedPredef.Cclass.exceptionWrapper(this, th);
    }

    public Float float2Float(float f) {
        return Float.valueOf(f);
    }

    public ArrayOps<Object> floatArrayOps(float[] fArr) {
        return new ArrayOps.ofFloat(fArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [scala.Predef$] */
    public <T> ArrayOps<T> genericArrayOps(Object obj) {
        ArrayOps arrayOps;
        if (obj instanceof Object[]) {
            arrayOps = refArrayOps((Object[]) obj);
        } else if (obj instanceof boolean[]) {
            arrayOps = booleanArrayOps((boolean[]) obj);
        } else if (obj instanceof byte[]) {
            arrayOps = byteArrayOps((byte[]) obj);
        } else if (obj instanceof char[]) {
            arrayOps = charArrayOps((char[]) obj);
        } else if (obj instanceof double[]) {
            arrayOps = doubleArrayOps((double[]) obj);
        } else if (obj instanceof float[]) {
            arrayOps = floatArrayOps((float[]) obj);
        } else if (obj instanceof int[]) {
            arrayOps = intArrayOps((int[]) obj);
        } else if (obj instanceof long[]) {
            arrayOps = longArrayOps((long[]) obj);
        } else if (obj instanceof short[]) {
            arrayOps = shortArrayOps((short[]) obj);
        } else if (obj instanceof BoxedUnit[]) {
            arrayOps = unitArrayOps((BoxedUnit[]) obj);
        } else if (obj != null) {
            throw new MatchError(obj);
        } else {
            arrayOps = null;
        }
        return arrayOps;
    }

    public <A> A identity(A a) {
        return a;
    }

    public <T> T implicitly(T t) {
        return t;
    }

    public Integer int2Integer(int i) {
        return Integer.valueOf(i);
    }

    public ArrayOps<Object> intArrayOps(int[] iArr) {
        return new ArrayOps.ofInt(iArr);
    }

    public <T> T locally(T t) {
        return t;
    }

    public Long long2Long(long j) {
        return Long.valueOf(j);
    }

    public ArrayOps<Object> longArrayOps(long[] jArr) {
        return new ArrayOps.ofLong(jArr);
    }

    public <T> Manifest<T> manifest(Manifest<T> manifest) {
        return manifest;
    }

    public <T> OptManifest<T> optManifest(OptManifest<T> optManifest) {
        return optManifest;
    }

    public void print(Object obj) {
        Console$.MODULE$.print(obj);
    }

    public void printf(String str, Seq<Object> seq) {
        Console$.MODULE$.print(new StringOps(str).format(seq));
    }

    public void println() {
        Console$.MODULE$.println();
    }

    public void println(Object obj) {
        Console$.MODULE$.println(obj);
    }

    @Override // scala.DeprecatedPredef
    public boolean readBoolean() {
        return DeprecatedPredef.Cclass.readBoolean(this);
    }

    @Override // scala.DeprecatedPredef
    public byte readByte() {
        return DeprecatedPredef.Cclass.readByte(this);
    }

    @Override // scala.DeprecatedPredef
    public char readChar() {
        return DeprecatedPredef.Cclass.readChar(this);
    }

    @Override // scala.DeprecatedPredef
    public double readDouble() {
        return DeprecatedPredef.Cclass.readDouble(this);
    }

    @Override // scala.DeprecatedPredef
    public float readFloat() {
        return DeprecatedPredef.Cclass.readFloat(this);
    }

    @Override // scala.DeprecatedPredef
    public int readInt() {
        return DeprecatedPredef.Cclass.readInt(this);
    }

    @Override // scala.DeprecatedPredef
    public String readLine() {
        return DeprecatedPredef.Cclass.readLine(this);
    }

    @Override // scala.DeprecatedPredef
    public String readLine(String str, Seq<Object> seq) {
        return DeprecatedPredef.Cclass.readLine(this, str, seq);
    }

    @Override // scala.DeprecatedPredef
    public long readLong() {
        return DeprecatedPredef.Cclass.readLong(this);
    }

    @Override // scala.DeprecatedPredef
    public short readShort() {
        return DeprecatedPredef.Cclass.readShort(this);
    }

    @Override // scala.DeprecatedPredef
    public List<Object> readf(String str) {
        return DeprecatedPredef.Cclass.readf(this, str);
    }

    @Override // scala.DeprecatedPredef
    public Object readf1(String str) {
        return DeprecatedPredef.Cclass.readf1(this, str);
    }

    @Override // scala.DeprecatedPredef
    public Tuple2<Object, Object> readf2(String str) {
        return DeprecatedPredef.Cclass.readf2(this, str);
    }

    @Override // scala.DeprecatedPredef
    public Tuple3<Object, Object, Object> readf3(String str) {
        return DeprecatedPredef.Cclass.readf3(this, str);
    }

    public <T> ArrayOps<T> refArrayOps(T[] tArr) {
        return new ArrayOps.ofRef(tArr);
    }

    public void require(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException("requirement failed");
    }

    public final void require(boolean z, Function0<Object> function0) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(new StringBuilder().append((Object) "requirement failed: ").append(function0.apply()).toString());
    }

    @Override // scala.DeprecatedPredef
    public CharSequence seqToCharSequence(IndexedSeq<Object> indexedSeq) {
        return DeprecatedPredef.Cclass.seqToCharSequence(this, indexedSeq);
    }

    public Short short2Short(short s) {
        return Short.valueOf(s);
    }

    public ArrayOps<Object> shortArrayOps(short[] sArr) {
        return new ArrayOps.ofShort(sArr);
    }

    public <T1, T2> Tuple2<T1, T2> tuple2ToZippedOps(Tuple2<T1, T2> tuple2) {
        return tuple2;
    }

    public <T1, T2, T3> Tuple3<T1, T2, T3> tuple3ToZippedOps(Tuple3<T1, T2, T3> tuple3) {
        return tuple3;
    }

    public String unaugmentString(String str) {
        return str;
    }

    public ArrayOps<BoxedUnit> unitArrayOps(BoxedUnit[] boxedUnitArr) {
        return new ArrayOps.ofUnit(boxedUnitArr);
    }
}
