package scala.collection.mutable;

import java.util.NoSuchElementException;
import java.util.Objects;
import scala.Cloneable;
import scala.Function1;
import scala.Function2;
import scala.Option;
import scala.Predef$;
import scala.Serializable;
import scala.Some;
import scala.Tuple2;
import scala.collection.AbstractIterator;
import scala.collection.GenIterable;
import scala.collection.GenSeq;
import scala.collection.GenTraversableOnce;
import scala.collection.IndexedSeq;
import scala.collection.IndexedSeqLike;
import scala.collection.IndexedSeqOptimized;
import scala.collection.IterableLike;
import scala.collection.Iterator;
import scala.collection.Seq;
import scala.collection.SeqLike;
import scala.collection.Traversable;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.GenericOrderedCompanion;
import scala.collection.generic.GenericOrderedTraversableTemplate;
import scala.collection.generic.Growable;
import scala.collection.immutable.List;
import scala.collection.immutable.Range;
import scala.collection.immutable.Range$;
import scala.collection.mutable.Builder;
import scala.collection.mutable.IndexedSeq;
import scala.collection.mutable.IndexedSeqLike;
import scala.collection.mutable.ResizableArray;
import scala.math.Ordering;
import scala.math.PartialOrdering;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
@ScalaSignature(bytes = "\u0006\u0001\t%d\u0001B\u0001\u0003\u0001%\u0011Q\u0002\u0015:j_JLG/_)vKV,'BA\u0002\u0005\u0003\u001diW\u000f^1cY\u0016T!!\u0002\u0004\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\b\u0003\u0015\u00198-\u00197b\u0007\u0001)\"AC\t\u0014\u0013\u0001Y1DH\u0013+[A\u001a\u0004c\u0001\u0007\u000e\u001f5\t!!\u0003\u0002\u000f\u0005\t\u0001\u0012IY:ue\u0006\u001cG/\u0013;fe\u0006\u0014G.\u001a\t\u0003!Ea\u0001\u0001B\u0003\u0013\u0001\t\u00071CA\u0001B#\t!\u0002\u0004\u0005\u0002\u0016-5\ta!\u0003\u0002\u0018\r\t9aj\u001c;iS:<\u0007CA\u000b\u001a\u0013\tQbAA\u0002B]f\u00042\u0001\u0004\u000f\u0010\u0013\ti\"A\u0001\u0005Ji\u0016\u0014\u0018M\u00197f!\u0011y\"e\u0004\u0013\u000e\u0003\u0001R!!\t\u0003\u0002\u000f\u001d,g.\u001a:jG&\u00111\u0005\t\u0002\"\u000f\u0016tWM]5d\u001fJ$WM]3e)J\fg/\u001a:tC\ndW\rV3na2\fG/\u001a\t\u0003\u0019\u0001\u0001BAJ\u0014\u0010S5\tA!\u0003\u0002)\t\ta\u0011\n^3sC\ndW\rT5lKB\u0019A\u0002A\b\u0011\u0007}Ys\"\u0003\u0002-A\tAqI]8xC\ndW\r\u0005\u0003\r]=I\u0013BA\u0018\u0003\u0005\u001d\u0011U/\u001b7eKJ\u0004\"!F\u0019\n\u0005I2!\u0001D*fe&\fG.\u001b>bE2,\u0007CA\u000b5\u0013\t)dAA\u0005DY>tW-\u00192mK\"Aq\u0007\u0001BC\u0002\u0013\r\u0001(A\u0002pe\u0012,\u0012!\u000f\t\u0004uuzaBA\u000b<\u0013\tad!A\u0004qC\u000e\\\u0017mZ3\n\u0005yz$\u0001C(sI\u0016\u0014\u0018N\\4\u000b\u0005q2\u0001\u0002C!\u0001\u0005\u0003\u0005\u000b\u0011B\u001d\u0002\t=\u0014H\r\t\u0005\u0006\u0007\u0002!\t\u0001R\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003\u0015#\"!\u000b$\t\u000b]\u0012\u00059A\u001d\u0007\t!\u0003A!\u0013\u0002\u0015%\u0016\u001c\u0018N_1cY\u0016\f%O]1z\u0003\u000e\u001cWm]:\u0016\u0005){5\u0003B$L!B\u00022\u0001\u0004'O\u0013\ti%AA\u0006BEN$(/Y2u'\u0016\f\bC\u0001\tP\t\u0015\u0011rI1\u0001\u0014!\ra\u0011KT\u0005\u0003%\n\u0011aBU3tSj\f'\r\\3BeJ\f\u0017\u0010C\u0003D\u000f\u0012\u0005A\u000bF\u0001V!\r1vIT\u0007\u0002\u0001!)\u0001l\u0012C\u00013\u00069\u0001oX:ju\u0016\u0004T#\u0001.\u0011\u0005UY\u0016B\u0001/\u0007\u0005\rIe\u000e\u001e\u0005\u0006=\u001e#\taX\u0001\fa~\u001b\u0018N_31?\u0012*\u0017\u000f\u0006\u0002aGB\u0011Q#Y\u0005\u0003E\u001a\u0011A!\u00168ji\")A-\u0018a\u00015\u0006\t1\u000fC\u0003g\u000f\u0012\u0005q-A\u0004q?\u0006\u0014(/Y=\u0016\u0003!\u00042!F5l\u0013\tQgAA\u0003BeJ\f\u0017\u0010\u0005\u0002\u0016Y&\u0011QN\u0002\u0002\u0007\u0003:L(+\u001a4\t\u000b=<E\u0011\u00019\u0002\u0019A|VM\\:ve\u0016\u001c\u0016N_3\u0015\u0005\u0001\f\b\"\u0002:o\u0001\u0004Q\u0016!\u00018\t\u000bQ<E\u0011A;\u0002\rA|6o^1q)\r\u0001g\u000f\u001f\u0005\u0006oN\u0004\rAW\u0001\u0002C\")\u0011p\u001da\u00015\u0006\t!\r\u0003\u0004|\u0001\u0001&\t\u0006`\u0001\u000b]\u0016<()^5mI\u0016\u0014X#A\u0015\t\u000fy\u0004!\u0019!C\u0005\u007f\u00061!/Z:beJ,\"!!\u0001\u0011\u0007Y;u\u0002\u0003\u0005\u0002\u0006\u0001\u0001\u000b\u0011BA\u0001\u0003\u001d\u0011Xm]1se\u0002Ba!!\u0003\u0001\t\u0003I\u0016A\u00027f]\u001e$\b\u000e\u0003\u0004\u0002\u000e\u0001!\t%W\u0001\u0005g&TX\rC\u0004\u0002\u0012\u0001!\t%a\u0005\u0002\u000f%\u001cX)\u001c9usV\u0011\u0011Q\u0003\t\u0004+\u0005]\u0011bAA\r\r\t9!i\\8mK\u0006t\u0007BBA\u000f\u0001\u0011\u0005C0\u0001\u0003sKB\u0014\bbBA\u0011\u0001\u0011\u0005\u00111E\u0001\u0007e\u0016\u001cX\u000f\u001c;\u0015\u0003%Bq!a\n\u0001\t\u0003\nI#\u0001\tpe\u0012,'/\u001a3D_6\u0004\u0018M\\5p]V\u0011\u00111\u0006\b\u0004\u0019\u00055raBA\u0018\u0005!\u0005\u0011\u0011G\u0001\u000e!JLwN]5usF+X-^3\u0011\u00071\t\u0019D\u0002\u0004\u0002\u0005!\u0005\u0011QG\n\u0006\u0003g\t9\u0004\r\t\u0005?\u0005eB%C\u0002\u0002<\u0001\u0012\u0011d\u0014:eKJ,G\r\u0016:bm\u0016\u00148/\u00192mK\u001a\u000b7\r^8ss\"91)a\r\u0005\u0002\u0005}BCAA\u0019\u0011\u001dY\u00181\u0007C\u0001\u0003\u0007*B!!\u0012\u0002LQ!\u0011qIA'!\u0011a\u0001!!\u0013\u0011\u0007A\tY\u0005\u0002\u0004\u0013\u0003\u0003\u0012\ra\u0005\u0005\bo\u0005\u0005\u00039AA(!\u0011QT(!\u0013\t\u0011\u0005M\u00131\u0007C\u0002\u0003+\nAbY1o\u0005VLG\u000e\u001a$s_6,B!a\u0016\u0002nQ!\u0011\u0011LA9!%y\u00121LA0\u0003W\ny'C\u0002\u0002^\u0001\u0012AbQ1o\u0005VLG\u000e\u001a$s_6\u0004B!!\u0019\u0002d5\u0011\u00111G\u0005\u0005\u0003K\n9G\u0001\u0003D_2d\u0017bAA5A\t9r)\u001a8fe&\u001cwJ\u001d3fe\u0016$7i\\7qC:LwN\u001c\t\u0004!\u00055DA\u0002\n\u0002R\t\u00071\u0003\u0005\u0003\r\u0001\u0005-\u0004bB\u001c\u0002R\u0001\u000f\u00111\u000f\t\u0005uu\nY\u0007\u0003\u0006\u0002x\u0005M\u0012\u0011!C\u0005\u0003s\n1B]3bIJ+7o\u001c7wKR\u0011\u00111\u0010\t\u0005\u0003{\n9)\u0004\u0002\u0002��)!\u0011\u0011QAB\u0003\u0011a\u0017M\\4\u000b\u0005\u0005\u0015\u0015\u0001\u00026bm\u0006LA!!#\u0002��\t1qJ\u00196fGRDq!!$\u0001\t\u0013\ty)A\u0002u_\u0006#2aDAI\u0011\u001d\t\u0019*a#A\u0002-\f\u0011\u0001\u001f\u0005\b\u0003/\u0003A\u0011CAM\u0003\u00151\u0017\u000e_+q)\u0015\u0001\u00171TAP\u0011\u001d\ti*!&A\u0002!\f!!Y:\t\u000f\u0005\u0005\u0016Q\u0013a\u00015\u0006\tQ\u000eC\u0004\u0002&\u0002!\t\"a*\u0002\u000f\u0019L\u0007\u0010R8x]R9\u0001-!+\u0002,\u00065\u0006bBAO\u0003G\u0003\r\u0001\u001b\u0005\b\u0003C\u000b\u0019\u000b1\u0001[\u0011\u0019\u0011\u00181\u0015a\u00015\"9\u0011\u0011\u0017\u0001\u0005\u0002\u0005M\u0016\u0001\u0003\u0013qYV\u001cH%Z9\u0015\u0007Y\u000b)\fC\u0004\u00028\u0006=\u0006\u0019A\b\u0002\t\u0015dW-\u001c\u0005\b\u0003w\u0003A\u0011AA_\u0003)!\u0003\u000f\\;tIAdWo\u001d\u000b\u0004S\u0005}\u0006\u0002CAa\u0003s\u0003\r!a1\u0002\u0005a\u001c\b\u0003\u0002\u0014\u0002F>I1!a2\u0005\u0005I9UM\u001c+sCZ,'o]1cY\u0016|enY3\t\u000f\u0005-\u0007\u0001\"\u0001\u0002N\u00069QM\\9vKV,Gc\u00011\u0002P\"A\u0011\u0011[Ae\u0001\u0004\t\u0019.A\u0003fY\u0016l7\u000f\u0005\u0003\u0016\u0003+|\u0011bAAl\r\tQAH]3qK\u0006$X\r\u001a \t\u000f\u0005m\u0007\u0001\"\u0001\u0002^\u00069A-Z9vKV,G#A\b\t\u000f\u0005\u0005\b\u0001\"\u0001\u0002d\u0006QA-Z9vKV,\u0017\t\u001c7\u0016\r\u0005\u0015\u0018Q`Au)\u0011\t9/!<\u0011\u0007A\tI\u000fB\u0004\u0002l\u0006}'\u0019A\n\u0003\tQC\u0017\r\u001e\u0005\t\u0003_\fy\u000eq\u0001\u0002r\u0006\u0011!M\u001a\u0019\u0005\u0003g\f9\u0010E\u0005 \u00037\n)0a?\u0002hB\u0019\u0001#a>\u0005\u0017\u0005e\u0018Q^A\u0001\u0002\u0003\u0015\ta\u0005\u0002\u0004?\u0012\n\u0004c\u0001\t\u0002~\u0012A\u0011q`Ap\u0005\u0004\u0011\tA\u0001\u0002BcE\u0011q\u0002\u0007\u0005\b\u0005\u000b\u0001A\u0011\tB\u0004\u0003\u0011AW-\u00193\u0016\u0003=AqAa\u0003\u0001\t\u0003\u0011i!A\u0003dY\u0016\f'\u000fF\u0001a\u0011\u001d\u0011\t\u0002\u0001C!\u0005'\t\u0001\"\u001b;fe\u0006$xN]\u000b\u0003\u0005+\u0001BA\nB\f\u001f%\u0019!\u0011\u0004\u0003\u0003\u0011%#XM]1u_JDaA!\b\u0001\t\u0003a\u0018a\u0002:fm\u0016\u00148/\u001a\u0005\b\u0005C\u0001A\u0011\u0001B\n\u0003=\u0011XM^3sg\u0016LE/\u001a:bi>\u0014\bb\u0002B\u0013\u0001\u0011\u0005#qE\u0001\tQ\u0006\u001c\bnQ8eKR\t!\fC\u0004\u0003,\u0001!\tA!\f\u0002\u000fQ|\u0017+^3vKV\u0011!q\u0006\t\u0005\u0019\tEr\"C\u0002\u00034\t\u0011Q!U;fk\u0016DqAa\u000e\u0001\t\u0003\u0012I$\u0001\u0005u_N#(/\u001b8h)\t\u0011Y\u0004\u0005\u0003\u0003>\t\rcbA\u000b\u0003@%\u0019!\u0011\t\u0004\u0002\rA\u0013X\rZ3g\u0013\u0011\u0011)Ea\u0012\u0003\rM#(/\u001b8h\u0015\r\u0011\tE\u0002\u0005\b\u0005\u0017\u0002A\u0011\tB'\u0003\u0019!x\u000eT5tiV\u0011!q\n\t\u0005u\tEs\"C\u0002\u0003T}\u0012A\u0001T5ti\"9!q\u000b\u0001\u0005B\u0005\r\u0012!B2m_:,\u0007f\u0002\u0001\u0003\\\t\u0005$Q\r\t\u0004+\tu\u0013b\u0001B0\r\t)B-\u001a9sK\u000e\fG/\u001a3J]\",'/\u001b;b]\u000e,\u0017E\u0001B2\u0003}\u0003&/[8sSRL\u0018+^3vK\u0002J7\u000f\t8pi\u0002Jg\u000e^3oI\u0016$\u0007\u0005^8!E\u0016\u00043/\u001e2dY\u0006\u001c8/\u001a3!IV,\u0007\u0005^8!Kb$XM\\:jm\u0016\u0004\u0003O]5wCR,\u0007%[7qY\u0016lWM\u001c;bi&|g\u000e\t3fi\u0006LGn\u001d\u0018\"\u0005\t\u001d\u0014A\u0002\u001a/cEr\u0003\u0007")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/PriorityQueue.class */
public class PriorityQueue<A> extends AbstractIterable<A> implements GenericOrderedTraversableTemplate<A, PriorityQueue>, Builder<A, PriorityQueue<A>>, Serializable, Cloneable {
    private final Ordering<A> ord;
    private final PriorityQueue<A>.ResizableArrayAccess<A> scala$collection$mutable$PriorityQueue$$resarr = new ResizableArrayAccess<>(this);

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/PriorityQueue$ResizableArrayAccess.class */
    public class ResizableArrayAccess<A> extends AbstractSeq<A> implements ResizableArray<A>, Serializable {
        public final /* synthetic */ PriorityQueue $outer;
        private Object[] array;
        private int size0;

