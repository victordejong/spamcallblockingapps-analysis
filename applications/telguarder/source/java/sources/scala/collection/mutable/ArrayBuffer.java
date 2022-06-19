package scala.collection.mutable;

import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.Function3;
import scala.Function4;
import scala.Function5;
import scala.Option;
import scala.Predef$;
import scala.Serializable;
import scala.Some;
import scala.Tuple2;
import scala.collection.CustomParallelizable;
import scala.collection.GenIterable;
import scala.collection.GenSeq;
import scala.collection.GenTraversable;
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
import scala.collection.generic.GenTraversableFactory;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.Growable;
import scala.collection.generic.Subtractable;
import scala.collection.mutable.Builder;
import scala.collection.mutable.IndexedSeq;
import scala.collection.mutable.IndexedSeqLike;
import scala.collection.mutable.ResizableArray;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.mutable.ParArray;
import scala.collection.parallel.mutable.ParArray$;
import scala.compat.Platform$;
import scala.math.Integral;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
@ScalaSignature(bytes = "\u0006\u0001\u0005Ee\u0001B\u0001\u0003\u0001%\u00111\"\u0011:sCf\u0014UO\u001a4fe*\u00111\u0001B\u0001\b[V$\u0018M\u00197f\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\fG.Y\u0002\u0001+\tQ\u0011c\u0005\u0006\u0001\u0017mqR%\u000b\u00170eu\u00022\u0001D\u0007\u0010\u001b\u0005\u0011\u0011B\u0001\b\u0003\u00059\t%m\u001d;sC\u000e$()\u001e4gKJ\u0004\"\u0001E\t\r\u0001\u0011)!\u0003\u0001b\u0001'\t\t\u0011)\u0005\u0002\u00151A\u0011QCF\u0007\u0002\r%\u0011qC\u0002\u0002\b\u001d>$\b.\u001b8h!\t)\u0012$\u0003\u0002\u001b\r\t\u0019\u0011I\\=\u0011\u00071ar\"\u0003\u0002\u001e\u0005\t1!)\u001e4gKJ\u0004Ba\b\u0012\u0010I5\t\u0001E\u0003\u0002\"\t\u00059q-\u001a8fe&\u001c\u0017BA\u0012!\u0005i9UM\\3sS\u000e$&/\u0019<feN\f'\r\\3UK6\u0004H.\u0019;f!\ta\u0001\u0001\u0005\u0003\rM=A\u0013BA\u0014\u0003\u0005)\u0011UO\u001a4fe2K7.\u001a\t\u0004\u0019\u0001y\u0001\u0003\u0002\u0007+\u001f!J!a\u000b\u0002\u0003'%sG-\u001a=fIN+\u0017o\u00149uS6L'0\u001a3\u0011\t1is\u0002K\u0005\u0003]\t\u0011qAQ;jY\u0012,'\u000fE\u0002\ra=I!!\r\u0002\u0003\u001dI+7/\u001b>bE2,\u0017I\u001d:bsB!1\u0007N\b7\u001b\u0005!\u0011BA\u001b\u0005\u0005Q\u0019Uo\u001d;p[B\u000b'/\u00197mK2L'0\u00192mKB\u0019qgO\b\u000e\u0003aR!aA\u001d\u000b\u0005i\"\u0011\u0001\u00039be\u0006dG.\u001a7\n\u0005qB$\u0001\u0003)be\u0006\u0013(/Y=\u0011\u0005Uq\u0014BA \u0007\u00051\u0019VM]5bY&T\u0018M\u00197f\u0011!\t\u0005A!b\u0001\n#\u0012\u0015aC5oSRL\u0017\r\\*ju\u0016,\u0012a\u0011\t\u0003+\u0011K!!\u0012\u0004\u0003\u0007%sG\u000f\u0003\u0005H\u0001\t\u0005\t\u0015!\u0003D\u00031Ig.\u001b;jC2\u001c\u0016N_3!\u0011\u0015I\u0005\u0001\"\u0001K\u0003\u0019a\u0014N\\5u}Q\u0011\u0001f\u0013\u0005\u0006\u0003\"\u0003\ra\u0011\u0005\u0006\u001b\u0002!\tET\u0001\nG>l\u0007/\u00198j_:,\u0012a\u0014\t\u0004?A#\u0013BA)!\u0005A9UM\\3sS\u000e\u001cu.\u001c9b]&|g\u000eC\u0003J\u0001\u0011\u00051\u000bF\u0001)\u0011\u0015)\u0006\u0001\"\u0001W\u0003\u0015\u0019G.Z1s)\u00059\u0006CA\u000bY\u0013\tIfA\u0001\u0003V]&$\b\"B.\u0001\t\u0003b\u0016\u0001C:ju\u0016D\u0015N\u001c;\u0015\u0005]k\u0006\"\u00020[\u0001\u0004\u0019\u0015a\u00017f]\")\u0001\r\u0001C!C\u0006\u0019\u0001/\u0019:\u0016\u0003YBQa\u0019\u0001\u0005\u0002\u0011\f\u0001\u0002\n9mkN$S-\u001d\u000b\u0003K\u001al\u0011\u0001\u0001\u0005\u0006O\n\u0004\raD\u0001\u0005K2,W\u000eC\u0003j\u0001\u0011\u0005#.A\u0007%a2,8\u000f\n9mkN$S-\u001d\u000b\u0003K.DQ\u0001\u001c5A\u00025\f!\u0001_:\u0011\u0007Mrw\"\u0003\u0002p\t\tyAK]1wKJ\u001c\u0018M\u00197f\u001f:\u001cW\rC\u0003r\u0001\u0011\u0005!/\u0001\b%a2,8\u000fJ3rI\r|Gn\u001c8\u0015\u0005\u0015\u001c\b\"B4q\u0001\u0004y\u0001\"B;\u0001\t\u00032\u0018a\u0005\u0013qYV\u001cH\u0005\u001d7vg\u0012*\u0017\u000fJ2pY>tGCA3x\u0011\u0015aG\u000f1\u0001n\u0011\u0015I\b\u0001\"\u0001{\u0003%Ign]3si\u0006cG\u000eF\u0002XwvDQ\u0001 =A\u0002\r\u000b\u0011A\u001c\u0005\u0006}b\u0004\ra`\u0001\u0004g\u0016\f\b\u0003B\u001a\u0002\u0002=I1!a\u0001\u0005\u0005-!&/\u0019<feN\f'\r\\3\t\u000f\u0005\u001d\u0001\u0001\"\u0011\u0002\n\u00051!/Z7pm\u0016$RaVA\u0006\u0003\u001bAa\u0001`A\u0003\u0001\u0004\u0019\u0005bBA\b\u0003\u000b\u0001\raQ\u0001\u0006G>,h\u000e\u001e\u0005\b\u0003\u000f\u0001A\u0011AA\n)\ry\u0011Q\u0003\u0005\u0007y\u0006E\u0001\u0019A\"\t\r\u0005e\u0001\u0001\"\u0001T\u0003\u0019\u0011Xm];mi\"9\u0011Q\u0004\u0001\u0005B\u0005}\u0011\u0001D:ue&tw\r\u0015:fM&DXCAA\u0011!\u0011\t\u0019#!\u000b\u000f\u0007U\t)#C\u0002\u0002(\u0019\ta\u0001\u0015:fI\u00164\u0017\u0002BA\u0016\u0003[\u0011aa\u0015;sS:<'bAA\u0014\r!:\u0001!!\r\u00028\u0005e\u0002cA\u000b\u00024%\u0019\u0011Q\u0007\u0004\u0003!M+'/[1m-\u0016\u00148/[8o+&#\u0015!\u0002<bYV,g\u0004C\u000b9aO\u001b)Qd:\b\u000f\u0005u\"\u0001#\u0001\u0002@\u0005Y\u0011I\u001d:bs\n+hMZ3s!\ra\u0011\u0011\t\u0004\u0007\u0003\tA\t!a\u0011\u0014\u000b\u0005\u0005\u0013QI\u001f\u0011\t}\t9\u0005J\u0005\u0004\u0003\u0013\u0002#AC*fc\u001a\u000b7\r^8ss\"9\u0011*!\u0011\u0005\u0002\u00055CCAA \u0011!\t\t&!\u0011\u0005\u0004\u0005M\u0013\u0001D2b]\n+\u0018\u000e\u001c3Ge>lW\u0003BA+\u0003O*\"!a\u0016\u0011\u0013}\tI&!\u0018\u0002f\u0005%\u0014bAA.A\ta1)\u00198Ck&dGM\u0012:p[B!\u0011qLA1\u001b\t\t\t%C\u0002\u0002dA\u0013AaQ8mYB\u0019\u0001#a\u001a\u0005\rI\tyE1\u0001\u0014!\u0011a\u0001!!\u001a\t\u0011\u00055\u0014\u0011\tC\u0001\u0003_\n!B\\3x\u0005VLG\u000eZ3s+\u0011\t\t(a\u001e\u0016\u0005\u0005M\u0004C\u0002\u0007.\u0003k\nI\bE\u0002\u0011\u0003o\"aAEA6\u0005\u0004\u0019\u0002\u0003\u0002\u0007\u0001\u0003kB!\"! \u0002B\u0005\u0005I\u0011BA@\u0003-\u0011X-\u00193SKN|GN^3\u0015\u0005\u0005\u0005\u0005\u0003BAB\u0003\u001bk!!!\"\u000b\t\u0005\u001d\u0015\u0011R\u0001\u0005Y\u0006twM\u0003\u0002\u0002\f\u0006!!.\u0019<b\u0013\u0011\ty)!\"\u0003\r=\u0013'.Z2u\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ArrayBuffer.class */
public class ArrayBuffer<A> extends AbstractBuffer<A> implements Builder<A, ArrayBuffer<A>>, ResizableArray<A>, CustomParallelizable<A, ParArray<A>>, Serializable {
    public static final long serialVersionUID = 1529165946227428979L;
    private Object[] array;
    private final int initialSize;
    private int size0;

    public ArrayBuffer() {
        this(16);
    }

    public ArrayBuffer(int i) {
        this.initialSize = i;
        IndexedSeqLike.Cclass.$init$(this);
        IndexedSeqLike.Cclass.$init$(this);
        IndexedSeqOptimized.Cclass.$init$(this);
        Builder.Cclass.$init$(this);
        IndexedSeq.Cclass.$init$(this);
        IndexedSeq.Cclass.$init$(this);
        ResizableArray.Cclass.$init$(this);
        CustomParallelizable.Cclass.$init$(this);
    }

    public static GenTraversableFactory<ArrayBuffer>.GenericCanBuildFrom<Nothing$> ReusableCBF() {
        return (GenTraversableFactory<CC>.GenericCanBuildFrom<Nothing$>) ArrayBuffer$.MODULE$.ReusableCBF();
    }

    public static <A> CanBuildFrom<ArrayBuffer<?>, A, ArrayBuffer<A>> canBuildFrom() {
        return ArrayBuffer$.MODULE$.canBuildFrom();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable concat(Seq seq) {
        return ArrayBuffer$.MODULE$.concat(seq);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable empty() {
        return ArrayBuffer$.MODULE$.empty();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, int i4, int i5, Function0 function0) {
        return ArrayBuffer$.MODULE$.fill(i, i2, i3, i4, i5, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, int i4, Function0 function0) {
        return ArrayBuffer$.MODULE$.fill(i, i2, i3, i4, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, Function0 function0) {
        return ArrayBuffer$.MODULE$.fill(i, i2, i3, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, Function0 function0) {
        return ArrayBuffer$.MODULE$.fill(i, i2, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, Function0 function0) {
        return ArrayBuffer$.MODULE$.fill(i, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable iterate(Object obj, int i, Function1 function1) {
        return ArrayBuffer$.MODULE$.iterate(obj, i, function1);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable range(Object obj, Object obj2, Object obj3, Integral integral) {
        return ArrayBuffer$.MODULE$.range(obj, obj2, obj3, integral);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable range(Object obj, Object obj2, Integral integral) {
        return ArrayBuffer$.MODULE$.range(obj, obj2, integral);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, int i4, int i5, Function5 function5) {
        return ArrayBuffer$.MODULE$.tabulate(i, i2, i3, i4, i5, function5);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, int i4, Function4 function4) {
        return ArrayBuffer$.MODULE$.tabulate(i, i2, i3, i4, function4);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, Function3 function3) {
        return ArrayBuffer$.MODULE$.tabulate(i, i2, i3, function3);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, Function2 function2) {
        return ArrayBuffer$.MODULE$.tabulate(i, i2, function2);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, Function1 function1) {
        return ArrayBuffer$.MODULE$.tabulate(i, function1);
    }

    public static Some unapplySeq(Seq seq) {
        return ArrayBuffer$.MODULE$.unapplySeq(seq);
    }

    @Override // scala.collection.mutable.BufferLike, scala.collection.generic.Growable
    public ArrayBuffer<A> $plus$eq(A a) {
        ensureSize(size0() + 1);
        array()[size0()] = a;
        size0_$eq(size0() + 1);
        return this;
    }

    @Override // scala.collection.mutable.BufferLike
    public ArrayBuffer<A> $plus$eq$colon(A a) {
        ensureSize(size0() + 1);
        copy(0, 1, size0());
        array()[0] = a;
        size0_$eq(size0() + 1);
        return this;
    }

    @Override // scala.collection.mutable.AbstractBuffer, scala.collection.generic.Growable
    public ArrayBuffer<A> $plus$plus$eq(TraversableOnce<A> traversableOnce) {
        ArrayBuffer<A> arrayBuffer;
        if (traversableOnce instanceof scala.collection.IndexedSeqLike) {
            scala.collection.IndexedSeqLike indexedSeqLike = (scala.collection.IndexedSeqLike) traversableOnce;
            int length = indexedSeqLike.length();
            ensureSize(size0() + length);
            indexedSeqLike.copyToArray(array(), size0(), length);
            size0_$eq(size0() + length);
            arrayBuffer = this;
        } else {
            arrayBuffer = (ArrayBuffer) Growable.Cclass.$plus$plus$eq(this, traversableOnce);
        }
        return arrayBuffer;
    }

    @Override // scala.collection.mutable.AbstractBuffer, scala.collection.mutable.BufferLike
    public ArrayBuffer<A> $plus$plus$eq$colon(TraversableOnce<A> traversableOnce) {
        insertAll(0, traversableOnce.toTraversable());
        return this;
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

    @Override // scala.collection.mutable.BufferLike, scala.collection.generic.Growable, scala.collection.generic.Clearable
    public void clear() {
        reduceToSize(0);
    }

    @Override // scala.collection.mutable.AbstractBuffer, scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<ArrayBuffer> companion() {
        return ArrayBuffer$.MODULE$;
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
        return this.initialSize;
    }

    @Override // scala.collection.mutable.BufferLike
    public void insertAll(int i, Traversable<A> traversable) {
        if (i < 0 || i > size0()) {
            throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
        }
        int size = traversable.size();
        int size0 = size0() + size;
        ensureSize(size0);
        copy(i, size + i, size0() - i);
        traversable.copyToArray(array(), i);
        size0_$eq(size0);
    }

    @Override // scala.collection.mutable.AbstractBuffer, scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.PartialFunction
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

    @Override // scala.collection.mutable.Builder
    public <NewTo> Builder<A, NewTo> mapResult(Function1<ArrayBuffer<A>, NewTo> function1) {
        return Builder.Cclass.mapResult(this, function1);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.Parallelizable
    public ParArray<A> par() {
        return ParArray$.MODULE$.handoff(array(), size());
    }

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    public Combiner<A, ParArray<A>> parCombiner() {
        return CustomParallelizable.Cclass.parCombiner(this);
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

    @Override // scala.collection.mutable.BufferLike
    public A remove(int i) {
        A apply = apply(i);
        remove(i, 1);
        return apply;
    }

    @Override // scala.collection.mutable.AbstractBuffer, scala.collection.mutable.BufferLike
    public void remove(int i, int i2) {
        Predef$ predef$ = Predef$.MODULE$;
        if (i2 >= 0) {
            if (i < 0 || i > size0() - i2) {
                throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
            }
            int i3 = i + i2;
            copy(i3, i, size0() - i3);
            reduceToSize(size0() - i2);
            return;
        }
        throw new IllegalArgumentException(new StringBuilder().append((Object) "requirement failed: ").append((Object) "removing negative number of elements").toString());
    }

    @Override // scala.collection.mutable.AbstractBuffer, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    public /* bridge */ /* synthetic */ Subtractable repr() {
        return (Subtractable) repr();
    }

    @Override // scala.collection.mutable.Builder
    public ArrayBuffer<A> result() {
        return this;
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

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public int segmentLength(Function1<A, Object> function1, int i) {
        return IndexedSeqOptimized.Cclass.segmentLength(this, function1, i);
    }

    @Override // scala.collection.mutable.AbstractBuffer, scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
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

    @Override // scala.collection.mutable.Builder
    public void sizeHint(int i) {
        if (i <= size() || i < 1) {
            return;
        }
        Object[] objArr = new Object[i];
        Platform$ platform$ = Platform$.MODULE$;
        System.arraycopy(array(), 0, objArr, 0, size0());
        array_$eq(objArr);
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

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public Object slice(int i, int i2) {
        return IndexedSeqOptimized.Cclass.slice(this, i, i2);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Tuple2<ArrayBuffer<A>, ArrayBuffer<A>> span(Function1<A, Object> function1) {
        return IndexedSeqOptimized.Cclass.span(this, function1);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Tuple2<ArrayBuffer<A>, ArrayBuffer<A>> splitAt(int i) {
        return IndexedSeqOptimized.Cclass.splitAt(this, i);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public <B> boolean startsWith(GenSeq<B> genSeq, int i) {
        return IndexedSeqOptimized.Cclass.startsWith(this, genSeq, i);
    }

    @Override // scala.collection.mutable.AbstractBuffer, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
    public String stringPrefix() {
        return "ArrayBuffer";
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

    @Override // scala.collection.mutable.AbstractBuffer, scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public IndexedSeq<A> thisCollection() {
        return IndexedSeqLike.Cclass.thisCollection(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <A1> Buffer<A1> toBuffer() {
        return IndexedSeqLike.Cclass.toBuffer(this);
    }

    @Override // scala.collection.mutable.AbstractBuffer, scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public IndexedSeq toCollection(Object obj) {
        return IndexedSeqLike.Cclass.toCollection(this, obj);
    }

    @Override // scala.collection.mutable.SeqLike, scala.collection.mutable.BufferLike
    public void update(int i, A a) {
        ResizableArray.Cclass.update(this, i, a);
    }

    @Override // scala.collection.mutable.AbstractBuffer, scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public Object view() {
        return IndexedSeqLike.Cclass.view(this);
    }

    @Override // scala.collection.mutable.AbstractBuffer, scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public IndexedSeqView<A, ArrayBuffer<A>> view(int i, int i2) {
        return IndexedSeqLike.Cclass.view(this, i, i2);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.GenIterableLike, scala.collection.IterableLike
    public <A1, B, That> That zip(GenIterable<B> genIterable, CanBuildFrom<ArrayBuffer<A>, Tuple2<A1, B>, That> canBuildFrom) {
        return (That) IndexedSeqOptimized.Cclass.zip(this, genIterable, canBuildFrom);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.GenIterableLike, scala.collection.IterableLike
    public <A1, That> That zipWithIndex(CanBuildFrom<ArrayBuffer<A>, Tuple2<A1, Object>, That> canBuildFrom) {
        return (That) IndexedSeqOptimized.Cclass.zipWithIndex(this, canBuildFrom);
    }
}
