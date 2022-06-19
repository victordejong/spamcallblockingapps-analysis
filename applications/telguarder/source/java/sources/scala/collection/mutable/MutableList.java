package scala.collection.mutable;

import java.util.NoSuchElementException;
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
import scala.collection.AbstractIterator;
import scala.collection.GenIterable;
import scala.collection.GenSeq;
import scala.collection.GenTraversable;
import scala.collection.IterableLike;
import scala.collection.Iterator;
import scala.collection.Iterator$;
import scala.collection.LinearSeq;
import scala.collection.LinearSeqLike;
import scala.collection.LinearSeqOptimized;
import scala.collection.Seq;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenTraversableFactory;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.Growable;
import scala.collection.immutable.List;
import scala.collection.mutable.Builder;
import scala.collection.mutable.LinearSeq;
import scala.math.Integral;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
@ScalaSignature(bytes = "\u0006\u0001\u0005=g\u0001B\u0001\u0003\u0001%\u00111\"T;uC\ndW\rT5ti*\u00111\u0001B\u0001\b[V$\u0018M\u00197f\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\fG.Y\u0002\u0001+\tQ\u0011cE\u0004\u0001\u0017mq2EK\u0017\u0011\u00071iq\"D\u0001\u0003\u0013\tq!AA\u0006BEN$(/Y2u'\u0016\f\bC\u0001\t\u0012\u0019\u0001!QA\u0005\u0001C\u0002M\u0011\u0011!Q\t\u0003)a\u0001\"!\u0006\f\u000e\u0003\u0019I!a\u0006\u0004\u0003\u000f9{G\u000f[5oOB\u0011Q#G\u0005\u00035\u0019\u00111!\u00118z!\raAdD\u0005\u0003;\t\u0011\u0011\u0002T5oK\u0006\u00148+Z9\u0011\t}\u0001sBI\u0007\u0002\t%\u0011\u0011\u0005\u0002\u0002\u0013\u0019&tW-\u0019:TKF|\u0005\u000f^5nSj,G\rE\u0002\r\u0001=\u0001B\u0001J\u0014\u0010S5\tQE\u0003\u0002'\t\u00059q-\u001a8fe&\u001c\u0017B\u0001\u0015&\u0005i9UM\\3sS\u000e$&/\u0019<feN\f'\r\\3UK6\u0004H.\u0019;f!\ta\u0001\u0001\u0005\u0003\rW=\u0011\u0013B\u0001\u0017\u0003\u0005\u001d\u0011U/\u001b7eKJ\u0004\"!\u0006\u0018\n\u0005=2!\u0001D*fe&\fG.\u001b>bE2,\u0007\"B\u0019\u0001\t\u0003\u0011\u0014A\u0002\u001fj]&$h\bF\u0001#\u0011\u0015!\u0004\u0001\"\u00116\u0003%\u0019w.\u001c9b]&|g.F\u00017!\r!s'K\u0005\u0003q\u0015\u0012\u0001cR3oKJL7mQ8na\u0006t\u0017n\u001c8\t\ri\u0002\u0001\u0015\"\u0015<\u0003)qWm\u001e\"vS2$WM]\u000b\u0002U!9Q\b\u0001a\u0001\n#q\u0014A\u00024jeN$\b'F\u0001@!\ra\u0001iD\u0005\u0003\u0003\n\u0011!\u0002T5oW\u0016$G*[:u\u0011\u001d\u0019\u0005\u00011A\u0005\u0012\u0011\u000b!BZ5sgR\u0004t\fJ3r)\t)\u0005\n\u0005\u0002\u0016\r&\u0011qI\u0002\u0002\u0005+:LG\u000fC\u0004J\u0005\u0006\u0005\t\u0019A \u0002\u0007a$\u0013\u0007\u0003\u0004L\u0001\u0001\u0006KaP\u0001\bM&\u00148\u000f\u001e\u0019!\u0011\u001di\u0005\u00011A\u0005\u0012y\nQ\u0001\\1tiBBqa\u0014\u0001A\u0002\u0013E\u0001+A\u0005mCN$\bg\u0018\u0013fcR\u0011Q)\u0015\u0005\b\u0013:\u000b\t\u00111\u0001@\u0011\u0019\u0019\u0006\u0001)Q\u0005\u007f\u00051A.Y:ua\u0001Bq!\u0016\u0001A\u0002\u0013Ea+A\u0002mK:,\u0012a\u0016\t\u0003+aK!!\u0017\u0004\u0003\u0007%sG\u000fC\u0004\\\u0001\u0001\u0007I\u0011\u0003/\u0002\u000f1,gn\u0018\u0013fcR\u0011Q)\u0018\u0005\b\u0013j\u000b\t\u00111\u0001X\u0011\u0019y\u0006\u0001)Q\u0005/\u0006!A.\u001a8!\u0011\u0015\t\u0007\u0001\"\u0001c\u0003\u001d!x.U;fk\u0016,\u0012a\u0019\t\u0004\u0019\u0011|\u0011BA3\u0003\u0005\u0015\tV/Z;f\u0011\u00159\u0007\u0001\"\u0011i\u0003\u001dI7/R7qif,\u0012!\u001b\t\u0003+)L!a\u001b\u0004\u0003\u000f\t{w\u000e\\3b]\")Q\u000e\u0001C!]\u0006!\u0001.Z1e+\u0005y\u0001\"\u00029\u0001\t\u0003\n\u0018\u0001\u0002;bS2,\u0012A\t\u0005\u0006g\u0002!)\u0002^\u0001\ti\u0006LG.S7qYR\u0011Q)\u001e\u0005\u0006mJ\u0004\rAI\u0001\u0003i2DQ\u0001\u001f\u0001\u0005\u0002e\fa\u0002\n9mkN$S-\u001d\u0013d_2|g\u000e\u0006\u0002{w6\t\u0001\u0001C\u0003}o\u0002\u0007q\"\u0001\u0003fY\u0016l\u0007\"\u0002@\u0001\t\u00032\u0016A\u00027f]\u001e$\b\u000eC\u0004\u0002\u0002\u0001!\t%a\u0001\u0002\u000b\u0005\u0004\b\u000f\\=\u0015\u0007=\t)\u0001\u0003\u0004\u0002\b}\u0004\raV\u0001\u0002]\"9\u00111\u0002\u0001\u0005\u0002\u00055\u0011AB;qI\u0006$X\rF\u0003F\u0003\u001f\t\t\u0002C\u0004\u0002\b\u0005%\u0001\u0019A,\t\u000f\u0005M\u0011\u0011\u0002a\u0001\u001f\u0005\t\u0001\u0010C\u0004\u0002\u0018\u0001!\t!!\u0007\u0002\u0007\u001d,G\u000f\u0006\u0003\u0002\u001c\u0005\u0005\u0002\u0003B\u000b\u0002\u001e=I1!a\b\u0007\u0005\u0019y\u0005\u000f^5p]\"9\u0011qAA\u000b\u0001\u00049\u0006bBA\u0013\u0001\u0011E\u0011qE\u0001\faJ,\u0007/\u001a8e\u000b2,W\u000eF\u0002F\u0003SAa\u0001`A\u0012\u0001\u0004y\u0001bBA\u0017\u0001\u0011E\u0011qF\u0001\u000bCB\u0004XM\u001c3FY\u0016lGcA#\u00022!1A0a\u000bA\u0002=Aq!!\u000e\u0001\t\u0003\n9$\u0001\u0005ji\u0016\u0014\u0018\r^8s+\t\tI\u0004\u0005\u0003 \u0003wy\u0011bAA\u001f\t\tA\u0011\n^3sCR|'\u000f\u0003\u0004\u0002B\u0001!\tE\\\u0001\u0005Y\u0006\u001cH\u000fC\u0004\u0002F\u0001!\t%a\u0012\u0002\rQ|G*[:u+\t\tI\u0005E\u0003\u0002L\u0005Es\"\u0004\u0002\u0002N)\u0019\u0011q\n\u0003\u0002\u0013%lW.\u001e;bE2,\u0017\u0002BA*\u0003\u001b\u0012A\u0001T5ti\"9\u0011q\u000b\u0001\u0005\u0002\tq\u0014\u0001\u0004;p\u0019&t7.\u001a3MSN$\bbBA.\u0001\u0011\u0005\u0011QL\u0001\tIAdWo\u001d\u0013fcR\u0019!0a\u0018\t\rq\fI\u00061\u0001\u0010\u0011\u001d\t\u0019\u0007\u0001C\u0001\u0003K\nQa\u00197fCJ$\u0012!\u0012\u0005\u0007\u0003S\u0002A\u0011\u0001\u001a\u0002\rI,7/\u001e7u\u0011\u0019\ti\u0007\u0001C!e\u0005)1\r\\8oK\":\u0001!!\u001d\u0002x\u0005e\u0004cA\u000b\u0002t%\u0019\u0011Q\u000f\u0004\u0003!M+'/[1m-\u0016\u00148/[8o+&#\u0015!\u0002<bYV,g\u0004\u0003*j=Kr\bQ\u0016a\b\u000f\u0005u$\u0001#\u0001\u0002��\u0005YQ*\u001e;bE2,G*[:u!\ra\u0011\u0011\u0011\u0004\u0007\u0003\tA\t!a!\u0014\u000b\u0005\u0005\u0015QQ\u0017\u0011\t\u0011\n9)K\u0005\u0004\u0003\u0013+#AC*fc\u001a\u000b7\r^8ss\"9\u0011'!!\u0005\u0002\u00055ECAA@\u0011!\t\t*!!\u0005\u0004\u0005M\u0015\u0001D2b]\n+\u0018\u000e\u001c3Ge>lW\u0003BAK\u0003O+\"!a&\u0011\u0013\u0011\nI*!(\u0002&\u0006%\u0016bAANK\ta1)\u00198Ck&dGM\u0012:p[B!\u0011qTAQ\u001b\t\t\t)C\u0002\u0002$^\u0012AaQ8mYB\u0019\u0001#a*\u0005\rI\tyI1\u0001\u0014!\u0011a\u0001!!*\t\u000fi\n\t\t\"\u0001\u0002.V!\u0011qVA[+\t\t\t\f\u0005\u0004\rW\u0005M\u0016q\u0017\t\u0004!\u0005UFA\u0002\n\u0002,\n\u00071\u0003\u0005\u0003\r\u0001\u0005M\u0006BCA^\u0003\u0003\u000b\t\u0011\"\u0003\u0002>\u0006Y!/Z1e%\u0016\u001cx\u000e\u001c<f)\t\ty\f\u0005\u0003\u0002B\u0006-WBAAb\u0015\u0011\t)-a2\u0002\t1\fgn\u001a\u0006\u0003\u0003\u0013\fAA[1wC&!\u0011QZAb\u0005\u0019y%M[3di\u0002")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/MutableList.class */
public class MutableList<A> extends AbstractSeq<A> implements LinearSeq<A>, LinearSeqOptimized<A, MutableList<A>>, Builder<A, MutableList<A>>, Serializable {
    public static final long serialVersionUID = 5938451523372603072L;
    private LinkedList<A> first0 = new LinkedList<>();
    private LinkedList<A> last0 = first0();
    private int len = 0;

