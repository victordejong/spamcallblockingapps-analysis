package scala.collection.immutable;

import scala.Function1;
import scala.Function2;
import scala.Tuple2;
import scala.collection.GenTraversableOnce;
import scala.collection.Seq;
import scala.collection.SetLike;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.Subtractable;
import scala.collection.immutable.Iterable;
import scala.collection.immutable.Map;
import scala.collection.immutable.MapLike;
import scala.collection.immutable.Set;
import scala.collection.immutable.Traversable;
import scala.collection.mutable.Builder;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.immutable.ParMap;
import scala.collection.parallel.immutable.ParMap$;
import scala.collection.parallel.immutable.ParSet;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
@ScalaSignature(bytes = "\u0006\u0001\u0005\u0005e\u0001C\u0001\u0003!\u0003\r\t!C\u0014\u0003\u000f5\u000b\u0007\u000fT5lK*\u00111\u0001B\u0001\nS6lW\u000f^1cY\u0016T!!\u0002\u0004\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\b\u0003\u0015\u00198-\u00197b\u0007\u0001)BA\u0003\u000b\u001fCM!\u0001aC\b-!\taQ\"D\u0001\u0007\u0013\tqaA\u0001\u0004B]f\u0014VM\u001a\t\u0006!E\u0011R\u0004I\u0007\u0002\t%\u0011\u0011\u0001\u0002\t\u0003'Qa\u0001\u0001B\u0003\u0016\u0001\t\u0007aCA\u0001B#\t9\"\u0004\u0005\u0002\r1%\u0011\u0011D\u0002\u0002\b\u001d>$\b.\u001b8h!\ta1$\u0003\u0002\u001d\r\t\u0019\u0011I\\=\u0011\u0005MqBAB\u0010\u0001\t\u000b\u0007aCA\u0001C!\t\u0019\u0012\u0005\u0002\u0004#\u0001\u0011\u0015\ra\t\u0002\u0005)\"L7/\u0005\u0002\u0018II\u0019QeJ\u0015\u0007\t\u0019\u0002\u0001\u0001\n\u0002\ryI,g-\u001b8f[\u0016tGO\u0010\t\u0006Q\u0001\u0011R\u0004I\u0007\u0002\u0005A!\u0001F\u000b\n\u001e\u0013\tY#AA\u0002NCB\u0004B\u0001E\u00170e%\u0011a\u0006\u0002\u0002\u000f!\u0006\u0014\u0018\r\u001c7fY&T\u0018M\u00197f!\u0011a\u0001GE\u000f\n\u0005E2!A\u0002+va2,'\u0007\u0005\u00034oIiR\"\u0001\u001b\u000b\u0005\r)$B\u0001\u001c\u0005\u0003!\u0001\u0018M]1mY\u0016d\u0017B\u0001\u001d5\u0005\u0019\u0001\u0016M]'ba\")!\b\u0001C\u0001w\u00051A%\u001b8ji\u0012\"\u0012\u0001\u0010\t\u0003\u0019uJ!A\u0010\u0004\u0003\tUs\u0017\u000e\u001e\u0005\u0007\u0001\u0002\u0001K\u0011K!\u0002\u0017A\f'oQ8nE&tWM]\u000b\u0002\u0005B!1\tR\u00183\u001b\u0005)\u0014BA#6\u0005!\u0019u.\u001c2j]\u0016\u0014\b\"B$\u0001\t\u0003B\u0015aB;qI\u0006$X\rZ\u000b\u0003\u00132#2AS(R!\u0011A#FE&\u0011\u0005MaE!B'G\u0005\u0004q%A\u0001\"2#\ti\"\u0004C\u0003Q\r\u0002\u0007!#A\u0002lKfDQA\u0015$A\u0002-\u000bQA^1mk\u0016DQ\u0001\u0016\u0001\u0007\u0002U\u000bQ\u0001\n9mkN,\"AV-\u0015\u0005]S\u0006\u0003\u0002\u0015+%a\u0003\"aE-\u0005\u000b5\u001b&\u0019\u0001(\t\u000bm\u001b\u0006\u0019\u0001/\u0002\u0005-4\b\u0003\u0002\u00071%aCQ\u0001\u0016\u0001\u0005By+\"a\u00182\u0015\t\u0001\u001cg\r\u001b\t\u0005Q)\u0012\u0012\r\u0005\u0002\u0014E\u0012)Q*\u0018b\u0001\u001d\")A-\u0018a\u0001K\u0006)Q\r\\3ncA!A\u0002\r\nb\u0011\u00159W\f1\u0001f\u0003\u0015)G.Z73\u0011\u0015IW\f1\u0001k\u0003\u0015)G.Z7t!\ra1.Z\u0005\u0003Y\u001a\u0011!\u0002\u0010:fa\u0016\fG/\u001a3?\u0011\u0015q\u0007\u0001\"\u0011p\u0003)!\u0003\u000f\\;tIAdWo]\u000b\u0003aN$\"!\u001d;\u0011\t!R#C\u001d\t\u0003'M$Q!T7C\u00029CQ!^7A\u0002Y\f!\u0001_:\u0011\u0007A9\u00180\u0003\u0002y\t\t\u0011r)\u001a8Ue\u00064XM]:bE2,wJ\\2f!\u0011a\u0001G\u0005:\t\u000bm\u0004A\u0011\t?\u0002\u0015\u0019LG\u000e^3s\u0017\u0016L8\u000f\u0006\u0002*{\")aP\u001fa\u0001\u007f\u0006\t\u0001\u000f\u0005\u0004\r\u0003\u0003\u0011\u0012QA\u0005\u0004\u0003\u00071!!\u0003$v]\u000e$\u0018n\u001c82!\ra\u0011qA\u0005\u0004\u0003\u00131!a\u0002\"p_2,\u0017M\u001c\u0005\b\u0003\u001b\u0001A\u0011IA\b\u0003%i\u0017\r\u001d,bYV,7/\u0006\u0003\u0002\u0012\u0005]A\u0003BA\n\u00037\u0001R\u0001\u000b\u0016\u0013\u0003+\u00012aEA\f\t\u001d\tI\"a\u0003C\u0002Y\u0011\u0011a\u0011\u0005\t\u0003;\tY\u00011\u0001\u0002 \u0005\ta\r\u0005\u0004\r\u0003\u0003i\u0012Q\u0003\u0005\b\u0003G\u0001A\u0011IA\u0013\u0003\u0019YW-_*fiV\u0011\u0011q\u0005\t\u0005Q\u0005%\"#C\u0002\u0002,\t\u00111aU3u\r\u0019\ty\u0003\u0001\u0005\u00022\t1\u0012*\\7vi\u0006\u0014G.\u001a#fM\u0006,H\u000e^&fsN+Go\u0005\u0004\u0002.\u0005M\u0012q\u0005\t\u0005\u0003k\t9$D\u0001\u0001\u0013\r\tI$\u0005\u0002\u000e\t\u00164\u0017-\u001e7u\u0017\u0016L8+\u001a;\t\u0011\u0005u\u0012Q\u0006C\u0001\u0003\u007f\ta\u0001P5oSRtDCAA!!\u0011\t)$!\f\t\u000fQ\u000bi\u0003\"\u0011\u0002FQ!\u0011qEA$\u0011\u001d\tI%a\u0011A\u0002I\tA!\u001a7f[\"A\u0011QJA\u0017\t\u0003\ny%\u0001\u0004%[&tWo\u001d\u000b\u0005\u0003O\t\t\u0006C\u0004\u0002J\u0005-\u0003\u0019\u0001\n\t\u000f\u0005U\u0003\u0001\"\u0001\u0002X\u0005IAO]1og\u001a|'/\\\u000b\u0007\u00033\n9(a\u0018\u0015\t\u0005m\u0013\u0011\u0010\u000b\u0005\u0003;\n\u0019\u0007E\u0002\u0014\u0003?\"q!!\u0019\u0002T\t\u0007aC\u0001\u0003UQ\u0006$\b\u0002CA3\u0003'\u0002\u001d!a\u001a\u0002\u0005\t4\u0007#CA5\u0003_\u0002\u00131OA/\u001b\t\tYGC\u0002\u0002n\u0011\tqaZ3oKJL7-\u0003\u0003\u0002r\u0005-$\u0001D\"b]\n+\u0018\u000e\u001c3Ge>l\u0007#\u0002\u00071%\u0005U\u0004cA\n\u0002x\u00119\u0011\u0011DA*\u0005\u00041\u0002\u0002CA\u000f\u0003'\u0002\r!a\u001f\u0011\u000f1\tiHE\u000f\u0002v%\u0019\u0011q\u0010\u0004\u0003\u0013\u0019+hn\u0019;j_:\u0014\u0004")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/MapLike.class */
public interface MapLike<A, B, This extends MapLike<A, B, This> & Map<A, B>> extends scala.collection.MapLike<A, B, This> {

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/MapLike$ImmutableDefaultKeySet.class */
    public class ImmutableDefaultKeySet extends scala.collection.MapLike<A, B, This>.DefaultKeySet implements Set<A> {
        public ImmutableDefaultKeySet(MapLike<A, B, This> mapLike) {
            super(mapLike);
            Traversable.Cclass.$init$(this);
            Iterable.Cclass.$init$(this);
            Set.Cclass.$init$(this);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v9, types: [scala.collection.immutable.Set] */
        @Override // scala.collection.MapLike.DefaultKeySet, scala.collection.GenSetLike, scala.collection.SetLike, scala.collection.generic.Subtractable
        public Set<A> $minus(A a) {
            return apply((Object) a) ? (Set) ((SetLike) Set$.MODULE$.apply(Nil$.MODULE$)).$plus$plus(this).$minus((scala.collection.Set) a) : this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v8, types: [scala.collection.immutable.Set] */
        @Override // scala.collection.MapLike.DefaultKeySet, scala.collection.GenSetLike, scala.collection.SetLike
        public Set<A> $plus(A a) {
            return apply((Object) a) ? this : (Set) ((SetLike) Set$.MODULE$.apply(Nil$.MODULE$)).$plus$plus(this).$plus((scala.collection.Set) a);
        }

        @Override // scala.collection.AbstractSet, scala.collection.GenSetLike, scala.Function1
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return BoxesRunTime.boxToBoolean(apply(obj));
        }

        @Override // scala.collection.AbstractSet, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public GenericCompanion<Set> companion() {
            return Set.Cclass.companion(this);
        }

