package scala.reflect;

import scala.None$;
import scala.Option;
import scala.Predef$;
import scala.Some;
import scala.collection.Seq;
import scala.collection.immutable.List;
import scala.collection.immutable.List$;
import scala.collection.immutable.Nil$;
import scala.collection.mutable.ArrayBuilder;
import scala.collection.mutable.StringBuilder;
import scala.collection.mutable.WrappedArray;
import scala.reflect.ClassManifestDeprecatedApis;
import scala.reflect.ClassTag;
import scala.reflect.Manifest;
import scala.reflect.ManifestFactory;
import scala.runtime.BoxedUnit;
import scala.runtime.Nothing$;
import scala.runtime.Null$;
/* loaded from: classes3-dex2jar.jar:scala/reflect/ManifestFactory$.class */
public final class ManifestFactory$ {
    public static final ManifestFactory$ MODULE$ = null;
    private final AnyValManifest<Object> Byte = new AnyValManifest<Object>() { // from class: scala.reflect.ManifestFactory$$anon$6
        private Object readResolve() {
            return package$.MODULE$.Manifest().Byte();
        }

        @Override // scala.reflect.AnyValManifest, scala.reflect.ClassTag, scala.reflect.ClassManifestDeprecatedApis
        public byte[] newArray(int i) {
            return new byte[i];
        }

        @Override // scala.reflect.AnyValManifest, scala.reflect.ClassManifestDeprecatedApis
        public ArrayBuilder<Object> newArrayBuilder() {
            return new ArrayBuilder.ofByte();
        }

        @Override // scala.reflect.AnyValManifest, scala.reflect.ClassManifestDeprecatedApis
        public WrappedArray<Object> newWrappedArray(int i) {
            return new WrappedArray.ofByte(new byte[i]);
        }

        @Override // scala.reflect.ClassTag
        public Class<Byte> runtimeClass() {
            return Byte.TYPE;
        }
    };
    private final AnyValManifest<Object> Short = new AnyValManifest<Object>() { // from class: scala.reflect.ManifestFactory$$anon$7
        private Object readResolve() {
            return package$.MODULE$.Manifest().Short();
        }

        @Override // scala.reflect.AnyValManifest, scala.reflect.ClassTag, scala.reflect.ClassManifestDeprecatedApis
        public short[] newArray(int i) {
            return new short[i];
        }

        @Override // scala.reflect.AnyValManifest, scala.reflect.ClassManifestDeprecatedApis
        public ArrayBuilder<Object> newArrayBuilder() {
            return new ArrayBuilder.ofShort();
        }

        @Override // scala.reflect.AnyValManifest, scala.reflect.ClassManifestDeprecatedApis
        public WrappedArray<Object> newWrappedArray(int i) {
            return new WrappedArray.ofShort(new short[i]);
        }

        @Override // scala.reflect.ClassTag
        public Class<Short> runtimeClass() {
            return Short.TYPE;
        }
    };
    private final AnyValManifest<Object> Char = new AnyValManifest<Object>() { // from class: scala.reflect.ManifestFactory$$anon$8
        private Object readResolve() {
            return package$.MODULE$.Manifest().Char();
        }

        @Override // scala.reflect.AnyValManifest, scala.reflect.ClassTag, scala.reflect.ClassManifestDeprecatedApis
        public char[] newArray(int i) {
            return new char[i];
        }

        @Override // scala.reflect.AnyValManifest, scala.reflect.ClassManifestDeprecatedApis
        public ArrayBuilder<Object> newArrayBuilder() {
            return new ArrayBuilder.ofChar();
        }

        @Override // scala.reflect.AnyValManifest, scala.reflect.ClassManifestDeprecatedApis
        public WrappedArray<Object> newWrappedArray(int i) {
            return new WrappedArray.ofChar(new char[i]);
        }

        @Override // scala.reflect.ClassTag
        public Class<Character> runtimeClass() {
            return Character.TYPE;
        }
    };
    private final AnyValManifest<Object> Int = new AnyValManifest<Object>() { // from class: scala.reflect.ManifestFactory$$anon$9
        private Object readResolve() {
            return package$.MODULE$.Manifest().Int();
        }

        @Override // scala.reflect.AnyValManifest, scala.reflect.ClassTag, scala.reflect.ClassManifestDeprecatedApis
        public int[] newArray(int i) {
            return new int[i];
        }

        @Override // scala.reflect.AnyValManifest, scala.reflect.ClassManifestDeprecatedApis
        public ArrayBuilder<Object> newArrayBuilder() {
            return new ArrayBuilder.ofInt();
        }

        @Override // scala.reflect.AnyValManifest, scala.reflect.ClassManifestDeprecatedApis
        public WrappedArray<Object> newWrappedArray(int i) {
            return new WrappedArray.ofInt(new int[i]);
        }

        @Override // scala.reflect.ClassTag
        public Class<Integer> runtimeClass() {
            return Integer.TYPE;
        }
    };
    private final AnyValManifest<Object> Long = new AnyValManifest<Object>() { // from class: scala.reflect.ManifestFactory$$anon$10
        private Object readResolve() {
            return package$.MODULE$.Manifest().Long();
        }

        @Override // scala.reflect.AnyValManifest, scala.reflect.ClassTag, scala.reflect.ClassManifestDeprecatedApis
        public long[] newArray(int i) {
            return new long[i];
        }

        @Override // scala.reflect.AnyValManifest, scala.reflect.ClassManifestDeprecatedApis
        public ArrayBuilder<Object> newArrayBuilder() {
            return new ArrayBuilder.ofLong();
        }

        @Override // scala.reflect.AnyValManifest, scala.reflect.ClassManifestDeprecatedApis
        public WrappedArray<Object> newWrappedArray(int i) {
            return new WrappedArray.ofLong(new long[i]);
        }

        @Override // scala.reflect.ClassTag
        public Class<Long> runtimeClass() {
            return Long.TYPE;
        }
    };
    private final AnyValManifest<Object> Float = new AnyValManifest<Object>() { // from class: scala.reflect.ManifestFactory$$anon$11
        private Object readResolve() {
            return package$.MODULE$.Manifest().Float();
        }

        @Override // scala.reflect.AnyValManifest, scala.reflect.ClassTag, scala.reflect.ClassManifestDeprecatedApis
        public float[] newArray(int i) {
            return new float[i];
        }

        @Override // scala.reflect.AnyValManifest, scala.reflect.ClassManifestDeprecatedApis
        public ArrayBuilder<Object> newArrayBuilder() {
            return new ArrayBuilder.ofFloat();
        }

        @Override // scala.reflect.AnyValManifest, scala.reflect.ClassManifestDeprecatedApis
        public WrappedArray<Object> newWrappedArray(int i) {
            return new WrappedArray.ofFloat(new float[i]);
        }

        @Override // scala.reflect.ClassTag
        public Class<Float> runtimeClass() {
            return Float.TYPE;
        }
    };
    private final AnyValManifest<Object> Double = new AnyValManifest<Object>() { // from class: scala.reflect.ManifestFactory$$anon$12
        private Object readResolve() {
            return package$.MODULE$.Manifest().Double();
        }

        @Override // scala.reflect.AnyValManifest, scala.reflect.ClassTag, scala.reflect.ClassManifestDeprecatedApis
        public double[] newArray(int i) {
            return new double[i];
        }

        @Override // scala.reflect.AnyValManifest, scala.reflect.ClassManifestDeprecatedApis
        public ArrayBuilder<Object> newArrayBuilder() {
            return new ArrayBuilder.ofDouble();
        }

        @Override // scala.reflect.AnyValManifest, scala.reflect.ClassManifestDeprecatedApis
        public WrappedArray<Object> newWrappedArray(int i) {
            return new WrappedArray.ofDouble(new double[i]);
        }

        @Override // scala.reflect.ClassTag
        public Class<Double> runtimeClass() {
            return Double.TYPE;
        }
    };
    private final AnyValManifest<Object> Boolean = new AnyValManifest<Object>() { // from class: scala.reflect.ManifestFactory$$anon$13
        private Object readResolve() {
            return package$.MODULE$.Manifest().Boolean();
        }

        @Override // scala.reflect.AnyValManifest, scala.reflect.ClassTag, scala.reflect.ClassManifestDeprecatedApis
        public boolean[] newArray(int i) {
            return new boolean[i];
        }

        @Override // scala.reflect.AnyValManifest, scala.reflect.ClassManifestDeprecatedApis
        public ArrayBuilder<Object> newArrayBuilder() {
            return new ArrayBuilder.ofBoolean();
        }

        @Override // scala.reflect.AnyValManifest, scala.reflect.ClassManifestDeprecatedApis
        public WrappedArray<Object> newWrappedArray(int i) {
            return new WrappedArray.ofBoolean(new boolean[i]);
        }

        @Override // scala.reflect.ClassTag
        public Class<Boolean> runtimeClass() {
            return Boolean.TYPE;
        }
    };
    private final AnyValManifest<BoxedUnit> Unit = new AnyValManifest<BoxedUnit>() { // from class: scala.reflect.ManifestFactory$$anon$14
        private Object readResolve() {
            return package$.MODULE$.Manifest().Unit();
        }

        @Override // scala.reflect.AnyValManifest, scala.reflect.ClassTag, scala.reflect.ClassManifestDeprecatedApis
        public BoxedUnit[] newArray(int i) {
            return new BoxedUnit[i];
        }

        @Override // scala.reflect.AnyValManifest, scala.reflect.ClassManifestDeprecatedApis
        public ArrayBuilder<BoxedUnit> newArrayBuilder() {
            return new ArrayBuilder.ofUnit();
        }

        @Override // scala.reflect.AnyValManifest, scala.reflect.ClassManifestDeprecatedApis
        public WrappedArray<BoxedUnit> newWrappedArray(int i) {
            return new WrappedArray.ofUnit(new BoxedUnit[i]);
        }

        @Override // scala.reflect.ClassTag
        public Class<Void> runtimeClass() {
            return Void.TYPE;
        }
    };
    private final Class<Object> scala$reflect$ManifestFactory$$ObjectTYPE = Object.class;
    private final Class<Nothing$> scala$reflect$ManifestFactory$$NothingTYPE = Nothing$.class;
    private final Class<Null$> scala$reflect$ManifestFactory$$NullTYPE = Null$.class;
    private final Manifest<Object> Any = new ManifestFactory.PhantomManifest<Object>() { // from class: scala.reflect.ManifestFactory$$anon$1
        {
            ManifestFactory$.MODULE$.scala$reflect$ManifestFactory$$ObjectTYPE();
        }

        private Object readResolve() {
            return package$.MODULE$.Manifest().Any();
        }

        @Override // scala.reflect.ManifestFactory.ClassTypeManifest, scala.reflect.ClassManifestDeprecatedApis
        public boolean $less$colon$less(ClassTag<?> classTag) {
            return classTag == this;
        }

        @Override // scala.reflect.ManifestFactory.ClassTypeManifest, scala.reflect.ClassTag, scala.reflect.ClassManifestDeprecatedApis
        public Object[] newArray(int i) {
            return new Object[i];
        }
    };
    private final Manifest<Object> Object = new ManifestFactory.PhantomManifest<Object>() { // from class: scala.reflect.ManifestFactory$$anon$2
        {
            ManifestFactory$.MODULE$.scala$reflect$ManifestFactory$$ObjectTYPE();
        }

        private Object readResolve() {
            return package$.MODULE$.Manifest().Object();
        }

        @Override // scala.reflect.ManifestFactory.ClassTypeManifest, scala.reflect.ClassManifestDeprecatedApis
        public boolean $less$colon$less(ClassTag<?> classTag) {
            return classTag == this || classTag == ManifestFactory$.MODULE$.Any();
        }

        @Override // scala.reflect.ManifestFactory.ClassTypeManifest, scala.reflect.ClassTag, scala.reflect.ClassManifestDeprecatedApis
        public Object[] newArray(int i) {
            return new Object[i];
        }
    };
    private final Manifest<Object> AnyRef = Object();
    private final Manifest<Object> AnyVal = new ManifestFactory.PhantomManifest<Object>() { // from class: scala.reflect.ManifestFactory$$anon$3
        {
            ManifestFactory$.MODULE$.scala$reflect$ManifestFactory$$ObjectTYPE();
        }

        private Object readResolve() {
            return package$.MODULE$.Manifest().AnyVal();
        }

        @Override // scala.reflect.ManifestFactory.ClassTypeManifest, scala.reflect.ClassManifestDeprecatedApis
        public boolean $less$colon$less(ClassTag<?> classTag) {
            return classTag == this || classTag == ManifestFactory$.MODULE$.Any();
        }

        @Override // scala.reflect.ManifestFactory.ClassTypeManifest, scala.reflect.ClassTag, scala.reflect.ClassManifestDeprecatedApis
        public Object[] newArray(int i) {
            return new Object[i];
        }
    };
    private final Manifest<Null$> Null = new ManifestFactory.PhantomManifest<Null$>() { // from class: scala.reflect.ManifestFactory$$anon$4
        {
            ManifestFactory$.MODULE$.scala$reflect$ManifestFactory$$NullTYPE();
        }

        private Object readResolve() {
            return package$.MODULE$.Manifest().Null();
        }

        @Override // scala.reflect.ManifestFactory.ClassTypeManifest, scala.reflect.ClassManifestDeprecatedApis
        public boolean $less$colon$less(ClassTag<?> classTag) {
            return (classTag == null || classTag == ManifestFactory$.MODULE$.Nothing() || classTag.$less$colon$less(ManifestFactory$.MODULE$.AnyVal())) ? false : true;
        }

        @Override // scala.reflect.ManifestFactory.ClassTypeManifest, scala.reflect.ClassTag, scala.reflect.ClassManifestDeprecatedApis
        public Object[] newArray(int i) {
            return new Object[i];
        }
    };
    private final Manifest<Nothing$> Nothing = new ManifestFactory.PhantomManifest<Nothing$>() { // from class: scala.reflect.ManifestFactory$$anon$5
        {
            ManifestFactory$.MODULE$.scala$reflect$ManifestFactory$$NothingTYPE();
        }

        private Object readResolve() {
            return package$.MODULE$.Manifest().Nothing();
        }

        @Override // scala.reflect.ManifestFactory.ClassTypeManifest, scala.reflect.ClassManifestDeprecatedApis
        public boolean $less$colon$less(ClassTag<?> classTag) {
            return classTag != null;
        }

        @Override // scala.reflect.ManifestFactory.ClassTypeManifest, scala.reflect.ClassTag, scala.reflect.ClassManifestDeprecatedApis
        public Object[] newArray(int i) {
            return new Object[i];
        }
    };

