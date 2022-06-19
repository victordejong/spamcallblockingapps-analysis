package scala.collection.immutable;

import java.util.Locale;
import java.util.regex.PatternSyntaxException;
import scala.Function1;
import scala.Function2;
import scala.Option;
import scala.Predef$;
import scala.Tuple2;
import scala.collection.AbstractSeq;
import scala.collection.GenIterable;
import scala.collection.GenSeq;
import scala.collection.IndexedSeq;
import scala.collection.IndexedSeqLike;
import scala.collection.IndexedSeqOptimized;
import scala.collection.IterableLike;
import scala.collection.Iterator;
import scala.collection.SeqLike;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenericCompanion;
import scala.collection.immutable.IndexedSeq;
import scala.collection.immutable.Iterable;
import scala.collection.immutable.Seq;
import scala.collection.immutable.StringLike;
import scala.collection.immutable.Traversable;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Builder;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.immutable.ParSeq;
import scala.math.Ordered;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.util.matching.Regex;
@ScalaSignature(bytes = "\u0006\u0001\u001d4A!\u0001\u0002\u0001\u0013\tiqK]1qa\u0016$7\u000b\u001e:j]\u001eT!a\u0001\u0003\u0002\u0013%lW.\u001e;bE2,'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u00011\u0003\u0002\u0001\u000b%Y\u00012a\u0003\u0007\u000f\u001b\u0005!\u0011BA\u0007\u0005\u0005-\t%m\u001d;sC\u000e$8+Z9\u0011\u0005=\u0001R\"\u0001\u0004\n\u0005E1!\u0001B\"iCJ\u00042a\u0005\u000b\u000f\u001b\u0005\u0011\u0011BA\u000b\u0003\u0005)Ie\u000eZ3yK\u0012\u001cV-\u001d\t\u0004']I\u0012B\u0001\r\u0003\u0005)\u0019FO]5oO2K7.\u001a\t\u0003'\u0001A\u0001b\u0007\u0001\u0003\u0006\u0004%\t\u0001H\u0001\u0005g\u0016dg-F\u0001\u001e!\tq\u0012E\u0004\u0002\u0010?%\u0011\u0001EB\u0001\u0007!J,G-\u001a4\n\u0005\t\u001a#AB*ue&twM\u0003\u0002!\r!AQ\u0005\u0001B\u0001B\u0003%Q$A\u0003tK24\u0007\u0005C\u0003(\u0001\u0011\u0005\u0001&\u0001\u0004=S:LGO\u0010\u000b\u00033%BQa\u0007\u0014A\u0002uAaa\u000b\u0001!\n#b\u0013A\u0004;iSN\u001cu\u000e\u001c7fGRLwN\\\u000b\u00023!1a\u0006\u0001Q\u0005R=\nA\u0002^8D_2dWm\u0019;j_:$\"!\u0007\u0019\t\u000bEj\u0003\u0019A\r\u0002\tI,\u0007O\u001d\u0005\u0007g\u0001\u0001K\u0011\u000b\u001b\u0002\u00159,wOQ;jY\u0012,'/F\u00016!\u00111\u0014HD\r\u000e\u0003]R!\u0001\u000f\u0003\u0002\u000f5,H/\u00192mK&\u0011!h\u000e\u0002\b\u0005VLG\u000eZ3s\u0011\u0015a\u0004\u0001\"\u0011>\u0003\u0015\u0019H.[2f)\rIbh\u0011\u0005\u0006\u007fm\u0002\r\u0001Q\u0001\u0005MJ|W\u000e\u0005\u0002\u0010\u0003&\u0011!I\u0002\u0002\u0004\u0013:$\b\"\u0002#<\u0001\u0004\u0001\u0015!B;oi&d\u0007\"\u0002$\u0001\t\u0003:\u0015A\u00027f]\u001e$\b.F\u0001A\u0011\u0015I\u0005\u0001\"\u0011K\u0003!!xn\u0015;sS:<G#A\u000f)\t\u0001au*\u0015\t\u0003\u001f5K!A\u0014\u0004\u0003+\u0011,\u0007O]3dCR,G-\u00138iKJLG/\u00198dK\u0006\n\u0001+A\u0019J]\",'/\u001b;!MJ|W\u000eI*ue&tw\rT5lK\u0002Jgn\u001d;fC\u0012\u0004sN\u001a\u0011Xe\u0006\u0004\b/\u001a3TiJLgn\u001a\u0018\"\u0003I\u000baA\r\u00182c9\u0002t!\u0002+\u0003\u0011\u0003)\u0016!D,sCB\u0004X\rZ*ue&tw\r\u0005\u0002\u0014-\u001a)\u0011A\u0001E\u0001/N\u0011a\u000b\u0017\t\u0003\u001feK!A\u0017\u0004\u0003\r\u0005s\u0017PU3g\u0011\u00159c\u000b\"\u0001])\u0005)\u0006\"\u00020W\t\u0007y\u0016\u0001D2b]\n+\u0018\u000e\u001c3Ge>lW#\u00011\u0011\u000b\u0005$\u0017DD\r\u000e\u0003\tT!a\u0019\u0003\u0002\u000f\u001d,g.\u001a:jG&\u0011QM\u0019\u0002\r\u0007\u0006t')^5mI\u001a\u0013x.\u001c\u0005\u0006gY#\t\u0001\u000e")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/WrappedString.class */
public class WrappedString extends AbstractSeq<Object> implements IndexedSeq<Object>, StringLike<WrappedString> {
    private final String self;

