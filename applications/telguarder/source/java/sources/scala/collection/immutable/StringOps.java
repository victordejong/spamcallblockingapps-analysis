package scala.collection.immutable;

import java.util.Locale;
import java.util.regex.PatternSyntaxException;
import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.Option;
import scala.PartialFunction;
import scala.Predef$$less$colon$less;
import scala.Tuple2;
import scala.collection.GenIterable;
import scala.collection.GenSeq;
import scala.collection.GenSeqLike;
import scala.collection.GenTraversableOnce;
import scala.collection.IndexedSeqLike;
import scala.collection.IndexedSeqOptimized;
import scala.collection.Iterable;
import scala.collection.IterableLike;
import scala.collection.Iterator;
import scala.collection.Parallel;
import scala.collection.Parallelizable;
import scala.collection.Seq;
import scala.collection.SeqLike;
import scala.collection.SeqView;
import scala.collection.Traversable;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.FilterMonadic;
import scala.collection.immutable.StringLike;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.StringBuilder;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.ParSeq;
import scala.math.Numeric;
import scala.math.Ordered;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.Nothing$;
import scala.util.matching.Regex;
@ScalaSignature(bytes = "\u0006\u0001\u0005Ub\u0001B\u0001\u0003\u0005%\u0011\u0011b\u0015;sS:<w\n]:\u000b\u0005\r!\u0011!C5n[V$\u0018M\u00197f\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\fG.Y\u0002\u0001'\r\u0001!B\u0004\t\u0003\u00171i\u0011AB\u0005\u0003\u001b\u0019\u0011a!\u00118z-\u0006d\u0007cA\b\u0011%5\t!!\u0003\u0002\u0012\u0005\tQ1\u000b\u001e:j]\u001ed\u0015n[3\u0011\u0005M1bBA\u0006\u0015\u0013\t)b!\u0001\u0004Qe\u0016$WMZ\u0005\u0003/a\u0011aa\u0015;sS:<'BA\u000b\u0007\u0011!Q\u0002A!b\u0001\n\u0003Z\u0012\u0001\u0002:faJ,\u0012A\u0005\u0005\t;\u0001\u0011\t\u0011)A\u0005%\u0005)!/\u001a9sA!)q\u0004\u0001C\u0001A\u00051A(\u001b8jiz\"\"!\t\u0012\u0011\u0005=\u0001\u0001\"\u0002\u000e\u001f\u0001\u0004\u0011\u0002B\u0002\u0013\u0001A\u0013ES%\u0001\buQ&\u001c8i\u001c7mK\u000e$\u0018n\u001c8\u0016\u0003\u0019\u0002\"aD\u0014\n\u0005!\u0012!!D,sCB\u0004X\rZ*ue&tw\r\u0003\u0004+\u0001\u0001&\tfK\u0001\ri>\u001cu\u000e\u001c7fGRLwN\u001c\u000b\u0003M1BQAG\u0015A\u0002IAaA\f\u0001!\n#z\u0013A\u00038fo\n+\u0018\u000e\u001c3feV\t\u0001\u0007\u0005\u00022i5\t!G\u0003\u00024\t\u00059Q.\u001e;bE2,\u0017BA\u001b3\u00055\u0019FO]5oO\n+\u0018\u000e\u001c3fe\")q\u0007\u0001C!q\u0005)\u0011\r\u001d9msR\u0011\u0011\b\u0010\t\u0003\u0017iJ!a\u000f\u0004\u0003\t\rC\u0017M\u001d\u0005\u0006{Y\u0002\rAP\u0001\u0006S:$W\r\u001f\t\u0003\u0017}J!\u0001\u0011\u0004\u0003\u0007%sG\u000fC\u0003C\u0001\u0011\u00053)A\u0003tY&\u001cW\rF\u0002\u0013\t\u001aCQ!R!A\u0002y\nAA\u001a:p[\")q)\u0011a\u0001}\u0005)QO\u001c;jY\")\u0011\n\u0001C!\u0015\u0006AAo\\*ue&tw\rF\u0001\u0013\u0011\u0015a\u0005\u0001\"\u0011N\u0003\u0019aWM\\4uQV\ta\bC\u0003P\u0001\u0011\u0005Q%A\u0002tKFDq!\u0015\u0001\u0002\u0002\u0013\u0005#+\u0001\u0005iCND7i\u001c3f)\u0005q\u0004b\u0002+\u0001\u0003\u0003%\t%V\u0001\u0007KF,\u0018\r\\:\u0015\u0005YK\u0006CA\u0006X\u0013\tAfAA\u0004C_>dW-\u00198\t\u000fi\u001b\u0016\u0011!a\u00017\u0006\u0019\u0001\u0010J\u0019\u0011\u0005-a\u0016BA/\u0007\u0005\r\te._\u0004\b?\n\t\t\u0011#\u0001a\u0003%\u0019FO]5oO>\u00038\u000f\u0005\u0002\u0010C\u001a9\u0011AAA\u0001\u0012\u0003\u00117CA1d!\tYA-\u0003\u0002f\r\t1\u0011I\\=SK\u001aDQaH1\u0005\u0002\u001d$\u0012\u0001\u0019\u0005\u0006S\u0006$)A[\u0001\u0019i\"L7oQ8mY\u0016\u001cG/[8oI\u0015DH/\u001a8tS>tGC\u0001\u0014l\u0011\u0015a\u0007\u000e1\u0001\"\u0003\u0015!C\u000f[5t\u0011\u0015q\u0017\r\"\u0002p\u0003Y!xnQ8mY\u0016\u001cG/[8oI\u0015DH/\u001a8tS>tGC\u00019s)\t1\u0013\u000fC\u0003\u001b[\u0002\u0007!\u0003C\u0003m[\u0002\u0007\u0011\u0005C\u0003uC\u0012\u0015Q/\u0001\u000boK^\u0014U/\u001b7eKJ$S\r\u001f;f]NLwN\u001c\u000b\u0003aYDQ\u0001\\:A\u0002\u0005BQ\u0001_1\u0005\u0006e\fq\"\u00199qYf$S\r\u001f;f]NLwN\u001c\u000b\u0003ur$\"!O>\t\u000bu:\b\u0019\u0001 \t\u000b1<\b\u0019A\u0011\t\u000by\fGQA@\u0002\u001fMd\u0017nY3%Kb$XM\\:j_:$B!!\u0001\u0002\bQ)!#a\u0001\u0002\u0006!)Q) a\u0001}!)q) a\u0001}!)A. a\u0001C!9\u00111B1\u0005\u0006\u00055\u0011A\u0005;p'R\u0014\u0018N\\4%Kb$XM\\:j_:$2ASA\b\u0011\u0019a\u0017\u0011\u0002a\u0001C!9\u00111C1\u0005\u0006\u0005U\u0011\u0001\u00057f]\u001e$\b\u000eJ3yi\u0016t7/[8o)\rq\u0014q\u0003\u0005\u0007Y\u0006E\u0001\u0019A\u0011\t\u000f\u0005m\u0011\r\"\u0002\u0002\u001e\u0005i1/Z9%Kb$XM\\:j_:$2AJA\u0010\u0011\u0019a\u0017\u0011\u0004a\u0001C!I\u00111E1\u0002\u0002\u0013\u0015\u0011QE\u0001\u0013Q\u0006\u001c\bnQ8eK\u0012*\u0007\u0010^3og&|g\u000eF\u0002S\u0003OAa\u0001\\A\u0011\u0001\u0004\t\u0003\"CA\u0016C\u0006\u0005IQAA\u0017\u0003A)\u0017/^1mg\u0012*\u0007\u0010^3og&|g\u000e\u0006\u0003\u00020\u0005MBc\u0001,\u00022!A!,!\u000b\u0002\u0002\u0003\u00071\f\u0003\u0004m\u0003S\u0001\r!\t")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StringOps.class */
public final class StringOps implements StringLike<String> {
    private final String repr;

