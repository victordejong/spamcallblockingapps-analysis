package scala.collection;

import scala.Function1;
import scala.Option;
import scala.Tuple2;
import scala.collection.GenSetLike;
import scala.collection.SortedMap;
import scala.collection.SortedMapLike;
import scala.collection.SortedSet;
import scala.collection.SortedSetLike;
import scala.collection.generic.Sorted;
import scala.collection.immutable.Nil$;
import scala.math.Ordering;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.ObjectRef;
@ScalaSignature(bytes = "\u0006\u0001\u0005ee\u0001C\u0001\u0003!\u0003\r\taB\u0013\u0003\u001bM{'\u000f^3e\u001b\u0006\u0004H*[6f\u0015\t\u0019A!\u0001\u0006d_2dWm\u0019;j_:T\u0011!B\u0001\u0006g\u000e\fG.Y\u0002\u0001+\u0011AQ\u0003K\u0010\u0014\t\u0001IQ\"\f\t\u0003\u0015-i\u0011\u0001B\u0005\u0003\u0019\u0011\u0011a!\u00118z%\u00164\u0007\u0003\u0002\b\u0012'yi\u0011a\u0004\u0006\u0003!\t\tqaZ3oKJL7-\u0003\u0002\u0013\u001f\t11k\u001c:uK\u0012\u0004\"\u0001F\u000b\r\u0001\u0011)a\u0003\u0001b\u0001/\t\t\u0011)\u0005\u0002\u00197A\u0011!\"G\u0005\u00035\u0011\u0011qAT8uQ&tw\r\u0005\u0002\u000b9%\u0011Q\u0004\u0002\u0002\u0004\u0003:L\bC\u0001\u000b \t\u0019\u0001\u0003\u0001\"b\u0001C\t!A\u000b[5t#\tA\"EE\u0002$K)2A\u0001\n\u0001\u0001E\taAH]3gS:,W.\u001a8u}A)a\u0005A\n(=5\t!\u0001\u0005\u0002\u0015Q\u00111\u0011\u0006\u0001CC\u0002]\u0011\u0011A\u0011\t\u0005M-\u001ar%\u0003\u0002-\u0005\tI1k\u001c:uK\u0012l\u0015\r\u001d\t\u0006M9\u001arEH\u0005\u0003_\t\u0011q!T1q\u0019&\\W\rC\u00032\u0001\u0011\u0005!'\u0001\u0004%S:LG\u000f\n\u000b\u0002gA\u0011!\u0002N\u0005\u0003k\u0011\u0011A!\u00168ji\")q\u0007\u0001C\u0001q\u0005Aa-\u001b:ti.+\u00170F\u0001\u0014\u0011\u0015Q\u0004\u0001\"\u00019\u0003\u001da\u0017m\u001d;LKfDQ\u0001\u0010\u0001\u0007\u0004u\n\u0001b\u001c:eKJLgnZ\u000b\u0002}A\u0019qHQ\n\u000f\u0005)\u0001\u0015BA!\u0005\u0003\u001d\u0001\u0018mY6bO\u0016L!a\u0011#\u0003\u0011=\u0013H-\u001a:j]\u001eT!!\u0011\u0003\t\u000b\u0019\u0003a\u0011A$\u0002\u0013I\fgnZ3J[BdGc\u0001\u0010I\u001b\")\u0011*\u0012a\u0001\u0015\u0006!aM]8n!\rQ1jE\u0005\u0003\u0019\u0012\u0011aa\u00149uS>t\u0007\"\u0002(F\u0001\u0004Q\u0015!B;oi&d\u0007\"\u0002)\u0001\t\u0003\n\u0016AB6fsN+G/F\u0001S!\r13kE\u0005\u0003)\n\u0011\u0011bU8si\u0016$7+\u001a;\u0007\tY\u0003\u0001b\u0016\u0002\u0014\t\u00164\u0017-\u001e7u\u0017\u0016L8k\u001c:uK\u0012\u001cV\r^\n\u0004+b\u0013\u0006CA-[\u001b\u0005\u0001\u0011BA./\u00055!UMZ1vYR\\U-_*fi\")Q,\u0016C\u0001=\u00061A(\u001b8jiz\"\u0012a\u0018\t\u00033VCQ\u0001P+\u0005\u0004uBQAY+\u0005B\r\fQ\u0001\n9mkN$\"A\u00153\t\u000b\u0015\f\u0007\u0019A\n\u0002\t\u0015dW-\u001c\u0005\u0006OV#\t\u0005[\u0001\u0007I5Lg.^:\u0015\u0005IK\u0007\"B3g\u0001\u0004\u0019\u0002\"\u0002$V\t\u0003ZGc\u0001*m[\")\u0011J\u001ba\u0001\u0015\")aJ\u001ba\u0001\u0015\")q.\u0016C!a\u0006\u00012.Z=t\u0013R,'/\u0019;pe\u001a\u0013x.\u001c\u000b\u0003cR\u00042A\n:\u0014\u0013\t\u0019(A\u0001\u0005Ji\u0016\u0014\u0018\r^8s\u0011\u0015)h\u000e1\u0001\u0014\u0003\u0015\u0019H/\u0019:u\u0011\u00159\b\u0001\"\u0011y\u0003\u001d)\b\u000fZ1uK\u0012,\"!\u001f?\u0015\ti|\u00181\u0001\t\u0005M-\u001a2\u0010\u0005\u0002\u0015y\u0012)QP\u001eb\u0001}\n\u0011!)M\t\u0003OmAa!!\u0001w\u0001\u0004\u0019\u0012aA6fs\"1\u0011Q\u0001<A\u0002m\fQA^1mk\u0016DaA\u0019\u0001\u0007\u0002\u0005%Q\u0003BA\u0006\u0003#!B!!\u0004\u0002\u0014A)aeK\n\u0002\u0010A\u0019A#!\u0005\u0005\ru\f9A1\u0001\u007f\u0011!\t)\"a\u0002A\u0002\u0005]\u0011AA6w!\u0019Q\u0011\u0011D\n\u0002\u0010%\u0019\u00111\u0004\u0003\u0003\rQ+\b\u000f\\33\u0011\u0019\u0011\u0007\u0001\"\u0011\u0002 U!\u0011\u0011EA\u0014)!\t\u0019#!\u000b\u00020\u0005M\u0002#\u0002\u0014,'\u0005\u0015\u0002c\u0001\u000b\u0002(\u00111Q0!\bC\u0002yD\u0001\"a\u000b\u0002\u001e\u0001\u0007\u0011QF\u0001\u0006K2,W.\r\t\u0007\u0015\u0005e1#!\n\t\u0011\u0005E\u0012Q\u0004a\u0001\u0003[\tQ!\u001a7f[JB\u0001\"!\u000e\u0002\u001e\u0001\u0007\u0011qG\u0001\u0006K2,Wn\u001d\t\u0006\u0015\u0005e\u0012QF\u0005\u0004\u0003w!!A\u0003\u001fsKB,\u0017\r^3e}!9\u0011q\b\u0001\u0005B\u0005\u0005\u0013A\u00034jYR,'oS3zgR\u0019!&a\u0011\t\u0011\u0005\u0015\u0013Q\ba\u0001\u0003\u000f\n\u0011\u0001\u001d\t\u0007\u0015\u0005%3#!\u0014\n\u0007\u0005-CAA\u0005Gk:\u001cG/[8ocA\u0019!\"a\u0014\n\u0007\u0005ECAA\u0004C_>dW-\u00198\t\u000f\u0005U\u0003\u0001\"\u0011\u0002X\u0005IQ.\u00199WC2,Xm]\u000b\u0005\u00033\ny\u0006\u0006\u0003\u0002\\\u0005\r\u0004#\u0002\u0014,'\u0005u\u0003c\u0001\u000b\u0002`\u00119\u0011\u0011MA*\u0005\u00049\"!A\"\t\u0011\u0005\u0015\u00141\u000ba\u0001\u0003O\n\u0011A\u001a\t\u0007\u0015\u0005%s%!\u0018\t\u000f\u0005-\u0004\u0001\"\u0011\u0002n\u0005QA\u0005\u001d7vg\u0012\u0002H.^:\u0016\t\u0005=\u0014Q\u000f\u000b\u0005\u0003c\n9\bE\u0003'WM\t\u0019\bE\u0002\u0015\u0003k\"a!`A5\u0005\u0004q\b\u0002CA=\u0003S\u0002\r!a\u001f\u0002\u0005a\u001c\b#\u0002\u0014\u0002~\u0005\u0005\u0015bAA@\u0005\t\u0011r)\u001a8Ue\u00064XM]:bE2,wJ\\2f!\u0019Q\u0011\u0011D\n\u0002t!9\u0011Q\u0011\u0001\u0007\u0002\u0005\u001d\u0015\u0001D5uKJ\fGo\u001c:Ge>lG\u0003BAE\u0003\u001b\u0003BA\n:\u0002\fB)!\"!\u0007\u0014O!1Q/a!A\u0002MAq!!%\u0001\r\u0003\t\u0019*\u0001\nwC2,Xm]%uKJ\fGo\u001c:Ge>lG\u0003BAK\u0003/\u00032A\n:(\u0011\u0019)\u0018q\u0012a\u0001'\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/SortedMapLike.class */
public interface SortedMapLike<A, B, This extends SortedMapLike<A, B, This> & SortedMap<A, B>> extends Sorted<A, This>, MapLike<A, B, This> {

    /* loaded from: classes3-dex2jar.jar:scala/collection/SortedMapLike$DefaultKeySortedSet.class */
    public class DefaultKeySortedSet extends MapLike<A, B, This>.DefaultKeySet implements SortedSet<A> {
        public DefaultKeySortedSet(SortedMapLike<A, B, This> sortedMapLike) {
            super(sortedMapLike);
            Sorted.Cclass.$init$(this);
            SortedSetLike.Cclass.$init$(this);
            SortedSet.Cclass.$init$(this);
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [scala.collection.Set] */
        @Override // scala.collection.MapLike.DefaultKeySet, scala.collection.GenSetLike, scala.collection.SetLike, scala.collection.generic.Subtractable
        public SortedSet<A> $minus(A a) {
            return (SortedSet) SortedSet$.MODULE$.apply(Nil$.MODULE$, ordering()).$plus$plus(this).$minus(a);
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [scala.collection.Set] */
        @Override // scala.collection.MapLike.DefaultKeySet, scala.collection.GenSetLike, scala.collection.SetLike
        public SortedSet<A> $plus(A a) {
            return (SortedSet) SortedSet$.MODULE$.apply(Nil$.MODULE$, ordering()).$plus$plus(this).$plus(a);
        }

        @Override // scala.collection.AbstractSet, scala.collection.GenSetLike, scala.Function1
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return BoxesRunTime.boxToBoolean(apply(obj));
        }

        @Override // scala.collection.generic.Sorted
        public int compare(A a, A a2) {
            return Sorted.Cclass.compare(this, a, a2);
        }

        @Override // scala.collection.AbstractSet, scala.collection.generic.GenericSetTemplate, scala.collection.SetLike, scala.collection.immutable.SortedSet, scala.collection.SortedSet
        public SortedSet<A> empty() {
            return SortedSet.Cclass.empty(this);
        }

        @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
        public A firstKey() {
            return (A) SortedSetLike.Cclass.firstKey(this);
        }

        @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
        public SortedSet<A> from(A a) {
            return SortedSetLike.Cclass.from(this, a);
        }

        @Override // scala.collection.generic.Sorted
        public boolean hasAll(Iterator<A> iterator) {
            return Sorted.Cclass.hasAll(this, iterator);
        }

        @Override // scala.collection.SortedSetLike
        public Iterator<A> iteratorFrom(A a) {
            return SortedSetLike.Cclass.iteratorFrom(this, a);
        }

        @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
        public SortedSet<A> keySet() {
            return SortedSetLike.Cclass.keySet(this);
        }

        @Override // scala.collection.generic.Sorted
        public Iterator<A> keysIteratorFrom(A a) {
            return scala$collection$SortedMapLike$DefaultKeySortedSet$$$outer().keysIteratorFrom(a);
        }

        @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
        public A lastKey() {
            return (A) SortedSetLike.Cclass.lastKey(this);
        }

        @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
        public Ordering<A> ordering() {
            return scala$collection$SortedMapLike$DefaultKeySortedSet$$$outer().ordering();
        }

        @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
        public SortedSet<A> range(A a, A a2) {
            return SortedSetLike.Cclass.range(this, a, a2);
        }

        @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
        public SortedSet<A> rangeImpl(Option<A> option, Option<A> option2) {
            return new DefaultKeySortedSet(scala$collection$SortedMapLike$DefaultKeySortedSet$$$outer().rangeImpl((Option) option, (Option) option2));
        }

        public /* synthetic */ SortedMapLike scala$collection$SortedMapLike$DefaultKeySortedSet$$$outer() {
            return (SortedMapLike) this.$outer;
        }

        @Override // scala.collection.SortedSetLike
        public /* synthetic */ boolean scala$collection$SortedSetLike$$super$subsetOf(GenSet genSet) {
            return GenSetLike.Cclass.subsetOf(this, genSet);
        }

        @Override // scala.collection.AbstractSet, scala.collection.GenSetLike, scala.collection.SortedSetLike
        public boolean subsetOf(GenSet<A> genSet) {
            return SortedSetLike.Cclass.subsetOf(this, genSet);
        }

        @Override // scala.collection.generic.Sorted
        /* renamed from: to */
        public Sorted mo124to(Object obj) {
            return Sorted.Cclass.m163to(this, obj);
        }

        @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
        public SortedSet<A> until(A a) {
            return SortedSetLike.Cclass.until(this, a);
        }
    }

    /* renamed from: scala.collection.SortedMapLike$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/SortedMapLike$class.class */
    public abstract class Cclass {
        public static void $init$(SortedMapLike sortedMapLike) {
        }

        public static SortedMap $plus(SortedMapLike sortedMapLike, Tuple2 tuple2, Tuple2 tuple22, Seq seq) {
            ObjectRef create = ObjectRef.create(sortedMapLike.$plus(tuple2).$plus(tuple22));
            seq.foreach(new SortedMapLike$$anonfun$$plus$1(sortedMapLike, create));
            return (SortedMap) create.elem;
        }

        public static SortedMap $plus$plus(SortedMapLike sortedMapLike, GenTraversableOnce genTraversableOnce) {
            return (SortedMap) genTraversableOnce.seq().$div$colon((SortedMap) sortedMapLike.repr(), new SortedMapLike$$anonfun$$plus$plus$1(sortedMapLike));
        }

        public static SortedMap filterKeys(SortedMapLike sortedMapLike, Function1 function1) {
            return new SortedMapLike$$anon$1(sortedMapLike, function1);
        }

        public static Object firstKey(SortedMapLike sortedMapLike) {
            return sortedMapLike.head().mo269_1();
        }

        public static SortedSet keySet(SortedMapLike sortedMapLike) {
            return new DefaultKeySortedSet(sortedMapLike);
        }

        public static Object lastKey(SortedMapLike sortedMapLike) {
            return sortedMapLike.last().mo269_1();
        }

        public static SortedMap mapValues(SortedMapLike sortedMapLike, Function1 function1) {
            return new SortedMapLike$$anon$2(sortedMapLike, function1);
        }

        public static SortedMap updated(SortedMapLike sortedMapLike, Object obj, Object obj2) {
            return sortedMapLike.$plus(new Tuple2(obj, obj2));
        }
    }

    @Override // scala.collection.MapLike
    <B1> SortedMap<A, B1> $plus(Tuple2<A, B1> tuple2);

    @Override // scala.collection.MapLike
    <B1> SortedMap<A, B1> $plus(Tuple2<A, B1> tuple2, Tuple2<A, B1> tuple22, Seq<Tuple2<A, B1>> seq);

    @Override // scala.collection.MapLike
    <B1> SortedMap<A, B1> $plus$plus(GenTraversableOnce<Tuple2<A, B1>> genTraversableOnce);

    @Override // scala.collection.MapLike
    SortedMap<A, B> filterKeys(Function1<A, Object> function1);

    @Override // scala.collection.generic.Sorted
    A firstKey();

    Iterator<Tuple2<A, B>> iteratorFrom(A a);

    @Override // scala.collection.generic.Sorted
    SortedSet<A> keySet();

    @Override // scala.collection.generic.Sorted
    A lastKey();

    @Override // scala.collection.MapLike
    <C> SortedMap<A, C> mapValues(Function1<B, C> function1);

    @Override // scala.collection.generic.Sorted
    Ordering<A> ordering();

    @Override // scala.collection.generic.Sorted
    This rangeImpl(Option<A> option, Option<A> option2);

    @Override // scala.collection.MapLike
    <B1> SortedMap<A, B1> updated(A a, B1 b1);

    Iterator<B> valuesIteratorFrom(A a);
}
