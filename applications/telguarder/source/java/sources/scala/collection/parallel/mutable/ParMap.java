package scala.collection.parallel.mutable;

import scala.Function1;
import scala.Option;
import scala.Tuple2;
import scala.collection.Seq;
import scala.collection.TraversableOnce;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.GenericParMapCompanion;
import scala.collection.generic.Growable;
import scala.collection.generic.Shrinkable;
import scala.collection.generic.Shrinkable$$anonfun$$minus$minus$eq$1;
import scala.collection.mutable.Cloneable;
import scala.collection.mutable.Map;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.ParMap;
import scala.collection.parallel.mutable.ParIterable;
import scala.collection.parallel.mutable.ParMapLike;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u0005%haB\u0001\u0003!\u0003\r\ta\u0003\u0002\u0007!\u0006\u0014X*\u00199\u000b\u0005\r!\u0011aB7vi\u0006\u0014G.\u001a\u0006\u0003\u000b\u0019\t\u0001\u0002]1sC2dW\r\u001c\u0006\u0003\u000f!\t!bY8mY\u0016\u001cG/[8o\u0015\u0005I\u0011!B:dC2\f7\u0001A\u000b\u0004\u0019]\t3c\u0002\u0001\u000e#\r2S\u0006\u000e\t\u0003\u001d=i\u0011\u0001C\u0005\u0003!!\u0011a!\u00118z%\u00164\u0007\u0003\u0002\n\u0014+\u0001j\u0011AB\u0005\u0003)\u0019\u0011aaR3o\u001b\u0006\u0004\bC\u0001\f\u0018\u0019\u0001!Q\u0001\u0007\u0001C\u0002e\u0011\u0011aS\t\u00035u\u0001\"AD\u000e\n\u0005qA!a\u0002(pi\"Lgn\u001a\t\u0003\u001dyI!a\b\u0005\u0003\u0007\u0005s\u0017\u0010\u0005\u0002\u0017C\u0011)!\u0005\u0001b\u00013\t\ta\u000b\u0005\u0003%KU\u0001S\"\u0001\u0003\n\u0005\u0005!\u0001cA\u0014)U5\t!!\u0003\u0002*\u0005\tY\u0001+\u0019:Ji\u0016\u0014\u0018M\u00197f!\u0011q1&\u0006\u0011\n\u00051B!A\u0002+va2,'\u0007E\u0003/cU\u00013'D\u00010\u0015\t\u0001d!A\u0004hK:,'/[2\n\u0005Iz#!F$f]\u0016\u0014\u0018n\u0019)be6\u000b\u0007\u000fV3na2\fG/\u001a\t\u0003O\u0001\u0001baJ\u001b\u0016A]B\u0014B\u0001\u001c\u0003\u0005)\u0001\u0016M]'ba2K7.\u001a\t\u0005O\u0001)\u0002\u0005\u0005\u0003:wU\u0001S\"\u0001\u001e\u000b\u0005\r1\u0011B\u0001\u001f;\u0005\ri\u0015\r\u001d\u0005\u0006}\u0001!\taP\u0001\u0007I%t\u0017\u000e\u001e\u0013\u0015\u0003\u0001\u0003\"AD!\n\u0005\tC!\u0001B+oSRDa\u0001\u0012\u0001!\n#*\u0015a\u00038fo\u000e{WNY5oKJ,\u0012A\u0012\t\u0005I\u001dSs'\u0003\u0002I\t\tA1i\\7cS:,'\u000fC\u0003K\u0001\u0011\u00053*\u0001\u0007nCB\u001cu.\u001c9b]&|g.F\u0001M!\rqSjM\u0005\u0003\u001d>\u0012acR3oKJL7\rU1s\u001b\u0006\u00048i\\7qC:LwN\u001c\u0005\u0006!\u0002!\t%U\u0001\u0006K6\u0004H/_\u000b\u0002o!)1\u000b\u0001D\u0001)\u0006\u00191/Z9\u0016\u0003aBQA\u0016\u0001\u0005B]\u000bq!\u001e9eCR,G-\u0006\u0002Y7R\u0019\u0011L\u00181\u0011\t\u001d\u0002QC\u0017\t\u0003-m#Q\u0001X+C\u0002u\u0013\u0011!V\t\u0003AuAQaX+A\u0002U\t1a[3z\u0011\u0015\tW\u000b1\u0001[\u0003\u00151\u0018\r\\;f\u0011\u0015\u0019\u0007\u0001\"\u0001e\u0003-9\u0018\u000e\u001e5EK\u001a\fW\u000f\u001c;\u0015\u0005]*\u0007\"\u00024c\u0001\u00049\u0017!\u00013\u0011\t9AW\u0003I\u0005\u0003S\"\u0011\u0011BR;oGRLwN\\\u0019\t\u000b-\u0004A\u0011\u00017\u0002!]LG\u000f\u001b#fM\u0006,H\u000e\u001e,bYV,GCA\u001cn\u0011\u00151'\u000e1\u0001!\u000f\u0015y'\u0001#\u0001q\u0003\u0019\u0001\u0016M]'baB\u0011q%\u001d\u0004\u0006\u0003\tA\tA]\n\u0003cN\u00042A\f;4\u0013\t)xFA\u0007QCJl\u0015\r\u001d$bGR|'/\u001f\u0005\u0006oF$\t\u0001_\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003ADQ\u0001U9\u0005\u0002i,Ba\u001f@\u0002\u0002U\tA\u0010\u0005\u0003(\u0001u|\bC\u0001\f\u007f\t\u0015A\u0012P1\u0001\u001a!\r1\u0012\u0011\u0001\u0003\u0006Ee\u0014\r!\u0007\u0005\u0007\tF$\t!!\u0002\u0016\r\u0005\u001d\u0011qBA\n+\t\tI\u0001\u0005\u0004%\u000f\u0006-\u0011Q\u0003\t\u0007\u001d-\ni!!\u0005\u0011\u0007Y\ty\u0001\u0002\u0004\u0019\u0003\u0007\u0011\r!\u0007\t\u0004-\u0005MAA\u0002\u0012\u0002\u0004\t\u0007\u0011\u0004\u0005\u0004(\u0001\u00055\u0011\u0011\u0003\u0005\b\u00033\tH1AA\u000e\u00031\u0019\u0017M\u001c\"vS2$gI]8n+\u0019\ti\"!\u000e\u0002:U\u0011\u0011q\u0004\t\n]\u0005\u0005\u0012QEA\u0019\u0003wI1!a\t0\u00059\u0019\u0015M\\\"p[\nLg.\u001a$s_6\u0004B!a\n\u0002*5\t\u0011/\u0003\u0003\u0002,\u00055\"\u0001B\"pY2L1!a\f0\u000559UM\\'ba\u001a\u000b7\r^8ssB1abKA\u001a\u0003o\u00012AFA\u001b\t\u0019A\u0012q\u0003b\u00013A\u0019a#!\u000f\u0005\r\t\n9B1\u0001\u001a!\u00199\u0003!a\r\u00028\u00191\u0011qH9\u0001\u0003\u0003\u00121bV5uQ\u0012+g-Y;miV1\u00111IA2\u0003O\u001ab!!\u0010\u0002F\u0005%\u0004\u0003CA$\u0003;\n\t'!\u001a\u000f\t\u0005%\u00131\f\b\u0005\u0003\u0017\nIF\u0004\u0003\u0002N\u0005]c\u0002BA(\u0003+j!!!\u0015\u000b\u0007\u0005M#\"\u0001\u0004=e>|GOP\u0005\u0002\u0013%\u0011q\u0001C\u0005\u0003\u000b\u0019I!a\u001c\u0003\n\t\u0005}\u0012q\f\u0006\u0003_\u0012\u00012AFA2\t\u0019A\u0012Q\bb\u00013A\u0019a#a\u001a\u0005\r\t\niD1\u0001\u001a!\u00199\u0003!!\u0019\u0002f!Y\u0011QNA\u001f\u0005\u0003\u0005\u000b\u0011BA5\u0003))h\u000eZ3sYfLgn\u001a\u0005\u000bM\u0006u\"\u0011!Q\u0001\n\u0005E\u0004C\u0002\bi\u0003C\n)\u0007C\u0004x\u0003{!\t!!\u001e\u0015\r\u0005]\u0014\u0011PA>!!\t9#!\u0010\u0002b\u0005\u0015\u0004\u0002CA7\u0003g\u0002\r!!\u001b\t\u000f\u0019\f\u0019\b1\u0001\u0002r!A\u0011qPA\u001f\t\u0003\n\t)\u0001\u0005%a2,8\u000fJ3r)\u0011\t\u0019)!\"\u000e\u0005\u0005u\u0002\u0002CAD\u0003{\u0002\r!!#\u0002\u0005-4\bC\u0002\b,\u0003C\n)\u0007\u0003\u0005\u0002\u000e\u0006uB\u0011AAH\u0003%!S.\u001b8vg\u0012*\u0017\u000f\u0006\u0003\u0002\u0004\u0006E\u0005bB0\u0002\f\u0002\u0007\u0011\u0011\r\u0005\b!\u0006uB\u0011IAK+\t\t9\bC\u0004W\u0003{!\t%!'\u0016\t\u0005m\u0015\u0011\u0015\u000b\u0007\u0003;\u000b)+a*\u0011\u0011\u0005\u001d\u0012QHA1\u0003?\u00032AFAQ\t\u001da\u0016q\u0013b\u0001\u0003G\u000b2!!\u001a\u001e\u0011\u001dy\u0016q\u0013a\u0001\u0003CBq!YAL\u0001\u0004\ty\n\u0003\u0005\u0002,\u0006uB\u0011IAW\u0003\u0015!\u0003\u000f\\;t+\u0011\ty+!.\u0015\t\u0005E\u0016q\u0017\t\t\u0003O\ti$!\u0019\u00024B\u0019a#!.\u0005\u000fq\u000bIK1\u0001\u0002$\"A\u0011qQAU\u0001\u0004\tI\f\u0005\u0004\u000fW\u0005\u0005\u00141\u0017\u0005\t\u0003{\u000bi\u0004\"\u0011\u0002@\u00061A%\\5okN$B!a\u001e\u0002B\"9q,a/A\u0002\u0005\u0005\u0004bB*\u0002>\u0011\u0005\u0013QY\u000b\u0003\u0003\u000f\u0004b!O\u001e\u0002b\u0005\u0015\u0004bBAf\u0003{!\taP\u0001\u0006G2,\u0017M\u001d\u0005\t\u0003\u001f\fi\u0004\"\u0001\u0002R\u0006\u0019\u0001/\u001e;\u0015\r\u0005M\u0017\u0011\\An!\u0015q\u0011Q[A3\u0013\r\t9\u000e\u0003\u0002\u0007\u001fB$\u0018n\u001c8\t\u000f}\u000bi\r1\u0001\u0002b!9\u0011-!4A\u0002\u0005\u0015\u0004bB2\u0002>\u0011\u0005\u0013q\u001c\u000b\u0005\u0003S\n\t\u000fC\u0004g\u0003;\u0004\r!!\u001d\t\u000f-\fi\u0004\"\u0011\u0002fR!\u0011\u0011NAt\u0011\u001d1\u00171\u001da\u0001\u0003K\u0002")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParMap.class */
public interface ParMap<K, V> extends scala.collection.parallel.ParMap<K, V>, ParIterable<Tuple2<K, V>>, ParMapLike<K, V, ParMap<K, V>, Map<K, V>> {

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParMap$WithDefault.class */
    public static class WithDefault<K, V> extends ParMap.WithDefault<K, V> implements ParMap<K, V> {

