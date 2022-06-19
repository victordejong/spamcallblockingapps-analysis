package scala.collection.immutable;

import java.util.NoSuchElementException;
import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.Function3;
import scala.Function4;
import scala.Function5;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.Tuple2;
import scala.collection.AbstractSeq;
import scala.collection.GenIterable;
import scala.collection.GenSeq;
import scala.collection.GenTraversable;
import scala.collection.IterableLike;
import scala.collection.Iterator;
import scala.collection.LinearSeq;
import scala.collection.LinearSeqLike;
import scala.collection.LinearSeqOptimized;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenTraversableFactory;
import scala.collection.generic.GenericCompanion;
import scala.collection.immutable.Iterable;
import scala.collection.immutable.LinearSeq;
import scala.collection.immutable.Seq;
import scala.collection.immutable.Traversable;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.immutable.ParSeq;
import scala.math.Integral;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
@ScalaSignature(bytes = "\u0006\u0001\u0005mu!B\u0001\u0003\u0011\u0003I\u0011!B*uC\u000e\\'BA\u0002\u0005\u0003%IW.\\;uC\ndWM\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001\u0001\u0005\u0002\u000b\u00175\t!AB\u0003\r\u0005!\u0005QBA\u0003Ti\u0006\u001c7nE\u0002\f\u001dI\u00022a\u0004\n\u0015\u001b\u0005\u0001\"BA\t\u0005\u0003\u001d9WM\\3sS\u000eL!a\u0005\t\u0003\u0015M+\u0017OR1di>\u0014\u0018\u0010\u0005\u0002\u000b+\u0019!AB\u0001\u0001\u0017+\t9bd\u0005\u0004\u00161!ZcF\r\t\u00043iaR\"\u0001\u0003\n\u0005m!!aC!cgR\u0014\u0018m\u0019;TKF\u0004\"!\b\u0010\r\u0001\u00111q$\u0006CC\u0002\u0001\u0012\u0011!Q\t\u0003C\u0015\u0002\"AI\u0012\u000e\u0003\u0019I!\u0001\n\u0004\u0003\u000f9{G\u000f[5oOB\u0011!EJ\u0005\u0003O\u0019\u00111!\u00118z!\rQ\u0011\u0006H\u0005\u0003U\t\u0011\u0011\u0002T5oK\u0006\u00148+Z9\u0011\t=aC\u0004F\u0005\u0003[A\u0011!dR3oKJL7\r\u0016:bm\u0016\u00148/\u00192mKR+W\u000e\u001d7bi\u0016\u0004B!G\u0018\u001dc%\u0011\u0001\u0007\u0002\u0002\u0013\u0019&tW-\u0019:TKF|\u0005\u000f^5nSj,G\rE\u0002\u000b+q\u0001\"AI\u001a\n\u0005Q2!\u0001D*fe&\fG.\u001b>bE2,\u0007\u0002\u0003\u001c\u0016\u0005\u000b\u0007I\u0011C\u001c\u0002\u000b\u0015dW-\\:\u0016\u0003a\u00022AC\u001d\u001d\u0013\tQ$A\u0001\u0003MSN$\b\u0002\u0003\u001f\u0016\u0005\u0003\u0005\u000b\u0011\u0002\u001d\u0002\r\u0015dW-\\:!\u0011\u0015qT\u0003\"\u0005@\u0003\u0019a\u0014N\\5u}Q\u0011\u0011\u0007\u0011\u0005\u0006mu\u0002\r\u0001\u000f\u0005\u0006\u0005V!\teQ\u0001\nG>l\u0007/\u00198j_:,\u0012\u0001\u0012\t\u0004\u001f\u0015#\u0012B\u0001$\u0011\u0005A9UM\\3sS\u000e\u001cu.\u001c9b]&|g\u000eC\u0003?+\u0011\u0005\u0001\nF\u00012\u0011\u0015QU\u0003\"\u0011L\u0003\u001dI7/R7qif,\u0012\u0001\u0014\t\u0003E5K!A\u0014\u0004\u0003\u000f\t{w\u000e\\3b]\")\u0001+\u0006C!#\u0006!\u0001.Z1e+\u0005a\u0002\"B*\u0016\t\u0003\"\u0016\u0001\u0002;bS2,\u0012!\r\u0005\u0006-V!\taV\u0001\u0005aV\u001c\b.\u0006\u0002Y7R\u0011\u0011L\u0018\t\u0004\u0015UQ\u0006CA\u000f\\\t\u0015aVK1\u0001^\u0005\u0005\u0011\u0015C\u0001\u000f&\u0011\u0015yV\u000b1\u0001[\u0003\u0011)G.Z7\t\u000bY+B\u0011A1\u0016\u0005\t,G\u0003B2gQ*\u00042AC\u000be!\tiR\rB\u0003]A\n\u0007Q\fC\u0003hA\u0002\u0007A-A\u0003fY\u0016l\u0017\u0007C\u0003jA\u0002\u0007A-A\u0003fY\u0016l'\u0007C\u00037A\u0002\u00071\u000eE\u0002#Y\u0012L!!\u001c\u0004\u0003\u0015q\u0012X\r]3bi\u0016$g\bC\u0003p+\u0011\u0005\u0001/A\u0004qkND\u0017\t\u001c7\u0016\u0005E$HC\u0001:v!\rQQc\u001d\t\u0003;Q$Q\u0001\u00188C\u0002uCQA\u001e8A\u0002]\f!\u0001_:\u0011\u0007eA8/\u0003\u0002z\t\tyAK]1wKJ\u001c\u0018M\u00197f\u001f:\u001cW\rC\u0003|+\u0011\u0005\u0011+A\u0002u_BDQ!`\u000b\u0005\u0002Q\u000b1\u0001]8q\u0011\u0019yX\u0003\"\u0001\u0002\u0002\u0005!\u0001o\u001c93+\t\t\u0019\u0001E\u0003#\u0003\u000ba\u0012'C\u0002\u0002\b\u0019\u0011a\u0001V;qY\u0016\u0014\u0004BBA\u0006+\u0011\u0005C+A\u0004sKZ,'o]3\t\u000f\u0005=Q\u0003\"\u0011\u0002\u0012\u0005A\u0011\u000e^3sCR|'/\u0006\u0002\u0002\u0014A!\u0011$!\u0006\u001d\u0013\r\t9\u0002\u0002\u0002\t\u0013R,'/\u0019;pe\"9\u00111D\u000b\u0005B\u0005u\u0011\u0001\u0003;p'R\u0014\u0018N\\4\u0015\u0005\u0005}\u0001\u0003BA\u0011\u0003Oq1AIA\u0012\u0013\r\t)CB\u0001\u0007!J,G-\u001a4\n\t\u0005%\u00121\u0006\u0002\u0007'R\u0014\u0018N\\4\u000b\u0007\u0005\u0015b\u0001K\u0004\u0016\u0003_\t)$!\u000f\u0011\u0007\t\n\t$C\u0002\u00024\u0019\u0011!\u0002Z3qe\u0016\u001c\u0017\r^3eC\t\t9$AA\u0018'R\f7m\u001b\u0011jg\u0002\ng\u000eI5oK2,w-\u00198uA\u0005tG\r\t9pi\u0016tG/[1mYf\u0004\u0003o\\8sYfl\u0003/\u001a:g_Jl\u0017N\\4!oJ\f\u0007\u000f]3sA\u0005\u0014x.\u001e8eA1K7\u000f\u001e\u0018!AU\u001bX\r\t'jgR\u0004\u0013N\\:uK\u0006$'\bI:uC\u000e\\\u0007\u0005];tQ\u0002B\bEY3d_6,7\u000f\t=!ui\u0002C.[:uw\u0001\u001aH/Y2l]A|\u0007\u000fI5tA1L7\u000f\u001e\u0018uC&dg&\t\u0002\u0002<\u00051!GL\u00192]ABs!FA \u0003\u000b\n9\u0005E\u0002#\u0003\u0003J1!a\u0011\u0007\u0005A\u0019VM]5bYZ+'o]5p]VKE)A\u0003wC2,XM\b\u0005\u001c[z\u000f;D\r~?\u0012\u0019q4\u0002\"\u0001\u0002LQ\t\u0011\u0002C\u0004\u0002P-!\u0019!!\u0015\u0002\u0019\r\fgNQ;jY\u00124%o\\7\u0016\t\u0005M\u0013QM\u000b\u0003\u0003+\u0002\u0012bDA,\u00037\n\u0019'a\u001a\n\u0007\u0005e\u0003C\u0001\u0007DC:\u0014U/\u001b7e\rJ|W\u000e\u0005\u0003\u0002^\u0005}S\"A\u0006\n\u0007\u0005\u0005TI\u0001\u0003D_2d\u0007cA\u000f\u0002f\u00111q$!\u0014C\u0002\u0001\u0002BAC\u000b\u0002d!9\u00111N\u0006\u0005\u0002\u00055\u0014A\u00038fo\n+\u0018\u000e\u001c3feV!\u0011qNA@+\t\t\t\b\u0005\u0005\u0002t\u0005e\u0014QPAA\u001b\t\t)HC\u0002\u0002x\u0011\tq!\\;uC\ndW-\u0003\u0003\u0002|\u0005U$a\u0002\"vS2$WM\u001d\t\u0004;\u0005}DAB\u0010\u0002j\t\u0007\u0001\u0005\u0005\u0003\u000b+\u0005u\u0004\"CAC\u0017\u0005\u0005I\u0011BAD\u0003-\u0011X-\u00193SKN|GN^3\u0015\u0005\u0005%\u0005\u0003BAF\u0003+k!!!$\u000b\t\u0005=\u0015\u0011S\u0001\u0005Y\u0006twM\u0003\u0002\u0002\u0014\u0006!!.\u0019<b\u0013\u0011\t9*!$\u0003\r=\u0013'.Z2uQ\u001dY\u0011qFA\u001b\u0003s\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stack.class */
public class Stack<A> extends AbstractSeq<A> implements LinearSeq<A>, LinearSeqOptimized<A, Stack<A>>, Serializable {
    public static final long serialVersionUID = 1976480595012942526L;
    private final List<A> elems;

    public Stack() {
        this(Nil$.MODULE$);
    }

    public Stack(List<A> list) {
        this.elems = list;
        Traversable.Cclass.$init$(this);
        Iterable.Cclass.$init$(this);
        Seq.Cclass.$init$(this);
        LinearSeqLike.Cclass.$init$(this);
        LinearSeq.Cclass.$init$(this);
        LinearSeq.Cclass.$init$(this);
        LinearSeqOptimized.Cclass.$init$(this);
    }

    public static GenTraversableFactory<Stack>.GenericCanBuildFrom<Nothing$> ReusableCBF() {
        return (GenTraversableFactory<CC>.GenericCanBuildFrom<Nothing$>) Stack$.MODULE$.ReusableCBF();
    }

    public static <A> CanBuildFrom<Stack<?>, A, Stack<A>> canBuildFrom() {
        return Stack$.MODULE$.canBuildFrom();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable concat(scala.collection.Seq seq) {
        return Stack$.MODULE$.concat(seq);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable empty() {
        return Stack$.MODULE$.empty();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, int i4, int i5, Function0 function0) {
        return Stack$.MODULE$.fill(i, i2, i3, i4, i5, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, int i4, Function0 function0) {
        return Stack$.MODULE$.fill(i, i2, i3, i4, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, Function0 function0) {
        return Stack$.MODULE$.fill(i, i2, i3, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, Function0 function0) {
        return Stack$.MODULE$.fill(i, i2, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, Function0 function0) {
        return Stack$.MODULE$.fill(i, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable iterate(Object obj, int i, Function1 function1) {
        return Stack$.MODULE$.iterate(obj, i, function1);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable range(Object obj, Object obj2, Object obj3, Integral integral) {
        return Stack$.MODULE$.range(obj, obj2, obj3, integral);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable range(Object obj, Object obj2, Integral integral) {
        return Stack$.MODULE$.range(obj, obj2, integral);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, int i4, int i5, Function5 function5) {
        return Stack$.MODULE$.tabulate(i, i2, i3, i4, i5, function5);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, int i4, Function4 function4) {
        return Stack$.MODULE$.tabulate(i, i2, i3, i4, function4);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, Function3 function3) {
        return Stack$.MODULE$.tabulate(i, i2, i3, function3);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, Function2 function2) {
        return Stack$.MODULE$.tabulate(i, i2, function2);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, Function1 function1) {
        return Stack$.MODULE$.tabulate(i, function1);
    }

    public static Some unapplySeq(scala.collection.Seq seq) {
        return Stack$.MODULE$.unapplySeq(seq);
    }

    @Override // scala.collection.GenSeqLike
    public A apply(int i) {
        return (A) LinearSeqOptimized.Cclass.apply(this, i);
    }

    @Override // scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<Stack> companion() {
        return Stack$.MODULE$;
    }

    @Override // scala.collection.AbstractSeq, scala.collection.SeqLike
    public <A1> boolean contains(A1 a1) {
        return LinearSeqOptimized.Cclass.contains(this, a1);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public final <B> boolean corresponds(GenSeq<B> genSeq, Function2<A, B, Object> function2) {
        return LinearSeqLike.Cclass.corresponds(this, genSeq, function2);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public LinearSeqOptimized drop(int i) {
        return LinearSeqOptimized.Cclass.drop(this, i);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.IterableLike
    public LinearSeqOptimized dropRight(int i) {
        return LinearSeqOptimized.Cclass.dropRight(this, i);
    }

    public List<A> elems() {
        return this.elems;
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean exists(Function1<A, Object> function1) {
        return LinearSeqOptimized.Cclass.exists(this, function1);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Option<A> find(Function1<A, Object> function1) {
        return LinearSeqOptimized.Cclass.find(this, function1);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B foldLeft(B b, Function2<B, A, B> function2) {
        return (B) LinearSeqOptimized.Cclass.foldLeft(this, b, function2);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <B> B foldRight(B b, Function2<A, B, B> function2) {
        return (B) LinearSeqOptimized.Cclass.foldRight(this, b, function2);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean forall(Function1<A, Object> function1) {
        return LinearSeqOptimized.Cclass.forall(this, function1);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <B> void foreach(Function1<A, B> function1) {
        LinearSeqOptimized.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike
    public int hashCode() {
        return LinearSeqLike.Cclass.hashCode(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public A head() {
        return elems().head();
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public int indexWhere(Function1<A, Object> function1, int i) {
        return LinearSeqOptimized.Cclass.indexWhere(this, function1, i);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike
    public boolean isDefinedAt(int i) {
        return LinearSeqOptimized.Cclass.isDefinedAt(this, i);
    }

    @Override // scala.collection.AbstractSeq, scala.PartialFunction
    public /* bridge */ /* synthetic */ boolean isDefinedAt(Object obj) {
        return isDefinedAt(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        return elems().isEmpty();
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<A> iterator() {
        return elems().iterator();
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public A last() {
        return (A) LinearSeqOptimized.Cclass.last(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public int lastIndexWhere(Function1<A, Object> function1, int i) {
        return LinearSeqOptimized.Cclass.lastIndexWhere(this, function1, i);
    }

    @Override // scala.collection.GenSeqLike
    public int length() {
        return LinearSeqOptimized.Cclass.length(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.SeqLike
    public int lengthCompare(int i) {
        return LinearSeqOptimized.Cclass.lengthCompare(this, i);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    public Combiner<A, ParSeq<A>> parCombiner() {
        return Seq.Cclass.parCombiner(this);
    }

    public Stack<A> pop() {
        if (!isEmpty()) {
            return new Stack<>((List) elems().tail());
        }
        throw new NoSuchElementException("pop of empty stack");
    }

    public Tuple2<A, Stack<A>> pop2() {
        if (!isEmpty()) {
            return new Tuple2<>(elems().head(), new Stack((List) elems().tail()));
        }
        throw new NoSuchElementException("pop of empty stack");
    }

    public <B> Stack<B> push(B b) {
        return new Stack<>(elems().$colon$colon(b));
    }

    public <B> Stack<B> push(B b, B b2, scala.collection.Seq<B> seq) {
        return push(b).push(b2).pushAll(seq);
    }

    public <B> Stack<B> pushAll(TraversableOnce<B> traversableOnce) {
        return (Stack) traversableOnce.toIterator().$div$colon(this, new Stack$$anonfun$pushAll$1(this));
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce
    public <B> B reduceLeft(Function2<B, A, B> function2) {
        return (B) LinearSeqOptimized.Cclass.reduceLeft(this, function2);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <B> B reduceRight(Function2<A, B, B> function2) {
        return (B) LinearSeqOptimized.Cclass.reduceRight(this, function2);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public Stack<A> reverse() {
        return new Stack<>(elems().reverse());
    }

    @Override // scala.collection.AbstractIterable, scala.collection.GenIterableLike, scala.collection.IterableLike
    public <B> boolean sameElements(GenIterable<B> genIterable) {
        return LinearSeqOptimized.Cclass.sameElements(this, genIterable);
    }

    @Override // scala.collection.LinearSeqOptimized
    public /* synthetic */ boolean scala$collection$LinearSeqOptimized$$super$sameElements(GenIterable genIterable) {
        return IterableLike.Cclass.sameElements(this, genIterable);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public int segmentLength(Function1<A, Object> function1, int i) {
        return LinearSeqOptimized.Cclass.segmentLength(this, function1, i);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public LinearSeq<A> seq() {
        return LinearSeq.Cclass.seq(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public LinearSeqOptimized slice(int i, int i2) {
        return LinearSeqOptimized.Cclass.slice(this, i, i2);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Tuple2<Stack<A>, Stack<A>> span(Function1<A, Object> function1) {
        return LinearSeqOptimized.Cclass.span(this, function1);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Stack<A> tail() {
        return new Stack<>((List) elems().tail());
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public LinearSeqOptimized take(int i) {
        return LinearSeqOptimized.Cclass.take(this, i);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public LinearSeqOptimized takeWhile(Function1 function1) {
        return LinearSeqOptimized.Cclass.takeWhile(this, function1);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public scala.collection.LinearSeq<A> thisCollection() {
        return LinearSeqLike.Cclass.thisCollection(this);
    }

    @Override // scala.collection.LinearSeqLike
    public scala.collection.LinearSeq toCollection(LinearSeqLike linearSeqLike) {
        return LinearSeqLike.Cclass.toCollection(this, linearSeqLike);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
    public Seq<A> toSeq() {
        return Seq.Cclass.toSeq(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
    public String toString() {
        return elems().mkString("Stack(", ", ", ")");
    }

    public A top() {
        if (!isEmpty()) {
            return elems().head();
        }
        throw new NoSuchElementException("top of empty stack");
    }
}
