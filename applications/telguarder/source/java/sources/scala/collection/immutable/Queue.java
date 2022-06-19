package scala.collection.immutable;

import java.util.NoSuchElementException;
import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.Function3;
import scala.Function4;
import scala.Function5;
import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.Tuple2;
import scala.collection.AbstractSeq;
import scala.collection.GenSeq;
import scala.collection.GenTraversable;
import scala.collection.Iterator;
import scala.collection.LinearSeq;
import scala.collection.LinearSeqLike;
import scala.collection.SeqLike;
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
@ScalaSignature(bytes = "\u0006\u0001\t\u001da\u0001B\u0001\u0003\u0001%\u0011Q!U;fk\u0016T!a\u0001\u0003\u0002\u0013%lW.\u001e;bE2,'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u0001QC\u0001\u0006\u0012'\u0019\u00011bG\u0010'UA\u0019A\"D\b\u000e\u0003\u0011I!A\u0004\u0003\u0003\u0017\u0005\u00137\u000f\u001e:bGR\u001cV-\u001d\t\u0003!Ea\u0001\u0001\u0002\u0004\u0013\u0001\u0011\u0015\ra\u0005\u0002\u0002\u0003F\u0011A\u0003\u0007\t\u0003+Yi\u0011AB\u0005\u0003/\u0019\u0011qAT8uQ&tw\r\u0005\u0002\u00163%\u0011!D\u0002\u0002\u0004\u0003:L\bc\u0001\u000f\u001e\u001f5\t!!\u0003\u0002\u001f\u0005\tIA*\u001b8fCJ\u001cV-\u001d\t\u0005A\rzQ%D\u0001\"\u0015\t\u0011C!A\u0004hK:,'/[2\n\u0005\u0011\n#AG$f]\u0016\u0014\u0018n\u0019+sCZ,'o]1cY\u0016$V-\u001c9mCR,\u0007C\u0001\u000f\u0001!\u0011aqeD\u0015\n\u0005!\"!!\u0004'j]\u0016\f'oU3r\u0019&\\W\rE\u0002\u001d\u0001=\u0001\"!F\u0016\n\u000512!\u0001D*fe&\fG.\u001b>bE2,\u0007\u0002\u0003\u0018\u0001\u0005\u000b\u0007I\u0011C\u0018\u0002\u0005%tW#\u0001\u0019\u0011\u0007q\tt\"\u0003\u00023\u0005\t!A*[:u\u0011!!\u0004A!A!\u0002\u0013\u0001\u0014aA5oA!Aa\u0007\u0001BC\u0002\u0013Eq&A\u0002pkRD\u0001\u0002\u000f\u0001\u0003\u0002\u0003\u0006I\u0001M\u0001\u0005_V$\b\u0005C\u0003;\u0001\u0011E1(\u0001\u0004=S:LGO\u0010\u000b\u0004Sqj\u0004\"\u0002\u0018:\u0001\u0004\u0001\u0004\"\u0002\u001c:\u0001\u0004\u0001\u0004\"B \u0001\t\u0003\u0002\u0015!C2p[B\fg.[8o+\u0005\t\u0005c\u0001\u0011CK%\u00111)\t\u0002\u0011\u000f\u0016tWM]5d\u0007>l\u0007/\u00198j_:DQ!\u0012\u0001\u0005B\u0019\u000bQ!\u00199qYf$\"aD$\t\u000b!#\u0005\u0019A%\u0002\u00039\u0004\"!\u0006&\n\u0005-3!aA%oi\")Q\n\u0001C!\u001d\u0006A\u0011\u000e^3sCR|'/F\u0001P!\ra\u0001kD\u0005\u0003#\u0012\u0011\u0001\"\u0013;fe\u0006$xN\u001d\u0005\u0006'\u0002!\t\u0005V\u0001\bSN,U\u000e\u001d;z+\u0005)\u0006CA\u000bW\u0013\t9fAA\u0004C_>dW-\u00198\t\u000be\u0003A\u0011\t.\u0002\t!,\u0017\rZ\u000b\u0002\u001f!)A\f\u0001C!;\u0006!A/Y5m+\u0005I\u0003\"B0\u0001\t\u0003\u0002\u0017A\u00027f]\u001e$\b.F\u0001J\u0011\u0015\u0011\u0007\u0001\"\u0011d\u0003-!\u0003\u000f\\;tI\r|Gn\u001c8\u0016\u0007\u0011|w\r\u0006\u0002feR\u0011a-\u001b\t\u0003!\u001d$Q\u0001[1C\u0002M\u0011A\u0001\u00165bi\")!.\u0019a\u0002W\u0006\u0011!M\u001a\t\u0006A1LcNZ\u0005\u0003[\u0006\u0012AbQ1o\u0005VLG\u000e\u001a$s_6\u0004\"\u0001E8\u0005\u000bA\f'\u0019A9\u0003\u0003\t\u000b\"a\u0004\r\t\u000bM\f\u0007\u0019\u00018\u0002\t\u0015dW-\u001c\u0005\u0006k\u0002!\tE^\u0001\fI\r|Gn\u001c8%a2,8/F\u0002x}j$\"\u0001_@\u0015\u0005e\\\bC\u0001\t{\t\u0015AGO1\u0001\u0014\u0011\u0015QG\u000fq\u0001}!\u0015\u0001C.K?z!\t\u0001b\u0010B\u0003qi\n\u0007\u0011\u000fC\u0003ti\u0002\u0007Q\u0010C\u0004\u0002\u0004\u0001!\t!!\u0002\u0002\u000f\u0015t\u0017/^3vKV!\u0011qAA\u0007)\u0011\tI!a\u0004\u0011\tq\u0001\u00111\u0002\t\u0004!\u00055AA\u00029\u0002\u0002\t\u0007\u0011\u000fC\u0004t\u0003\u0003\u0001\r!a\u0003\t\u000f\u0005\r\u0001\u0001\"\u0001\u0002\u0014U!\u0011QCA\u000e)\u0011\t9\"!\b\u0011\tq\u0001\u0011\u0011\u0004\t\u0004!\u0005mAA\u00029\u0002\u0012\t\u0007\u0011\u000f\u0003\u0005\u0002 \u0005E\u0001\u0019AA\u0011\u0003\u0011IG/\u001a:\u0011\u000bq\t\u0019#!\u0007\n\u0007\u0005\u0015\"A\u0001\u0005Ji\u0016\u0014\u0018M\u00197f\u0011\u001d\tI\u0003\u0001C\u0001\u0003W\tq\u0001Z3rk\u0016,X-\u0006\u0002\u0002.A)Q#a\f\u0010S%\u0019\u0011\u0011\u0007\u0004\u0003\rQ+\b\u000f\\33\u0011\u001d\t)\u0004\u0001C\u0001\u0003o\tQ\u0002Z3rk\u0016,Xm\u00149uS>tWCAA\u001d!\u0015)\u00121HA\u0017\u0013\r\tiD\u0002\u0002\u0007\u001fB$\u0018n\u001c8\t\r\u0005\u0005\u0003\u0001\"\u0001[\u0003\u00151'o\u001c8u\u0011\u001d\t)\u0005\u0001C!\u0003\u000f\n\u0001\u0002^8TiJLgn\u001a\u000b\u0003\u0003\u0013\u0002B!a\u0013\u0002R9\u0019Q#!\u0014\n\u0007\u0005=c!\u0001\u0004Qe\u0016$WMZ\u0005\u0005\u0003'\n)F\u0001\u0004TiJLgn\u001a\u0006\u0004\u0003\u001f2\u0001f\u0002\u0001\u0002Z\u0005}\u00131\r\t\u0004+\u0005m\u0013bAA/\r\t)B-\u001a9sK\u000e\fG/\u001a3J]\",'/\u001b;b]\u000e,\u0017EAA1\u0003A#\u0006.\u001a\u0011j[BdW-\\3oi\u0006$\u0018n\u001c8!I\u0016$\u0018-\u001b7tA=4\u0007%[7nkR\f'\r\\3!cV,W/Z:![\u0006\\W\rI5oQ\u0016\u0014\u0018\u000e^5oO\u00022'o\\7!i\",W\u000eI;oo&\u001cXML\u0011\u0003\u0003K\naA\r\u00182c9\u0002\u0004f\u0002\u0001\u0002j\u0005=\u0014\u0011\u000f\t\u0004+\u0005-\u0014bAA7\r\t\u00012+\u001a:jC24VM]:j_:,\u0016\nR\u0001\u0006m\u0006dW/\u001a\u0010\t-W\u001a_unU,C\u001f9\u0011Q\u000f\u0002\t\u0002\u0005]\u0014!B)vKV,\u0007c\u0001\u000f\u0002z\u00191\u0011A\u0001E\u0001\u0003w\u001aR!!\u001f\u0002~)\u0002B\u0001IA@K%\u0019\u0011\u0011Q\u0011\u0003\u0015M+\u0017OR1di>\u0014\u0018\u0010C\u0004;\u0003s\"\t!!\"\u0015\u0005\u0005]\u0004\u0002CAE\u0003s\"\u0019!a#\u0002\u0019\r\fgNQ;jY\u00124%o\\7\u0016\t\u00055\u00151T\u000b\u0003\u0003\u001f\u0003\u0002\u0002\t7\u0002\u0012\u0006e\u0015Q\u0014\t\u0005\u0003'\u000b)*\u0004\u0002\u0002z%\u0019\u0011q\u0013\"\u0003\t\r{G\u000e\u001c\t\u0004!\u0005mEA\u0002\n\u0002\b\n\u00071\u0003\u0005\u0003\u001d\u0001\u0005e\u0005\u0002CAQ\u0003s\"\t!a)\u0002\u00159,wOQ;jY\u0012,'/\u0006\u0003\u0002&\u0006UVCAAT!!\tI+a,\u00024\u0006]VBAAV\u0015\r\ti\u000bB\u0001\b[V$\u0018M\u00197f\u0013\u0011\t\t,a+\u0003\u000f\t+\u0018\u000e\u001c3feB\u0019\u0001#!.\u0005\rI\tyJ1\u0001\u0014!\u0011a\u0002!a-\t\u0011\u0005m\u0016\u0011\u0010C!\u0003{\u000bQ!Z7qif,B!a0\u0002FV\u0011\u0011\u0011\u0019\t\u00059\u0001\t\u0019\rE\u0002\u0011\u0003\u000b$aAEA]\u0005\u0004\u0019\u0002bB#\u0002z\u0011\u0005\u0013\u0011Z\u000b\u0005\u0003\u0017\f\t\u000e\u0006\u0003\u0002N\u0006M\u0007\u0003\u0002\u000f\u0001\u0003\u001f\u00042\u0001EAi\t\u0019\u0011\u0012q\u0019b\u0001'!A\u0011Q[Ad\u0001\u0004\t9.\u0001\u0002ygB)Q#!7\u0002P&\u0019\u00111\u001c\u0004\u0003\u0015q\u0012X\r]3bi\u0016$gh\u0002\u0005\u0002`\u0006e\u0004\u0012BAq\u0003))U\u000e\u001d;z#V,W/\u001a\t\u0005\u0003'\u000b\u0019O\u0002\u0005\u0002f\u0006e\u0004\u0012BAt\u0005))U\u000e\u001d;z#V,W/Z\n\u0005\u0003G\fI\u000fE\u0002\u001d\u0001QAqAOAr\t\u0003\ti\u000f\u0006\u0002\u0002b\"Q\u0011\u0011_Ar\u0003\u0003%I!a=\u0002\u0017I,\u0017\r\u001a*fg>dg/\u001a\u000b\u0003\u0003k\u0004B!a>\u0003\u00025\u0011\u0011\u0011 \u0006\u0005\u0003w\fi0\u0001\u0003mC:<'BAA��\u0003\u0011Q\u0017M^1\n\t\t\r\u0011\u0011 \u0002\u0007\u001f\nTWm\u0019;\t\u0015\u0005E\u0018\u0011PA\u0001\n\u0013\t\u0019\u0010")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Queue.class */
public class Queue<A> extends AbstractSeq<A> implements LinearSeq<A>, Serializable {
    public static final long serialVersionUID = -7622936493364270175L;

