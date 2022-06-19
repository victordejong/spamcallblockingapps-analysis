package scala.collection.immutable;

import scala.Serializable;
import scala.collection.AbstractSeq;
import scala.collection.IndexedSeq;
import scala.collection.IndexedSeqLike;
import scala.collection.Iterator;
import scala.collection.generic.GenericCompanion;
import scala.collection.immutable.Iterable;
import scala.collection.immutable.Seq;
import scala.collection.immutable.Traversable;
import scala.collection.mutable.ArrayBuffer;
import scala.collection.mutable.Buffer;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.immutable.ParSeq;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
@ScalaSignature(bytes = "\u0006\u0001\u0005eaaB\u0001\u0003!\u0003\r\t!\u0003\u0002\u000b\u0013:$W\r_3e'\u0016\f(BA\u0002\u0005\u0003%IW.\\;uC\ndWM\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001!\u0006\u0002\u000b+M1\u0001aC\b\u001fC!\u0002\"\u0001D\u0007\u000e\u0003\u0019I!A\u0004\u0004\u0003\r\u0005s\u0017PU3g!\r\u0001\u0012cE\u0007\u0002\u0005%\u0011!C\u0001\u0002\u0004'\u0016\f\bC\u0001\u000b\u0016\u0019\u0001!aA\u0006\u0001\u0005\u0006\u00049\"!A!\u0012\u0005aY\u0002C\u0001\u0007\u001a\u0013\tQbAA\u0004O_RD\u0017N\\4\u0011\u00051a\u0012BA\u000f\u0007\u0005\r\te.\u001f\t\u0004?\u0001\u001aR\"\u0001\u0003\n\u0005\u0005!\u0001\u0003\u0002\u0012&'\u001dj\u0011a\t\u0006\u0003I\u0011\tqaZ3oKJL7-\u0003\u0002'G\tQr)\u001a8fe&\u001cGK]1wKJ\u001c\u0018M\u00197f)\u0016l\u0007\u000f\\1uKB\u0011\u0001\u0003\u0001\t\u0005?%\u001a2&\u0003\u0002+\t\tq\u0011J\u001c3fq\u0016$7+Z9MS.,\u0007c\u0001\t\u0001'!)Q\u0006\u0001C\u0001]\u00051A%\u001b8ji\u0012\"\u0012a\f\t\u0003\u0019AJ!!\r\u0004\u0003\tUs\u0017\u000e\u001e\u0005\u0006g\u0001!\t\u0005N\u0001\nG>l\u0007/\u00198j_:,\u0012!\u000e\t\u0004EY:\u0013BA\u001c$\u0005A9UM\\3sS\u000e\u001cu.\u001c9b]&|g\u000eC\u0003:\u0001\u0011\u0005#(\u0001\u0007u_&sG-\u001a=fIN+\u0017/F\u0001,Q\u0011ADhP!\u0011\u00051i\u0014B\u0001 \u0007\u0005Q!W\r\u001d:fG\u0006$X\rZ(wKJ\u0014\u0018\u000eZ5oO\u0006\n\u0001)\u00017J[6,H/\u00192mK\u0002Jg\u000eZ3yK\u0012\u00043/Z9vK:\u001cWm\u001d\u0011tQ>,H\u000e\u001a\u0011e_\u0002rw\u000e\u001e5j]\u001e\u0004sN\u001c\u0011u_&sG-\u001a=fIN+\u0017\u000fI3yG\u0016\u0004H\u000fI2bgR\u0004C\u000f[3ng\u0016dg/Z:!CN\u0004\u0013M\u001c\u0011j]\u0012,\u00070\u001a3!g\u0016\fX/\u001a8dK:\n\u0013AQ\u0001\u0007e9\n\u0014G\f\u0019\t\u000b\u0011\u0003A\u0011\t\u001e\u0002\u0007M,\u0017oB\u0003G\u0005!\u0005q)\u0001\u0006J]\u0012,\u00070\u001a3TKF\u0004\"\u0001\u0005%\u0007\u000b\u0005\u0011\u0001\u0012A%\u0014\u0005!S\u0005c\u0001\u0012LO%\u0011Aj\t\u0002\u0012\u0013:$W\r_3e'\u0016\fh)Y2u_JL\b\"\u0002(I\t\u0003y\u0015A\u0002\u001fj]&$h\bF\u0001H\r\u0011\t\u0006\n\u0001*\u0003\t%k\u0007\u000f\\\u000b\u0003'b\u001bB\u0001\u0015+Z5B\u0019q$V,\n\u0005Y#!aC!cgR\u0014\u0018m\u0019;TKF\u0004\"\u0001\u0006-\u0005\u000bY\u0001&\u0019A\f\u0011\u0007A\u0001q\u000b\u0005\u0002\r7&\u0011AL\u0002\u0002\r'\u0016\u0014\u0018.\u00197ju\u0006\u0014G.\u001a\u0005\t=B\u0013\t\u0011)A\u0005?\u0006\u0019!-\u001e4\u0011\u0007\u0001\u001cw+D\u0001b\u0015\t\u0011G!A\u0004nkR\f'\r\\3\n\u0005\u0011\f'aC!se\u0006L()\u001e4gKJDQA\u0014)\u0005\u0002\u0019$\"aZ5\u0011\u0007!\u0004v+D\u0001I\u0011\u0015qV\r1\u0001`\u0011\u0015Y\u0007\u000b\"\u0001m\u0003\u0019aWM\\4uQV\tQ\u000e\u0005\u0002\r]&\u0011qN\u0002\u0002\u0004\u0013:$\b\"B9Q\t\u0003\u0011\u0018!B1qa2LHCA,t\u0011\u0015!\b\u000f1\u0001n\u0003\rIG\r\u001f\u0005\u0006m\"#\ta^\u0001\u000b]\u0016<()^5mI\u0016\u0014XC\u0001=~+\u0005I\b\u0003\u00021{yzL!a_1\u0003\u000f\t+\u0018\u000e\u001c3feB\u0011A# \u0003\u0006-U\u0014\ra\u0006\t\u0004!\u0001a\bbBA\u0001\u0011\u0012\r\u00111A\u0001\rG\u0006t')^5mI\u001a\u0013x.\\\u000b\u0005\u0003\u000b\t)\"\u0006\u0002\u0002\bAI!%!\u0003\u0002\u000e\u0005M\u0011qC\u0005\u0004\u0003\u0017\u0019#\u0001D\"b]\n+\u0018\u000e\u001c3Ge>l\u0007c\u00015\u0002\u0010%\u0019\u0011\u0011\u0003\u001c\u0003\t\r{G\u000e\u001c\t\u0004)\u0005UA!\u0002\f��\u0005\u00049\u0002\u0003\u0002\t\u0001\u0003'\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/IndexedSeq.class */
public interface IndexedSeq<A> extends Seq<A>, scala.collection.IndexedSeq<A> {

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/IndexedSeq$Impl.class */
    public static class Impl<A> extends AbstractSeq<A> implements IndexedSeq<A>, Serializable {
        private final ArrayBuffer<A> buf;

        public Impl(ArrayBuffer<A> arrayBuffer) {
            this.buf = arrayBuffer;
            Traversable.Cclass.$init$(this);
            Iterable.Cclass.$init$(this);
            Seq.Cclass.$init$(this);
            IndexedSeqLike.Cclass.$init$(this);
            IndexedSeq.Cclass.$init$(this);
            Cclass.$init$(this);
        }

        @Override // scala.collection.GenSeqLike
        public A apply(int i) {
            return this.buf.apply(i);
        }

        @Override // scala.Function1
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return apply(BoxesRunTime.unboxToInt(obj));
        }

        @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public GenericCompanion<IndexedSeq> companion() {
            return Cclass.companion(this);
        }

        @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike
        public int hashCode() {
            return IndexedSeqLike.Cclass.hashCode(this);
        }

        @Override // scala.collection.AbstractSeq, scala.PartialFunction
        public /* bridge */ /* synthetic */ boolean isDefinedAt(Object obj) {
            return isDefinedAt(BoxesRunTime.unboxToInt(obj));
        }

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        public Iterator<A> iterator() {
            return IndexedSeqLike.Cclass.iterator(this);
        }

        @Override // scala.collection.GenSeqLike
        public int length() {
            return this.buf.length();
        }

        @Override // scala.collection.AbstractSeq, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
        public Combiner<A, ParSeq<A>> parCombiner() {
            return Seq.Cclass.parCombiner(this);
        }

        @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public IndexedSeq<A> seq() {
            return Cclass.seq(this);
        }

        @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
        public scala.collection.IndexedSeq<A> thisCollection() {
            return IndexedSeqLike.Cclass.thisCollection(this);
        }

        @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <A1> Buffer<A1> toBuffer() {
            return IndexedSeqLike.Cclass.toBuffer(this);
        }

        @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
        public scala.collection.IndexedSeq toCollection(Object obj) {
            return IndexedSeqLike.Cclass.toCollection(this, obj);
        }

        @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public IndexedSeq<A> toIndexedSeq() {
            return Cclass.toIndexedSeq(this);
        }

        @Override // scala.collection.AbstractSeq, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
        public Seq<A> toSeq() {
            return Seq.Cclass.toSeq(this);
        }
    }

    /* renamed from: scala.collection.immutable.IndexedSeq$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/IndexedSeq$class.class */
    public abstract class Cclass {
        public static void $init$(IndexedSeq indexedSeq) {
        }

        public static GenericCompanion companion(IndexedSeq indexedSeq) {
            return IndexedSeq$.MODULE$;
        }

        public static IndexedSeq seq(IndexedSeq indexedSeq) {
            return indexedSeq;
        }

        public static IndexedSeq toIndexedSeq(IndexedSeq indexedSeq) {
            return indexedSeq;
        }
    }

    @Override // scala.collection.immutable.Seq, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    GenericCompanion<IndexedSeq> companion();

    @Override // scala.collection.immutable.Seq, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    IndexedSeq<A> seq();

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    IndexedSeq<A> toIndexedSeq();
}
