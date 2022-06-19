package scala.collection.immutable;

import scala.Function1;
import scala.Option;
import scala.Tuple2;
import scala.collection.GenTraversableOnce;
import scala.collection.Seq;
import scala.collection.SortedMap;
import scala.collection.SortedMapLike;
import scala.collection.generic.GenericCompanion;
import scala.collection.immutable.Iterable;
import scala.collection.immutable.Set;
import scala.collection.immutable.SortedSet;
import scala.collection.immutable.Traversable;
import scala.collection.mutable.Builder;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.immutable.ParSet;
import scala.math.Ordering;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
@ScalaSignature(bytes = "\u0006\u0001\t\u001da\u0001C\u0001\u0003!\u0003\r\t!C\u0014\u0003\u0013M{'\u000f^3e\u001b\u0006\u0004(BA\u0002\u0005\u0003%IW.\\;uC\ndWM\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001!F\u0002\u000b+}\u0019b\u0001A\u0006\u0010C\u0011B\u0003C\u0001\u0007\u000e\u001b\u00051\u0011B\u0001\b\u0007\u0005\u0019\te.\u001f*fMB!\u0001#E\n\u001f\u001b\u0005\u0011\u0011B\u0001\n\u0003\u0005\ri\u0015\r\u001d\t\u0003)Ua\u0001\u0001B\u0003\u0017\u0001\t\u0007qCA\u0001B#\tA2\u0004\u0005\u0002\r3%\u0011!D\u0002\u0002\b\u001d>$\b.\u001b8h!\taA$\u0003\u0002\u001e\r\t\u0019\u0011I\\=\u0011\u0005QyBA\u0002\u0011\u0001\t\u000b\u0007qCA\u0001C!\u0011\u00113e\u0005\u0010\u000e\u0003\u0011I!!\u0001\u0003\u0011\u000bA)3CH\u0014\n\u0005\u0019\u0012!aB'ba2K7.\u001a\t\u0005!\u0001\u0019b\u0004E\u0003#SMqr%\u0003\u0002+\t\ti1k\u001c:uK\u0012l\u0015\r\u001d'jW\u0016DQ\u0001\f\u0001\u0005\u00025\na\u0001J5oSR$C#\u0001\u0018\u0011\u00051y\u0013B\u0001\u0019\u0007\u0005\u0011)f.\u001b;\t\rI\u0002\u0001\u0015\"\u00154\u0003)qWm\u001e\"vS2$WM]\u000b\u0002iA!Q\u0007\u000f\u001e(\u001b\u00051$BA\u001c\u0005\u0003\u001diW\u000f^1cY\u0016L!!\u000f\u001c\u0003\u000f\t+\u0018\u000e\u001c3feB!AbO\n\u001f\u0013\tadA\u0001\u0004UkBdWM\r\u0005\u0006}\u0001!\teP\u0001\u0006K6\u0004H/_\u000b\u0002O!)\u0011\t\u0001C!\u0005\u00069Q\u000f\u001d3bi\u0016$WCA\"G)\r!\u0015j\u0013\t\u0005!\u0001\u0019R\t\u0005\u0002\u0015\r\u0012)q\t\u0011b\u0001\u0011\n\u0011!)M\t\u0003=mAQA\u0013!A\u0002M\t1a[3z\u0011\u0015a\u0005\t1\u0001F\u0003\u00151\u0018\r\\;f\u0011\u0015q\u0005\u0001\"\u0011P\u0003\u0019YW-_*fiV\t\u0001\u000bE\u0002\u0011#NI!A\u0015\u0002\u0003\u0013M{'\u000f^3e'\u0016$h\u0001\u0002+\u0001\u0011U\u00131\u0003R3gCVdGoS3z'>\u0014H/\u001a3TKR\u001c2a\u0015,Q!\t9\u0006,D\u0001\u0001\u0013\t!\u0016\u0006C\u0003['\u0012\u00051,\u0001\u0004=S:LGO\u0010\u000b\u00029B\u0011qk\u0015\u0005\u0006=N#\teX\u0001\u0006IAdWo\u001d\u000b\u0003!\u0002DQ!Y/A\u0002M\tA!\u001a7f[\")1m\u0015C!I\u00061A%\\5okN$\"\u0001U3\t\u000b\u0005\u0014\u0007\u0019A\n\t\u000b\u001d\u001cF\u0011\t5\u0002\u0013I\fgnZ3J[BdGc\u0001)j]\")!N\u001aa\u0001W\u0006!aM]8n!\raAnE\u0005\u0003[\u001a\u0011aa\u00149uS>t\u0007\"B8g\u0001\u0004Y\u0017!B;oi&d\u0007\"\u00020\u0001\t\u0003\tXC\u0001:v)\t\u0019h\u000f\u0005\u0003\u0011\u0001M!\bC\u0001\u000bv\t\u00159\u0005O1\u0001I\u0011\u00159\b\u000f1\u0001y\u0003\tYg\u000f\u0005\u0003\rwM!\b\"\u00020\u0001\t\u0003RXCA>\u007f)\u0019ax0!\u0002\u0002\nA!\u0001\u0003A\n~!\t!b\u0010B\u0003Hs\n\u0007\u0001\nC\u0004\u0002\u0002e\u0004\r!a\u0001\u0002\u000b\u0015dW-\\\u0019\u0011\t1Y4# \u0005\b\u0003\u000fI\b\u0019AA\u0002\u0003\u0015)G.Z73\u0011\u001d\tY!\u001fa\u0001\u0003\u001b\tQ!\u001a7f[N\u0004R\u0001DA\b\u0003\u0007I1!!\u0005\u0007\u0005)a$/\u001a9fCR,GM\u0010\u0005\b\u0003+\u0001A\u0011IA\f\u0003)!\u0003\u000f\\;tIAdWo]\u000b\u0005\u00033\ty\u0002\u0006\u0003\u0002\u001c\u0005\u0005\u0002#\u0002\t\u0001'\u0005u\u0001c\u0001\u000b\u0002 \u00111q)a\u0005C\u0002!C\u0001\"a\t\u0002\u0014\u0001\u0007\u0011QE\u0001\u0003qN\u0004RAIA\u0014\u0003WI1!!\u000b\u0005\u0005I9UM\u001c+sCZ,'o]1cY\u0016|enY3\u0011\u000b1Y4#!\b\t\u000f\u0005=\u0002\u0001\"\u0011\u00022\u0005Qa-\u001b7uKJ\\U-_:\u0015\u0007\u001d\n\u0019\u0004\u0003\u0005\u00026\u00055\u0002\u0019AA\u001c\u0003\u0005\u0001\bC\u0002\u0007\u0002:M\ti$C\u0002\u0002<\u0019\u0011\u0011BR;oGRLwN\\\u0019\u0011\u00071\ty$C\u0002\u0002B\u0019\u0011qAQ8pY\u0016\fg\u000eC\u0004\u0002F\u0001!\t%a\u0012\u0002\u00135\f\u0007OV1mk\u0016\u001cX\u0003BA%\u0003\u001f\"B!a\u0013\u0002TA)\u0001\u0003A\n\u0002NA\u0019A#a\u0014\u0005\u000f\u0005E\u00131\tb\u0001/\t\t1\t\u0003\u0005\u0002V\u0005\r\u0003\u0019AA,\u0003\u00051\u0007C\u0002\u0007\u0002:y\tieB\u0004\u0002\\\tA\t!!\u0018\u0002\u0013M{'\u000f^3e\u001b\u0006\u0004\bc\u0001\t\u0002`\u00191\u0011A\u0001E\u0001\u0003C\u001aB!a\u0018\u0002dA1\u0011QMA6\u0003_j!!a\u001a\u000b\u0007\u0005%D!A\u0004hK:,'/[2\n\t\u00055\u0014q\r\u0002\u001a\u00136lW\u000f^1cY\u0016\u001cvN\u001d;fI6\u000b\u0007OR1di>\u0014\u0018\u0010\u0005\u0002\u0011\u0001!9!,a\u0018\u0005\u0002\u0005MDCAA/\u0011!\t9(a\u0018\u0005\u0004\u0005e\u0014\u0001D2b]\n+\u0018\u000e\u001c3Ge>lWCBA>\u0003'\u000b9\n\u0006\u0003\u0002~\u0005m\u0005CCA3\u0003\u007f\n\u0019)a$\u0002\u001a&!\u0011\u0011QA4\u00051\u0019\u0015M\u001c\"vS2$gI]8n!\u0011\t))a\"\u000e\u0005\u0005}\u0013\u0002BAE\u0003\u0017\u0013AaQ8mY&!\u0011QRA4\u0005A\u0019vN\u001d;fI6\u000b\u0007OR1di>\u0014\u0018\u0010\u0005\u0004\rw\u0005E\u0015Q\u0013\t\u0004)\u0005MEA\u0002\f\u0002v\t\u0007q\u0003E\u0002\u0015\u0003/#a\u0001IA;\u0005\u00049\u0002C\u0002\t\u0001\u0003#\u000b)\n\u0003\u0005\u0002\u001e\u0006U\u00049AAP\u0003\ry'\u000f\u001a\t\u0007\u0003C\u000b9+!%\u000f\u00071\t\u0019+C\u0002\u0002&\u001a\tq\u0001]1dW\u0006<W-\u0003\u0003\u0002*\u0006-&\u0001C(sI\u0016\u0014\u0018N\\4\u000b\u0007\u0005\u0015f\u0001C\u0004?\u0003?\"\t!a,\u0016\r\u0005E\u0016qWA^)\u0011\t\u0019,!0\u0011\rA\u0001\u0011QWA]!\r!\u0012q\u0017\u0003\u0007-\u00055&\u0019A\f\u0011\u0007Q\tY\f\u0002\u0004!\u0003[\u0013\ra\u0006\u0005\t\u0003;\u000bi\u000bq\u0001\u0002@B1\u0011\u0011UAT\u0003k3Q\"a1\u0002`A\u0005\u0019\u0011\u0001\u0003\u0002F\n\u0015!a\u0002#fM\u0006,H\u000e^\u000b\u0007\u0003\u000f\fi-!5\u0014\u000f\u0005\u00057\"!3\u0002TB1\u0001\u0003AAf\u0003\u001f\u00042\u0001FAg\t\u00191\u0012\u0011\u0019b\u0001/A\u0019A#!5\u0005\u000f\u0001\n\t\r\"b\u0001/AA\u0011Q[At\u0003\u0017\fyM\u0004\u0003\u0002X\u0006\u0015h\u0002BAm\u0003GtA!a7\u0002b6\u0011\u0011Q\u001c\u0006\u0004\u0003?D\u0011A\u0002\u001fs_>$h(C\u0001\b\u0013\t)a!C\u0002\u0002\\\u0011IA!a1\u0002j*\u0019\u00111\f\u0003\t\r1\n\t\r\"\u0001.\u0011\u001dq\u0016\u0011\u0019C!\u0003_,B!!=\u0002xR!\u00111_A~!\u0019\u0001\u0002!a3\u0002vB\u0019A#a>\u0005\u000f\u001d\u000biO1\u0001\u0002zF\u0019\u0011qZ\u000e\t\u000f]\fi\u000f1\u0001\u0002~B1AbOAf\u0003kDqaYAa\t\u0003\u0012\t\u0001\u0006\u0003\u0002J\n\r\u0001b\u0002&\u0002��\u0002\u0007\u00111\u001a\t\t\u0003\u000b\u000b\t-a3\u0002P\u0002")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/SortedMap.class */
public interface SortedMap<A, B> extends Map<A, B>, scala.collection.SortedMap<A, B> {

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/SortedMap$Default.class */
    public interface Default<A, B> extends SortedMap<A, B>, SortedMap.Default<A, B> {