        /* renamed from: d */
        private final Function1<K, V> f1610d;
        private final ParMap<K, V> underlying;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WithDefault(ParMap<K, V> parMap, Function1<K, V> function1) {
            super(parMap, function1);
            this.underlying = parMap;
            this.f1610d = function1;
            ParIterable.Cclass.$init$(this);
            Growable.Cclass.$init$(this);
            Shrinkable.Cclass.$init$(this);
            Cloneable.Cclass.$init$(this);
            ParMapLike.Cclass.$init$(this);
            Cclass.$init$(this);
        }

        /* JADX WARN: Type inference failed for: r2v2, types: [scala.collection.parallel.mutable.ParMap] */
        @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.collection.generic.Subtractable
        public WithDefault<K, V> $minus(K k) {
            return new WithDefault<>(this.underlying.$minus((ParMap<K, V>) k), this.f1610d);
        }

        @Override // scala.collection.generic.Shrinkable
        public Shrinkable<K> $minus$eq(K k, K k2, Seq<K> seq) {
            return Shrinkable.Cclass.$minus$eq(this, k, k2, seq);
        }

        @Override // scala.collection.parallel.mutable.ParMapLike, scala.collection.generic.Shrinkable
        public WithDefault<K, V> $minus$eq(K k) {
            this.underlying.$minus$eq((ParMap<K, V>) k);
            return this;
        }

