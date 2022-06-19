package scala.collection.mutable;

import scala.Array$;
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
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenTraversableFactory;
import scala.collection.generic.GenericCompanion;
import scala.collection.mutable.IndexedSeq;
import scala.collection.mutable.IndexedSeqLike;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.mutable.ParArray;
import scala.collection.parallel.mutable.ParArray$;
import scala.math.Integral;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
import scala.runtime.RichInt$;
import scala.runtime.ScalaRunTime$;
@ScalaSignature(bytes = "\u0006\u0001\u00055d\u0001B\u0001\u0003\u0001%\u0011\u0001\"\u0011:sCf\u001cV-\u001d\u0006\u0003\u0007\u0011\tq!\\;uC\ndWM\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001!\u0006\u0002\u000b#M9\u0001aC\u000e\u001fK%\"\u0004c\u0001\u0007\u000e\u001f5\t!!\u0003\u0002\u000f\u0005\tY\u0011IY:ue\u0006\u001cGoU3r!\t\u0001\u0012\u0003\u0004\u0001\u0005\u000bI\u0001!\u0019A\n\u0003\u0003\u0005\u000b\"\u0001\u0006\r\u0011\u0005U1R\"\u0001\u0004\n\u0005]1!a\u0002(pi\"Lgn\u001a\t\u0003+eI!A\u0007\u0004\u0003\u0007\u0005s\u0017\u0010E\u0002\r9=I!!\b\u0002\u0003\u0015%sG-\u001a=fIN+\u0017\u000f\u0005\u0003 E=!S\"\u0001\u0011\u000b\u0005\u0005\"\u0011aB4f]\u0016\u0014\u0018nY\u0005\u0003G\u0001\u0012!dR3oKJL7\r\u0016:bm\u0016\u00148/\u00192mKR+W\u000e\u001d7bi\u0016\u0004\"\u0001\u0004\u0001\u0011\t11s\u0002K\u0005\u0003O\t\u00111#\u00138eKb,GmU3r\u001fB$\u0018.\\5{K\u0012\u00042\u0001\u0004\u0001\u0010!\u0011Q3fD\u0017\u000e\u0003\u0011I!\u0001\f\u0003\u0003)\r+8\u000f^8n!\u0006\u0014\u0018\r\u001c7fY&T\u0018M\u00197f!\rq#gD\u0007\u0002_)\u00111\u0001\r\u0006\u0003c\u0011\t\u0001\u0002]1sC2dW\r\\\u0005\u0003g=\u0012\u0001\u0002U1s\u0003J\u0014\u0018-\u001f\t\u0003+UJ!A\u000e\u0004\u0003\u0019M+'/[1mSj\f'\r\\3\t\u0011a\u0002!Q1A\u0005Be\na\u0001\\3oORDW#\u0001\u001e\u0011\u0005UY\u0014B\u0001\u001f\u0007\u0005\rIe\u000e\u001e\u0005\t}\u0001\u0011\t\u0011)A\u0005u\u00059A.\u001a8hi\"\u0004\u0003\"\u0002!\u0001\t\u0003\t\u0015A\u0002\u001fj]&$h\b\u0006\u0002)\u0005\")\u0001h\u0010a\u0001u!)A\t\u0001C!\u000b\u0006I1m\\7qC:LwN\\\u000b\u0002\rB\u0019qd\u0012\u0013\n\u0005!\u0003#\u0001E$f]\u0016\u0014\u0018nY\"p[B\fg.[8o\u0011\u001dQ\u0005A1A\u0005\u0002-\u000bQ!\u0019:sCf,\u0012\u0001\u0014\t\u0004+5{\u0015B\u0001(\u0007\u0005\u0015\t%O]1z!\t)\u0002+\u0003\u0002R\r\t1\u0011I\\=SK\u001aDaa\u0015\u0001!\u0002\u0013a\u0015AB1se\u0006L\b\u0005C\u0003V\u0001\u0011\u0005c+A\u0002qCJ,\u0012!\f\u0005\u00061\u0002!\t!W\u0001\u0006CB\u0004H.\u001f\u000b\u0003\u001fiCQaW,A\u0002i\n1!\u001b3y\u0011\u0015i\u0006\u0001\"\u0001_\u0003\u0019)\b\u000fZ1uKR\u0019qLY2\u0011\u0005U\u0001\u0017BA1\u0007\u0005\u0011)f.\u001b;\t\u000bmc\u0006\u0019\u0001\u001e\t\u000b\u0011d\u0006\u0019A\b\u0002\t\u0015dW-\u001c\u0005\u0006M\u0002!\teZ\u0001\bM>\u0014X-Y2i+\tAw\u000e\u0006\u0002`S\")!.\u001aa\u0001W\u0006\ta\r\u0005\u0003\u0016Y>q\u0017BA7\u0007\u0005%1UO\\2uS>t\u0017\u0007\u0005\u0002\u0011_\u0012)\u0001/\u001ab\u0001'\t\tQ\u000bC\u0003s\u0001\u0011\u00053/A\u0006d_BLHk\\!se\u0006LXC\u0001;z)\u0011yV\u000f @\t\u000bY\f\b\u0019A<\u0002\u0005a\u001c\bcA\u000bNqB\u0011\u0001#\u001f\u0003\u0006uF\u0014\ra\u001f\u0002\u0002\u0005F\u0011q\u0002\u0007\u0005\u0006{F\u0004\rAO\u0001\u0006gR\f'\u000f\u001e\u0005\u0006\u007fF\u0004\rAO\u0001\u0004Y\u0016t\u0007bBA\u0002\u0001\u0011\u0005\u0013QA\u0001\u0006G2|g.\u001a\u000b\u0002Q!:\u0001!!\u0003\u0002\u0010\u0005E\u0001cA\u000b\u0002\f%\u0019\u0011Q\u0002\u0004\u0003!M+'/[1m-\u0016\u00148/[8o+&#\u0015!\u0002<bYV,g\u0004C\u000b={IG\u0013JD:\b\u000f\u0005U!\u0001#\u0001\u0002\u0018\u0005A\u0011I\u001d:bsN+\u0017\u000fE\u0002\r\u000331a!\u0001\u0002\t\u0002\u0005m1#BA\r\u0003;!\u0004\u0003B\u0010\u0002 \u0011J1!!\t!\u0005)\u0019V-\u001d$bGR|'/\u001f\u0005\b\u0001\u0006eA\u0011AA\u0013)\t\t9\u0002\u0003\u0005\u0002*\u0005eA1AA\u0016\u00031\u0019\u0017M\u001c\"vS2$gI]8n+\u0011\ti#a\u0010\u0016\u0005\u0005=\u0002#C\u0010\u00022\u0005U\u0012QHA!\u0013\r\t\u0019\u0004\t\u0002\r\u0007\u0006t')^5mI\u001a\u0013x.\u001c\t\u0005\u0003o\tI$\u0004\u0002\u0002\u001a%\u0019\u00111H$\u0003\t\r{G\u000e\u001c\t\u0004!\u0005}BA\u0002\n\u0002(\t\u00071\u0003\u0005\u0003\r\u0001\u0005u\u0002\u0002CA#\u00033!\t!a\u0012\u0002\u00159,wOQ;jY\u0012,'/\u0006\u0003\u0002J\u0005MSCAA&!\u001da\u0011QJA)\u0003+J1!a\u0014\u0003\u0005\u001d\u0011U/\u001b7eKJ\u00042\u0001EA*\t\u0019\u0011\u00121\tb\u0001'A!A\u0002AA)\u0011)\tI&!\u0007\u0002\u0002\u0013%\u00111L\u0001\fe\u0016\fGMU3t_24X\r\u0006\u0002\u0002^A!\u0011qLA5\u001b\t\t\tG\u0003\u0003\u0002d\u0005\u0015\u0014\u0001\u00027b]\u001eT!!a\u001a\u0002\t)\fg/Y\u0005\u0005\u0003W\n\tG\u0001\u0004PE*,7\r\u001e")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ArraySeq.class */
public class ArraySeq<A> extends AbstractSeq<A> implements IndexedSeq<A>, IndexedSeqOptimized<A, ArraySeq<A>>, CustomParallelizable<A, ParArray<A>>, Serializable {
    public static final long serialVersionUID = 1530165946227428979L;
    private final Object[] array;
    private final int length;

