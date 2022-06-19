package scala.collection.mutable;

import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.Function3;
import scala.Function4;
import scala.Function5;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.collection.GenSeq;
import scala.collection.GenTraversable;
import scala.collection.Iterator;
import scala.collection.LinearSeq;
import scala.collection.LinearSeqLike;
import scala.collection.Seq;
import scala.collection.Traversable;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenTraversableFactory;
import scala.collection.generic.GenericCompanion;
import scala.collection.mutable.DoubleLinkedListLike;
import scala.collection.mutable.LinearSeq;
import scala.collection.mutable.LinkedListLike;
import scala.math.Integral;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
@ScalaSignature(bytes = "\u0006\u0001u4A!\u0001\u0002\u0001\u0013\t\u0001Bi\\;cY\u0016d\u0015N\\6fI2K7\u000f\u001e\u0006\u0003\u0007\u0011\tq!\\;uC\ndWM\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001!\u0006\u0002\u000b#M1\u0001aC\u000e\u001fK%\u00022\u0001D\u0007\u0010\u001b\u0005\u0011\u0011B\u0001\b\u0003\u0005-\t%m\u001d;sC\u000e$8+Z9\u0011\u0005A\tB\u0002\u0001\u0003\u0006%\u0001\u0011\ra\u0005\u0002\u0002\u0003F\u0011A\u0003\u0007\t\u0003+Yi\u0011AB\u0005\u0003/\u0019\u0011qAT8uQ&tw\r\u0005\u0002\u00163%\u0011!D\u0002\u0002\u0004\u0003:L\bc\u0001\u0007\u001d\u001f%\u0011QD\u0001\u0002\n\u0019&tW-\u0019:TKF\u0004Ba\b\u0012\u0010I5\t\u0001E\u0003\u0002\"\t\u00059q-\u001a8fe&\u001c\u0017BA\u0012!\u0005i9UM\\3sS\u000e$&/\u0019<feN\f'\r\\3UK6\u0004H.\u0019;f!\ta\u0001\u0001\u0005\u0003\rM=A\u0013BA\u0014\u0003\u0005Q!u.\u001e2mK2Kgn[3e\u0019&\u001cH\u000fT5lKB\u0019A\u0002A\b\u0011\u0005UQ\u0013BA\u0016\u0007\u00051\u0019VM]5bY&T\u0018M\u00197f\u0011\u0015i\u0003\u0001\"\u0001/\u0003\u0019a\u0014N\\5u}Q\t\u0001\u0006C\u0003.\u0001\u0011\u0005\u0001\u0007F\u0002)cMBQAM\u0018A\u0002=\tA!\u001a7f[\")Ag\fa\u0001Q\u0005!a.\u001a=u\u0011\u00151\u0004\u0001\"\u00118\u0003%\u0019w.\u001c9b]&|g.F\u00019!\ry\u0012\bJ\u0005\u0003u\u0001\u0012\u0001cR3oKJL7mQ8na\u0006t\u0017n\u001c8\t\u000bq\u0002A\u0011\t\u0018\u0002\u000b\rdwN\\3)\t\u0001q\u0014I\u0011\t\u0003+}J!\u0001\u0011\u0004\u0003!M+'/[1m-\u0016\u00148/[8o+&#\u0015!\u0002<bYV,g\u0004\u0003HxZ-Va)p))\t\u0001!u)\u0013\t\u0003+\u0015K!A\u0012\u0004\u0003\u0015\u0011,\u0007O]3dCR,G-I\u0001I\u0003\u0005dun^\u0017mKZ,G\u000e\t7j].,G\r\t7jgR\u001c\b%\u0019:fA\u0011,\u0007O]3dCR,G\r\t3vK\u0002\"x\u000eI5eS>\u001c\u0018P\\2sCNLWm\u001d\u0011j]\u0002Jg\u000e^3sM\u0006\u001cW\rI1oI\u0002JgnY8na2,G/\u001a\u0011gK\u0006$XO]3t]\u0005\n!*\u0001\u00043]E\nd\u0006M\u0004\u0006\u0019\nA\t!T\u0001\u0011\t>,(\r\\3MS:\\W\r\u001a'jgR\u0004\"\u0001\u0004(\u0007\u000b\u0005\u0011\u0001\u0012A(\u0014\u00079\u0003\u0016\u0006E\u0002 #\u0012J!A\u0015\u0011\u0003\u0015M+\u0017OR1di>\u0014\u0018\u0010C\u0003.\u001d\u0012\u0005A\u000bF\u0001N\u0011\u00151f\nb\u0001X\u00031\u0019\u0017M\u001c\"vS2$gI]8n+\tA\u0016-F\u0001Z!\u0015y\"\f\u00181c\u0013\tY\u0006E\u0001\u0007DC:\u0014U/\u001b7e\rJ|W\u000e\u0005\u0002^=6\ta*\u0003\u0002`s\t!1i\u001c7m!\t\u0001\u0012\rB\u0003\u0013+\n\u00071\u0003E\u0002\r\u0001\u0001DQ\u0001\u001a(\u0005\u0002\u0015\f!B\\3x\u0005VLG\u000eZ3s+\t17.F\u0001h!\u0011a\u0001N\u001b7\n\u0005%\u0014!a\u0002\"vS2$WM\u001d\t\u0003!-$QAE2C\u0002M\u00012\u0001\u0004\u0001k\u0011\u001dqg*!A\u0005\n=\f1B]3bIJ+7o\u001c7wKR\t\u0001\u000f\u0005\u0002rm6\t!O\u0003\u0002ti\u0006!A.\u00198h\u0015\u0005)\u0018\u0001\u00026bm\u0006L!a\u001e:\u0003\r=\u0013'.Z2uQ\u0011qE)_%\"\u0003i\fa\u0005T8x[1,g/\u001a7!Y&t7.\u001a3!Y&\u001cHo\u001d\u0011be\u0016\u0004C-\u001a9sK\u000e\fG/\u001a3/Q\u0011qEiR%)\t-#\u00150\u0013")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/DoubleLinkedList.class */
public class DoubleLinkedList<A> extends AbstractSeq<A> implements LinearSeq<A>, DoubleLinkedListLike<A, DoubleLinkedList<A>>, Serializable {
    public static final long serialVersionUID = -8144992287952814767L;
    private Object elem;
    private Seq next;
    private Seq prev;