        @Override // scala.collection.generic.Shrinkable
        public Shrinkable<K> $minus$minus$eq(TraversableOnce<K> traversableOnce) {
            return traversableOnce.foreach(new Shrinkable$$anonfun$$minus$minus$eq$1(this));
        }

        @Override // scala.collection.parallel.ParMap, scala.collection.GenMapLike, scala.collection.MapLike
        public <U> WithDefault<K, U> $plus(Tuple2<K, U> tuple2) {
            return updated((WithDefault<K, V>) tuple2.mo269_1(), (K) tuple2.mo268_2());
        }

        @Override // scala.collection.generic.Growable
        public /* bridge */ /* synthetic */ Growable $plus$eq(Object obj) {
            return $plus$eq((Tuple2) ((Tuple2) obj));
        }

        @Override // scala.collection.generic.Growable
        public Growable $plus$eq(Object obj, Object obj2, Seq seq) {
            Growable $plus$plus$eq;
            $plus$plus$eq = $plus$eq((WithDefault<K, V>) obj).$plus$eq(obj2).$plus$plus$eq(seq);
            return $plus$plus$eq;
        }

        @Override // scala.collection.parallel.mutable.ParMapLike
        public WithDefault<K, V> $plus$eq(Tuple2<K, V> tuple2) {
            this.underlying.$plus$eq((Tuple2) tuple2);
            return this;
        }