    public ArraySeq(int i) {
        this.length = i;
        IndexedSeqLike.Cclass.$init$(this);
        IndexedSeq.Cclass.$init$(this);
        IndexedSeqLike.Cclass.$init$(this);
        IndexedSeq.Cclass.$init$(this);
        IndexedSeqOptimized.Cclass.$init$(this);
        CustomParallelizable.Cclass.$init$(this);
        this.array = new Object[i];
    }

    public static GenTraversableFactory<ArraySeq>.GenericCanBuildFrom<Nothing$> ReusableCBF() {
        return (GenTraversableFactory<CC>.GenericCanBuildFrom<Nothing$>) ArraySeq$.MODULE$.ReusableCBF();
    }

    public static <A> CanBuildFrom<ArraySeq<?>, A, ArraySeq<A>> canBuildFrom() {
        return ArraySeq$.MODULE$.canBuildFrom();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable concat(Seq seq) {
        return ArraySeq$.MODULE$.concat(seq);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable empty() {
        return ArraySeq$.MODULE$.empty();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, int i4, int i5, Function0 function0) {
        return ArraySeq$.MODULE$.fill(i, i2, i3, i4, i5, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, int i4, Function0 function0) {
        return ArraySeq$.MODULE$.fill(i, i2, i3, i4, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, Function0 function0) {
        return ArraySeq$.MODULE$.fill(i, i2, i3, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, Function0 function0) {
        return ArraySeq$.MODULE$.fill(i, i2, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, Function0 function0) {
        return ArraySeq$.MODULE$.fill(i, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable iterate(Object obj, int i, Function1 function1) {
        return ArraySeq$.MODULE$.iterate(obj, i, function1);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable range(Object obj, Object obj2, Object obj3, Integral integral) {
        return ArraySeq$.MODULE$.range(obj, obj2, obj3, integral);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable range(Object obj, Object obj2, Integral integral) {
        return ArraySeq$.MODULE$.range(obj, obj2, integral);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, int i4, int i5, Function5 function5) {
        return ArraySeq$.MODULE$.tabulate(i, i2, i3, i4, i5, function5);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, int i4, Function4 function4) {
        return ArraySeq$.MODULE$.tabulate(i, i2, i3, i4, function4);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, Function3 function3) {
        return ArraySeq$.MODULE$.tabulate(i, i2, i3, function3);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, Function2 function2) {
        return ArraySeq$.MODULE$.tabulate(i, i2, function2);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, Function1 function1) {
        return ArraySeq$.MODULE$.tabulate(i, function1);
    }

    public static Some unapplySeq(Seq seq) {
        return ArraySeq$.MODULE$.unapplySeq(seq);
    }

    @Override // scala.collection.GenSeqLike
    public A apply(int i) {
        if (i < length()) {
            return (A) array()[i];
        }
        throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
    }

    @Override // scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    public Object[] array() {
        return this.array;
    }

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.mutable.Cloneable
    public ArraySeq<A> clone() {
        return new ArraySeq<A>(this, (Object[]) array().clone()) { // from class: scala.collection.mutable.ArraySeq$$anon$1
            private final Object[] array;

            /* JADX WARN: Multi-variable type inference failed */
            {
                super(this.length());
                this.array = objArr;
            }

            @Override // scala.collection.mutable.ArraySeq
            public Object[] array() {
                return this.array;
            }
        };
    }

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<ArraySeq> companion() {
        return ArraySeq$.MODULE$;
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <B> void copyToArray(Object obj, int i, int i2) {
        RichInt$ richInt$ = RichInt$.MODULE$;
        Predef$ predef$ = Predef$.MODULE$;
        RichInt$ richInt$2 = RichInt$.MODULE$;
        Predef$ predef$2 = Predef$.MODULE$;
        Array$.MODULE$.copy(array(), 0, obj, i, richInt$.min$extension(richInt$2.min$extension(i2, ScalaRunTime$.MODULE$.array_length(obj) - i), length()));
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

    /* JADX WARN: Multi-variable type inference failed */
    @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<A, U> function1) {
        for (int i = 0; i < length(); i++) {
            function1.apply(array()[i]);
        }
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
        return this.length;
    }

    @Override // scala.collection.AbstractSeq, scala.collection.SeqLike
    public int lengthCompare(int i) {
        return IndexedSeqOptimized.Cclass.lengthCompare(this, i);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.Parallelizable
    public ParArray<A> par() {
        return ParArray$.MODULE$.handoff(array(), length());
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

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public IndexedSeq<A> seq() {
        return IndexedSeq.Cclass.seq(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public Object slice(int i, int i2) {
        return IndexedSeqOptimized.Cclass.slice(this, i, i2);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Tuple2<ArraySeq<A>, ArraySeq<A>> span(Function1<A, Object> function1) {
        return IndexedSeqOptimized.Cclass.span(this, function1);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Tuple2<ArraySeq<A>, ArraySeq<A>> splitAt(int i) {
        return IndexedSeqOptimized.Cclass.splitAt(this, i);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public <B> boolean startsWith(GenSeq<B> genSeq, int i) {
        return IndexedSeqOptimized.Cclass.startsWith(this, genSeq, i);
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
        if (i < length()) {
            array()[i] = a;
            return;
        }
        throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
    }

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public Object view() {
        return IndexedSeqLike.Cclass.view(this);
    }

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public IndexedSeqView<A, ArraySeq<A>> view(int i, int i2) {
        return IndexedSeqLike.Cclass.view(this, i, i2);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.GenIterableLike, scala.collection.IterableLike
    public <A1, B, That> That zip(GenIterable<B> genIterable, CanBuildFrom<ArraySeq<A>, Tuple2<A1, B>, That> canBuildFrom) {
        return (That) IndexedSeqOptimized.Cclass.zip(this, genIterable, canBuildFrom);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.GenIterableLike, scala.collection.IterableLike
    public <A1, That> That zipWithIndex(CanBuildFrom<ArraySeq<A>, Tuple2<A1, Object>, That> canBuildFrom) {
        return (That) IndexedSeqOptimized.Cclass.zipWithIndex(this, canBuildFrom);
    }
}
