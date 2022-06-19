package scala.reflect;

import scala.MatchError;
import scala.None$;
import scala.Option;
import scala.Some;
import scala.collection.Seq;
import scala.collection.immutable.List;
import scala.collection.immutable.Nil$;
import scala.collection.mutable.ArrayBuilder;
import scala.collection.mutable.StringBuilder;
import scala.collection.mutable.WrappedArray;
import scala.reflect.ClassManifestDeprecatedApis;
import scala.reflect.ClassTag;
import scala.runtime.BoxedUnit;
import scala.runtime.Nothing$;
import scala.runtime.Null$;
/* loaded from: classes3-dex2jar.jar:scala/reflect/ClassManifestFactory$.class */
public final class ClassManifestFactory$ {
    public static final ClassManifestFactory$ MODULE$ = null;
    private final AnyValManifest<Object> Byte = ManifestFactory$.MODULE$.Byte();
    private final AnyValManifest<Object> Short = ManifestFactory$.MODULE$.Short();
    private final AnyValManifest<Object> Char = ManifestFactory$.MODULE$.Char();
    private final AnyValManifest<Object> Int = ManifestFactory$.MODULE$.Int();
    private final AnyValManifest<Object> Long = ManifestFactory$.MODULE$.Long();
    private final AnyValManifest<Object> Float = ManifestFactory$.MODULE$.Float();
    private final AnyValManifest<Object> Double = ManifestFactory$.MODULE$.Double();
    private final AnyValManifest<Object> Boolean = ManifestFactory$.MODULE$.Boolean();
    private final AnyValManifest<BoxedUnit> Unit = ManifestFactory$.MODULE$.Unit();
    private final Manifest<Object> Any = ManifestFactory$.MODULE$.Any();
    private final Manifest<Object> Object = ManifestFactory$.MODULE$.Object();
    private final Manifest<Object> AnyVal = ManifestFactory$.MODULE$.AnyVal();
    private final Manifest<Nothing$> Nothing = ManifestFactory$.MODULE$.Nothing();
    private final Manifest<Null$> Null = ManifestFactory$.MODULE$.Null();

    static {
        new ClassManifestFactory$();
    }

    private ClassManifestFactory$() {
        MODULE$ = this;
    }