        @Override // scala.collection.generic.Growable
        public Growable<Tuple2<K, V>> $plus$plus$eq(TraversableOnce<Tuple2<K, V>> traversableOnce) {
            return Growable.Cclass.$plus$plus$eq(this, traversableOnce);
        }

        @Override // scala.collection.parallel.mutable.ParMapLike, scala.collection.generic.Growable, scala.collection.generic.Clearable
        public void clear() {
            this.underlying.clear();
        }

        @Override // scala.collection.mutable.Cloneable
        public Object clone() {
            return Cloneable.Cclass.clone(this);
        }

        @Override // scala.collection.parallel.ParMap.WithDefault, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public GenericCompanion<ParIterable> companion() {
            return ParIterable.Cclass.companion(this);
        }

        @Override // scala.collection.parallel.ParMap.WithDefault, scala.collection.parallel.ParMap, scala.collection.parallel.ParMapLike
        public WithDefault<K, V> empty() {
            return new WithDefault<>(this.underlying.empty(), this.f1610d);
        }

        @Override // scala.collection.parallel.ParMap.WithDefault, scala.collection.parallel.ParMap, scala.collection.generic.GenericParMapTemplate
        public GenericParMapCompanion<scala.collection.parallel.ParMap> mapCompanion() {
            return Cclass.mapCompanion(this);
        }