    public MutableList() {
        LinearSeqLike.Cclass.$init$(this);
        LinearSeq.Cclass.$init$(this);
        LinearSeq.Cclass.$init$(this);
        LinearSeqOptimized.Cclass.$init$(this);
        Growable.Cclass.$init$(this);
        Builder.Cclass.$init$(this);
    }

    public static GenTraversableFactory<MutableList>.GenericCanBuildFrom<Nothing$> ReusableCBF() {
        return (GenTraversableFactory<CC>.GenericCanBuildFrom<Nothing$>) MutableList$.MODULE$.ReusableCBF();
    }

    public static <A> CanBuildFrom<MutableList<?>, A, MutableList<A>> canBuildFrom() {
        return MutableList$.MODULE$.canBuildFrom();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable concat(Seq seq) {
        return MutableList$.MODULE$.concat(seq);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable empty() {
        return MutableList$.MODULE$.empty();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, int i4, int i5, Function0 function0) {
        return MutableList$.MODULE$.fill(i, i2, i3, i4, i5, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, int i4, Function0 function0) {
        return MutableList$.MODULE$.fill(i, i2, i3, i4, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, Function0 function0) {
        return MutableList$.MODULE$.fill(i, i2, i3, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, Function0 function0) {
        return MutableList$.MODULE$.fill(i, i2, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, Function0 function0) {
        return MutableList$.MODULE$.fill(i, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable iterate(Object obj, int i, Function1 function1) {
        return MutableList$.MODULE$.iterate(obj, i, function1);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable range(Object obj, Object obj2, Object obj3, Integral integral) {
        return MutableList$.MODULE$.range(obj, obj2, obj3, integral);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable range(Object obj, Object obj2, Integral integral) {
        return MutableList$.MODULE$.range(obj, obj2, integral);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, int i4, int i5, Function5 function5) {
        return MutableList$.MODULE$.tabulate(i, i2, i3, i4, i5, function5);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, int i4, Function4 function4) {
        return MutableList$.MODULE$.tabulate(i, i2, i3, i4, function4);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, Function3 function3) {
        return MutableList$.MODULE$.tabulate(i, i2, i3, function3);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, Function2 function2) {
        return MutableList$.MODULE$.tabulate(i, i2, function2);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, Function1 function1) {
        return MutableList$.MODULE$.tabulate(i, function1);
    }

    public static Some unapplySeq(Seq seq) {
        return MutableList$.MODULE$.unapplySeq(seq);
    }

    @Override // scala.collection.generic.Growable
    public Growable<A> $plus$eq(A a, A a2, Seq<A> seq) {
        Growable<A> $plus$plus$eq;
        $plus$plus$eq = $plus$eq((MutableList<A>) a).$plus$eq(a2).$plus$plus$eq(seq);
        return $plus$plus$eq;
    }

    @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable
    public MutableList<A> $plus$eq(A a) {
        appendElem(a);
        return this;
    }

    public MutableList<A> $plus$eq$colon(A a) {
        prependElem(a);
        return this;
    }

    @Override // scala.collection.generic.Growable
    public Growable<A> $plus$plus$eq(TraversableOnce<A> traversableOnce) {
        return Growable.Cclass.$plus$plus$eq(this, traversableOnce);
    }

    public void appendElem(A a) {
        if (len() == 0) {
            prependElem(a);
            return;
        }
        last0().next_$eq(new LinkedList());
        last0_$eq((LinkedList) last0().next());
        last0().elem_$eq(a);
        last0().next_$eq(new LinkedList());
        len_$eq(len() + 1);
    }

    @Override // scala.collection.GenSeqLike
    public A apply(int i) {
        return first0().apply(i);
    }

    @Override // scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
    public void clear() {
        first0_$eq(new LinkedList<>());
        last0_$eq(first0());
        len_$eq(0);
    }

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.mutable.Cloneable
    public MutableList<A> clone() {
        Builder<A, MutableList<A>> newBuilder = newBuilder();
        newBuilder.$plus$plus$eq(seq());
        return newBuilder.result();
    }

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<MutableList> companion() {
        return MutableList$.MODULE$;
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

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean exists(Function1<A, Object> function1) {
        return LinearSeqOptimized.Cclass.exists(this, function1);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Option<A> find(Function1<A, Object> function1) {
        return LinearSeqOptimized.Cclass.find(this, function1);
    }

    public LinkedList<A> first0() {
        return this.first0;
    }

    public void first0_$eq(LinkedList<A> linkedList) {
        this.first0 = linkedList;
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

    public Option<A> get(int i) {
        return first0().get(i);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike
    public int hashCode() {
        return LinearSeqLike.Cclass.hashCode(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public A head() {
        if (nonEmpty()) {
            return first0().head();
        }
        throw new NoSuchElementException();
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public int indexWhere(Function1<A, Object> function1, int i) {
        return LinearSeqOptimized.Cclass.indexWhere(this, function1, i);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike
    public boolean isDefinedAt(int i) {
        return LinearSeqOptimized.Cclass.isDefinedAt(this, i);
    }

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.PartialFunction
    public /* bridge */ /* synthetic */ boolean isDefinedAt(Object obj) {
        return isDefinedAt(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        return len() == 0;
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<A> iterator() {
        return isEmpty() ? Iterator$.MODULE$.empty() : new AbstractIterator<A>(this) { // from class: scala.collection.mutable.MutableList$$anon$1
            private int count;
            private LinkedList<A> elems;

            {
                this.elems = this.first0();
                this.count = this.len();
            }

            private int count() {
                return this.count;
            }

            private void count_$eq(int i) {
                this.count = i;
            }

            private LinkedList<A> elems() {
                return this.elems;
            }

            private void elems_$eq(LinkedList<A> linkedList) {
                this.elems = linkedList;
            }

            @Override // scala.collection.Iterator
            public boolean hasNext() {
                return count() > 0 && elems().nonEmpty();
            }

            /* JADX WARN: Type inference failed for: r0v6, types: [A, java.lang.Object] */
            @Override // scala.collection.Iterator
            public A next() {
                if (hasNext()) {
                    count_$eq(count() - 1);
                    ?? elem = elems().elem();
                    elems_$eq(count() == 0 ? null : (LinkedList) elems().next());
                    return elem;
                }
                throw new NoSuchElementException();
            }
        };
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public A last() {
        if (!isEmpty()) {
            return last0().elem();
        }
        throw new NoSuchElementException("MutableList.empty.last");
    }

    public LinkedList<A> last0() {
        return this.last0;
    }

    public void last0_$eq(LinkedList<A> linkedList) {
        this.last0 = linkedList;
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public int lastIndexWhere(Function1<A, Object> function1, int i) {
        return LinearSeqOptimized.Cclass.lastIndexWhere(this, function1, i);
    }

    public int len() {
        return this.len;
    }

    public void len_$eq(int i) {
        this.len = i;
    }

    @Override // scala.collection.GenSeqLike
    public int length() {
        return len();
    }

    @Override // scala.collection.AbstractSeq, scala.collection.SeqLike
    public int lengthCompare(int i) {
        return LinearSeqOptimized.Cclass.lengthCompare(this, i);
    }

    @Override // scala.collection.mutable.Builder
    public <NewTo> Builder<A, NewTo> mapResult(Function1<MutableList<A>, NewTo> function1) {
        return Builder.Cclass.mapResult(this, function1);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.generic.HasNewBuilder, scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
    public Builder<A, MutableList<A>> newBuilder() {
        return new MutableList();
    }

    public void prependElem(A a) {
        first0_$eq(new LinkedList<>(a, first0()));
        if (len() == 0) {
            last0_$eq(first0());
        }
        len_$eq(len() + 1);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce
    public <B> B reduceLeft(Function2<B, A, B> function2) {
        return (B) LinearSeqOptimized.Cclass.reduceLeft(this, function2);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <B> B reduceRight(Function2<A, B, B> function2) {
        return (B) LinearSeqOptimized.Cclass.reduceRight(this, function2);
    }

    @Override // scala.collection.mutable.Builder
    public MutableList<A> result() {
        return this;
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

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public LinearSeq<A> seq() {
        return LinearSeq.Cclass.seq(this);
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

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public LinearSeqOptimized slice(int i, int i2) {
        return LinearSeqOptimized.Cclass.slice(this, i, i2);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Tuple2<MutableList<A>, MutableList<A>> span(Function1<A, Object> function1) {
        return LinearSeqOptimized.Cclass.span(this, function1);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public MutableList<A> tail() {
        MutableList<A> mutableList = new MutableList<>();
        tailImpl(mutableList);
        return mutableList;
    }

    public final void tailImpl(MutableList<A> mutableList) {
        Predef$ predef$ = Predef$.MODULE$;
        if (nonEmpty()) {
            mutableList.first0_$eq((LinkedList) first0().tail());
            mutableList.len_$eq(len() - 1);
            mutableList.last0_$eq(mutableList.len() == 0 ? mutableList.first0() : last0());
            return;
        }
        throw new IllegalArgumentException(new StringBuilder().append((Object) "requirement failed: ").append((Object) "tail of empty list").toString());
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public LinearSeqOptimized take(int i) {
        return LinearSeqOptimized.Cclass.take(this, i);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public LinearSeqOptimized takeWhile(Function1 function1) {
        return LinearSeqOptimized.Cclass.takeWhile(this, function1);
    }

    @Override // scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public scala.collection.LinearSeq<A> thisCollection() {
        return LinearSeqLike.Cclass.thisCollection(this);
    }

    @Override // scala.collection.LinearSeqLike
    public scala.collection.LinearSeq toCollection(LinearSeqLike linearSeqLike) {
        return LinearSeqLike.Cclass.toCollection(this, linearSeqLike);
    }

    public LinkedList<A> toLinkedList() {
        return first0();
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public List<A> toList() {
        return first0().toList();
    }

    public Queue<A> toQueue() {
        return new Queue<>(first0(), last0(), len());
    }

    @Override // scala.collection.mutable.SeqLike, scala.collection.mutable.BufferLike
    public void update(int i, A a) {
        first0().update(i, a);
    }
}