    public Manifest<Object> Any() {
        return this.Any;
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

    public <T> ClassTag<T> abstractType(OptManifest<?> optManifest, String str, Class<?> cls, Seq<OptManifest<?>> seq) {
        return new ClassTag<T>(optManifest, str, cls, seq) { // from class: scala.reflect.ClassManifestFactory$$anon$1
            private final Class clazz$1;
            private final String name$1;
            private final OptManifest prefix$1;
            private final List<OptManifest<?>> typeArguments;

            {
                this.prefix$1 = optManifest;
                this.name$1 = str;
                this.clazz$1 = cls;
                ClassManifestDeprecatedApis.Cclass.$init$(this);
                ClassTag.Cclass.$init$(this);
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

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public ClassTag<Object> arrayManifest() {
                return ClassManifestDeprecatedApis.Cclass.arrayManifest(this);
            }

            @Override // scala.reflect.ClassTag, scala.reflect.ClassManifestDeprecatedApis, scala.Equals
            public boolean canEqual(Object obj) {
                return ClassTag.Cclass.canEqual(this, obj);
            }

            @Override // scala.reflect.ClassTag, scala.Equals
            public boolean equals(Object obj) {
                return ClassTag.Cclass.equals(this, obj);
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public Class<?> erasure() {
                return ClassManifestDeprecatedApis.Cclass.erasure(this);
            }

            @Override // scala.reflect.ClassTag
            public int hashCode() {
                return ClassTag.Cclass.hashCode(this);
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
                return this.clazz$1;
            }

            @Override // scala.reflect.ClassTag
            public String toString() {
                return new StringBuilder().append((Object) this.prefix$1.toString()).append((Object) "#").append((Object) this.name$1).append((Object) argString()).toString();
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public List<OptManifest<?>> typeArguments() {
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

    public <T> ClassTag<T> abstractType(OptManifest<?> optManifest, String str, ClassTag<?> classTag, Seq<OptManifest<?>> seq) {
        return new ClassTag<T>(optManifest, str, classTag, seq) { // from class: scala.reflect.ClassManifestFactory$$anon$2
            private final String name$2;
            private final OptManifest prefix$2;
            private final List<OptManifest<?>> typeArguments;
            private final ClassTag upperbound$1;

            {
                this.prefix$2 = optManifest;
                this.name$2 = str;
                this.upperbound$1 = classTag;
                ClassManifestDeprecatedApis.Cclass.$init$(this);
                ClassTag.Cclass.$init$(this);
                this.typeArguments = seq.toList();
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public boolean $greater$colon$greater(ClassTag<?> classTag2) {
                boolean $less$colon$less;
                $less$colon$less = classTag2.$less$colon$less(this);
                return $less$colon$less;
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public boolean $less$colon$less(ClassTag<?> classTag2) {
                return ClassManifestDeprecatedApis.Cclass.$less$colon$less(this, classTag2);
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public String argString() {
                return ClassManifestDeprecatedApis.Cclass.argString(this);
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public <T> Class<Object> arrayClass(Class<?> cls) {
                return ClassManifestDeprecatedApis.Cclass.arrayClass(this, cls);
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public ClassTag<Object> arrayManifest() {
                return ClassManifestDeprecatedApis.Cclass.arrayManifest(this);
            }

            @Override // scala.reflect.ClassTag, scala.reflect.ClassManifestDeprecatedApis, scala.Equals
            public boolean canEqual(Object obj) {
                return ClassTag.Cclass.canEqual(this, obj);
            }

            @Override // scala.reflect.ClassTag, scala.Equals
            public boolean equals(Object obj) {
                return ClassTag.Cclass.equals(this, obj);
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public Class<?> erasure() {
                return ClassManifestDeprecatedApis.Cclass.erasure(this);
            }

            @Override // scala.reflect.ClassTag
            public int hashCode() {
                return ClassTag.Cclass.hashCode(this);
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
                return this.upperbound$1.runtimeClass();
            }

            @Override // scala.reflect.ClassTag
            public String toString() {
                return new StringBuilder().append((Object) this.prefix$2.toString()).append((Object) "#").append((Object) this.name$2).append((Object) argString()).toString();
            }

            @Override // scala.reflect.ClassManifestDeprecatedApis
            public List<OptManifest<?>> typeArguments() {
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

    public <T> ClassTag<Object> arrayType(OptManifest<?> optManifest) {
        Manifest<Object> manifest;
        if (NoManifest$.MODULE$.equals(optManifest)) {
            manifest = Object();
        } else if (!(optManifest instanceof ClassTag)) {
            throw new MatchError(optManifest);
        } else {
            manifest = ((ClassTag) optManifest).arrayManifest();
        }
        return manifest;
    }

    public <T> ClassTag<T> classType(Class<?> cls) {
        return new ClassTypeManifest(None$.MODULE$, cls, Nil$.MODULE$);
    }

    public <T> ClassTag<T> classType(Class<?> cls, OptManifest<?> optManifest, Seq<OptManifest<?>> seq) {
        return new ClassTypeManifest(None$.MODULE$, cls, seq.toList().$colon$colon(optManifest));
    }

    public <T> ClassTag<T> classType(OptManifest<?> optManifest, Class<?> cls, Seq<OptManifest<?>> seq) {
        return new ClassTypeManifest(new Some(optManifest), cls, seq.toList());
    }

    public <T> ClassTag<T> fromClass(Class<T> cls) {
        AnyValManifest<BoxedUnit> anyValManifest;
        Class cls2 = Byte.TYPE;
        if (cls2 != null ? !cls2.equals(cls) : cls != null) {
            Class cls3 = Short.TYPE;
            if (cls3 != null ? !cls3.equals(cls) : cls != null) {
                Class cls4 = Character.TYPE;
                if (cls4 != null ? !cls4.equals(cls) : cls != null) {
                    Class cls5 = Integer.TYPE;
                    if (cls5 != null ? !cls5.equals(cls) : cls != null) {
                        Class cls6 = Long.TYPE;
                        if (cls6 != null ? !cls6.equals(cls) : cls != null) {
                            Class cls7 = Float.TYPE;
                            if (cls7 != null ? !cls7.equals(cls) : cls != null) {
                                Class cls8 = Double.TYPE;
                                if (cls8 != null ? !cls8.equals(cls) : cls != null) {
                                    Class cls9 = Boolean.TYPE;
                                    if (cls9 != null ? !cls9.equals(cls) : cls != null) {
                                        Class cls10 = Void.TYPE;
                                        anyValManifest = (cls10 != null ? !cls10.equals(cls) : cls != null) ? classType(cls) : Unit();
                                    } else {
                                        anyValManifest = Boolean();
                                    }
                                } else {
                                    anyValManifest = Double();
                                }
                            } else {
                                anyValManifest = Float();
                            }
                        } else {
                            anyValManifest = Long();
                        }
                    } else {
                        anyValManifest = Int();
                    }
                } else {
                    anyValManifest = Char();
                }
            } else {
                anyValManifest = Short();
            }
        } else {
            anyValManifest = Byte();
        }
        return anyValManifest;
    }

    public <T> Manifest<T> singleType(Object obj) {
        return package$.MODULE$.Manifest().singleType(obj);
    }
}