        @Override // scala.collection.parallel.ParMap.WithDefault, scala.collection.generic.GenericParMapTemplate, scala.collection.generic.GenericParTemplate, scala.collection.generic.HasNewCombiner
        public Combiner<Tuple2<K, V>, ParMap<K, V>> newCombiner() {
            return Cclass.newCombiner(this);
        }

        @Override // scala.collection.parallel.mutable.ParMapLike
        public Option<V> put(K k, V v) {
            return this.underlying.put(k, v);
        }

        @Override // scala.collection.mutable.Cloneable
        public /* synthetic */ Object scala$collection$mutable$Cloneable$$super$clone() {
            return super.clone();
        }

        @Override // scala.collection.GenMap, scala.collection.GenMapLike, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public Map<K, V> seq() {
            return this.underlying.seq().withDefault(this.f1610d);
        }

        @Override // scala.collection.parallel.ParMap.WithDefault, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public ParIterable<Tuple2<K, V>> toIterable() {
            return ParIterable.Cclass.toIterable(this);
        }

        @Override // scala.collection.parallel.ParMap.WithDefault, scala.collection.GenTraversableOnce, scala.collection.SetLike
        public ParSeq<Tuple2<K, V>> toSeq() {
            return ParIterable.Cclass.toSeq(this);
        }

        @Override // scala.collection.parallel.ParMap.WithDefault, scala.collection.parallel.ParMap, scala.collection.GenMap, scala.collection.MapLike
        public <U> WithDefault<K, U> updated(K k, U u) {
            return new WithDefault<>(this.underlying.updated((ParMap<K, V>) k, (K) u), this.f1610d);
        }

        @Override // scala.collection.parallel.mutable.ParMap
        public ParMap<K, V> withDefault(Function1<K, V> function1) {
            return new WithDefault(this.underlying, function1);
        }

        @Override // scala.collection.parallel.mutable.ParMap
        public ParMap<K, V> withDefaultValue(V v) {
            return new WithDefault(this.underlying, new ParMap$WithDefault$$anonfun$withDefaultValue$2(this, v));
        }
    }

    /* renamed from: scala.collection.parallel.mutable.ParMap$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParMap$class.class */
    public abstract class Cclass {
        public static void $init$(ParMap parMap) {
        }

        public static ParMap empty(ParMap parMap) {
            return new ParHashMap();
        }

        public static GenericParMapCompanion mapCompanion(ParMap parMap) {
            return ParMap$.MODULE$;
        }

        public static Combiner newCombiner(ParMap parMap) {
            return ParMap$.MODULE$.newCombiner();
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.parallel.mutable.ParMap] */
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

    @Override // scala.collection.parallel.ParMap, scala.collection.parallel.ParMapLike
    ParMap<K, V> empty();

    @Override // scala.collection.parallel.ParMap, scala.collection.generic.GenericParMapTemplate
    GenericParMapCompanion<scala.collection.parallel.ParMap> mapCompanion();

    Combiner<Tuple2<K, V>, ParMap<K, V>> newCombiner();

    @Override // scala.collection.GenMap, scala.collection.GenMapLike, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    Map<K, V> seq();

    @Override // scala.collection.parallel.ParMap, scala.collection.GenMap, scala.collection.MapLike
    <U> ParMap<K, U> updated(K k, U u);

    ParMap<K, V> withDefault(Function1<K, V> function1);

    ParMap<K, V> withDefaultValue(V v);
}
