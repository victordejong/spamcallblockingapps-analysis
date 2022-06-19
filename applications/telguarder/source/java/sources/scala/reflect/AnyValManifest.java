package scala.reflect;

import scala.Option;
import scala.collection.immutable.List;
import scala.collection.mutable.ArrayBuilder;
import scala.collection.mutable.WrappedArray;
import scala.reflect.ClassManifestDeprecatedApis;
import scala.reflect.ClassTag;
import scala.reflect.Manifest;
import scala.runtime.BoxedUnit;
@ScalaSignature(bytes = "\u0006\u0001\t4Q!\u0001\u0002\u0002\u0002\u001d\u0011a\"\u00118z-\u0006dW*\u00198jM\u0016\u001cHO\u0003\u0002\u0004\t\u00059!/\u001a4mK\u000e$(\"A\u0003\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0011\u0001bE\n\u0005\u0001%iA\u0004\u0005\u0002\u000b\u00175\tA!\u0003\u0002\r\t\t1\u0011I\\=SK\u001a\u00042AD\b\u0012\u001b\u0005\u0011\u0011B\u0001\t\u0003\u0005!i\u0015M\\5gKN$\bC\u0001\n\u0014\u0019\u0001!Q\u0001\u0006\u0001C\u0002U\u0011\u0011\u0001V\t\u0003-e\u0001\"AC\f\n\u0005a!!a\u0002(pi\"Lgn\u001a\t\u0003\u0015iI!a\u0007\u0003\u0003\r\u0005s\u0017PV1m!\tQQ$\u0003\u0002\u001f\t\t1Q)];bYND\u0001\u0002\t\u0001\u0003\u0006\u0004%\t%I\u0001\ti>\u001cFO]5oOV\t!\u0005\u0005\u0002$M9\u0011!\u0002J\u0005\u0003K\u0011\ta\u0001\u0015:fI\u00164\u0017BA\u0014)\u0005\u0019\u0019FO]5oO*\u0011Q\u0005\u0002\u0005\tU\u0001\u0011\t\u0011)A\u0005E\u0005IAo\\*ue&tw\r\t\u0005\u0006Y\u0001!\t!L\u0001\u0007y%t\u0017\u000e\u001e \u0015\u00059z\u0003c\u0001\b\u0001#!)\u0001e\u000ba\u0001E!)\u0011\u0007\u0001C!e\u0005\u0001B\u0005\\3tg\u0012\u001aw\u000e\\8oI1,7o\u001d\u000b\u0003gY\u0002\"A\u0003\u001b\n\u0005U\"!a\u0002\"p_2,\u0017M\u001c\u0005\u0006oA\u0002\r\u0001O\u0001\u0005i\"\fG\u000f\r\u0002:\u0003B\u0019!(\u0010!\u000f\u00059Y\u0014B\u0001\u001f\u0003\u0003\u001d\u0001\u0018mY6bO\u0016L!AP \u0003\u001b\rc\u0017m]:NC:Lg-Z:u\u0015\ta$\u0001\u0005\u0002\u0013\u0003\u0012I!INA\u0001\u0002\u0003\u0015\ta\u0011\u0002\u0004?\u0012\u0012\u0014C\u0001\fE!\tQQ)\u0003\u0002G\t\t\u0019\u0011I\\=\t\u000b!\u0003A\u0011I%\u0002\u0011\r\fg.R9vC2$\"a\r&\t\u000b-;\u0005\u0019\u0001#\u0002\u000b=$\b.\u001a:\t\u000b5\u0003A\u0011\t(\u0002\r\u0015\fX/\u00197t)\t\u0019t\nC\u00038\u0019\u0002\u0007A\tC\u0004R\u0001\t\u0007I\u0011\t*\u0002\u0011!\f7\u000f[\"pI\u0016,\u0012a\u0015\t\u0003\u0015QK!!\u0016\u0003\u0003\u0007%sG\u000f\u0003\u0004X\u0001\u0001\u0006IaU\u0001\nQ\u0006\u001c\bnQ8eK\u0002B#AV-\u0011\u0005)Q\u0016BA.\u0005\u0005%!(/\u00198tS\u0016tG\u000f\u000b\u0003\u0001;\u0002\f\u0007C\u0001\u0006_\u0013\tyFA\u0001\tTKJL\u0017\r\u001c,feNLwN\\+J\t\u0006)a/\u00197vKz\t\u0011\u0001")
/* loaded from: classes3-dex2jar.jar:scala/reflect/AnyValManifest.class */
public abstract class AnyValManifest<T> implements Manifest<T> {
    public static final long serialVersionUID = 1;
    private final transient int hashCode = System.identityHashCode(this);
    private final String toString;

    public AnyValManifest(String str) {
        this.toString = str;
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
        return classTag == this || classTag == package$.MODULE$.Manifest().Any() || classTag == package$.MODULE$.Manifest().AnyVal();
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
        return obj instanceof AnyValManifest;
    }

    @Override // scala.reflect.Manifest, scala.reflect.ClassTag, scala.Equals
    public boolean equals(Object obj) {
        return this == obj;
    }

    @Override // scala.reflect.ClassManifestDeprecatedApis
    public Class<?> erasure() {
        return ClassManifestDeprecatedApis.Cclass.erasure(this);
    }

    @Override // scala.reflect.Manifest, scala.reflect.ClassTag
    public int hashCode() {
        return this.hashCode;
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
    public String toString() {
        return this.toString;
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
}