    static {
        new ManifestFactory$();
    }

    private ManifestFactory$() {
        MODULE$ = this;
    }

    public Manifest<Object> Any() {
        return this.Any;
    }

    public Manifest<Object> AnyRef() {
        return this.AnyRef;
    }

    public Manifest<Object> AnyVal() {
        return this.AnyVal;
    }

    public AnyValManifest<Object> Boolean() {
        return this.Boolean;
    }

    public AnyValManifest<Object> Byte() {
        return this.Byte;
    }

    public AnyValManifest<Object> Char() {
        return this.Char;
    }

    public AnyValManifest<Object> Double() {
        return this.Double;
    }

    public AnyValManifest<Object> Float() {
        return this.Float;
    }

    public AnyValManifest<Object> Int() {
        return this.Int;
    }

    public AnyValManifest<Object> Long() {
        return this.Long;
    }

    public Manifest<Nothing$> Nothing() {
        return this.Nothing;
    }

    public Manifest<Null$> Null() {
        return this.Null;
    }

    public Manifest<Object> Object() {
        return this.Object;
    }

    public AnyValManifest<Object> Short() {
        return this.Short;
    }

    public AnyValManifest<BoxedUnit> Unit() {
        return this.Unit;
    }

    public <T> Manifest<T> abstractType(Manifest<?> manifest, String str, Class<?> cls, Seq<Manifest<?>> seq) {
        return new Manifest<T>(manifest, str, cls, seq) { // from class: scala.reflect.ManifestFactory$$anon$15
            private final String name$1;
            private final Manifest prefix$1;
            private final List<Manifest<?>> typeArguments;
            private final Class upperBound$1;

            {
                this.prefix$1 = manifest;
                this.name$1 = str;
                this.upperBound$1 = cls;
                ClassManifestDeprecatedApis.Cclass.$init$(this);
                ClassTag.Cclass.$init$(this);
                Manifest.Cclass.$init$(this);
                this.typeArguments = seq.toList();
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public boolean $greater$colon$greater(ClassTag<?> classTag) {
                boolean $less$colon$less;
                $less$colon$less = classTag.$less$colon$less(this);
                return $less$colon$less;
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public boolean $less$colon$less(ClassTag<?> classTag) {
                return ClassManifestDeprecatedApis.Cclass.$less$colon$less(this, classTag);
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public String argString() {
                return ClassManifestDeprecatedApis.Cclass.argString(this);
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public <T> Class<Object> arrayClass(Class<?> cls2) {
                return ClassManifestDeprecatedApis.Cclass.arrayClass(this, cls2);
            }

            @Override // scala.reflect.Manifest, scala.reflect.ClassManifestDeprecatedApis
            public Manifest<Object> arrayManifest() {
                return Manifest.Cclass.arrayManifest(this);
            }

            @Override // scala.reflect.Manifest, scala.reflect.ClassTag, scala.reflect.ClassManifestDeprecatedApis, scala.Equals
            public boolean canEqual(Object obj) {
                return Manifest.Cclass.canEqual(this, obj);
            }

            @Override // scala.reflect.Manifest, scala.reflect.ClassTag, scala.Equals
            public boolean equals(Object obj) {
                return Manifest.Cclass.equals(this, obj);
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public Class<?> erasure() {
                return ClassManifestDeprecatedApis.Cclass.erasure(this);
            }

            @Override // scala.reflect.Manifest, scala.reflect.ClassTag
            public int hashCode() {
                return Manifest.Cclass.hashCode(this);
            }

            @Override // scala.reflect.ClassTag, scala.reflect.ClassManifestDeprecatedApis
            public Object newArray(int i) {
                return ClassTag.Cclass.newArray(this, i);
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public Object[] newArray2(int i) {
                return ClassManifestDeprecatedApis.Cclass.newArray2(this, i);
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public Object[][] newArray3(int i) {
                return ClassManifestDeprecatedApis.Cclass.newArray3(this, i);
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public Object[][][] newArray4(int i) {
                return ClassManifestDeprecatedApis.Cclass.newArray4(this, i);
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public Object[][][][] newArray5(int i) {
                return ClassManifestDeprecatedApis.Cclass.newArray5(this, i);
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public ArrayBuilder<T> newArrayBuilder() {
                return ClassManifestDeprecatedApis.Cclass.newArrayBuilder(this);
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public WrappedArray<T> newWrappedArray(int i) {
                return ClassManifestDeprecatedApis.Cclass.newWrappedArray(this, i);
            }

            @Override // scala.reflect.ClassTag
            public Class<?> runtimeClass() {
                return this.upperBound$1;
            }

            @Override // scala.reflect.ClassTag
            public String toString() {
                return new StringBuilder().append((Object) this.prefix$1.toString()).append((Object) "#").append((Object) this.name$1).append((Object) argString()).toString();
            }

            @Override // scala.reflect.Manifest, scala.reflect.ClassManifestDeprecatedApis
            public List<Manifest<?>> typeArguments() {
                return this.typeArguments;
            }

            @Override // scala.reflect.ClassTag
            public Option<T> unapply(byte b) {
                return ClassTag.Cclass.unapply((ClassTag) this, b);
            }

            @Override // scala.reflect.ClassTag
            public Option<T> unapply(char c) {
                return ClassTag.Cclass.unapply((ClassTag) this, c);
            }

            @Override // scala.reflect.ClassTag
            public Option<T> unapply(double d) {
                return ClassTag.Cclass.unapply(this, d);
            }

            @Override // scala.reflect.ClassTag
            public Option<T> unapply(float f) {
                return ClassTag.Cclass.unapply((ClassTag) this, f);
            }

            @Override // scala.reflect.ClassTag
            public Option<T> unapply(int i) {
                return ClassTag.Cclass.unapply((ClassTag) this, i);
            }

            @Override // scala.reflect.ClassTag
            public Option<T> unapply(long j) {
                return ClassTag.Cclass.unapply((ClassTag) this, j);
            }

            @Override // scala.reflect.ClassTag
            public Option<T> unapply(Object obj) {
                return ClassTag.Cclass.unapply(this, obj);
            }

            @Override // scala.reflect.ClassTag
            public Option<T> unapply(BoxedUnit boxedUnit) {
                return ClassTag.Cclass.unapply((ClassTag) this, boxedUnit);
            }

            @Override // scala.reflect.ClassTag
            public Option<T> unapply(short s) {
                return ClassTag.Cclass.unapply((ClassTag) this, s);
            }

            @Override // scala.reflect.ClassTag
            public Option<T> unapply(boolean z) {
                return ClassTag.Cclass.unapply(this, z);
            }

            @Override // scala.reflect.ClassTag
            public ClassTag<Object> wrap() {
                return ClassTag.Cclass.wrap(this);
            }
        };
    }

    public <T> Manifest<Object> arrayType(Manifest<?> manifest) {
        return manifest.arrayManifest();
    }

    public <T> Manifest<T> classType(Class<?> cls) {
        return new ManifestFactory.ClassTypeManifest(None$.MODULE$, cls, Nil$.MODULE$);
    }

    public <T> Manifest<T> classType(Class<T> cls, Manifest<?> manifest, Seq<Manifest<?>> seq) {
        return new ManifestFactory.ClassTypeManifest(None$.MODULE$, cls, seq.toList().$colon$colon(manifest));
    }

    public <T> Manifest<T> classType(Manifest<?> manifest, Class<?> cls, Seq<Manifest<?>> seq) {
        return new ManifestFactory.ClassTypeManifest(new Some(manifest), cls, seq.toList());
    }

    public <T> Manifest<T> intersectionType(Seq<Manifest<?>> seq) {
        return new Manifest<T>(seq) { // from class: scala.reflect.ManifestFactory$$anon$17
            private final Seq parents$1;

            {
                this.parents$1 = seq;
                ClassManifestDeprecatedApis.Cclass.$init$(this);
                ClassTag.Cclass.$init$(this);
                Manifest.Cclass.$init$(this);
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public boolean $greater$colon$greater(ClassTag<?> classTag) {
                boolean $less$colon$less;
                $less$colon$less = classTag.$less$colon$less(this);
                return $less$colon$less;
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public boolean $less$colon$less(ClassTag<?> classTag) {
                return ClassManifestDeprecatedApis.Cclass.$less$colon$less(this, classTag);
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public String argString() {
                return ClassManifestDeprecatedApis.Cclass.argString(this);
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public <T> Class<Object> arrayClass(Class<?> cls) {
                return ClassManifestDeprecatedApis.Cclass.arrayClass(this, cls);
            }

            @Override // scala.reflect.Manifest, scala.reflect.ClassManifestDeprecatedApis
            public Manifest<Object> arrayManifest() {
                return Manifest.Cclass.arrayManifest(this);
            }

            @Override // scala.reflect.Manifest, scala.reflect.ClassTag, scala.reflect.ClassManifestDeprecatedApis, scala.Equals
            public boolean canEqual(Object obj) {
                return Manifest.Cclass.canEqual(this, obj);
            }

            @Override // scala.reflect.Manifest, scala.reflect.ClassTag, scala.Equals
            public boolean equals(Object obj) {
                return Manifest.Cclass.equals(this, obj);
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public Class<?> erasure() {
                return ClassManifestDeprecatedApis.Cclass.erasure(this);
            }

            @Override // scala.reflect.Manifest, scala.reflect.ClassTag
            public int hashCode() {
                return Manifest.Cclass.hashCode(this);
            }

            @Override // scala.reflect.ClassTag, scala.reflect.ClassManifestDeprecatedApis
            public Object newArray(int i) {
                return ClassTag.Cclass.newArray(this, i);
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public Object[] newArray2(int i) {
                return ClassManifestDeprecatedApis.Cclass.newArray2(this, i);
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public Object[][] newArray3(int i) {
                return ClassManifestDeprecatedApis.Cclass.newArray3(this, i);
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public Object[][][] newArray4(int i) {
                return ClassManifestDeprecatedApis.Cclass.newArray4(this, i);
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public Object[][][][] newArray5(int i) {
                return ClassManifestDeprecatedApis.Cclass.newArray5(this, i);
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public ArrayBuilder<T> newArrayBuilder() {
                return ClassManifestDeprecatedApis.Cclass.newArrayBuilder(this);
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public WrappedArray<T> newWrappedArray(int i) {
                return ClassManifestDeprecatedApis.Cclass.newWrappedArray(this, i);
            }

            @Override // scala.reflect.ClassTag
            public Class<?> runtimeClass() {
                return ((ClassTag) this.parents$1.head()).runtimeClass();
            }

            @Override // scala.reflect.ClassTag
            public String toString() {
                return this.parents$1.mkString(" with ");
            }

            @Override // scala.reflect.Manifest, scala.reflect.ClassManifestDeprecatedApis
            public List<Manifest<?>> typeArguments() {
                return Manifest.Cclass.typeArguments(this);
            }

            @Override // scala.reflect.ClassTag
            public Option<T> unapply(byte b) {
                return ClassTag.Cclass.unapply((ClassTag) this, b);
            }

            @Override // scala.reflect.ClassTag
            public Option<T> unapply(char c) {
                return ClassTag.Cclass.unapply((ClassTag) this, c);
            }

            @Override // scala.reflect.ClassTag
            public Option<T> unapply(double d) {
                return ClassTag.Cclass.unapply(this, d);
            }

            @Override // scala.reflect.ClassTag
            public Option<T> unapply(float f) {
                return ClassTag.Cclass.unapply((ClassTag) this, f);
            }

            @Override // scala.reflect.ClassTag
            public Option<T> unapply(int i) {
                return ClassTag.Cclass.unapply((ClassTag) this, i);
            }

            @Override // scala.reflect.ClassTag
            public Option<T> unapply(long j) {
                return ClassTag.Cclass.unapply((ClassTag) this, j);
            }

            @Override // scala.reflect.ClassTag
            public Option<T> unapply(Object obj) {
                return ClassTag.Cclass.unapply(this, obj);
            }

            @Override // scala.reflect.ClassTag
            public Option<T> unapply(BoxedUnit boxedUnit) {
                return ClassTag.Cclass.unapply((ClassTag) this, boxedUnit);
            }

            @Override // scala.reflect.ClassTag
            public Option<T> unapply(short s) {
                return ClassTag.Cclass.unapply((ClassTag) this, s);
            }

            @Override // scala.reflect.ClassTag
            public Option<T> unapply(boolean z) {
                return ClassTag.Cclass.unapply(this, z);
            }

            @Override // scala.reflect.ClassTag
            public ClassTag<Object> wrap() {
                return ClassTag.Cclass.wrap(this);
            }
        };
    }

    public Class<Nothing$> scala$reflect$ManifestFactory$$NothingTYPE() {
        return this.scala$reflect$ManifestFactory$$NothingTYPE;
    }

    public Class<Null$> scala$reflect$ManifestFactory$$NullTYPE() {
        return this.scala$reflect$ManifestFactory$$NullTYPE;
    }

    public Class<Object> scala$reflect$ManifestFactory$$ObjectTYPE() {
        return this.scala$reflect$ManifestFactory$$ObjectTYPE;
    }

    public <T> Manifest<T> singleType(Object obj) {
        return new ManifestFactory.SingletonTypeManifest(obj);
    }

    public List<AnyValManifest<?>> valueManifests() {
        return List$.MODULE$.apply((Seq) Predef$.MODULE$.wrapRefArray(new AnyValManifest[]{Byte(), Short(), Char(), Int(), Long(), Float(), Double(), Boolean(), Unit()}));
    }

    public <T> Manifest<T> wildcardType(Manifest<?> manifest, Manifest<?> manifest2) {
        return new Manifest<T>(manifest, manifest2) { // from class: scala.reflect.ManifestFactory$$anon$16
            private final Manifest lowerBound$1;
            private final Manifest upperBound$2;

            {
                this.lowerBound$1 = manifest;
                this.upperBound$2 = manifest2;
                ClassManifestDeprecatedApis.Cclass.$init$(this);
                ClassTag.Cclass.$init$(this);
                Manifest.Cclass.$init$(this);
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public boolean $greater$colon$greater(ClassTag<?> classTag) {
                boolean $less$colon$less;
                $less$colon$less = classTag.$less$colon$less(this);
                return $less$colon$less;
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public boolean $less$colon$less(ClassTag<?> classTag) {
                return ClassManifestDeprecatedApis.Cclass.$less$colon$less(this, classTag);
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public String argString() {
                return ClassManifestDeprecatedApis.Cclass.argString(this);
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public <T> Class<Object> arrayClass(Class<?> cls) {
                return ClassManifestDeprecatedApis.Cclass.arrayClass(this, cls);
            }

            @Override // scala.reflect.Manifest, scala.reflect.ClassManifestDeprecatedApis
            public Manifest<Object> arrayManifest() {
                return Manifest.Cclass.arrayManifest(this);
            }

            @Override // scala.reflect.Manifest, scala.reflect.ClassTag, scala.reflect.ClassManifestDeprecatedApis, scala.Equals
            public boolean canEqual(Object obj) {
                return Manifest.Cclass.canEqual(this, obj);
            }

            @Override // scala.reflect.Manifest, scala.reflect.ClassTag, scala.Equals
            public boolean equals(Object obj) {
                return Manifest.Cclass.equals(this, obj);
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public Class<?> erasure() {
                return ClassManifestDeprecatedApis.Cclass.erasure(this);
            }

            @Override // scala.reflect.Manifest, scala.reflect.ClassTag
            public int hashCode() {
                return Manifest.Cclass.hashCode(this);
            }

            @Override // scala.reflect.ClassTag, scala.reflect.ClassManifestDeprecatedApis
            public Object newArray(int i) {
                return ClassTag.Cclass.newArray(this, i);
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public Object[] newArray2(int i) {
                return ClassManifestDeprecatedApis.Cclass.newArray2(this, i);
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public Object[][] newArray3(int i) {
                return ClassManifestDeprecatedApis.Cclass.newArray3(this, i);
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public Object[][][] newArray4(int i) {
                return ClassManifestDeprecatedApis.Cclass.newArray4(this, i);
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public Object[][][][] newArray5(int i) {
                return ClassManifestDeprecatedApis.Cclass.newArray5(this, i);
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public ArrayBuilder<T> newArrayBuilder() {
                return ClassManifestDeprecatedApis.Cclass.newArrayBuilder(this);
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public WrappedArray<T> newWrappedArray(int i) {
                return ClassManifestDeprecatedApis.Cclass.newWrappedArray(this, i);
            }

            @Override // scala.reflect.ClassTag
            public Class<?> runtimeClass() {
                return this.upperBound$2.runtimeClass();
            }

            @Override // scala.reflect.ClassTag
            public String toString() {
                return new StringBuilder().append((Object) "_").append((Object) (this.lowerBound$1 == ManifestFactory$.MODULE$.Nothing() ? "" : new StringBuilder().append((Object) " >: ").append(this.lowerBound$1).toString())).append((Object) (this.upperBound$2 == ManifestFactory$.MODULE$.Nothing() ? "" : new StringBuilder().append((Object) " <: ").append(this.upperBound$2).toString())).toString();
            }

            @Override // scala.reflect.Manifest, scala.reflect.ClassManifestDeprecatedApis
            public List<Manifest<?>> typeArguments() {
                return Manifest.Cclass.typeArguments(this);
            }

            @Override // scala.reflect.ClassTag
            public Option<T> unapply(byte b) {
                return ClassTag.Cclass.unapply((ClassTag) this, b);
            }

            @Override // scala.reflect.ClassTag
            public Option<T> unapply(char c) {
                return ClassTag.Cclass.unapply((ClassTag) this, c);
            }

            @Override // scala.reflect.ClassTag
            public Option<T> unapply(double d) {
                return ClassTag.Cclass.unapply(this, d);
            }

            @Override // scala.reflect.ClassTag
            public Option<T> unapply(float f) {
                return ClassTag.Cclass.unapply((ClassTag) this, f);
            }

            @Override // scala.reflect.ClassTag
            public Option<T> unapply(int i) {
                return ClassTag.Cclass.unapply((ClassTag) this, i);
            }

            @Override // scala.reflect.ClassTag
            public Option<T> unapply(long j) {
                return ClassTag.Cclass.unapply((ClassTag) this, j);
            }

            @Override // scala.reflect.ClassTag
            public Option<T> unapply(Object obj) {
                return ClassTag.Cclass.unapply(this, obj);
            }

            @Override // scala.reflect.ClassTag
            public Option<T> unapply(BoxedUnit boxedUnit) {
                return ClassTag.Cclass.unapply((ClassTag) this, boxedUnit);
            }

            @Override // scala.reflect.ClassTag
            public Option<T> unapply(short s) {
                return ClassTag.Cclass.unapply((ClassTag) this, s);
            }

            @Override // scala.reflect.ClassTag
            public Option<T> unapply(boolean z) {
                return ClassTag.Cclass.unapply(this, z);
            }

            @Override // scala.reflect.ClassTag
            public ClassTag<Object> wrap() {
                return ClassTag.Cclass.wrap(this);
            }
        };
    }
}