    /* renamed from: in */
    private final List<A> f1549in;
    private final List<A> out;

    public Queue(List<A> list, List<A> list2) {
        this.f1549in = list;
        this.out = list2;
        Traversable.Cclass.$init$(this);
        Iterable.Cclass.$init$(this);
        Seq.Cclass.$init$(this);
        LinearSeqLike.Cclass.$init$(this);
        LinearSeq.Cclass.$init$(this);
        LinearSeq.Cclass.$init$(this);
    }

    public static GenTraversableFactory<Queue>.GenericCanBuildFrom<Nothing$> ReusableCBF() {
        return (GenTraversableFactory<CC>.GenericCanBuildFrom<Nothing$>) Queue$.MODULE$.ReusableCBF();
    }

    public static <A> CanBuildFrom<Queue<?>, A, Queue<A>> canBuildFrom() {
        return Queue$.MODULE$.canBuildFrom();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable concat(scala.collection.Seq seq) {
        return Queue$.MODULE$.concat(seq);
    }

    public static GenTraversable empty() {
        return Queue$.MODULE$.empty();
    }

    /* renamed from: empty */
    public static <A> Queue<A> m6151empty() {
        return Queue$.MODULE$.empty();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, int i4, int i5, Function0 function0) {
        return Queue$.MODULE$.fill(i, i2, i3, i4, i5, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, int i4, Function0 function0) {
        return Queue$.MODULE$.fill(i, i2, i3, i4, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, Function0 function0) {
        return Queue$.MODULE$.fill(i, i2, i3, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, Function0 function0) {
        return Queue$.MODULE$.fill(i, i2, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, Function0 function0) {
        return Queue$.MODULE$.fill(i, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable iterate(Object obj, int i, Function1 function1) {
        return Queue$.MODULE$.iterate(obj, i, function1);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable range(Object obj, Object obj2, Object obj3, Integral integral) {
        return Queue$.MODULE$.range(obj, obj2, obj3, integral);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable range(Object obj, Object obj2, Integral integral) {
        return Queue$.MODULE$.range(obj, obj2, integral);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, int i4, int i5, Function5 function5) {
        return Queue$.MODULE$.tabulate(i, i2, i3, i4, i5, function5);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, int i4, Function4 function4) {
        return Queue$.MODULE$.tabulate(i, i2, i3, i4, function4);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, Function3 function3) {
        return Queue$.MODULE$.tabulate(i, i2, i3, function3);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, Function2 function2) {
        return Queue$.MODULE$.tabulate(i, i2, function2);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, Function1 function1) {
        return Queue$.MODULE$.tabulate(i, function1);
    }

    public static Some unapplySeq(scala.collection.Seq seq) {
        return Queue$.MODULE$.unapplySeq(seq);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public <B, That> That $colon$plus(B b, CanBuildFrom<Queue<A>, B, That> canBuildFrom) {
        return (That) (canBuildFrom instanceof GenTraversableFactory.GenericCanBuildFrom ? enqueue((Queue<A>) b) : SeqLike.Cclass.$colon$plus(this, b, canBuildFrom));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v5, types: [scala.collection.immutable.Queue] */
    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public <B, That> That $plus$colon(B b, CanBuildFrom<Queue<A>, B, That> canBuildFrom) {
        return canBuildFrom instanceof GenTraversableFactory.GenericCanBuildFrom ? new Queue(m154in(), out().$colon$colon(b)) : SeqLike.Cclass.$plus$colon(this, b, canBuildFrom);
    }

    @Override // scala.collection.GenSeqLike
    public A apply(int i) {
        A a;
        int length = out().length();
        if (i < length) {
            a = out().apply(i);
        } else {
            int i2 = i - length;
            int length2 = m154in().length();
            if (i2 >= length2) {
                throw new NoSuchElementException("index out of range");
            }
            a = m154in().apply((length2 - i2) - 1);
        }
        return a;
    }

    @Override // scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<Queue> companion() {
        return Queue$.MODULE$;
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public final <B> boolean corresponds(GenSeq<B> genSeq, Function2<A, B, Object> function2) {
        return LinearSeqLike.Cclass.corresponds(this, genSeq, function2);
    }

    public Tuple2<A, Queue<A>> dequeue() {
        Tuple2<A, Queue<A>> tuple2;
        List<A> out = out();
        if (Nil$.MODULE$.equals(out) && !m154in().isEmpty()) {
            List<A> reverse = m154in().reverse();
            tuple2 = new Tuple2<>(reverse.head(), new Queue(Nil$.MODULE$, (List) reverse.tail()));
        } else if (!(out instanceof C$colon$colon)) {
            throw new NoSuchElementException("dequeue on empty queue");
        } else {
            C$colon$colon c$colon$colon = (C$colon$colon) out;
            tuple2 = new Tuple2<>(c$colon$colon.head(), new Queue(m154in(), c$colon$colon.tl$1()));
        }
        return tuple2;
    }

    public Option<Tuple2<A, Queue<A>>> dequeueOption() {
        return isEmpty() ? None$.MODULE$ : new Some(dequeue());
    }

    public <B> Queue<B> enqueue(B b) {
        return new Queue<>(m154in().$colon$colon(b), out());
    }

    public <B> Queue<B> enqueue(Iterable<B> iterable) {
        return new Queue<>(m154in().reverse_$colon$colon$colon(iterable.toList()), out());
    }

    public A front() {
        return head();
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike
    public int hashCode() {
        return LinearSeqLike.Cclass.hashCode(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public A head() {
        A a;
        if (out().nonEmpty()) {
            a = out().head();
        } else if (!m154in().nonEmpty()) {
            throw new NoSuchElementException("head on empty queue");
        } else {
            a = m154in().last();
        }
        return a;
    }

    /* renamed from: in */
    public List<A> m154in() {
        return this.f1549in;
    }

    @Override // scala.collection.AbstractSeq, scala.PartialFunction
    public /* bridge */ /* synthetic */ boolean isDefinedAt(Object obj) {
        return isDefinedAt(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        return m154in().isEmpty() && out().isEmpty();
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<A> iterator() {
        return m154in().reverse().$colon$colon$colon(out()).iterator();
    }

    @Override // scala.collection.GenSeqLike
    public int length() {
        return m154in().length() + out().length();
    }

    public List<A> out() {
        return this.out;
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    public Combiner<A, ParSeq<A>> parCombiner() {
        return Seq.Cclass.parCombiner(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public LinearSeq<A> seq() {
        return LinearSeq.Cclass.seq(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Queue<A> tail() {
        Queue<A> queue;
        if (out().nonEmpty()) {
            queue = new Queue<>(m154in(), (List) out().tail());
        } else if (!m154in().nonEmpty()) {
            throw new NoSuchElementException("tail on empty queue");
        } else {
            queue = new Queue<>(Nil$.MODULE$, (List) m154in().reverse().tail());
        }
        return queue;
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
        return mkString("Queue(", ", ", ")");
    }
}
