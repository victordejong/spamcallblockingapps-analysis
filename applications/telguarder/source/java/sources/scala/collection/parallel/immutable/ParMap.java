package scala.collection.parallel.immutable;

import scala.Function1;
import scala.Predef$$less$colon$less;
import scala.Tuple2;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.GenericParMapCompanion;
import scala.collection.immutable.Map;
import scala.collection.parallel.ParMap;
import scala.collection.parallel.immutable.ParIterable;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\t%b\u0001C\u0001\u0003!\u0003\r\taC\u001c\u0003\rA\u000b'/T1q\u0015\t\u0019A!A\u0005j[6,H/\u00192mK*\u0011QAB\u0001\ta\u0006\u0014\u0018\r\u001c7fY*\u0011q\u0001C\u0001\u000bG>dG.Z2uS>t'\"A\u0005\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0019AbF\u0011\u0014\u000f\u0001i\u0011cI\u0016/iA\u0011abD\u0007\u0002\u0011%\u0011\u0001\u0003\u0003\u0002\u0007\u0003:L(+\u001a4\u0011\tI\u0019R\u0003I\u0007\u0002\r%\u0011AC\u0002\u0002\u0007\u000f\u0016tW*\u00199\u0011\u0005Y9B\u0002\u0001\u0003\u00061\u0001\u0011\r!\u0007\u0002\u0002\u0017F\u0011!$\b\t\u0003\u001dmI!\u0001\b\u0005\u0003\u000f9{G\u000f[5oOB\u0011aBH\u0005\u0003?!\u00111!\u00118z!\t1\u0012\u0005\u0002\u0004#\u0001\u0011\u0015\r!\u0007\u0002\u0002-B)AeJ\u000b!S5\tQE\u0003\u0002'\r\u00059q-\u001a8fe&\u001c\u0017B\u0001\u0015&\u0005U9UM\\3sS\u000e\u0004\u0016M]'baR+W\u000e\u001d7bi\u0016\u0004\"A\u000b\u0001\u000e\u0003\t\u0001B\u0001L\u0017\u0016A5\tA!\u0003\u0002\u0002\tA\u0019!fL\u0019\n\u0005A\u0012!a\u0003)be&#XM]1cY\u0016\u0004BA\u0004\u001a\u0016A%\u00111\u0007\u0003\u0002\u0007)V\u0004H.\u001a\u001a\u0011\r1*T\u0003I\u001c9\u0013\t1DA\u0001\u0006QCJl\u0015\r\u001d'jW\u0016\u0004BA\u000b\u0001\u0016AA!\u0011hO\u000b!\u001b\u0005Q$BA\u0002\u0007\u0013\ta$HA\u0002NCBDQA\u0010\u0001\u0005\u0002}\na\u0001J5oSR$C#\u0001!\u0011\u00059\t\u0015B\u0001\"\t\u0005\u0011)f.\u001b;\t\u000b\u0011\u0003A\u0011I#\u0002\u00195\f\u0007oQ8na\u0006t\u0017n\u001c8\u0016\u0003\u0019\u00032\u0001J$*\u0013\tAUE\u0001\fHK:,'/[2QCJl\u0015\r]\"p[B\fg.[8o\u0011\u0015Q\u0005\u0001\"\u0011L\u0003\u0015)W\u000e\u001d;z+\u00059\u0004\"B'\u0001\t\u0003r\u0015\u0001D:ue&tw\r\u0015:fM&DX#A(\u0011\u0005A+V\"A)\u000b\u0005I\u001b\u0016\u0001\u00027b]\u001eT\u0011\u0001V\u0001\u0005U\u00064\u0018-\u0003\u0002W#\n11\u000b\u001e:j]\u001eDQ\u0001\u0017\u0001\u0005Be\u000bQ\u0001^8NCB,2AW/a)\tY&\r\u0005\u0003+\u0001q{\u0006C\u0001\f^\t\u0015qvK1\u0001\u001a\u0005\u0005\u0001\u0006C\u0001\fa\t\u0015\twK1\u0001\u001a\u0005\u0005\t\u0006\"B2X\u0001\b!\u0017AA3w!\u0011)\u0007.M6\u000f\u000591\u0017BA4\t\u0003\u0019\u0001&/\u001a3fM&\u0011\u0011N\u001b\u0002\u0011I1,7o\u001d\u0013d_2|g\u000e\n7fgNT!a\u001a\u0005\u0011\t9\u0011Dl\u0018\u0005\u0006[\u0002!\tE\\\u0001\bkB$\u0017\r^3e+\ty'\u000fF\u0002qk^\u0004BA\u000b\u0001\u0016cB\u0011aC\u001d\u0003\u0006g2\u0014\r\u0001\u001e\u0002\u0002+F\u0011\u0001%\b\u0005\u0006m2\u0004\r!F\u0001\u0004W\u0016L\b\"\u0002=m\u0001\u0004\t\u0018!\u0002<bYV,\u0007\"\u0002>\u0001\r\u0003Y\u0018!\u0002\u0013qYV\u001cXC\u0001???????)\ri\u0018\u0011\u0001\t\u0005U\u0001)b\u0010\u0005\u0002\u0017\u007f\u0012)1/\u001fb\u0001i\"9\u00111A=A\u0002\u0005\u0015\u0011AA6w!\u0011q!'\u0006@\t\u000f\u0005%\u0001\u0001\"\u0001\u0002\f\u0005Yq/\u001b;i\t\u00164\u0017-\u001e7u+\u0011\ti!a\u0005\u0015\t\u0005=\u0011Q\u0003\t\u0006U\u0001)\u0012\u0011\u0003\t\u0004-\u0005MAAB:\u0002\b\t\u0007A\u000f\u0003\u0005\u0002\u0018\u0005\u001d\u0001\u0019AA\r\u0003\u0005!\u0007C\u0002\b\u0002\u001cU\t\t\"C\u0002\u0002\u001e!\u0011\u0011BR;oGRLwN\\\u0019\t\u000f\u0005\u0005\u0002\u0001\"\u0001\u0002$\u0005\u0001r/\u001b;i\t\u00164\u0017-\u001e7u-\u0006dW/Z\u000b\u0005\u0003K\tY\u0003\u0006\u0003\u0002(\u00055\u0002#\u0002\u0016\u0001+\u0005%\u0002c\u0001\f\u0002,\u001111/a\bC\u0002QD\u0001\"a\u0006\u0002 \u0001\u0007\u0011\u0011F\u0004\b\u0003c\u0011\u0001\u0012AA\u001a\u0003\u0019\u0001\u0016M]'baB\u0019!&!\u000e\u0007\r\u0005\u0011\u0001\u0012AA\u001c'\u0011\t)$!\u000f\u0011\t\u0011\nY$K\u0005\u0004\u0003{)#!\u0004)be6\u000b\u0007OR1di>\u0014\u0018\u0010\u0003\u0005\u0002B\u0005UB\u0011AA\"\u0003\u0019a\u0014N\\5u}Q\u0011\u00111\u0007\u0005\b\u0015\u0006UB\u0011AA$+\u0019\tI%a\u0014\u0002TU\u0011\u00111\n\t\u0007U\u0001\ti%!\u0015\u0011\u0007Y\ty\u0005\u0002\u0004\u0019\u0003\u000b\u0012\r!\u0007\t\u0004-\u0005MCA\u0002\u0012\u0002F\t\u0007\u0011\u0004\u0003\u0005\u0002X\u0005UB\u0011AA-\u0003-qWm^\"p[\nLg.\u001a:\u0016\r\u0005m\u0013qMA6+\t\ti\u0006E\u0004-\u0003?\n\u0019'!\u001c\n\u0007\u0005\u0005DA\u0001\u0005D_6\u0014\u0017N\\3s!\u0019q!'!\u001a\u0002jA\u0019a#a\u001a\u0005\ra\t)F1\u0001\u001a!\r1\u00121\u000e\u0003\u0007E\u0005U#\u0019A\r\u0011\r)\u0002\u0011QMA5\u0011!\t\t(!\u000e\u0005\u0004\u0005M\u0014\u0001D2b]\n+\u0018\u000e\u001c3Ge>lWCBA;\u0003\u001b\u000b\t*\u0006\u0002\u0002xAIA%!\u001f\u0002~\u0005%\u00151S\u0005\u0004\u0003w*#AD\"b]\u000e{WNY5oK\u001a\u0013x.\u001c\t\u0005\u0003\u007f\n\t)\u0004\u0002\u00026%!\u00111QAC\u0005\u0011\u0019u\u000e\u001c7\n\u0007\u0005\u001dUEA\u0007HK:l\u0015\r\u001d$bGR|'/\u001f\t\u0007\u001dI\nY)a$\u0011\u0007Y\ti\t\u0002\u0004\u0019\u0003_\u0012\r!\u0007\t\u0004-\u0005EEA\u0002\u0012\u0002p\t\u0007\u0011\u0004\u0005\u0004+\u0001\u0005-\u0015q\u0012\u0004\b\u0003/\u000b)\u0004AAM\u0005-9\u0016\u000e\u001e5EK\u001a\fW\u000f\u001c;\u0016\r\u0005m\u00151XA`'\u0019\t)*!(\u0002BBA\u0011qTA[\u0003s\u000biL\u0004\u0003\u0002\"\u0006Mf\u0002BAR\u0003csA!!*\u00020:!\u0011qUAW\u001b\t\tIKC\u0002\u0002,*\ta\u0001\u0010:p_Rt\u0014\"A\u0005\n\u0005\u001dA\u0011BA\u0003\u0007\u0013\r\t\t\u0004B\u0005\u0005\u0003/\u000b9LC\u0002\u00022\u0011\u00012AFA^\t\u0019A\u0012Q\u0013b\u00013A\u0019a#a0\u0005\u000f\t\n)\n\"b\u00013A1!\u0006AA]\u0003{C1\"!2\u0002\u0016\n\u0005\t\u0015!\u0003\u0002B\u0006QQO\u001c3fe2L\u0018N\\4\t\u0017\u0005]\u0011Q\u0013B\u0001B\u0003%\u0011\u0011\u001a\t\b\u001d\u0005m\u0011\u0011XA_\u0011!\t\t%!&\u0005\u0002\u00055GCBAh\u0003#\f\u0019\u000e\u0005\u0005\u0002??????\u0005U\u0015\u0011XA_\u0011!\t)-a3A\u0002\u0005\u0005\u0007\u0002CA\f\u0003\u0017\u0004\r!!3\t\u000f)\u000b)\n\"\u0011\u0002XV\u0011\u0011q\u001a\u0005\b[\u0006UE\u0011IAn+\u0011\ti.a9\u0015\r\u0005}\u0017q]Au!!\ty(!&\u0002:\u0006\u0005\bc\u0001\f\u0002d\u001291/!7C\u0002\u0005\u0015\u0018cAA_;!9a/!7A\u0002\u0005e\u0006b\u0002=\u0002Z\u0002\u0007\u0011\u0011\u001d\u0005\bu\u0006UE\u0011IAw+\u0011\ty/!>\u0015\t\u0005E\u0018q\u001f\t\t\u0003\u007f\n)*!/\u0002tB\u0019a#!>\u0005\u000fM\fYO1\u0001\u0002f\"A\u00111AAv\u0001\u0004\tI\u0010\u0005\u0004\u000fe\u0005e\u00161\u001f\u0005\t\u0003{\f)\n\"\u0011\u0002??????\u00061A%\\5okN$B!a4\u0003\u0002!9a/a?A\u0002\u0005e\u0006\u0002CA\u0005\u0003+#\tE!\u0002\u0016\t\t\u001d!Q\u0002\u000b\u0005\u0005\u0013\u0011y\u0001\u0005\u0004+\u0001\u0005e&1\u0002\t\u0004-\t5AaB:\u0003\u0004\t\u0007\u0011Q\u001d\u0005\t\u0003/\u0011\u0019\u00011\u0001\u0003\u0012A9a\"a\u0007\u0002:\n-\u0001\u0002CA\u0011\u0003+#\tE!\u0006\u0016\t\t]!Q\u0004\u000b\u0005\u00053\u0011y\u0002\u0005\u0004+\u0001\u0005e&1\u0004\t\u0004-\tuAaB:\u0003\u0014\t\u0007\u0011Q\u001d\u0005\t\u0003/\u0011\u0019\u00021\u0001\u0003\u001c!A!1EAK\t\u0003\u0012)#A\u0002tKF,\"Aa\n\u0011\reZ\u0014\u0011XA_\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/ParMap.class */
public interface ParMap<K, V> extends scala.collection.parallel.ParMap<K, V>, ParIterable<Tuple2<K, V>> {

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/ParMap$WithDefault.class */
    public static class WithDefault<K, V> extends ParMap.WithDefault<K, V> implements ParMap<K, V> {