    public DoubleLinkedList() {
        LinearSeqLike.Cclass.$init$(this);
        LinearSeq.Cclass.$init$(this);
        LinearSeq.Cclass.$init$(this);
        LinkedListLike.Cclass.$init$(this);
        DoubleLinkedListLike.Cclass.$init$(this);
        next_$eq(this);
    }

    public DoubleLinkedList(A a, DoubleLinkedList<A> doubleLinkedList) {
        this();
        if (doubleLinkedList != null) {
            elem_$eq(a);
            next_$eq(doubleLinkedList);
            ((DoubleLinkedListLike) next()).prev_$eq(this);
        }
    }

    public static GenTraversableFactory<DoubleLinkedList>.GenericCanBuildFrom<Nothing$> ReusableCBF() {
        return (GenTraversableFactory<CC>.GenericCanBuildFrom<Nothing$>) DoubleLinkedList$.MODULE$.ReusableCBF();
    }

    public static <A> CanBuildFrom<DoubleLinkedList<?>, A, DoubleLinkedList<A>> canBuildFrom() {
        return DoubleLinkedList$.MODULE$.canBuildFrom();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable concat(Seq seq) {
        return DoubleLinkedList$.MODULE$.concat(seq);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable empty() {
        return DoubleLinkedList$.MODULE$.empty();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, int i4, int i5, Function0 function0) {
        return DoubleLinkedList$.MODULE$.fill(i, i2, i3, i4, i5, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, int i4, Function0 function0) {
        return DoubleLinkedList$.MODULE$.fill(i, i2, i3, i4, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, Function0 function0) {
        return DoubleLinkedList$.MODULE$.fill(i, i2, i3, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, Function0 function0) {
        return DoubleLinkedList$.MODULE$.fill(i, i2, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, Function0 function0) {
        return DoubleLinkedList$.MODULE$.fill(i, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable iterate(Object obj, int i, Function1 function1) {
        return DoubleLinkedList$.MODULE$.iterate(obj, i, function1);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable range(Object obj, Object obj2, Object obj3, Integral integral) {
        return DoubleLinkedList$.MODULE$.range(obj, obj2, obj3, integral);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable range(Object obj, Object obj2, Integral integral) {
        return DoubleLinkedList$.MODULE$.range(obj, obj2, integral);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, int i4, int i5, Function5 function5) {
        return DoubleLinkedList$.MODULE$.tabulate(i, i2, i3, i4, i5, function5);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, int i4, Function4 function4) {
        return DoubleLinkedList$.MODULE$.tabulate(i, i2, i3, i4, function4);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, Function3 function3) {
        return DoubleLinkedList$.MODULE$.tabulate(i, i2, i3, function3);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, Function2 function2) {
        return DoubleLinkedList$.MODULE$.tabulate(i, i2, function2);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, Function1 function1) {
        return DoubleLinkedList$.MODULE$.tabulate(i, function1);
    }

    public static Some unapplySeq(Seq seq) {
        return DoubleLinkedList$.MODULE$.unapplySeq(seq);
    }

    @Override // scala.collection.mutable.DoubleLinkedListLike, scala.collection.mutable.LinkedListLike
    public Seq append(Seq seq) {
        return DoubleLinkedListLike.Cclass.append(this, seq);
    }

    @Override // scala.collection.GenSeqLike
    public A apply(int i) {
        return (A) DoubleLinkedListLike.Cclass.apply(this, i);
    }

    @Override // scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.mutable.Cloneable
    public DoubleLinkedList<A> clone() {
        Builder<A, Traversable<A>> newBuilder = newBuilder();
        newBuilder.$plus$plus$eq(this);
        return (DoubleLinkedList) newBuilder.result();
    }

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<DoubleLinkedList> companion() {
        return DoubleLinkedList$.MODULE$;
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public final <B> boolean corresponds(GenSeq<B> genSeq, Function2<A, B, Object> function2) {
        return LinearSeqLike.Cclass.corresponds(this, genSeq, function2);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public Seq drop(int i) {
        return DoubleLinkedListLike.Cclass.drop(this, i);
    }

    @Override // scala.collection.mutable.LinkedListLike
    public A elem() {
        return (A) this.elem;
    }

    @Override // scala.collection.mutable.LinkedListLike
    public void elem_$eq(A a) {
        this.elem = a;
    }

    @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <B> void foreach(Function1<A, B> function1) {
        LinkedListLike.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.mutable.DoubleLinkedListLike, scala.collection.mutable.LinkedListLike
    public Option<A> get(int i) {
        return DoubleLinkedListLike.Cclass.get(this, i);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike
    public int hashCode() {
        return LinearSeqLike.Cclass.hashCode(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public A head() {
        return (A) LinkedListLike.Cclass.head(this);
    }

    @Override // scala.collection.mutable.DoubleLinkedListLike, scala.collection.mutable.LinkedListLike
    public void insert(Seq seq) {
        DoubleLinkedListLike.Cclass.insert(this, seq);
    }

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.PartialFunction
    public /* bridge */ /* synthetic */ boolean isDefinedAt(Object obj) {
        return isDefinedAt(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        return LinkedListLike.Cclass.isEmpty(this);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<A> iterator() {
        return LinkedListLike.Cclass.iterator(this);
    }

    @Override // scala.collection.GenSeqLike
    public int length() {
        return LinkedListLike.Cclass.length(this);
    }

    @Override // scala.collection.mutable.LinkedListLike
    public Seq next() {
        return this.next;
    }

    @Override // scala.collection.mutable.LinkedListLike
    public void next_$eq(Seq seq) {
        this.next = seq;
    }

    @Override // scala.collection.mutable.DoubleLinkedListLike
    public Seq prev() {
        return this.prev;
    }

    @Override // scala.collection.mutable.DoubleLinkedListLike
    public void prev_$eq(Seq seq) {
        this.prev = seq;
    }

    @Override // scala.collection.mutable.DoubleLinkedListLike
    public void remove() {
        DoubleLinkedListLike.Cclass.remove(this);
    }

    @Override // scala.collection.mutable.DoubleLinkedListLike
    public /* synthetic */ void scala$collection$mutable$DoubleLinkedListLike$$super$insert(Seq seq) {
        LinkedListLike.Cclass.insert(this, seq);
    }

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public LinearSeq<A> seq() {
        return LinearSeq.Cclass.seq(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Seq tail() {
        return DoubleLinkedListLike.Cclass.tail(this);
    }

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public scala.collection.LinearSeq<A> thisCollection() {
        return LinearSeqLike.Cclass.thisCollection(this);
    }

    @Override // scala.collection.LinearSeqLike
    public scala.collection.LinearSeq toCollection(LinearSeqLike linearSeqLike) {
        return LinearSeqLike.Cclass.toCollection(this, linearSeqLike);
    }

    @Override // scala.collection.mutable.SeqLike, scala.collection.mutable.BufferLike
    public void update(int i, A a) {
        DoubleLinkedListLike.Cclass.update(this, i, a);
    }
}