    public WrappedString(String str) {
        this.self = str;
        Traversable.Cclass.$init$(this);
        Iterable.Cclass.$init$(this);
        Seq.Cclass.$init$(this);
        IndexedSeqLike.Cclass.$init$(this);
        IndexedSeq.Cclass.$init$(this);
        IndexedSeq.Cclass.$init$(this);
        IndexedSeqOptimized.Cclass.$init$(this);
        Ordered.Cclass.$init$(this);
        StringLike.Cclass.$init$(this);
    }

    public static CanBuildFrom<WrappedString, Object, WrappedString> canBuildFrom() {
        return WrappedString$.MODULE$.canBuildFrom();
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

    @Override // scala.collection.immutable.StringLike
    public String $times(int i) {
        return StringLike.Cclass.$times(this, i);
    }

    @Override // scala.collection.GenSeqLike
    public char apply(int i) {
        return StringLike.Cclass.apply(this, i);
    }

    @Override // scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToCharacter(apply(BoxesRunTime.unboxToInt(obj)));
    }

    @Override // scala.collection.immutable.StringLike
    public String capitalize() {
        return StringLike.Cclass.capitalize(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<IndexedSeq> companion() {
        return IndexedSeq.Cclass.companion(this);
    }

    @Override // scala.collection.immutable.StringLike
    public int compare(String str) {
        return StringLike.Cclass.compare(this, str);
    }

    @Override // scala.math.Ordered, java.lang.Comparable
    public int compareTo(Object obj) {
        return Ordered.Cclass.compareTo(this, obj);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <B> void copyToArray(Object obj, int i, int i2) {
        IndexedSeqOptimized.Cclass.copyToArray(this, obj, i, i2);
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
    public boolean exists(Function1<Object, Object> function1) {
        return IndexedSeqOptimized.Cclass.exists(this, function1);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Option<Object> find(Function1<Object, Object> function1) {
        return IndexedSeqOptimized.Cclass.find(this, function1);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B foldLeft(B b, Function2<B, Object, B> function2) {
        return (B) IndexedSeqOptimized.Cclass.foldLeft(this, b, function2);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <B> B foldRight(B b, Function2<Object, B, B> function2) {
        return (B) IndexedSeqOptimized.Cclass.foldRight(this, b, function2);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean forall(Function1<Object, Object> function1) {
        return IndexedSeqOptimized.Cclass.forall(this, function1);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<Object, U> function1) {
        IndexedSeqOptimized.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.immutable.StringLike
    public String format(scala.collection.Seq<Object> seq) {
        return StringLike.Cclass.format(this, seq);
    }

    @Override // scala.collection.immutable.StringLike
    public String formatLocal(Locale locale, scala.collection.Seq<Object> seq) {
        return StringLike.Cclass.formatLocal(this, locale, seq);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike
    public int hashCode() {
        return IndexedSeqLike.Cclass.hashCode(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public Object head() {
        return IndexedSeqOptimized.Cclass.head(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public int indexWhere(Function1<Object, Object> function1, int i) {
        return IndexedSeqOptimized.Cclass.indexWhere(this, function1, i);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Object init() {
        return IndexedSeqOptimized.Cclass.init(this);
    }

    @Override // scala.collection.AbstractSeq, scala.PartialFunction
    public /* bridge */ /* synthetic */ boolean isDefinedAt(Object obj) {
        return isDefinedAt(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        return IndexedSeqOptimized.Cclass.isEmpty(this);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<Object> iterator() {
        return IndexedSeqLike.Cclass.iterator(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Object last() {
        return IndexedSeqOptimized.Cclass.last(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public int lastIndexWhere(Function1<Object, Object> function1, int i) {
        return IndexedSeqOptimized.Cclass.lastIndexWhere(this, function1, i);
    }

    @Override // scala.collection.GenSeqLike
    public int length() {
        return self().length();
    }

    @Override // scala.collection.AbstractSeq, scala.collection.SeqLike
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

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public String mkString() {
        return StringLike.Cclass.mkString(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.generic.HasNewBuilder, scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
    public Builder<Object, WrappedString> newBuilder() {
        return WrappedString$.MODULE$.newBuilder();
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    public Combiner<Object, ParSeq<Object>> parCombiner() {
        return Seq.Cclass.parCombiner(this);
    }

    @Override // scala.collection.immutable.StringLike
    /* renamed from: r */
    public Regex mo128r() {
        return StringLike.Cclass.m141r(this);
    }

    @Override // scala.collection.immutable.StringLike
    /* renamed from: r */
    public Regex mo127r(scala.collection.Seq<String> seq) {
        return StringLike.Cclass.m140r(this, seq);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce
    public <B> B reduceLeft(Function2<B, Object, B> function2) {
        return (B) IndexedSeqOptimized.Cclass.reduceLeft(this, function2);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <B> B reduceRight(Function2<Object, B, B> function2) {
        return (B) IndexedSeqOptimized.Cclass.reduceRight(this, function2);
    }

    @Override // scala.collection.immutable.StringLike
    public String replaceAllLiterally(String str, String str2) {
        return StringLike.Cclass.replaceAllLiterally(this, str, str2);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public Object reverse() {
        return IndexedSeqOptimized.Cclass.reverse(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.SeqLike
    public Iterator<Object> reverseIterator() {
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
    public int segmentLength(Function1<Object, Object> function1, int i) {
        return IndexedSeqOptimized.Cclass.segmentLength(this, function1, i);
    }

    public String self() {
        return this.self;
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public IndexedSeq<Object> seq() {
        return IndexedSeq.Cclass.seq(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public WrappedString slice(int i, int i2) {
        int i3 = i;
        if (i < 0) {
            i3 = 0;
        }
        if (i2 <= i3 || i3 >= ((WrappedString) repr()).length()) {
            return new WrappedString("");
        }
        int i4 = i2;
        if (i2 > length()) {
            i4 = length();
        }
        return new WrappedString(Predef$.MODULE$.unwrapString((WrappedString) repr()).substring(i3, i4));
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Tuple2<WrappedString, WrappedString> span(Function1<Object, Object> function1) {
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

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Tuple2<WrappedString, WrappedString> splitAt(int i) {
        return IndexedSeqOptimized.Cclass.splitAt(this, i);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public <B> boolean startsWith(GenSeq<B> genSeq, int i) {
        return IndexedSeqOptimized.Cclass.startsWith(this, genSeq, i);
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

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public WrappedString thisCollection() {
        return this;
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> Object toArray(ClassTag<B> classTag) {
        return StringLike.Cclass.toArray(this, classTag);
    }

    @Override // scala.collection.immutable.StringLike
    public boolean toBoolean() {
        return StringLike.Cclass.toBoolean(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <A1> Buffer<A1> toBuffer() {
        return IndexedSeqLike.Cclass.toBuffer(this);
    }

    @Override // scala.collection.immutable.StringLike
    public byte toByte() {
        return StringLike.Cclass.toByte(this);
    }

    public WrappedString toCollection(WrappedString wrappedString) {
        return wrappedString;
    }

    @Override // scala.collection.immutable.StringLike
    public double toDouble() {
        return StringLike.Cclass.toDouble(this);
    }

    @Override // scala.collection.immutable.StringLike
    public float toFloat() {
        return StringLike.Cclass.toFloat(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public IndexedSeq<Object> toIndexedSeq() {
        return IndexedSeq.Cclass.toIndexedSeq(this);
    }

    @Override // scala.collection.immutable.StringLike
    public int toInt() {
        return StringLike.Cclass.toInt(this);
    }

    @Override // scala.collection.immutable.StringLike
    public long toLong() {
        return StringLike.Cclass.toLong(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
    public Seq<Object> toSeq() {
        return Seq.Cclass.toSeq(this);
    }

    @Override // scala.collection.immutable.StringLike
    public short toShort() {
        return StringLike.Cclass.toShort(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
    public String toString() {
        return self();
    }

    @Override // scala.collection.AbstractIterable, scala.collection.GenIterableLike, scala.collection.IterableLike
    public <A1, B, That> That zip(GenIterable<B> genIterable, CanBuildFrom<WrappedString, Tuple2<A1, B>, That> canBuildFrom) {
        return (That) IndexedSeqOptimized.Cclass.zip(this, genIterable, canBuildFrom);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.GenIterableLike, scala.collection.IterableLike
    public <A1, That> That zipWithIndex(CanBuildFrom<WrappedString, Tuple2<A1, Object>, That> canBuildFrom) {
        return (That) IndexedSeqOptimized.Cclass.zipWithIndex(this, canBuildFrom);
    }
}