        /* renamed from: d */
        private final Function1<K, V> f1597d;
        private final ParMap<K, V> underlying;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WithDefault(ParMap<K, V> parMap, Function1<K, V> function1) {
            super(parMap, function1);
            this.underlying = parMap;
            this.f1597d = function1;
            ParIterable.Cclass.$init$(this);
            Cclass.$init$(this);
        }

        @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.collection.generic.Subtractable
        public WithDefault<K, V> $minus(K k) {
            return new WithDefault<>((ParMap) this.underlying.$minus(k), this.f1597d);
        }

        @Override // scala.collection.parallel.ParMap, scala.collection.GenMapLike, scala.collection.MapLike
        public <U> WithDefault<K, U> $plus(Tuple2<K, U> tuple2) {
            return updated((WithDefault<K, V>) tuple2.mo269_1(), (K) tuple2.mo268_2());
        }

        @Override // scala.collection.parallel.ParMap.WithDefault, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public GenericCompanion<ParIterable> companion() {
            return ParIterable.Cclass.companion(this);
        }

        @Override // scala.collection.parallel.ParMap.WithDefault, scala.collection.parallel.ParMap, scala.collection.parallel.ParMapLike
        public WithDefault<K, V> empty() {
            return new WithDefault<>(this.underlying.empty(), this.f1597d);
        }