        public ResizableArrayAccess(PriorityQueue<A> priorityQueue) {
            Objects.requireNonNull(priorityQueue);
            this.$outer = priorityQueue;
            IndexedSeqLike.Cclass.$init$(this);
            IndexedSeq.Cclass.$init$(this);
            IndexedSeqLike.Cclass.$init$(this);
            IndexedSeq.Cclass.$init$(this);
            IndexedSeqOptimized.Cclass.$init$(this);
            ResizableArray.Cclass.$init$(this);
        }

        @Override // scala.collection.GenSeqLike
        public A apply(int i) {
            return (A) ResizableArray.Cclass.apply(this, i);
        }

        @Override // scala.Function1
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return apply(BoxesRunTime.unboxToInt(obj));
        }

        @Override // scala.collection.mutable.ResizableArray
        public Object[] array() {
            return this.array;
        }

        @Override // scala.collection.mutable.ResizableArray
        public void array_$eq(Object[] objArr) {
            this.array = objArr;
        }

        @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public GenericCompanion<ResizableArray> companion() {
            return ResizableArray.Cclass.companion(this);
        }

        @Override // scala.collection.mutable.ResizableArray
        public void copy(int i, int i2, int i3) {
            ResizableArray.Cclass.copy(this, i, i2, i3);
        }