        @Override // scala.collection.AbstractSet, scala.collection.generic.GenericSetTemplate, scala.collection.SetLike, scala.collection.immutable.SortedSet, scala.collection.SortedSet
        public /* bridge */ /* synthetic */ scala.collection.Set empty() {
            return (scala.collection.Set) empty();
        }

        @Override // scala.collection.AbstractSet, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
        public Combiner<A, ParSet<A>> parCombiner() {
            return Set.Cclass.parCombiner(this);
        }

        @Override // scala.collection.AbstractSet, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
        public /* bridge */ /* synthetic */ Subtractable repr() {
            return (Subtractable) repr();
        }

        /* renamed from: scala$collection$immutable$MapLike$ImmutableDefaultKeySet$$$outer */
        public /* synthetic */ MapLike m157x5afdbe54() {
            return (MapLike) this.$outer;
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

    /* renamed from: scala.collection.immutable.MapLike$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/MapLike$class.class */
    public abstract class Cclass {
        public static void $init$(MapLike mapLike) {
        }

        /* JADX WARN: Type inference failed for: r0v3, types: [scala.collection.immutable.Map] */
        public static Map $plus(MapLike mapLike, Tuple2 tuple2, Tuple2 tuple22, Seq seq) {
            return mapLike.$plus(tuple2).$plus(tuple22).$plus$plus((GenTraversableOnce) seq);
        }

        public static Map $plus$plus(MapLike mapLike, GenTraversableOnce genTraversableOnce) {
            return (Map) genTraversableOnce.seq().$div$colon((Map) mapLike.repr(), new MapLike$$anonfun$$plus$plus$1(mapLike));
        }

        public static Map filterKeys(MapLike mapLike, Function1 function1) {
            return new MapLike$$anon$1(mapLike, function1);
        }

        public static Set keySet(MapLike mapLike) {
            return new ImmutableDefaultKeySet(mapLike);
        }

        public static Map mapValues(MapLike mapLike, Function1 function1) {
            return new MapLike$$anon$2(mapLike, function1);
        }

        public static Combiner parCombiner(MapLike mapLike) {
            return ParMap$.MODULE$.newCombiner();
        }

        public static Object transform(MapLike mapLike, Function2 function2, CanBuildFrom canBuildFrom) {
            Builder apply = canBuildFrom.apply(mapLike.repr());
            mapLike.withFilter(new MapLike$$anonfun$transform$1(mapLike)).foreach(new MapLike$$anonfun$transform$2(mapLike, apply, function2));
            return apply.result();
        }

        public static Map updated(MapLike mapLike, Object obj, Object obj2) {
            return mapLike.$plus(new Tuple2(obj, obj2));
        }
    }

    @Override // scala.collection.MapLike
    <B1> Map<A, B1> $plus(Tuple2<A, B1> tuple2);

    @Override // scala.collection.MapLike
    <B1> Map<A, B1> $plus(Tuple2<A, B1> tuple2, Tuple2<A, B1> tuple22, Seq<Tuple2<A, B1>> seq);

    @Override // scala.collection.MapLike
    <B1> Map<A, B1> $plus$plus(GenTraversableOnce<Tuple2<A, B1>> genTraversableOnce);

    @Override // scala.collection.MapLike
    Map<A, B> filterKeys(Function1<A, Object> function1);

    @Override // scala.collection.MapLike
    Set<A> keySet();

    @Override // scala.collection.MapLike
    <C> Map<A, C> mapValues(Function1<B, C> function1);

    @Override // scala.collection.MapLike, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    Combiner<Tuple2<A, B>, ParMap<A, B>> parCombiner();

    <C, That> That transform(Function2<A, B, C> function2, CanBuildFrom<This, Tuple2<A, C>, That> canBuildFrom);

    @Override // scala.collection.MapLike
    <B1> Map<A, B1> updated(A a, B1 b1);
}
