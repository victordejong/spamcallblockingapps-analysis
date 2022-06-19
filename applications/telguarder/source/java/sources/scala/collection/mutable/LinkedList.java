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
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenTraversableFactory;
import scala.collection.generic.GenericCompanion;
import scala.collection.mutable.LinearSeq;
import scala.collection.mutable.LinkedListLike;
import scala.math.Integral;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
@ScalaSignature(bytes = "\u0006\u0001\u0005\u0015a\u0001B\u0001\u0003\u0001%\u0011!\u0002T5oW\u0016$G*[:u\u0015\t\u0019A!A\u0004nkR\f'\r\\3\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0005)\t2C\u0002\u0001\f7y)\u0013\u0006E\u0002\r\u001b=i\u0011AA\u0005\u0003\u001d\t\u00111\"\u00112tiJ\f7\r^*fcB\u0011\u0001#\u0005\u0007\u0001\t\u0015\u0011\u0002A1\u0001\u0014\u0005\u0005\t\u0015C\u0001\u000b\u0019!\t)b#D\u0001\u0007\u0013\t9bAA\u0004O_RD\u0017N\\4\u0011\u0005UI\u0012B\u0001\u000e\u0007\u0005\r\te.\u001f\t\u0004\u0019qy\u0011BA\u000f\u0003\u0005%a\u0015N\\3beN+\u0017\u000f\u0005\u0003 E=!S\"\u0001\u0011\u000b\u0005\u0005\"\u0011aB4f]\u0016\u0014\u0018nY\u0005\u0003G\u0001\u0012!dR3oKJL7\r\u0016:bm\u0016\u00148/\u00192mKR+W\u000e\u001d7bi\u0016\u0004\"\u0001\u0004\u0001\u0011\t11s\u0002K\u0005\u0003O\t\u0011a\u0002T5oW\u0016$G*[:u\u0019&\\W\rE\u0002\r\u0001=\u0001\"!\u0006\u0016\n\u0005-2!\u0001D*fe&\fG.\u001b>bE2,\u0007\"B\u0017\u0001\t\u0003q\u0013A\u0002\u001fj]&$h\bF\u0001)\u0011\u0015i\u0003\u0001\"\u00011)\rA\u0013g\r\u0005\u0006e=\u0002\raD\u0001\u0005K2,W\u000eC\u00035_\u0001\u0007\u0001&\u0001\u0003oKb$\b\"\u0002\u001c\u0001\t\u0003:\u0014!C2p[B\fg.[8o+\u0005A\u0004cA\u0010:I%\u0011!\b\t\u0002\u0011\u000f\u0016tWM]5d\u0007>l\u0007/\u00198j_:DC\u0001\u0001\u001f@\u0003B\u0011Q#P\u0005\u0003}\u0019\u0011!\u0002Z3qe\u0016\u001c\u0017\r^3eC\u0005\u0001\u0015!\u0019'po6bWM^3mA1Lgn[3eA1L7\u000f^:!CJ,\u0007\u0005Z3qe\u0016\u001c\u0017\r^3eA\u0011,X\r\t;pA%$\u0017n\\:z]\u000e\u0014\u0018m]5fg\u0002Jg\u000eI5oi\u0016\u0014h-Y2fA\u0005tG\rI5oG>l\u0007\u000f\\3uK\u00022W-\u0019;ve\u0016\u001ch&I\u0001C\u0003\u0019\u0011d&M\u0019/a!\"\u0001\u0001R$I!\t)R)\u0003\u0002G\r\t\u00012+\u001a:jC24VM]:j_:,\u0016\nR\u0001\u0006m\u0006dW/\u001a\u0010\t5OMo9CI[$\u001e)!J\u0001E\u0001\u0017\u0006QA*\u001b8lK\u0012d\u0015n\u001d;\u0011\u00051ae!B\u0001\u0003\u0011\u0003i5c\u0001'OSA\u0019qd\u0014\u0013\n\u0005A\u0003#AC*fc\u001a\u000b7\r^8ss\")Q\u0006\u0014C\u0001%R\t1\nC\u0003U\u0019\u0012\u0005S+A\u0003f[B$\u00180\u0006\u0002W3V\tq\u000bE\u0002\r\u0001a\u0003\"\u0001E-\u0005\u000bI\u0019&\u0019A\n\t\u000bmcE1\u0001/\u0002\u0019\r\fgNQ;jY\u00124%o\\7\u0016\u0005u3W#\u00010\u0011\u000b}y\u0016-Z4\n\u0005\u0001\u0004#\u0001D\"b]\n+\u0018\u000e\u001c3Ge>l\u0007C\u00012d\u001b\u0005a\u0015B\u00013:\u0005\u0011\u0019u\u000e\u001c7\u0011\u0005A1G!\u0002\n[\u0005\u0004\u0019\u0002c\u0001\u0007\u0001K\")\u0011\u000e\u0014C\u0001U\u0006Qa.Z<Ck&dG-\u001a:\u0016\u0005-\u0004X#\u00017\u0011\t1iw.]\u0005\u0003]\n\u0011qAQ;jY\u0012,'\u000f\u0005\u0002\u0011a\u0012)!\u0003\u001bb\u0001'A\u0019A\u0002A8\t\u000fMd\u0015\u0011!C\u0005i\u0006Y!/Z1e%\u0016\u001cx\u000e\u001c<f)\u0005)\bC\u0001<|\u001b\u00059(B\u0001=z\u0003\u0011a\u0017M\\4\u000b\u0003i\fAA[1wC&\u0011Ap\u001e\u0002\u0007\u001f\nTWm\u0019;)\t1cd0Q\u0011\u0002\u007f\u00061Cj\\<.Y\u00164X\r\u001c\u0011mS:\\W\r\u001a\u0011mSN$8\u000fI1sK\u0002\"W\r\u001d:fG\u0006$X\r\u001a\u0018)\t1ct(\u0011\u0015\u0005\u0013rr\u0018\t")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/LinkedList.class */
public class LinkedList<A> extends AbstractSeq<A> implements LinearSeq<A>, LinkedListLike<A, LinkedList<A>>, Serializable {
    public static final long serialVersionUID = -7308240733518833071L;
    private Object elem;
    private Seq next;