        @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <B> void copyToArray(Object obj, int i, int i2) {
            ResizableArray.Cclass.copyToArray(this, obj, i, i2);
        }

        @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
        public Object drop(int i) {
            return IndexedSeqOptimized.Cclass.drop(this, i);
        }

        @Override // scala.collection.AbstractIterable, scala.collection.IterableLike
        public Object dropRight(int i) {
            return IndexedSeqOptimized.Cclass.dropRight(this, i);
        }

        @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public Object dropWhile(Function1 function1) {
            return IndexedSeqOptimized.Cclass.dropWhile(this, function1);
        }

        @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
        public <B> boolean endsWith(GenSeq<B> genSeq) {
            return IndexedSeqOptimized.Cclass.endsWith(this, genSeq);
        }

        @Override // scala.collection.mutable.ResizableArray
        public void ensureSize(int i) {
            ResizableArray.Cclass.ensureSize(this, i);
        }

        @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean exists(Function1<A, Object> function1) {
            return IndexedSeqOptimized.Cclass.exists(this, function1);
        }

        @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Option<A> find(Function1<A, Object> function1) {
            return IndexedSeqOptimized.Cclass.find(this, function1);
        }

        @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B foldLeft(B b, Function2<B, A, B> function2) {
            return (B) IndexedSeqOptimized.Cclass.foldLeft(this, b, function2);
        }