        /* renamed from: scala.collection.immutable.SortedMap$Default$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/SortedMap$Default$class.class */
        public abstract class Cclass {
            public static void $init$(Default r1) {
            }

            public static SortedMap $minus(Default r6, Object obj) {
                Builder<Tuple2<A, B>, SortedMap<A, B>> newBuilder = r6.newBuilder();
                r6.withFilter(new SortedMap$Default$$anonfun$$minus$1(r6, obj)).foreach(new SortedMap$Default$$anonfun$$minus$2(r6, newBuilder));
                return newBuilder.result();
            }

            public static SortedMap $plus(Default r6, Tuple2 tuple2) {
                Builder<Tuple2<A, B>, CC> newBuilder = SortedMap$.MODULE$.newBuilder(r6.ordering());
                newBuilder.$plus$plus$eq(r6);
                newBuilder.$plus$eq((Builder<Tuple2<A, B>, CC>) new Tuple2<>(tuple2.mo269_1(), tuple2.mo268_2()));
                return (SortedMap) newBuilder.result();
            }
        }

        @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.collection.generic.Subtractable
        SortedMap<A, B> $minus(A a);

        @Override // scala.collection.immutable.SortedMap, scala.collection.immutable.Map, scala.collection.GenMapLike, scala.collection.MapLike
        <B1> SortedMap<A, B1> $plus(Tuple2<A, B1> tuple2);
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/SortedMap$DefaultKeySortedSet.class */
    public class DefaultKeySortedSet extends SortedMapLike<A, B, SortedMap<A, B>>.DefaultKeySortedSet implements SortedSet<A> {
        public DefaultKeySortedSet(SortedMap<A, B> sortedMap) {
            super(sortedMap);
            Traversable.Cclass.$init$(this);
            Iterable.Cclass.$init$(this);
            Set.Cclass.$init$(this);
            SortedSet.Cclass.$init$(this);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v5, types: [scala.collection.SortedSet] */
        /* JADX WARN: Type inference failed for: r0v8, types: [scala.collection.immutable.SortedSet] */
        @Override // scala.collection.SortedMapLike.DefaultKeySortedSet, scala.collection.MapLike.DefaultKeySet, scala.collection.GenSetLike, scala.collection.SetLike, scala.collection.generic.Subtractable
        public SortedSet<A> $minus(A a) {
            return apply((Object) a) ? (SortedSet) SortedSet$.MODULE$.apply(Nil$.MODULE$, ordering()).$plus$plus(this).$minus((scala.collection.Set) a) : this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v4, types: [scala.collection.SortedSet] */
        /* JADX WARN: Type inference failed for: r0v7, types: [scala.collection.immutable.SortedSet] */
        @Override // scala.collection.SortedMapLike.DefaultKeySortedSet, scala.collection.MapLike.DefaultKeySet, scala.collection.GenSetLike, scala.collection.SetLike
        public SortedSet<A> $plus(A a) {
            return apply((Object) a) ? this : (SortedSet) SortedSet$.MODULE$.apply(Nil$.MODULE$, ordering()).$plus$plus(this).$plus((scala.collection.Set) a);
        }

        @Override // scala.collection.SortedMapLike.DefaultKeySortedSet, scala.collection.AbstractSet, scala.collection.GenSetLike, scala.Function1
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return BoxesRunTime.boxToBoolean(apply(obj));
        }

        @Override // scala.collection.AbstractSet, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public GenericCompanion<Set> companion() {
            return Set.Cclass.companion(this);
        }