    public LinkedList() {
        LinearSeqLike.Cclass.$init$(this);
        LinearSeq.Cclass.$init$(this);
        LinearSeq.Cclass.$init$(this);
        LinkedListLike.Cclass.$init$(this);
        next_$eq(this);
    }

    public LinkedList(A a, LinkedList<A> linkedList) {
        this();
        if (linkedList != null) {
            elem_$eq(a);
            next_$eq(linkedList);
        }
    }

    public static GenTraversableFactory<LinkedList>.GenericCanBuildFrom<Nothing$> ReusableCBF() {
        return (GenTraversableFactory<CC>.GenericCanBuildFrom<Nothing$>) LinkedList$.MODULE$.ReusableCBF();
    }

    public static <A> CanBuildFrom<LinkedList<?>, A, LinkedList<A>> canBuildFrom() {
        return LinkedList$.MODULE$.canBuildFrom();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable concat(Seq seq) {
        return LinkedList$.MODULE$.concat(seq);
    }

    public static GenTraversable empty() {
        return LinkedList$.MODULE$.empty();
    }

    /* renamed from: empty */
    public static <A> LinkedList<A> m6219empty() {
        return LinkedList$.MODULE$.empty();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, int i4, int i5, Function0 function0) {
        return LinkedList$.MODULE$.fill(i, i2, i3, i4, i5, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, int i4, Function0 function0) {
        return LinkedList$.MODULE$.fill(i, i2, i3, i4, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, Function0 function0) {
        return LinkedList$.MODULE$.fill(i, i2, i3, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, Function0 function0) {
        return LinkedList$.MODULE$.fill(i, i2, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, Function0 function0) {
        return LinkedList$.MODULE$.fill(i, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable iterate(Object obj, int i, Function1 function1) {
        return LinkedList$.MODULE$.iterate(obj, i, function1);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable range(Object obj, Object obj2, Object obj3, Integral integral) {
        return LinkedList$.MODULE$.range(obj, obj2, obj3, integral);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable range(Object obj, Object obj2, Integral integral) {
        return LinkedList$.MODULE$.range(obj, obj2, integral);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, int i4, int i5, Function5 function5) {
        return LinkedList$.MODULE$.tabulate(i, i2, i3, i4, i5, function5);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, int i4, Function4 function4) {
        return LinkedList$.MODULE$.tabulate(i, i2, i3, i4, function4);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, Function3 function3) {
        return LinkedList$.MODULE$.tabulate(i, i2, i3, function3);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, Function2 function2) {
        return LinkedList$.MODULE$.tabulate(i, i2, function2);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, Function1 function1) {
        return LinkedList$.MODULE$.tabulate(i, function1);
    }

    public static Some unapplySeq(Seq seq) {
        return LinkedList$.MODULE$.unapplySeq(seq);
    }

    @Override // scala.collection.mutable.LinkedListLike
    public Seq append(Seq seq) {
        return LinkedListLike.Cclass.append(this, seq);
    }

    @Override // scala.collection.GenSeqLike
    public A apply(int i) {
        return (A) LinkedListLike.Cclass.apply(this, i);
    }

    @Override // scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.mutable.Cloneable
    public Seq clone() {
        return LinkedListLike.Cclass.clone(this);
    }

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<LinkedList> companion() {
        return LinkedList$.MODULE$;
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public final <B> boolean corresponds(GenSeq<B> genSeq, Function2<A, B, Object> function2) {
        return LinearSeqLike.Cclass.corresponds(this, genSeq, function2);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public Seq drop(int i) {
        return LinkedListLike.Cclass.drop(this, i);
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

    @Override // scala.collection.mutable.LinkedListLike
    public Option<A> get(int i) {
        return LinkedListLike.Cclass.get(this, i);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike
    public int hashCode() {
        return LinearSeqLike.Cclass.hashCode(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public A head() {
        return (A) LinkedListLike.Cclass.head(this);
    }

    @Override // scala.collection.mutable.LinkedListLike
    public void insert(Seq seq) {
        LinkedListLike.Cclass.insert(this, seq);
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

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public LinearSeq<A> seq() {
        return LinearSeq.Cclass.seq(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Seq tail() {
        return LinkedListLike.Cclass.tail(this);
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
        LinkedListLike.Cclass.update(this, i, a);
    }
}
