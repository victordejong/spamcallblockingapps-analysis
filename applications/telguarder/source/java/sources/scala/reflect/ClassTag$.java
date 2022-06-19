package scala.reflect;

import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.collection.immutable.List;
import scala.collection.mutable.ArrayBuilder;
import scala.collection.mutable.WrappedArray;
import scala.reflect.ClassManifestDeprecatedApis;
import scala.reflect.ClassTag;
import scala.runtime.BoxedUnit;
import scala.runtime.Nothing$;
import scala.runtime.Null$;
/* loaded from: classes3-dex2jar.jar:scala/reflect/ClassTag$.class */
public final class ClassTag$ implements Serializable {
    public static final ClassTag$ MODULE$ = null;
    private final Class<Object> ObjectTYPE = Object.class;
    private final Class<Nothing$> NothingTYPE = Nothing$.class;
    private final Class<Null$> NullTYPE = Null$.class;
    private final ClassTag<Object> Byte = package$.MODULE$.Manifest().Byte();
    private final ClassTag<Object> Short = package$.MODULE$.Manifest().Short();
    private final ClassTag<Object> Char = package$.MODULE$.Manifest().Char();
    private final ClassTag<Object> Int = package$.MODULE$.Manifest().Int();
    private final ClassTag<Object> Long = package$.MODULE$.Manifest().Long();
    private final ClassTag<Object> Float = package$.MODULE$.Manifest().Float();
    private final ClassTag<Object> Double = package$.MODULE$.Manifest().Double();
    private final ClassTag<Object> Boolean = package$.MODULE$.Manifest().Boolean();
    private final ClassTag<BoxedUnit> Unit = package$.MODULE$.Manifest().Unit();
    private final ClassTag<Object> Any = package$.MODULE$.Manifest().Any();
    private final ClassTag<Object> Object = package$.MODULE$.Manifest().Object();
    private final ClassTag<Object> AnyVal = package$.MODULE$.Manifest().AnyVal();
    private final ClassTag<Object> AnyRef = package$.MODULE$.Manifest().AnyRef();
    private final ClassTag<Nothing$> Nothing = package$.MODULE$.Manifest().Nothing();
    private final ClassTag<Null$> Null = package$.MODULE$.Manifest().Null();

    static {
        new ClassTag$();
    }

    private ClassTag$() {
        MODULE$ = this;
    }

    private Class<Nothing$> NothingTYPE() {
        return this.NothingTYPE;
    }

    private Class<Null$> NullTYPE() {
        return this.NullTYPE;
    }

    private Class<Object> ObjectTYPE() {
        return this.ObjectTYPE;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public ClassTag<Object> Any() {
        return this.Any;
    }

    public ClassTag<Object> AnyRef() {
        return this.AnyRef;
    }

    public ClassTag<Object> AnyVal() {
        return this.AnyVal;
    }

    public ClassTag<Object> Boolean() {
        return this.Boolean;
    }

    public ClassTag<Object> Byte() {
        return this.Byte;
    }

    public ClassTag<Object> Char() {
        return this.Char;
    }

    public ClassTag<Object> Double() {
        return this.Double;
    }

    public ClassTag<Object> Float() {
        return this.Float;
    }

    public ClassTag<Object> Int() {
        return this.Int;
    }

    public ClassTag<Object> Long() {
        return this.Long;
    }

    public ClassTag<Nothing$> Nothing() {
        return this.Nothing;
    }

    public ClassTag<Null$> Null() {
        return this.Null;
    }

    public ClassTag<Object> Object() {
        return this.Object;
    }

    public ClassTag<Object> Short() {
        return this.Short;
    }

    public ClassTag<BoxedUnit> Unit() {
        return this.Unit;
    }

    public <T> ClassTag<T> apply(Class<?> cls) {
        ClassTag<BoxedUnit> classTag;
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
                                        if (cls10 != null ? !cls10.equals(cls) : cls != null) {
                                            Class<Object> ObjectTYPE = ObjectTYPE();
                                            if (ObjectTYPE != null ? !ObjectTYPE.equals(cls) : cls != null) {
                                                Class<Nothing$> NothingTYPE = NothingTYPE();
                                                if (NothingTYPE != null ? !NothingTYPE.equals(cls) : cls != null) {
                                                    Class<Null$> NullTYPE = NullTYPE();
                                                    classTag = (NullTYPE != null ? !NullTYPE.equals(cls) : cls != null) ? new ClassTag<T>(cls) { // from class: scala.reflect.ClassTag$$anon$1
                                                        private final Class runtimeClass1$1;

                                                        {
                                                            this.runtimeClass1$1 = cls;
                                                            ClassManifestDeprecatedApis.Cclass.$init$(this);
                                                            ClassTag.Cclass.$init$(this);
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
                                                        public <T> Class<Object> arrayClass(Class<?> cls11) {
                                                            return ClassManifestDeprecatedApis.Cclass.arrayClass(this, cls11);
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
                                                            return this.runtimeClass1$1;
                                                        }

                                                        @Override // scala.reflect.ClassTag
                                                        public String toString() {
                                                            return ClassTag.Cclass.toString(this);
                                                        }

                                                        @Override // scala.reflect.ClassManifestDeprecatedApis
                                                        public List<OptManifest<?>> typeArguments() {
                                                            return ClassManifestDeprecatedApis.Cclass.typeArguments(this);
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
                                                    } : Null();
                                                } else {
                                                    classTag = Nothing();
                                                }
                                            } else {
                                                classTag = Object();
                                            }
                                        } else {
                                            classTag = Unit();
                                        }
                                    } else {
                                        classTag = Boolean();
                                    }
                                } else {
                                    classTag = Double();
                                }
                            } else {
                                classTag = Float();
                            }
                        } else {
                            classTag = Long();
                        }
                    } else {
                        classTag = Int();
                    }
                } else {
                    classTag = Char();
                }
            } else {
                classTag = Short();
            }
        } else {
            classTag = Byte();
        }
        return classTag;
    }

    public <T> Option<Class<?>> unapply(ClassTag<T> classTag) {
        return new Some(classTag.runtimeClass());
    }
}