        @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <B> B foldRight(B b, Function2<A, B, B> function2) {
            return (B) IndexedSeqOptimized.Cclass.foldRight(this, b, function2);
        }

        @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean forall(Function1<A, Object> function1) {
            return IndexedSeqOptimized.Cclass.forall(this, function1);
        }

        @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <U> void foreach(Function1<A, U> function1) {
            ResizableArray.Cclass.foreach(this, function1);
        }

        @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike
        public int hashCode() {
            return IndexedSeqLike.Cclass.hashCode(this);
        }

        @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public A head() {
            return (A) IndexedSeqOptimized.Cclass.head(this);
        }

        @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
        public int indexWhere(Function1<A, Object> function1, int i) {
            return IndexedSeqOptimized.Cclass.indexWhere(this, function1, i);
        }

        @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public Object init() {
            return IndexedSeqOptimized.Cclass.init(this);
        }

        @Override // scala.collection.mutable.ResizableArray
        public int initialSize() {
            return ResizableArray.Cclass.initialSize(this);
        }

        @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.PartialFunction
        public /* bridge */ /* synthetic */ boolean isDefinedAt(Object obj) {
            return isDefinedAt(BoxesRunTime.unboxToInt(obj));
        }

        @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public boolean isEmpty() {
            return IndexedSeqOptimized.Cclass.isEmpty(this);
        }

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        public Iterator<A> iterator() {
            return IndexedSeqLike.Cclass.iterator(this);
        }

        @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public A last() {
            return (A) IndexedSeqOptimized.Cclass.last(this);
        }

        @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
        public int lastIndexWhere(Function1<A, Object> function1, int i) {
            return IndexedSeqOptimized.Cclass.lastIndexWhere(this, function1, i);
        }

        @Override // scala.collection.GenSeqLike
        public int length() {
            return ResizableArray.Cclass.length(this);
        }

        @Override // scala.collection.AbstractSeq, scala.collection.SeqLike
        public int lengthCompare(int i) {
            return IndexedSeqOptimized.Cclass.lengthCompare(this, i);
        }

        public Object[] p_array() {
            return array();
        }

        public void p_ensureSize(int i) {
            ResizableArray.Cclass.ensureSize(this, i);
        }