    public StringOps(String str) {
        this.repr = str;
        TraversableOnce.Cclass.$init$(this);
        Parallelizable.Cclass.$init$(this);
        TraversableLike.Cclass.$init$(this);
        IterableLike.Cclass.$init$(this);
        GenSeqLike.Cclass.$init$(this);
        SeqLike.Cclass.$init$(this);
        IndexedSeqLike.Cclass.$init$(this);
        IndexedSeqOptimized.Cclass.$init$(this);
        Ordered.Cclass.$init$(this);
        StringLike.Cclass.$init$(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B $colon$bslash(B b, Function2<Object, B, B> function2) {
        Object foldRight;
        foldRight = foldRight(b, function2);
        return (B) foldRight;
    }

    @Override // scala.collection.SeqLike
    public <B, That> That $colon$plus(B b, CanBuildFrom<String, B, That> canBuildFrom) {
        return (That) SeqLike.Cclass.$colon$plus(this, b, canBuildFrom);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B $div$colon(B b, Function2<B, Object, B> function2) {
        Object foldLeft;
        foldLeft = foldLeft(b, function2);
        return (B) foldLeft;
    }

    @Override // scala.math.Ordered
    public boolean $greater(String str) {
        return Ordered.Cclass.$greater(this, str);
    }

    @Override // scala.math.Ordered
    public boolean $greater$eq(String str) {
        return Ordered.Cclass.$greater$eq(this, str);
    }

    @Override // scala.math.Ordered
    public boolean $less(String str) {
        return Ordered.Cclass.$less(this, str);
    }

    @Override // scala.math.Ordered
    public boolean $less$eq(String str) {
        return Ordered.Cclass.$less$eq(this, str);
    }

    @Override // scala.collection.SeqLike
    public <B, That> That $plus$colon(B b, CanBuildFrom<String, B, That> canBuildFrom) {
        return (That) SeqLike.Cclass.$plus$colon(this, b, canBuildFrom);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <B, That> That $plus$plus(GenTraversableOnce<B> genTraversableOnce, CanBuildFrom<String, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.$plus$plus(this, genTraversableOnce, canBuildFrom);
    }

    @Override // scala.collection.TraversableLike
    public <B, That> That $plus$plus$colon(Traversable<B> traversable, CanBuildFrom<String, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.$plus$plus$colon((TraversableLike) this, (Traversable) traversable, (CanBuildFrom) canBuildFrom);
    }

    @Override // scala.collection.TraversableLike
    public <B, That> That $plus$plus$colon(TraversableOnce<B> traversableOnce, CanBuildFrom<String, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.$plus$plus$colon(this, traversableOnce, canBuildFrom);
    }

    @Override // scala.collection.immutable.StringLike
    public String $times(int i) {
        return StringLike.Cclass.$times(this, i);
    }

    @Override // scala.collection.TraversableOnce
    public StringBuilder addString(StringBuilder stringBuilder) {
        return TraversableOnce.Cclass.addString(this, stringBuilder);
    }

    @Override // scala.collection.TraversableOnce
    public StringBuilder addString(StringBuilder stringBuilder, String str) {
        return TraversableOnce.Cclass.addString(this, stringBuilder, str);
    }

    @Override // scala.collection.TraversableOnce
    public StringBuilder addString(StringBuilder stringBuilder, String str, String str2, String str3) {
        return TraversableOnce.Cclass.addString(this, stringBuilder, str, str2, str3);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B aggregate(Function0<B> function0, Function2<B, Object, B> function2, Function2<B, B, B> function22) {
        return (B) TraversableOnce.Cclass.aggregate(this, function0, function2, function22);
    }

    @Override // scala.collection.immutable.StringLike, scala.collection.SeqLike, scala.collection.GenSeqLike
    public char apply(int i) {
        return StringOps$.MODULE$.apply$extension(repr(), i);
    }

    @Override // scala.collection.IterableLike, scala.Equals
    public boolean canEqual(Object obj) {
        return IterableLike.Cclass.canEqual(this, obj);
    }

    @Override // scala.collection.immutable.StringLike
    public String capitalize() {
        return StringLike.Cclass.capitalize(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <B, That> That collect(PartialFunction<Object, B> partialFunction, CanBuildFrom<String, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.collect(this, partialFunction, canBuildFrom);
    }

    @Override // scala.collection.TraversableOnce
    public <B> Option<B> collectFirst(PartialFunction<Object, B> partialFunction) {
        return TraversableOnce.Cclass.collectFirst(this, partialFunction);
    }

    @Override // scala.collection.SeqLike
    public Iterator<String> combinations(int i) {
        return SeqLike.Cclass.combinations(this, i);
    }

    @Override // scala.collection.immutable.StringLike
    public int compare(String str) {
        return StringLike.Cclass.compare(this, str);
    }

    @Override // scala.math.Ordered, java.lang.Comparable
    public int compareTo(Object obj) {
        return Ordered.Cclass.compareTo(this, obj);
    }

    @Override // scala.collection.SeqLike
    public <A1> boolean contains(A1 a1) {
        return SeqLike.Cclass.contains(this, a1);
    }

    @Override // scala.collection.SeqLike
    public <B> boolean containsSlice(GenSeq<B> genSeq) {
        return SeqLike.Cclass.containsSlice(this, genSeq);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> void copyToArray(Object obj) {
        TraversableOnce.Cclass.copyToArray(this, obj);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> void copyToArray(Object obj, int i) {
        TraversableOnce.Cclass.copyToArray(this, obj, i);
    }

    @Override // scala.collection.IndexedSeqOptimized, scala.collection.IterableLike
    public <B> void copyToArray(Object obj, int i, int i2) {
        IndexedSeqOptimized.Cclass.copyToArray(this, obj, i, i2);
    }

    @Override // scala.collection.TraversableOnce
    public <B> void copyToBuffer(Buffer<B> buffer) {
        TraversableOnce.Cclass.copyToBuffer(this, buffer);
    }

    @Override // scala.collection.SeqLike
    public <B> boolean corresponds(GenSeq<B> genSeq, Function2<Object, B, Object> function2) {
        return SeqLike.Cclass.corresponds(this, genSeq, function2);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int count(Function1<Object, Object> function1) {
        return TraversableOnce.Cclass.count(this, function1);
    }

    @Override // scala.collection.SeqLike
    public Object diff(GenSeq genSeq) {
        return SeqLike.Cclass.diff(this, genSeq);
    }

    @Override // scala.collection.SeqLike
    public Object distinct() {
        return SeqLike.Cclass.distinct(this);
    }

    @Override // scala.collection.IndexedSeqOptimized, scala.collection.IterableLike
    public Object drop(int i) {
        return IndexedSeqOptimized.Cclass.drop(this, i);
    }

    @Override // scala.collection.IndexedSeqOptimized, scala.collection.IterableLike
    public Object dropRight(int i) {
        return IndexedSeqOptimized.Cclass.dropRight(this, i);
    }

    @Override // scala.collection.IndexedSeqOptimized, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Object dropWhile(Function1 function1) {
        return IndexedSeqOptimized.Cclass.dropWhile(this, function1);
    }

    @Override // scala.collection.IndexedSeqOptimized, scala.collection.SeqLike
    public <B> boolean endsWith(GenSeq<B> genSeq) {
        return IndexedSeqOptimized.Cclass.endsWith(this, genSeq);
    }

    @Override // scala.Equals
    public boolean equals(Object obj) {
        return StringOps$.MODULE$.equals$extension(repr(), obj);
    }

    @Override // scala.collection.IndexedSeqOptimized, scala.collection.IterableLike
    public boolean exists(Function1<Object, Object> function1) {
        return IndexedSeqOptimized.Cclass.exists(this, function1);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Object filter(Function1 function1) {
        return TraversableLike.Cclass.filter(this, function1);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.MapLike
    public Object filterNot(Function1 function1) {
        return TraversableLike.Cclass.filterNot(this, function1);
    }

    @Override // scala.collection.IndexedSeqOptimized, scala.collection.IterableLike
    public Option<Object> find(Function1<Object, Object> function1) {
        return IndexedSeqOptimized.Cclass.find(this, function1);
    }

    @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike
    public <B, That> That flatMap(Function1<Object, GenTraversableOnce<B>> function1, CanBuildFrom<String, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.flatMap(this, function1, canBuildFrom);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <A1> A1 fold(A1 a1, Function2<A1, A1, A1> function2) {
        return (A1) TraversableOnce.Cclass.fold(this, a1, function2);
    }

    @Override // scala.collection.IndexedSeqOptimized, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B foldLeft(B b, Function2<B, Object, B> function2) {
        return (B) IndexedSeqOptimized.Cclass.foldLeft(this, b, function2);
    }

    @Override // scala.collection.IndexedSeqOptimized, scala.collection.IterableLike
    public <B> B foldRight(B b, Function2<Object, B, B> function2) {
        return (B) IndexedSeqOptimized.Cclass.foldRight(this, b, function2);
    }

    @Override // scala.collection.IndexedSeqOptimized, scala.collection.IterableLike
    public boolean forall(Function1<Object, Object> function1) {
        return IndexedSeqOptimized.Cclass.forall(this, function1);
    }

    @Override // scala.collection.IndexedSeqOptimized, scala.collection.IterableLike
    public <U> void foreach(Function1<Object, U> function1) {
        IndexedSeqOptimized.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.immutable.StringLike
    public String format(Seq<Object> seq) {
        return StringLike.Cclass.format(this, seq);
    }

    @Override // scala.collection.immutable.StringLike
    public String formatLocal(Locale locale, Seq<Object> seq) {
        return StringLike.Cclass.formatLocal(this, locale, seq);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <K> Map<K, String> groupBy(Function1<Object, K> function1) {
        return TraversableLike.Cclass.groupBy(this, function1);
    }

    @Override // scala.collection.IterableLike
    public Iterator<String> grouped(int i) {
        return IterableLike.Cclass.grouped(this, i);
    }

    @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public boolean hasDefiniteSize() {
        return TraversableLike.Cclass.hasDefiniteSize(this);
    }

    @Override // scala.collection.IndexedSeqLike, scala.collection.GenSeqLike
    public int hashCode() {
        return StringOps$.MODULE$.hashCode$extension(repr());
    }

    @Override // scala.collection.IndexedSeqOptimized, scala.collection.IterableLike
    public Object head() {
        return IndexedSeqOptimized.Cclass.head(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Option<Object> headOption() {
        return TraversableLike.Cclass.headOption(this);
    }

    @Override // scala.collection.GenSeqLike
    public <B> int indexOf(B b) {
        return GenSeqLike.Cclass.indexOf(this, b);
    }

    @Override // scala.collection.GenSeqLike
    public <B> int indexOf(B b, int i) {
        return GenSeqLike.Cclass.indexOf(this, b, i);
    }

    @Override // scala.collection.SeqLike
    public <B> int indexOfSlice(GenSeq<B> genSeq) {
        return SeqLike.Cclass.indexOfSlice(this, genSeq);
    }

    @Override // scala.collection.SeqLike
    public <B> int indexOfSlice(GenSeq<B> genSeq, int i) {
        return SeqLike.Cclass.indexOfSlice(this, genSeq, i);
    }

    @Override // scala.collection.GenSeqLike
    public int indexWhere(Function1<Object, Object> function1) {
        return GenSeqLike.Cclass.indexWhere(this, function1);
    }

    @Override // scala.collection.IndexedSeqOptimized, scala.collection.SeqLike
    public int indexWhere(Function1<Object, Object> function1, int i) {
        return IndexedSeqOptimized.Cclass.indexWhere(this, function1, i);
    }

    @Override // scala.collection.SeqLike
    public Range indices() {
        return SeqLike.Cclass.indices(this);
    }

    @Override // scala.collection.IndexedSeqOptimized, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Object init() {
        return IndexedSeqOptimized.Cclass.init(this);
    }

    @Override // scala.collection.TraversableLike
    public Iterator<String> inits() {
        return TraversableLike.Cclass.inits(this);
    }

    @Override // scala.collection.SeqLike
    public Object intersect(GenSeq genSeq) {
        return SeqLike.Cclass.intersect(this, genSeq);
    }

    @Override // scala.collection.GenSeqLike
    public boolean isDefinedAt(int i) {
        return GenSeqLike.Cclass.isDefinedAt(this, i);
    }

    @Override // scala.collection.IndexedSeqOptimized, scala.collection.SeqLike, scala.collection.IterableLike
    public boolean isEmpty() {
        return IndexedSeqOptimized.Cclass.isEmpty(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce
    public final boolean isTraversableAgain() {
        return TraversableLike.Cclass.isTraversableAgain(this);
    }

    @Override // scala.collection.IndexedSeqLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<Object> iterator() {
        return IndexedSeqLike.Cclass.iterator(this);
    }

    @Override // scala.collection.IndexedSeqOptimized, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Object last() {
        return IndexedSeqOptimized.Cclass.last(this);
    }

    @Override // scala.collection.GenSeqLike
    public <B> int lastIndexOf(B b) {
        return GenSeqLike.Cclass.lastIndexOf(this, b);
    }

    @Override // scala.collection.GenSeqLike
    public <B> int lastIndexOf(B b, int i) {
        return GenSeqLike.Cclass.lastIndexOf(this, b, i);
    }

    @Override // scala.collection.SeqLike
    public <B> int lastIndexOfSlice(GenSeq<B> genSeq) {
        return SeqLike.Cclass.lastIndexOfSlice(this, genSeq);
    }

    @Override // scala.collection.SeqLike
    public <B> int lastIndexOfSlice(GenSeq<B> genSeq, int i) {
        return SeqLike.Cclass.lastIndexOfSlice(this, genSeq, i);
    }

    @Override // scala.collection.GenSeqLike
    public int lastIndexWhere(Function1<Object, Object> function1) {
        return GenSeqLike.Cclass.lastIndexWhere(this, function1);
    }

    @Override // scala.collection.IndexedSeqOptimized, scala.collection.SeqLike
    public int lastIndexWhere(Function1<Object, Object> function1, int i) {
        return IndexedSeqOptimized.Cclass.lastIndexWhere(this, function1, i);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Option<Object> lastOption() {
        return TraversableLike.Cclass.lastOption(this);
    }

    @Override // scala.collection.immutable.StringLike, scala.collection.SeqLike, scala.collection.GenSeqLike
    public int length() {
        return StringOps$.MODULE$.length$extension(repr());
    }

    @Override // scala.collection.IndexedSeqOptimized, scala.collection.SeqLike
    public int lengthCompare(int i) {
        return IndexedSeqOptimized.Cclass.lengthCompare(this, i);
    }

    @Override // scala.collection.immutable.StringLike
    public Iterator<String> lines() {
        return StringLike.Cclass.lines(this);
    }

    @Override // scala.collection.immutable.StringLike
    public Iterator<String> linesIterator() {
        return StringLike.Cclass.linesIterator(this);
    }

    @Override // scala.collection.immutable.StringLike
    public Iterator<String> linesWithSeparators() {
        return StringLike.Cclass.linesWithSeparators(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike, scala.collection.SetLike
    public <B, That> That map(Function1<Object, B> function1, CanBuildFrom<String, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.map(this, function1, canBuildFrom);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public Object max(Ordering ordering) {
        return TraversableOnce.Cclass.max(this, ordering);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public Object maxBy(Function1 function1, Ordering ordering) {
        return TraversableOnce.Cclass.maxBy(this, function1, ordering);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public Object min(Ordering ordering) {
        return TraversableOnce.Cclass.min(this, ordering);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public Object minBy(Function1 function1, Ordering ordering) {
        return TraversableOnce.Cclass.minBy(this, function1, ordering);
    }

    @Override // scala.collection.immutable.StringLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public String mkString() {
        return StringLike.Cclass.mkString(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public String mkString(String str) {
        return TraversableOnce.Cclass.mkString(this, str);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public String mkString(String str, String str2, String str3) {
        return TraversableOnce.Cclass.mkString(this, str, str2, str3);
    }

    @Override // scala.collection.immutable.StringLike, scala.collection.TraversableLike, scala.collection.generic.HasNewBuilder, scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
    public StringBuilder newBuilder() {
        return StringOps$.MODULE$.newBuilder$extension(repr());
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public boolean nonEmpty() {
        return TraversableOnce.Cclass.nonEmpty(this);
    }

    @Override // scala.collection.SeqLike
    public <B, That> That padTo(int i, B b, CanBuildFrom<String, B, That> canBuildFrom) {
        return (That) SeqLike.Cclass.padTo(this, i, b, canBuildFrom);
    }

    @Override // scala.collection.Parallelizable
    public Parallel par() {
        return Parallelizable.Cclass.par(this);
    }

    @Override // scala.collection.SeqLike, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    public Combiner<Object, ParSeq<Object>> parCombiner() {
        return SeqLike.Cclass.parCombiner(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Tuple2<String, String> partition(Function1<Object, Object> function1) {
        return TraversableLike.Cclass.partition(this, function1);
    }

    @Override // scala.collection.SeqLike
    public <B, That> That patch(int i, GenSeq<B> genSeq, int i2, CanBuildFrom<String, B, That> canBuildFrom) {
        return (That) SeqLike.Cclass.patch(this, i, genSeq, i2, canBuildFrom);
    }

    @Override // scala.collection.SeqLike
    public Iterator<String> permutations() {
        return SeqLike.Cclass.permutations(this);
    }

    @Override // scala.collection.GenSeqLike
    public int prefixLength(Function1<Object, Object> function1) {
        return GenSeqLike.Cclass.prefixLength(this, function1);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B product(Numeric<B> numeric) {
        return (B) TraversableOnce.Cclass.product(this, numeric);
    }

    @Override // scala.collection.immutable.StringLike
    /* renamed from: r */
    public Regex mo128r() {
        return StringLike.Cclass.m141r(this);
    }

    @Override // scala.collection.immutable.StringLike
    /* renamed from: r */
    public Regex mo127r(Seq<String> seq) {
        return StringLike.Cclass.m140r(this, seq);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <A1> A1 reduce(Function2<A1, A1, A1> function2) {
        return (A1) TraversableOnce.Cclass.reduce(this, function2);
    }

    @Override // scala.collection.IndexedSeqOptimized, scala.collection.TraversableOnce
    public <B> B reduceLeft(Function2<B, Object, B> function2) {
        return (B) IndexedSeqOptimized.Cclass.reduceLeft(this, function2);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> Option<B> reduceLeftOption(Function2<B, Object, B> function2) {
        return TraversableOnce.Cclass.reduceLeftOption(this, function2);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <A1> Option<A1> reduceOption(Function2<A1, A1, A1> function2) {
        return TraversableOnce.Cclass.reduceOption(this, function2);
    }

    @Override // scala.collection.IndexedSeqOptimized, scala.collection.IterableLike
    public <B> B reduceRight(Function2<Object, B, B> function2) {
        return (B) IndexedSeqOptimized.Cclass.reduceRight(this, function2);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> Option<B> reduceRightOption(Function2<Object, B, B> function2) {
        return TraversableOnce.Cclass.reduceRightOption(this, function2);
    }

    @Override // scala.collection.immutable.StringLike
    public String replaceAllLiterally(String str, String str2) {
        return StringLike.Cclass.replaceAllLiterally(this, str, str2);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    public String repr() {
        return this.repr;
    }

    @Override // scala.collection.IndexedSeqOptimized, scala.collection.SeqLike
    public Object reverse() {
        return IndexedSeqOptimized.Cclass.reverse(this);
    }

    @Override // scala.collection.IndexedSeqOptimized, scala.collection.SeqLike
    public Iterator<Object> reverseIterator() {
        return IndexedSeqOptimized.Cclass.reverseIterator(this);
    }

    @Override // scala.collection.SeqLike
    public <B, That> That reverseMap(Function1<Object, B> function1, CanBuildFrom<String, B, That> canBuildFrom) {
        return (That) SeqLike.Cclass.reverseMap(this, function1, canBuildFrom);
    }

    @Override // scala.collection.TraversableOnce
    public List<Object> reversed() {
        return TraversableOnce.Cclass.reversed(this);
    }

    @Override // scala.collection.IndexedSeqOptimized, scala.collection.IterableLike
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

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <B, That> That scan(B b, Function2<B, B, B> function2, CanBuildFrom<String, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.scan(this, b, function2, canBuildFrom);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <B, That> That scanLeft(B b, Function2<B, Object, B> function2, CanBuildFrom<String, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.scanLeft(this, b, function2, canBuildFrom);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <B, That> That scanRight(B b, Function2<Object, B, B> function2, CanBuildFrom<String, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.scanRight(this, b, function2, canBuildFrom);
    }

    @Override // scala.collection.IndexedSeqOptimized, scala.collection.SeqLike
    public int segmentLength(Function1<Object, Object> function1, int i) {
        return IndexedSeqOptimized.Cclass.segmentLength(this, function1, i);
    }

    @Override // scala.collection.IndexedSeqLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public WrappedString seq() {
        return StringOps$.MODULE$.seq$extension(repr());
    }

    @Override // scala.collection.SeqLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int size() {
        return SeqLike.Cclass.size(this);
    }

    @Override // scala.collection.immutable.StringLike, scala.collection.IndexedSeqOptimized, scala.collection.IterableLike
    public String slice(int i, int i2) {
        return StringOps$.MODULE$.slice$extension(repr(), i, i2);
    }

    @Override // scala.collection.TraversableLike
    public Object sliceWithKnownBound(int i, int i2) {
        return TraversableLike.Cclass.sliceWithKnownBound(this, i, i2);
    }

    @Override // scala.collection.TraversableLike
    public Object sliceWithKnownDelta(int i, int i2, int i3) {
        return TraversableLike.Cclass.sliceWithKnownDelta(this, i, i2, i3);
    }

    @Override // scala.collection.IterableLike
    public Iterator<String> sliding(int i) {
        return IterableLike.Cclass.sliding(this, i);
    }

    @Override // scala.collection.IterableLike
    public Iterator<String> sliding(int i, int i2) {
        return IterableLike.Cclass.sliding(this, i, i2);
    }

    @Override // scala.collection.SeqLike
    public Object sortBy(Function1 function1, Ordering ordering) {
        return SeqLike.Cclass.sortBy(this, function1, ordering);
    }

    @Override // scala.collection.SeqLike
    public Object sortWith(Function2 function2) {
        return SeqLike.Cclass.sortWith(this, function2);
    }

    @Override // scala.collection.SeqLike
    public Object sorted(Ordering ordering) {
        return SeqLike.Cclass.sorted(this, ordering);
    }

    @Override // scala.collection.IndexedSeqOptimized, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Tuple2<String, String> span(Function1<Object, Object> function1) {
        return IndexedSeqOptimized.Cclass.span(this, function1);
    }

    @Override // scala.collection.immutable.StringLike
    public String[] split(char c) {
        return StringLike.Cclass.split(this, c);
    }

    @Override // scala.collection.immutable.StringLike
    public String[] split(char[] cArr) throws PatternSyntaxException {
        return StringLike.Cclass.split(this, cArr);
    }

    @Override // scala.collection.IndexedSeqOptimized, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Tuple2<String, String> splitAt(int i) {
        return IndexedSeqOptimized.Cclass.splitAt(this, i);
    }

    @Override // scala.collection.GenSeqLike
    public <B> boolean startsWith(GenSeq<B> genSeq) {
        return GenSeqLike.Cclass.startsWith(this, genSeq);
    }

    @Override // scala.collection.IndexedSeqOptimized, scala.collection.SeqLike
    public <B> boolean startsWith(GenSeq<B> genSeq, int i) {
        return IndexedSeqOptimized.Cclass.startsWith(this, genSeq, i);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
    public String stringPrefix() {
        return TraversableLike.Cclass.stringPrefix(this);
    }

    @Override // scala.collection.immutable.StringLike
    public String stripLineEnd() {
        return StringLike.Cclass.stripLineEnd(this);
    }

    @Override // scala.collection.immutable.StringLike
    public String stripMargin() {
        return StringLike.Cclass.stripMargin(this);
    }

    @Override // scala.collection.immutable.StringLike
    public String stripMargin(char c) {
        return StringLike.Cclass.stripMargin(this, c);
    }

    @Override // scala.collection.immutable.StringLike
    public String stripPrefix(String str) {
        return StringLike.Cclass.stripPrefix(this, str);
    }

    @Override // scala.collection.immutable.StringLike
    public String stripSuffix(String str) {
        return StringLike.Cclass.stripSuffix(this, str);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B sum(Numeric<B> numeric) {
        return (B) TraversableOnce.Cclass.sum(this, numeric);
    }

    @Override // scala.collection.IndexedSeqOptimized, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Object tail() {
        return IndexedSeqOptimized.Cclass.tail(this);
    }

    @Override // scala.collection.TraversableLike
    public Iterator<String> tails() {
        return TraversableLike.Cclass.tails(this);
    }

    @Override // scala.collection.IndexedSeqOptimized, scala.collection.IterableLike
    public Object take(int i) {
        return IndexedSeqOptimized.Cclass.take(this, i);
    }

    @Override // scala.collection.IndexedSeqOptimized, scala.collection.IterableLike
    public Object takeRight(int i) {
        return IndexedSeqOptimized.Cclass.takeRight(this, i);
    }

    @Override // scala.collection.IndexedSeqOptimized, scala.collection.IterableLike
    public Object takeWhile(Function1 function1) {
        return IndexedSeqOptimized.Cclass.takeWhile(this, function1);
    }

    @Override // scala.collection.IndexedSeqLike, scala.collection.SeqLike, scala.collection.IterableLike
    public WrappedString thisCollection() {
        return StringOps$.MODULE$.thisCollection$extension(repr());
    }

    @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    /* renamed from: to */
    public <Col> Col mo1to(CanBuildFrom<Nothing$, Object, Col> canBuildFrom) {
        return (Col) TraversableLike.Cclass.m184to(this, canBuildFrom);
    }

    @Override // scala.collection.immutable.StringLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> Object toArray(ClassTag<B> classTag) {
        return StringLike.Cclass.toArray(this, classTag);
    }

    @Override // scala.collection.immutable.StringLike
    public boolean toBoolean() {
        return StringLike.Cclass.toBoolean(this);
    }

    @Override // scala.collection.IndexedSeqLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <A1> Buffer<A1> toBuffer() {
        return IndexedSeqLike.Cclass.toBuffer(this);
    }

    @Override // scala.collection.immutable.StringLike
    public byte toByte() {
        return StringLike.Cclass.toByte(this);
    }

    public WrappedString toCollection(String str) {
        return StringOps$.MODULE$.toCollection$extension(repr(), str);
    }

    @Override // scala.collection.immutable.StringLike
    public double toDouble() {
        return StringLike.Cclass.toDouble(this);
    }

    @Override // scala.collection.immutable.StringLike
    public float toFloat() {
        return StringLike.Cclass.toFloat(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public IndexedSeq<Object> toIndexedSeq() {
        return TraversableOnce.Cclass.toIndexedSeq(this);
    }

    @Override // scala.collection.immutable.StringLike
    public int toInt() {
        return StringLike.Cclass.toInt(this);
    }

    @Override // scala.collection.IterableLike
    public Iterable<Object> toIterable() {
        return IterableLike.Cclass.toIterable(this);
    }

    @Override // scala.collection.IterableLike
    public Iterator<Object> toIterator() {
        return IterableLike.Cclass.toIterator(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public List<Object> toList() {
        return TraversableOnce.Cclass.toList(this);
    }

    @Override // scala.collection.immutable.StringLike
    public long toLong() {
        return StringLike.Cclass.toLong(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <T, U> Map<T, U> toMap(Predef$$less$colon$less<Object, Tuple2<T, U>> predef$$less$colon$less) {
        return TraversableOnce.Cclass.toMap(this, predef$$less$colon$less);
    }

    @Override // scala.collection.SeqLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
    public Seq<Object> toSeq() {
        return SeqLike.Cclass.toSeq(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
    public <B> Set<B> toSet() {
        return TraversableOnce.Cclass.toSet(this);
    }

    @Override // scala.collection.immutable.StringLike
    public short toShort() {
        return StringLike.Cclass.toShort(this);
    }

    @Override // scala.collection.IterableLike
    public Stream<Object> toStream() {
        return IterableLike.Cclass.toStream(this);
    }

    @Override // scala.collection.SeqLike, scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
    public String toString() {
        return StringOps$.MODULE$.toString$extension(repr());
    }

    @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public Traversable<Object> toTraversable() {
        return TraversableLike.Cclass.toTraversable(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public Vector<Object> toVector() {
        return TraversableOnce.Cclass.toVector(this);
    }

    @Override // scala.collection.SeqLike
    public <B, That> That union(GenSeq<B> genSeq, CanBuildFrom<String, B, That> canBuildFrom) {
        return (That) SeqLike.Cclass.union(this, genSeq, canBuildFrom);
    }

    @Override // scala.collection.SeqLike
    public <B, That> That updated(int i, B b, CanBuildFrom<String, B, That> canBuildFrom) {
        return (That) SeqLike.Cclass.updated(this, i, b, canBuildFrom);
    }

    @Override // scala.collection.SeqLike, scala.collection.IterableLike
    public Object view() {
        return SeqLike.Cclass.view(this);
    }

    @Override // scala.collection.SeqLike, scala.collection.IterableLike
    public SeqView<Object, String> view(int i, int i2) {
        return SeqLike.Cclass.view(this, i, i2);
    }

    @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic
    public FilterMonadic<Object, String> withFilter(Function1<Object, Object> function1) {
        return TraversableLike.Cclass.withFilter(this, function1);
    }

    @Override // scala.collection.IndexedSeqOptimized, scala.collection.IterableLike
    public <A1, B, That> That zip(GenIterable<B> genIterable, CanBuildFrom<String, Tuple2<A1, B>, That> canBuildFrom) {
        return (That) IndexedSeqOptimized.Cclass.zip(this, genIterable, canBuildFrom);
    }

    @Override // scala.collection.IterableLike
    public <B, A1, That> That zipAll(GenIterable<B> genIterable, A1 a1, B b, CanBuildFrom<String, Tuple2<A1, B>, That> canBuildFrom) {
        return (That) IterableLike.Cclass.zipAll(this, genIterable, a1, b, canBuildFrom);
    }

    @Override // scala.collection.IndexedSeqOptimized, scala.collection.IterableLike
    public <A1, That> That zipWithIndex(CanBuildFrom<String, Tuple2<A1, Object>, That> canBuildFrom) {
        return (That) IndexedSeqOptimized.Cclass.zipWithIndex(this, canBuildFrom);
    }
}