        @Override // scala.collection.parallel.ParMap.WithDefault, scala.collection.parallel.ParMap, scala.collection.generic.GenericParMapTemplate
        public GenericParMapCompanion<scala.collection.parallel.ParMap> mapCompanion() {
            return Cclass.mapCompanion(this);
        }

        @Override // scala.collection.GenMap, scala.collection.GenMapLike, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public Map<K, V> seq() {
            return ((Map) this.underlying.seq()).withDefault(this.f1597d);
        }

        @Override // scala.collection.parallel.ParMap.WithDefault, scala.collection.parallel.ParMap, scala.collection.GenTraversableLike, scala.collection.SetLike
        public String stringPrefix() {
            return Cclass.stringPrefix(this);
        }

        @Override // scala.collection.parallel.ParMap.WithDefault, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public ParIterable<Tuple2<K, V>> toIterable() {
            return ParIterable.Cclass.toIterable(this);
        }

        @Override // scala.collection.parallel.ParMap.WithDefault, scala.collection.GenTraversableOnce
        public <P, Q> ParMap<P, Q> toMap(Predef$$less$colon$less<Tuple2<K, V>, Tuple2<P, Q>> predef$$less$colon$less) {
            return Cclass.toMap(this, predef$$less$colon$less);
        }

        @Override // scala.collection.parallel.ParMap.WithDefault, scala.collection.GenTraversableOnce, scala.collection.SetLike
        public ParSeq<Tuple2<K, V>> toSeq() {
            return ParIterable.Cclass.toSeq(this);
        }

        @Override // scala.collection.parallel.ParMap.WithDefault, scala.collection.parallel.ParMap, scala.collection.GenMap, scala.collection.MapLike
        public <U> WithDefault<K, U> updated(K k, U u) {
            return new WithDefault<>(this.underlying.updated((ParMap<K, V>) k, (K) u), this.f1597d);
        }

        @Override // scala.collection.parallel.immutable.ParMap
        public <U> ParMap<K, U> withDefault(Function1<K, U> function1) {
            return new WithDefault(this.underlying, function1);
        }

        @Override // scala.collection.parallel.immutable.ParMap
        public <U> ParMap<K, U> withDefaultValue(U u) {
            return new WithDefault(this.underlying, new ParMap$WithDefault$$anonfun$withDefaultValue$2(this, u));
        }
    }

    /* renamed from: scala.collection.parallel.immutable.ParMap$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/ParMap$class.class */
    public abstract class Cclass {
        public static void $init$(ParMap parMap) {
        }

        public static ParMap empty(ParMap parMap) {
            return new ParHashMap();
        }

        public static GenericParMapCompanion mapCompanion(ParMap parMap) {
            return ParMap$.MODULE$;
        }

        public static String stringPrefix(ParMap parMap) {
            return "ParMap";
        }

        public static ParMap toMap(ParMap parMap, Predef$$less$colon$less predef$$less$colon$less) {
            return parMap;
        }

        public static ParMap updated(ParMap parMap, Object obj, Object obj2) {
            return parMap.$plus(new Tuple2(obj, obj2));
        }

        public static ParMap withDefault(ParMap parMap, Function1 function1) {
            return new WithDefault(parMap, function1);
        }

        public static ParMap withDefaultValue(ParMap parMap, Object obj) {
            return new WithDefault(parMap, new ParMap$$anonfun$withDefaultValue$1(parMap, obj));
        }
    }

    @Override // scala.collection.parallel.ParMap, scala.collection.GenMapLike, scala.collection.MapLike
    <U> ParMap<K, U> $plus(Tuple2<K, U> tuple2);

    @Override // scala.collection.parallel.ParMap, scala.collection.parallel.ParMapLike
    ParMap<K, V> empty();

    @Override // scala.collection.parallel.ParMap, scala.collection.generic.GenericParMapTemplate
    GenericParMapCompanion<scala.collection.parallel.ParMap> mapCompanion();

    @Override // scala.collection.parallel.ParMap, scala.collection.GenTraversableLike, scala.collection.SetLike
    String stringPrefix();

    @Override // scala.collection.GenTraversableOnce
    <P, Q> ParMap<P, Q> toMap(Predef$$less$colon$less<Tuple2<K, V>, Tuple2<P, Q>> predef$$less$colon$less);

    @Override // scala.collection.parallel.ParMap, scala.collection.GenMap, scala.collection.MapLike
    <U> ParMap<K, U> updated(K k, U u);

    <U> ParMap<K, U> withDefault(Function1<K, U> function1);

    <U> ParMap<K, U> withDefaultValue(U u);
}