        public int p_size0() {
            return size0();
        }

        public void p_size0_$eq(int i) {
            size0_$eq(i);
        }

        public void p_swap(int i, int i2) {
            ResizableArray.Cclass.swap(this, i, i2);
        }

        @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce
        public <B> B reduceLeft(Function2<B, A, B> function2) {
            return (B) IndexedSeqOptimized.Cclass.reduceLeft(this, function2);
        }

        @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <B> B reduceRight(Function2<A, B, B> function2) {
            return (B) IndexedSeqOptimized.Cclass.reduceRight(this, function2);
        }

        @Override // scala.collection.mutable.ResizableArray
        public void reduceToSize(int i) {
            ResizableArray.Cclass.reduceToSize(this, i);
        }

        @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
        public Object reverse() {
            return IndexedSeqOptimized.Cclass.reverse(this);
        }

        @Override // scala.collection.AbstractSeq, scala.collection.SeqLike
        public Iterator<A> reverseIterator() {
            return IndexedSeqOptimized.Cclass.reverseIterator(this);
        }

        @Override // scala.collection.AbstractIterable, scala.collection.GenIterableLike, scala.collection.IterableLike
        public <B> boolean sameElements(GenIterable<B> genIterable) {
            return IndexedSeqOptimized.Cclass.sameElements(this, genIterable);
        }

        @Override // scala.collection.IndexedSeqOptimized
        public /* synthetic */ boolean scala$collection$IndexedSeqOptimized$$super$endsWith(GenSeq genSeq) {
            return SeqLike.Cclass.endsWith(this, genSeq);
        }

        @Override // scala.collection.IndexedSeqOptimized
        public /* synthetic */ Object scala$collection$IndexedSeqOptimized$$super$head() {
            return IterableLike.Cclass.head(this);
        }

        @Override // scala.collection.IndexedSeqOptimized
        public /* synthetic */ Object scala$collection$IndexedSeqOptimized$$super$init() {
            return TraversableLike.Cclass.init(this);
        }

        @Override // scala.collection.IndexedSeqOptimized
        public /* synthetic */ Object scala$collection$IndexedSeqOptimized$$super$last() {
            return TraversableLike.Cclass.last(this);
        }

        @Override // scala.collection.IndexedSeqOptimized
        public /* synthetic */ Object scala$collection$IndexedSeqOptimized$$super$reduceLeft(Function2 function2) {
            return TraversableOnce.Cclass.reduceLeft(this, function2);
        }

        @Override // scala.collection.IndexedSeqOptimized
        public /* synthetic */ Object scala$collection$IndexedSeqOptimized$$super$reduceRight(Function2 function2) {
            return IterableLike.Cclass.reduceRight(this, function2);
        }

        @Override // scala.collection.IndexedSeqOptimized
        public /* synthetic */ boolean scala$collection$IndexedSeqOptimized$$super$sameElements(GenIterable genIterable) {
            return IterableLike.Cclass.sameElements(this, genIterable);
        }

        @Override // scala.collection.IndexedSeqOptimized
        public /* synthetic */ Object scala$collection$IndexedSeqOptimized$$super$tail() {
            return TraversableLike.Cclass.tail(this);
        }

        @Override // scala.collection.IndexedSeqOptimized
        public /* synthetic */ Object scala$collection$IndexedSeqOptimized$$super$zip(GenIterable genIterable, CanBuildFrom canBuildFrom) {
            return IterableLike.Cclass.zip(this, genIterable, canBuildFrom);
        }

        /* renamed from: scala$collection$mutable$PriorityQueue$ResizableArrayAccess$$$outer */
        public /* synthetic */ PriorityQueue m131x55a0eba6() {
            return this.$outer;
        }

        @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
        public int segmentLength(Function1<A, Object> function1, int i) {
            return IndexedSeqOptimized.Cclass.segmentLength(this, function1, i);
        }

        @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public IndexedSeq<A> seq() {
            return IndexedSeq.Cclass.seq(this);
        }

        @Override // scala.collection.mutable.ResizableArray
        public int size0() {
            return this.size0;
        }

        @Override // scala.collection.mutable.ResizableArray
        public void size0_$eq(int i) {
            this.size0 = i;
        }

        @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
        public Object slice(int i, int i2) {
            return IndexedSeqOptimized.Cclass.slice(this, i, i2);
        }

        @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public Tuple2<ResizableArray<A>, ResizableArray<A>> span(Function1<A, Object> function1) {
            return IndexedSeqOptimized.Cclass.span(this, function1);
        }

        @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public Tuple2<ResizableArray<A>, ResizableArray<A>> splitAt(int i) {
            return IndexedSeqOptimized.Cclass.splitAt(this, i);
        }

        @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
        public <B> boolean startsWith(GenSeq<B> genSeq, int i) {
            return IndexedSeqOptimized.Cclass.startsWith(this, genSeq, i);
        }

        @Override // scala.collection.mutable.ResizableArray
        public void swap(int i, int i2) {
            ResizableArray.Cclass.swap(this, i, i2);
        }

        @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public Object tail() {
            return IndexedSeqOptimized.Cclass.tail(this);
        }

        @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
        public Object take(int i) {
            return IndexedSeqOptimized.Cclass.take(this, i);
        }