        @Override // scala.collection.SortedMapLike.DefaultKeySortedSet, scala.collection.AbstractSet, scala.collection.generic.GenericSetTemplate, scala.collection.SetLike, scala.collection.immutable.SortedSet, scala.collection.SortedSet
        public SortedSet<A> empty() {
            return SortedSet.Cclass.empty(this);
        }

        @Override // scala.collection.AbstractSet, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
        public Combiner<A, ParSet<A>> parCombiner() {
            return Set.Cclass.parCombiner(this);
        }

        @Override // scala.collection.SortedMapLike.DefaultKeySortedSet, scala.collection.SortedSetLike, scala.collection.generic.Sorted
        public SortedSet<A> rangeImpl(Option<A> option, Option<A> option2) {
            return new DefaultKeySortedSet((SortedMap) scala$collection$immutable$SortedMap$DefaultKeySortedSet$$$outer().rangeImpl((Option) option, (Option) option2));
        }

        public /* synthetic */ SortedMap scala$collection$immutable$SortedMap$DefaultKeySortedSet$$$outer() {
            return (SortedMap) this.$outer;
        }

        @Override // scala.collection.AbstractSet, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public Set<A> seq() {
            return Set.Cclass.seq(this);
        }

        @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
        public <B> Set<B> toSet() {
            return Set.Cclass.toSet(this);
        }
    }

    /* renamed from: scala.collection.immutable.SortedMap$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/SortedMap$class.class */
    public abstract class Cclass {
        public static void $init$(SortedMap sortedMap) {
        }

        public static SortedMap $plus(SortedMap sortedMap, Tuple2 tuple2) {
            throw new AbstractMethodError("SortedMap.+");
        }

        public static SortedMap $plus$plus(SortedMap sortedMap, GenTraversableOnce genTraversableOnce) {
            return (SortedMap) genTraversableOnce.seq().$div$colon((SortedMap) sortedMap.repr(), new SortedMap$$anonfun$$plus$plus$1(sortedMap));
        }

        public static SortedMap empty(SortedMap sortedMap) {
            return SortedMap$.MODULE$.empty((Ordering) sortedMap.ordering());
        }

        public static SortedMap filterKeys(SortedMap sortedMap, Function1 function1) {
            return new SortedMap$$anon$1(sortedMap, function1);
        }

        public static SortedSet keySet(SortedMap sortedMap) {
            return new DefaultKeySortedSet(sortedMap);
        }

        public static SortedMap mapValues(SortedMap sortedMap, Function1 function1) {
            return new SortedMap$$anon$2(sortedMap, function1);
        }

        public static Builder newBuilder(SortedMap sortedMap) {
            return SortedMap$.MODULE$.newBuilder(sortedMap.ordering());
        }