        @Override // scala.collection.AbstractIterable, scala.collection.IterableLike
        public Object takeRight(int i) {
            return IndexedSeqOptimized.Cclass.takeRight(this, i);
        }

        @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
        public Object takeWhile(Function1 function1) {
            return IndexedSeqOptimized.Cclass.takeWhile(this, function1);
        }

        @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
        public IndexedSeq<A> thisCollection() {
            return IndexedSeqLike.Cclass.thisCollection(this);
        }

        @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <A1> Buffer<A1> toBuffer() {
            return IndexedSeqLike.Cclass.toBuffer(this);
        }

        @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
        public IndexedSeq toCollection(Object obj) {
            return IndexedSeqLike.Cclass.toCollection(this, obj);
        }

        @Override // scala.collection.mutable.SeqLike, scala.collection.mutable.BufferLike
        public void update(int i, A a) {
            ResizableArray.Cclass.update(this, i, a);
        }

        @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
        public Object view() {
            return IndexedSeqLike.Cclass.view(this);
        }

        @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
        public IndexedSeqView<A, ResizableArray<A>> view(int i, int i2) {
            return IndexedSeqLike.Cclass.view(this, i, i2);
        }

        @Override // scala.collection.AbstractIterable, scala.collection.GenIterableLike, scala.collection.IterableLike
        public <A1, B, That> That zip(GenIterable<B> genIterable, CanBuildFrom<ResizableArray<A>, Tuple2<A1, B>, That> canBuildFrom) {
            return (That) IndexedSeqOptimized.Cclass.zip(this, genIterable, canBuildFrom);
        }