        public static SortedMap updated(SortedMap sortedMap, Object obj, Object obj2) {
            return sortedMap.$plus(new Tuple2(obj, obj2));
        }
    }

    @Override // scala.collection.immutable.Map, scala.collection.GenMapLike, scala.collection.MapLike
    <B1> SortedMap<A, B1> $plus(Tuple2<A, B1> tuple2);

    @Override // scala.collection.MapLike
    <B1> SortedMap<A, B1> $plus(Tuple2<A, B1> tuple2, Tuple2<A, B1> tuple22, Seq<Tuple2<A, B1>> seq);

    @Override // scala.collection.MapLike
    <B1> SortedMap<A, B1> $plus$plus(GenTraversableOnce<Tuple2<A, B1>> genTraversableOnce);

    @Override // scala.collection.immutable.Map, scala.collection.Map, scala.collection.MapLike
    SortedMap<A, B> empty();

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    SortedMap<A, B> filterKeys(Function1<A, Object> function1);

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    SortedSet<A> keySet();

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    <C> SortedMap<A, C> mapValues(Function1<B, C> function1);

    @Override // scala.collection.TraversableLike, scala.collection.generic.HasNewBuilder, scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
    Builder<Tuple2<A, B>, SortedMap<A, B>> newBuilder();

    @Override // scala.collection.immutable.Map, scala.collection.GenMap, scala.collection.MapLike
    <B1> SortedMap<A, B1> updated(A a, B1 b1);
}