        @Override // scala.collection.AbstractIterable, scala.collection.GenIterableLike, scala.collection.IterableLike
        public <A1, That> That zipWithIndex(CanBuildFrom<ResizableArray<A>, Tuple2<A1, Object>, That> canBuildFrom) {
            return (That) IndexedSeqOptimized.Cclass.zipWithIndex(this, canBuildFrom);
        }
    }

    public PriorityQueue(Ordering<A> ordering) {
        this.ord = ordering;
        GenericOrderedTraversableTemplate.Cclass.$init$(this);
        Growable.Cclass.$init$(this);
        Builder.Cclass.$init$(this);
        scala$collection$mutable$PriorityQueue$$resarr().p_size0_$eq(scala$collection$mutable$PriorityQueue$$resarr().p_size0() + 1);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.Traversable] */
    public static Traversable apply(Seq seq, Ordering ordering) {
        return PriorityQueue$.MODULE$.apply(seq, ordering);
    }

    public static <A> CanBuildFrom<PriorityQueue<?>, A, PriorityQueue<A>> canBuildFrom(Ordering<A> ordering) {
        return PriorityQueue$.MODULE$.canBuildFrom(ordering);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.Traversable] */
    public static Traversable empty(Ordering ordering) {
        return PriorityQueue$.MODULE$.empty(ordering);
    }

    @Override // scala.collection.generic.Growable
    public Growable<A> $plus$eq(A a, A a2, Seq<A> seq) {
        Growable<A> $plus$plus$eq;
        $plus$plus$eq = $plus$eq((PriorityQueue<A>) a).$plus$eq(a2).$plus$plus$eq(seq);
        return $plus$plus$eq;
    }

    @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable
    public PriorityQueue<A> $plus$eq(A a) {
        scala$collection$mutable$PriorityQueue$$resarr().p_ensureSize(scala$collection$mutable$PriorityQueue$$resarr().p_size0() + 1);
        scala$collection$mutable$PriorityQueue$$resarr().p_array()[scala$collection$mutable$PriorityQueue$$resarr().p_size0()] = a;
        fixUp(scala$collection$mutable$PriorityQueue$$resarr().p_array(), scala$collection$mutable$PriorityQueue$$resarr().p_size0());
        scala$collection$mutable$PriorityQueue$$resarr().p_size0_$eq(scala$collection$mutable$PriorityQueue$$resarr().p_size0() + 1);
        return this;
    }

    public PriorityQueue<A> $plus$plus(GenTraversableOnce<A> genTraversableOnce) {
        return (PriorityQueue) clone().$plus$plus$eq(genTraversableOnce.seq());
    }

    @Override // scala.collection.generic.Growable
    public Growable<A> $plus$plus$eq(TraversableOnce<A> traversableOnce) {
        return Growable.Cclass.$plus$plus$eq(this, traversableOnce);
    }

    @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
    public void clear() {
        scala$collection$mutable$PriorityQueue$$resarr().p_size0_$eq(1);
    }

    public PriorityQueue<A> clone() {
        return (PriorityQueue) new PriorityQueue(ord()).$plus$plus$eq(iterator());
    }

    public A dequeue() {
        if (scala$collection$mutable$PriorityQueue$$resarr().p_size0() > 1) {
            scala$collection$mutable$PriorityQueue$$resarr().p_size0_$eq(scala$collection$mutable$PriorityQueue$$resarr().p_size0() - 1);
            scala$collection$mutable$PriorityQueue$$resarr().p_swap(1, scala$collection$mutable$PriorityQueue$$resarr().p_size0());
            fixDown(scala$collection$mutable$PriorityQueue$$resarr().p_array(), 1, scala$collection$mutable$PriorityQueue$$resarr().p_size0() - 1);
            return scala$collection$mutable$PriorityQueue$$toA(scala$collection$mutable$PriorityQueue$$resarr().p_array()[scala$collection$mutable$PriorityQueue$$resarr().p_size0()]);
        }
        throw new NoSuchElementException("no element to remove from heap");
    }

    public <A1, That> That dequeueAll(CanBuildFrom<?, A1, That> canBuildFrom) {
        Builder<A1, That> apply = canBuildFrom.apply();
        while (nonEmpty()) {
            apply.$plus$eq((Builder<A1, That>) dequeue());
        }
        return apply.result();
    }

    public void enqueue(Seq<A> seq) {
        $plus$plus$eq(seq);
    }

    public void fixDown(Object[] objArr, int i, int i2) {
        while (true) {
            int i3 = i;
            int i4 = i3 * 2;
            if (i2 >= i4) {
                i = i4;
                if (i4 < i2) {
                    Ordering<A>.Ops mkOrderingOps = ord().mkOrderingOps(scala$collection$mutable$PriorityQueue$$toA(objArr[i4]));
                    int i5 = i4 + 1;
                    i = i4;
                    if (mkOrderingOps.$less(scala$collection$mutable$PriorityQueue$$toA(objArr[i5]))) {
                        i = i5;
                    }
                }
                if (ord().mkOrderingOps(scala$collection$mutable$PriorityQueue$$toA(objArr[i3])).$greater$eq(scala$collection$mutable$PriorityQueue$$toA(objArr[i]))) {
                    return;
                }
                Object obj = objArr[i3];
                objArr[i3] = objArr[i];
                objArr[i] = obj;
            } else {
                return;
            }
        }
    }

    public void fixUp(Object[] objArr, int i) {
        while (i > 1) {
            int i2 = i / 2;
            if (!ord().mkOrderingOps(scala$collection$mutable$PriorityQueue$$toA(objArr[i2])).$less(scala$collection$mutable$PriorityQueue$$toA(objArr[i]))) {
                return;
            }
            scala$collection$mutable$PriorityQueue$$resarr().p_swap(i, i2);
            i = i2;
        }
    }

    @Override // scala.collection.generic.GenericOrderedTraversableTemplate
    public <B> Builder<B, PriorityQueue<B>> genericOrderedBuilder(Ordering<B> ordering) {
        return GenericOrderedTraversableTemplate.Cclass.genericOrderedBuilder(this, ordering);
    }

    public int hashCode() {
        throw new UnsupportedOperationException("unsuitable as hash key");
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public A head() {
        if (scala$collection$mutable$PriorityQueue$$resarr().p_size0() > 1) {
            return scala$collection$mutable$PriorityQueue$$toA(scala$collection$mutable$PriorityQueue$$resarr().p_array()[1]);
        }
        throw new NoSuchElementException("queue is empty");
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        return scala$collection$mutable$PriorityQueue$$resarr().p_size0() < 2;
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<A> iterator() {
        return new AbstractIterator<A>(this) { // from class: scala.collection.mutable.PriorityQueue$$anon$2
            private final /* synthetic */ PriorityQueue $outer;

            /* renamed from: i */
            private int f1570i = 1;

            {
                Objects.requireNonNull(this);
                this.$outer = this;
            }

            /* renamed from: i */
            private int m133i() {
                return this.f1570i;
            }

            private void i_$eq(int i) {
                this.f1570i = i;
            }

            @Override // scala.collection.Iterator
            public boolean hasNext() {
                return m133i() < this.$outer.scala$collection$mutable$PriorityQueue$$resarr().p_size0();
            }

            /* JADX WARN: Type inference failed for: r0v8, types: [A, java.lang.Object] */
            @Override // scala.collection.Iterator
            public A next() {
                Object obj = this.$outer.scala$collection$mutable$PriorityQueue$$resarr().p_array()[m133i()];
                i_$eq(m133i() + 1);
                return this.$outer.scala$collection$mutable$PriorityQueue$$toA(obj);
            }
        };
    }

    public int length() {
        return scala$collection$mutable$PriorityQueue$$resarr().length() - 1;
    }

    @Override // scala.collection.mutable.Builder
    public <NewTo> Builder<A, NewTo> mapResult(Function1<PriorityQueue<A>, NewTo> function1) {
        return Builder.Cclass.mapResult(this, function1);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.generic.HasNewBuilder, scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
    public PriorityQueue<A> newBuilder() {
        return new PriorityQueue<>(ord());
    }

    @Override // scala.collection.generic.GenericOrderedTraversableTemplate
    public Ordering<A> ord() {
        return this.ord;
    }

    @Override // scala.collection.generic.GenericOrderedTraversableTemplate
    public GenericOrderedCompanion<PriorityQueue> orderedCompanion() {
        return PriorityQueue$.MODULE$;
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    public PriorityQueue<A> repr() {
        return this;
    }

    @Override // scala.collection.mutable.Builder
    public PriorityQueue<A> result() {
        return this;
    }

    public PriorityQueue<A> reverse() {
        PriorityQueue<A> priorityQueue = new PriorityQueue<>(new Ordering<A>(this) { // from class: scala.collection.mutable.PriorityQueue$$anon$1
            private final /* synthetic */ PriorityQueue $outer;

            {
                Objects.requireNonNull(this);
                this.$outer = this;
                PartialOrdering.Cclass.$init$(this);
                Ordering.Cclass.$init$(this);
            }

            @Override // scala.math.Ordering, java.util.Comparator
            public int compare(A a, A a2) {
                return this.$outer.ord().compare(a2, a);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering, scala.math.Equiv
            public boolean equiv(A a, A a2) {
                return Ordering.Cclass.equiv(this, a, a2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            /* renamed from: gt */
            public boolean mo37gt(A a, A a2) {
                return Ordering.Cclass.m40gt(this, a, a2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public boolean gteq(A a, A a2) {
                return Ordering.Cclass.gteq(this, a, a2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            /* renamed from: lt */
            public boolean mo36lt(A a, A a2) {
                return Ordering.Cclass.m39lt(this, a, a2);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public boolean lteq(A a, A a2) {
                return Ordering.Cclass.lteq(this, a, a2);
            }

            /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
            @Override // scala.math.Ordering
            public A max(A a, A a2) {
                return Ordering.Cclass.max(this, a, a2);
            }

            /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
            @Override // scala.math.Ordering
            public A min(A a, A a2) {
                return Ordering.Cclass.min(this, a, a2);
            }

            @Override // scala.math.Ordering
            public Ordering<A>.Ops mkOrderingOps(A a) {
                return Ordering.Cclass.mkOrderingOps(this, a);
            }

            @Override // scala.math.Ordering
            /* renamed from: on */
            public <U> Ordering<U> mo49on(Function1<U, A> function1) {
                return Ordering.Cclass.m38on(this, function1);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public Ordering<A> reverse() {
                return Ordering.Cclass.reverse(this);
            }

            @Override // scala.math.Ordering, scala.math.PartialOrdering
            public Some<Object> tryCompare(A a, A a2) {
                return Ordering.Cclass.tryCompare(this, a, a2);
            }
        });
        Predef$ predef$ = Predef$.MODULE$;
        int length = scala$collection$mutable$PriorityQueue$$resarr().length();
        Range$ range$ = Range$.MODULE$;
        Range range = new Range(1, length, 1);
        range.scala$collection$immutable$Range$$validateMaxLength();
        boolean z = (range.start() == Integer.MIN_VALUE && range.end() == Integer.MIN_VALUE) ? false : true;
        int start = range.start();
        int terminalElement = range.terminalElement();
        int step = range.step();
        int i = 0;
        while (true) {
            if (!z ? i < range.numRangeElements() : start != terminalElement) {
                priorityQueue.$plus$eq((PriorityQueue<A>) scala$collection$mutable$PriorityQueue$$resarr().apply(start));
                i++;
                start += step;
            } else {
                return priorityQueue;
            }
        }
    }

    public Iterator<A> reverseIterator() {
        return new AbstractIterator<A>(this) { // from class: scala.collection.mutable.PriorityQueue$$anon$3
            private final /* synthetic */ PriorityQueue $outer;

            /* renamed from: i */
            private int f1571i;

            {
                Objects.requireNonNull(this);
                this.$outer = this;
                this.f1571i = this.scala$collection$mutable$PriorityQueue$$resarr().p_size0() - 1;
            }

            /* renamed from: i */
            private int m132i() {
                return this.f1571i;
            }

            private void i_$eq(int i) {
                this.f1571i = i;
            }

            @Override // scala.collection.Iterator
            public boolean hasNext() {
                boolean z = true;
                if (m132i() < 1) {
                    z = false;
                }
                return z;
            }

            /* JADX WARN: Type inference failed for: r0v8, types: [A, java.lang.Object] */
            @Override // scala.collection.Iterator
            public A next() {
                Object obj = this.$outer.scala$collection$mutable$PriorityQueue$$resarr().p_array()[m132i()];
                i_$eq(m132i() - 1);
                return this.$outer.scala$collection$mutable$PriorityQueue$$toA(obj);
            }
        };
    }

    public PriorityQueue<A>.ResizableArrayAccess<A> scala$collection$mutable$PriorityQueue$$resarr() {
        return this.scala$collection$mutable$PriorityQueue$$resarr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public A scala$collection$mutable$PriorityQueue$$toA(Object obj) {
        return obj;
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int size() {
        return length();
    }

    @Override // scala.collection.mutable.Builder
    public void sizeHint(int i) {
        Builder.Cclass.sizeHint(this, i);
    }

    @Override // scala.collection.mutable.Builder
    public void sizeHint(TraversableLike<?, ?> traversableLike) {
        Builder.Cclass.sizeHint(this, traversableLike);
    }

    @Override // scala.collection.mutable.Builder
    public void sizeHint(TraversableLike<?, ?> traversableLike, int i) {
        Builder.Cclass.sizeHint(this, traversableLike, i);
    }

    @Override // scala.collection.mutable.Builder
    public void sizeHintBounded(int i, TraversableLike<?, ?> traversableLike) {
        Builder.Cclass.sizeHintBounded(this, i, traversableLike);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public List<A> toList() {
        return iterator().toList();
    }

    public Queue<A> toQueue() {
        return (Queue) new Queue().$plus$plus$eq(iterator());
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
    public String toString() {
        return toList().mkString("PriorityQueue(", ", ", ")");
    }
}
