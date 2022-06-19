package scala.collection.immutable;

import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.Option;
import scala.PartialFunction;
import scala.Predef$$less$colon$less;
import scala.Tuple2;
import scala.Tuple3;
import scala.collection.GenIterable;
import scala.collection.GenSeq;
import scala.collection.GenTraversable;
import scala.collection.GenTraversableOnce;
import scala.collection.Iterable;
import scala.collection.IterableView;
import scala.collection.Iterator;
import scala.collection.LinearSeq;
import scala.collection.LinearSeqLike;
import scala.collection.LinearSeqOptimized;
import scala.collection.Parallel;
import scala.collection.Seq;
import scala.collection.SeqView;
import scala.collection.Traversable;
import scala.collection.TraversableView;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.FilterMonadic;
import scala.collection.generic.GenericCompanion;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Builder;
import scala.collection.mutable.StringBuilder;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.immutable.ParSeq;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.Nothing$;
@ScalaSignature(bytes = "\u0006\u0001q;Q!\u0001\u0002\t\u0002&\t1AT5m\u0015\t\u0019A!A\u0005j[6,H/\u00192mK*\u0011QAB\u0001\u000bG>dG.Z2uS>t'\"A\u0004\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001A\u0011!bC\u0007\u0002\u0005\u0019)AB\u0001EA\u001b\t\u0019a*\u001b7\u0014\t-qQ\u0003\u0007\t\u0004\u0015=\t\u0012B\u0001\t\u0003\u0005\u0011a\u0015n\u001d;\u0011\u0005I\u0019R\"\u0001\u0004\n\u0005Q1!a\u0002(pi\"Lgn\u001a\t\u0003%YI!a\u0006\u0004\u0003\u000fA\u0013x\u000eZ;diB\u0011!#G\u0005\u00035\u0019\u0011AbU3sS\u0006d\u0017N_1cY\u0016DQ\u0001H\u0006\u0005\u0002u\ta\u0001P5oSRtD#A\u0005\t\u000b}YA\u0011\t\u0011\u0002\u000f%\u001cX)\u001c9usV\t\u0011\u0005\u0005\u0002\u0013E%\u00111E\u0002\u0002\b\u0005>|G.Z1o\u0011\u0015)3\u0002\"\u0011'\u0003\u0011AW-\u00193\u0016\u0003EAQ\u0001K\u0006\u0005B%\nA\u0001^1jYV\ta\u0002C\u0003,\u0017\u0011\u0005C&\u0001\u0004fcV\fGn\u001d\u000b\u0003C5BQA\f\u0016A\u0002=\nA\u0001\u001e5biB\u0011!\u0003M\u0005\u0003c\u0019\u00111!\u00118z\u0011\u001d\u00194\"!A\u0005BQ\nQ\u0002\u001d:pIV\u001cG\u000f\u0015:fM&DX#A\u001b\u0011\u0005YZT\"A\u001c\u000b\u0005aJ\u0014\u0001\u00027b]\u001eT\u0011AO\u0001\u0005U\u00064\u0018-\u0003\u0002=o\t11\u000b\u001e:j]\u001eDqAP\u0006\u0002\u0002\u0013\u0005q(\u0001\u0007qe>$Wo\u0019;Be&$\u00180F\u0001A!\t\u0011\u0012)\u0003\u0002C\r\t\u0019\u0011J\u001c;\t\u000f\u0011[\u0011\u0011!C\u0001\u000b\u0006q\u0001O]8ek\u000e$X\t\\3nK:$HCA\u0018G\u0011\u001d95)!AA\u0002\u0001\u000b1\u0001\u001f\u00132\u0011\u001dI5\"!A\u0005B)\u000bq\u0002\u001d:pIV\u001cG/\u0013;fe\u0006$xN]\u000b\u0002\u0017B\u0019A*T\u0018\u000e\u0003\u0011I!A\u0014\u0003\u0003\u0011%#XM]1u_JDq\u0001U\u0006\u0002\u0002\u0013%\u0011+A\u0006sK\u0006$'+Z:pYZ,G#\u0001*\u0011\u0005Y\u001a\u0016B\u0001+8\u0005\u0019y%M[3di\"\"1BV-[!\t\u0011r+\u0003\u0002Y\r\t\u00012+\u001a:jC24VM]:j_:,\u0016\nR\u0001\u0006m\u0006dW/\u001a\u0010\t\u001b'\u0004_?OFH\u000b!\"\u0001AV-[\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Nil.class */
public final class Nil {
    public static <B> B $colon$bslash(B b, Function2<Nothing$, B, B> function2) {
        return (B) Nil$.MODULE$.$colon$bslash(b, function2);
    }

    public static <B> B $div$colon(B b, Function2<B, Nothing$, B> function2) {
        return (B) Nil$.MODULE$.$div$colon(b, function2);
    }

    public static <B, That> That $plus$colon(B b, CanBuildFrom<List<Nothing$>, B, That> canBuildFrom) {
        return (That) Nil$.MODULE$.$plus$colon(b, canBuildFrom);
    }

    public static <B, That> That $plus$plus(GenTraversableOnce<B> genTraversableOnce, CanBuildFrom<List<Nothing$>, B, That> canBuildFrom) {
        return (That) Nil$.MODULE$.$plus$plus(genTraversableOnce, canBuildFrom);
    }

    public static StringBuilder addString(StringBuilder stringBuilder) {
        return Nil$.MODULE$.addString(stringBuilder);
    }

    public static StringBuilder addString(StringBuilder stringBuilder, String str) {
        return Nil$.MODULE$.addString(stringBuilder, str);
    }

    public static StringBuilder addString(StringBuilder stringBuilder, String str, String str2, String str3) {
        return Nil$.MODULE$.addString(stringBuilder, str, str2, str3);
    }

    public static <B> B aggregate(Function0<B> function0, Function2<B, Nothing$, B> function2, Function2<B, B, B> function22) {
        return (B) Nil$.MODULE$.aggregate(function0, function2, function22);
    }

    public static <C> PartialFunction<Object, C> andThen(Function1<Nothing$, C> function1) {
        return Nil$.MODULE$.andThen((Function1) function1);
    }

    public static Object apply(int i) {
        return Nil$.MODULE$.apply(i);
    }

    public static Object applyOrElse(Object obj, Function1 function1) {
        return Nil$.MODULE$.applyOrElse(obj, function1);
    }

    public static boolean canEqual(Object obj) {
        return Nil$.MODULE$.canEqual(obj);
    }

    public static <B, That> That collect(PartialFunction<Nothing$, B> partialFunction, CanBuildFrom<List<Nothing$>, B, That> canBuildFrom) {
        return (That) Nil$.MODULE$.collect(partialFunction, canBuildFrom);
    }

    public static <B> Option<B> collectFirst(PartialFunction<Nothing$, B> partialFunction) {
        return Nil$.MODULE$.collectFirst(partialFunction);
    }

    public static Iterator<Seq<Nothing$>> combinations(int i) {
        return Nil$.MODULE$.combinations(i);
    }

    public static GenericCompanion<List> companion() {
        return Nil$.MODULE$.companion();
    }

    public static <A> Function1<A, Nothing$> compose(Function1<A, Object> function1) {
        return (Function1<A, Nothing$>) Nil$.MODULE$.compose(function1);
    }

    public static <A1> boolean contains(Object obj) {
        return Nil$.MODULE$.contains(obj);
    }

    public static <B> boolean containsSlice(GenSeq<B> genSeq) {
        return Nil$.MODULE$.containsSlice(genSeq);
    }

    public static <B> void copyToArray(Object obj) {
        Nil$.MODULE$.copyToArray(obj);
    }

    public static <B> void copyToArray(Object obj, int i) {
        Nil$.MODULE$.copyToArray(obj, i);
    }

    public static <B> void copyToArray(Object obj, int i, int i2) {
        Nil$.MODULE$.copyToArray(obj, i, i2);
    }

    public static <B> void copyToBuffer(Buffer<Object> buffer) {
        Nil$.MODULE$.copyToBuffer(buffer);
    }

    public static <B> boolean corresponds(GenSeq<B> genSeq, Function2<Nothing$, B, Object> function2) {
        return Nil$.MODULE$.corresponds(genSeq, function2);
    }

    public static int count(Function1<Nothing$, Object> function1) {
        return Nil$.MODULE$.count(function1);
    }

    public static Object diff(GenSeq genSeq) {
        return Nil$.MODULE$.diff(genSeq);
    }

    public static Object distinct() {
        return Nil$.MODULE$.distinct();
    }

    public static Object drop(int i) {
        return Nil$.MODULE$.drop(i);
    }

    /* renamed from: drop */
    public static List<Nothing$> m6125drop(int i) {
        return Nil$.MODULE$.drop(i);
    }

    public static Object dropRight(int i) {
        return Nil$.MODULE$.dropRight(i);
    }

    /* renamed from: dropRight */
    public static LinearSeqOptimized m6126dropRight(int i) {
        return Nil$.MODULE$.dropRight(i);
    }

    public static Object dropWhile(Function1 function1) {
        return Nil$.MODULE$.dropWhile(function1);
    }

    /* renamed from: dropWhile */
    public static List<Nothing$> m6127dropWhile(Function1<Nothing$, Object> function1) {
        return Nil$.MODULE$.dropWhile((Function1) function1);
    }

    public static <B> boolean endsWith(GenSeq<B> genSeq) {
        return Nil$.MODULE$.endsWith(genSeq);
    }

    public static boolean equals(Object obj) {
        return Nil$.MODULE$.equals(obj);
    }

    public static boolean exists(Function1<Nothing$, Object> function1) {
        return Nil$.MODULE$.exists(function1);
    }

    public static Object filter(Function1 function1) {
        return Nil$.MODULE$.filter(function1);
    }

    public static Object filterNot(Function1 function1) {
        return Nil$.MODULE$.filterNot(function1);
    }

    public static Option<Nothing$> find(Function1<Nothing$, Object> function1) {
        return Nil$.MODULE$.find(function1);
    }

    public static <B, That> That flatMap(Function1<Nothing$, GenTraversableOnce<B>> function1, CanBuildFrom<List<Nothing$>, B, That> canBuildFrom) {
        return (That) Nil$.MODULE$.flatMap(function1, canBuildFrom);
    }

    public static GenTraversable flatten(Function1 function1) {
        return Nil$.MODULE$.flatten(function1);
    }

    public static <A1> Object fold(Object obj, Function2<Object, Object, Object> function2) {
        return Nil$.MODULE$.fold(obj, function2);
    }

    public static <B> B foldLeft(B b, Function2<B, Nothing$, B> function2) {
        return (B) Nil$.MODULE$.foldLeft(b, function2);
    }

    public static <B> B foldRight(B b, Function2<Nothing$, B, B> function2) {
        return (B) Nil$.MODULE$.foldRight(b, function2);
    }

    public static boolean forall(Function1<Nothing$, Object> function1) {
        return Nil$.MODULE$.forall(function1);
    }

    public static <U> void foreach(Function1<Nothing$, U> function1) {
        Nil$.MODULE$.foreach(function1);
    }

    public static <B> Builder<B, Traversable<B>> genericBuilder() {
        return Nil$.MODULE$.genericBuilder();
    }

    public static <K> Map<K, Traversable<Nothing$>> groupBy(Function1<Nothing$, K> function1) {
        return Nil$.MODULE$.groupBy((Function1) function1);
    }

    public static Iterator<Iterable<Nothing$>> grouped(int i) {
        return Nil$.MODULE$.grouped(i);
    }

    public static boolean hasDefiniteSize() {
        return Nil$.MODULE$.hasDefiniteSize();
    }

    public static int hashCode() {
        return Nil$.MODULE$.hashCode();
    }

    public static Object head() {
        return Nil$.MODULE$.head();
    }

    /* renamed from: head */
    public static Nothing$ m6128head() {
        return Nil$.MODULE$.head();
    }

    public static Option<Nothing$> headOption() {
        return Nil$.MODULE$.headOption();
    }

    public static <B> int indexOf(Object obj) {
        return Nil$.MODULE$.indexOf(obj);
    }

    public static <B> int indexOf(Object obj, int i) {
        return Nil$.MODULE$.indexOf(obj, i);
    }

    public static <B> int indexOfSlice(GenSeq<Object> genSeq) {
        return Nil$.MODULE$.indexOfSlice(genSeq);
    }

    public static <B> int indexOfSlice(GenSeq<Object> genSeq, int i) {
        return Nil$.MODULE$.indexOfSlice(genSeq, i);
    }

    public static int indexWhere(Function1<Nothing$, Object> function1) {
        return Nil$.MODULE$.indexWhere(function1);
    }

    public static int indexWhere(Function1<Nothing$, Object> function1, int i) {
        return Nil$.MODULE$.indexWhere(function1, i);
    }

    public static Range indices() {
        return Nil$.MODULE$.indices();
    }

    public static Object init() {
        return Nil$.MODULE$.init();
    }

    public static Iterator<Traversable<Nothing$>> inits() {
        return Nil$.MODULE$.inits();
    }

    public static Object intersect(GenSeq genSeq) {
        return Nil$.MODULE$.intersect(genSeq);
    }

    public static boolean isDefinedAt(int i) {
        return Nil$.MODULE$.isDefinedAt(i);
    }

    public static boolean isEmpty() {
        return Nil$.MODULE$.isEmpty();
    }

    public static boolean isTraversableAgain() {
        return Nil$.MODULE$.isTraversableAgain();
    }

    public static Iterator<Nothing$> iterator() {
        return Nil$.MODULE$.iterator();
    }

    public static Object last() {
        return Nil$.MODULE$.last();
    }

    public static <B> int lastIndexOf(Object obj) {
        return Nil$.MODULE$.lastIndexOf(obj);
    }

    public static <B> int lastIndexOf(Object obj, int i) {
        return Nil$.MODULE$.lastIndexOf(obj, i);
    }

    public static <B> int lastIndexOfSlice(GenSeq<Object> genSeq) {
        return Nil$.MODULE$.lastIndexOfSlice(genSeq);
    }

    public static <B> int lastIndexOfSlice(GenSeq<Object> genSeq, int i) {
        return Nil$.MODULE$.lastIndexOfSlice(genSeq, i);
    }

    public static int lastIndexWhere(Function1<Nothing$, Object> function1) {
        return Nil$.MODULE$.lastIndexWhere(function1);
    }

    public static int lastIndexWhere(Function1<Nothing$, Object> function1, int i) {
        return Nil$.MODULE$.lastIndexWhere(function1, i);
    }

    public static Option<Nothing$> lastOption() {
        return Nil$.MODULE$.lastOption();
    }

    public static int length() {
        return Nil$.MODULE$.length();
    }

    public static int lengthCompare(int i) {
        return Nil$.MODULE$.lengthCompare(i);
    }

    public static Function1<Object, Option<Nothing$>> lift() {
        return Nil$.MODULE$.lift();
    }

    public static <B, That> That map(Function1<Nothing$, B> function1, CanBuildFrom<List<Nothing$>, B, That> canBuildFrom) {
        return (That) Nil$.MODULE$.map(function1, canBuildFrom);
    }

    public static <B> List<B> mapConserve(Function1<Nothing$, B> function1) {
        return Nil$.MODULE$.mapConserve(function1);
    }

    public static Object max(Ordering ordering) {
        return Nil$.MODULE$.max(ordering);
    }

    public static Object maxBy(Function1 function1, Ordering ordering) {
        return Nil$.MODULE$.maxBy(function1, ordering);
    }

    public static Object min(Ordering ordering) {
        return Nil$.MODULE$.min(ordering);
    }

    public static Object minBy(Function1 function1, Ordering ordering) {
        return Nil$.MODULE$.minBy(function1, ordering);
    }

    public static String mkString() {
        return Nil$.MODULE$.mkString();
    }

    public static String mkString(String str) {
        return Nil$.MODULE$.mkString(str);
    }

    public static String mkString(String str, String str2, String str3) {
        return Nil$.MODULE$.mkString(str, str2, str3);
    }

    public static Builder<Nothing$, Traversable<Nothing$>> newBuilder() {
        return Nil$.MODULE$.newBuilder();
    }

    public static boolean nonEmpty() {
        return Nil$.MODULE$.nonEmpty();
    }

    public static <A1, B1> PartialFunction<Object, Object> orElse(PartialFunction<Object, Object> partialFunction) {
        return Nil$.MODULE$.orElse(partialFunction);
    }

    public static <B, That> Object padTo(int i, Object obj, CanBuildFrom<Seq<Nothing$>, Object, Object> canBuildFrom) {
        return Nil$.MODULE$.padTo(i, obj, canBuildFrom);
    }

    public static Parallel par() {
        return Nil$.MODULE$.par();
    }

    public static Combiner<Nothing$, ParSeq<Nothing$>> parCombiner() {
        return Nil$.MODULE$.parCombiner();
    }

    public static Tuple2<Traversable<Nothing$>, Traversable<Nothing$>> partition(Function1<Nothing$, Object> function1) {
        return Nil$.MODULE$.partition(function1);
    }

    public static <B, That> Object patch(int i, GenSeq<Object> genSeq, int i2, CanBuildFrom<Seq<Nothing$>, Object, Object> canBuildFrom) {
        return Nil$.MODULE$.patch(i, genSeq, i2, canBuildFrom);
    }

    public static Iterator<Seq<Nothing$>> permutations() {
        return Nil$.MODULE$.permutations();
    }

    public static int prefixLength(Function1<Nothing$, Object> function1) {
        return Nil$.MODULE$.prefixLength(function1);
    }

    public static <B> Object product(Numeric<Object> numeric) {
        return Nil$.MODULE$.product(numeric);
    }

    public static int productArity() {
        return Nil$.MODULE$.productArity();
    }

    public static Object productElement(int i) {
        return Nil$.MODULE$.productElement(i);
    }

    public static Iterator<Object> productIterator() {
        return Nil$.MODULE$.productIterator();
    }

    public static String productPrefix() {
        return Nil$.MODULE$.productPrefix();
    }

    public static <A1> Object reduce(Function2<Object, Object, Object> function2) {
        return Nil$.MODULE$.reduce(function2);
    }

    public static <B> Object reduceLeft(Function2<Object, Nothing$, Object> function2) {
        return Nil$.MODULE$.reduceLeft(function2);
    }

    public static <B> Option<Object> reduceLeftOption(Function2<Object, Nothing$, Object> function2) {
        return Nil$.MODULE$.reduceLeftOption(function2);
    }

    public static <A1> Option<Object> reduceOption(Function2<Object, Object, Object> function2) {
        return Nil$.MODULE$.reduceOption(function2);
    }

    public static <B> Object reduceRight(Function2<Nothing$, Object, Object> function2) {
        return Nil$.MODULE$.reduceRight(function2);
    }

    public static <B> Option<Object> reduceRightOption(Function2<Nothing$, Object, Object> function2) {
        return Nil$.MODULE$.reduceRightOption(function2);
    }

    public static Object repr() {
        return Nil$.MODULE$.repr();
    }

    public static Object reverse() {
        return Nil$.MODULE$.reverse();
    }

    /* renamed from: reverse */
    public static List<Nothing$> m6129reverse() {
        return Nil$.MODULE$.reverse();
    }

    public static Iterator<Nothing$> reverseIterator() {
        return Nil$.MODULE$.reverseIterator();
    }

    public static <B, That> That reverseMap(Function1<Nothing$, B> function1, CanBuildFrom<Seq<Nothing$>, B, That> canBuildFrom) {
        return (That) Nil$.MODULE$.reverseMap(function1, canBuildFrom);
    }

    public static List<Nothing$> reversed() {
        return Nil$.MODULE$.reversed();
    }

    public static <U> Function1<Object, Object> runWith(Function1<Nothing$, U> function1) {
        return Nil$.MODULE$.runWith(function1);
    }

    public static <B> boolean sameElements(GenIterable<Object> genIterable) {
        return Nil$.MODULE$.sameElements(genIterable);
    }

    public static <B, That> Object scan(Object obj, Function2<Object, Object, Object> function2, CanBuildFrom<Traversable<Nothing$>, Object, Object> canBuildFrom) {
        return Nil$.MODULE$.scan(obj, function2, canBuildFrom);
    }

    public static <B, That> That scanLeft(B b, Function2<B, Nothing$, B> function2, CanBuildFrom<Traversable<Nothing$>, B, That> canBuildFrom) {
        return (That) Nil$.MODULE$.scanLeft(b, function2, canBuildFrom);
    }

    public static <B, That> That scanRight(B b, Function2<Nothing$, B, B> function2, CanBuildFrom<Traversable<Nothing$>, B, That> canBuildFrom) {
        return (That) Nil$.MODULE$.scanRight(b, function2, canBuildFrom);
    }

    public static int segmentLength(Function1<Nothing$, Object> function1, int i) {
        return Nil$.MODULE$.segmentLength(function1, i);
    }

    public static Iterable<Nothing$> seq() {
        return Nil$.MODULE$.seq();
    }

    /* renamed from: seq */
    public static Seq<Nothing$> m6130seq() {
        return Nil$.MODULE$.seq();
    }

    /* renamed from: seq */
    public static Traversable<Nothing$> m6131seq() {
        return Nil$.MODULE$.seq();
    }

    /* renamed from: seq */
    public static LinearSeq<Nothing$> m6132seq() {
        return Nil$.MODULE$.seq();
    }

    public static int size() {
        return Nil$.MODULE$.size();
    }

    public static Object slice(int i, int i2) {
        return Nil$.MODULE$.slice(i, i2);
    }

    /* renamed from: slice */
    public static List<Nothing$> m6133slice(int i, int i2) {
        return Nil$.MODULE$.slice(i, i2);
    }

    public static Iterator<Iterable<Nothing$>> sliding(int i) {
        return Nil$.MODULE$.sliding(i);
    }

    public static Iterator<Iterable<Nothing$>> sliding(int i, int i2) {
        return Nil$.MODULE$.sliding(i, i2);
    }

    public static Object sortBy(Function1 function1, Ordering ordering) {
        return Nil$.MODULE$.sortBy(function1, ordering);
    }

    public static Object sortWith(Function2 function2) {
        return Nil$.MODULE$.sortWith(function2);
    }

    public static Object sorted(Ordering ordering) {
        return Nil$.MODULE$.sorted(ordering);
    }

    public static Tuple2<List<Nothing$>, List<Nothing$>> span(Function1<Nothing$, Object> function1) {
        return Nil$.MODULE$.span(function1);
    }

    public static Tuple2<List<Nothing$>, List<Nothing$>> splitAt(int i) {
        return Nil$.MODULE$.splitAt(i);
    }

    public static <B> boolean startsWith(GenSeq<B> genSeq) {
        return Nil$.MODULE$.startsWith(genSeq);
    }

    public static <B> boolean startsWith(GenSeq<B> genSeq, int i) {
        return Nil$.MODULE$.startsWith(genSeq, i);
    }

    public static String stringPrefix() {
        return Nil$.MODULE$.stringPrefix();
    }

    public static <B> Object sum(Numeric<Object> numeric) {
        return Nil$.MODULE$.sum(numeric);
    }

    public static Object tail() {
        return Nil$.MODULE$.tail();
    }

    /* renamed from: tail */
    public static List<Nothing$> m6134tail() {
        return Nil$.MODULE$.tail();
    }

    public static Iterator<Traversable<Nothing$>> tails() {
        return Nil$.MODULE$.tails();
    }

    public static Object take(int i) {
        return Nil$.MODULE$.take(i);
    }

    /* renamed from: take */
    public static List<Nothing$> m6135take(int i) {
        return Nil$.MODULE$.take(i);
    }

    public static Object takeRight(int i) {
        return Nil$.MODULE$.takeRight(i);
    }

    /* renamed from: takeRight */
    public static List<Nothing$> m6136takeRight(int i) {
        return Nil$.MODULE$.takeRight(i);
    }

    public static Object takeWhile(Function1 function1) {
        return Nil$.MODULE$.takeWhile(function1);
    }

    /* renamed from: takeWhile */
    public static List<Nothing$> m6137takeWhile(Function1<Nothing$, Object> function1) {
        return Nil$.MODULE$.takeWhile((Function1) function1);
    }

    public static Iterable<Nothing$> thisCollection() {
        return Nil$.MODULE$.thisCollection();
    }

    /* renamed from: thisCollection */
    public static LinearSeq<Nothing$> m6138thisCollection() {
        return Nil$.MODULE$.thisCollection();
    }

    /* renamed from: thisCollection */
    public static Seq<Nothing$> m6139thisCollection() {
        return Nil$.MODULE$.thisCollection();
    }

    /* renamed from: thisCollection */
    public static Traversable<Nothing$> m6140thisCollection() {
        return Nil$.MODULE$.thisCollection();
    }

    /* renamed from: to */
    public static <Col> Col m156to(CanBuildFrom<Nothing$, Nothing$, Col> canBuildFrom) {
        return (Col) Nil$.MODULE$.mo1to(canBuildFrom);
    }

    public static Object toArray(ClassTag classTag) {
        return Nil$.MODULE$.toArray(classTag);
    }

    public static <B> Buffer<Object> toBuffer() {
        return Nil$.MODULE$.toBuffer();
    }

    public static Iterable toCollection(Object obj) {
        return Nil$.MODULE$.toCollection(obj);
    }

    public static LinearSeq toCollection(LinearSeqLike linearSeqLike) {
        return Nil$.MODULE$.toCollection(linearSeqLike);
    }

    /* renamed from: toCollection */
    public static Seq m6141toCollection(Object obj) {
        return Nil$.MODULE$.toCollection(obj);
    }

    /* renamed from: toCollection */
    public static Traversable m6142toCollection(Object obj) {
        return Nil$.MODULE$.toCollection(obj);
    }

    public static IndexedSeq<Nothing$> toIndexedSeq() {
        return Nil$.MODULE$.toIndexedSeq();
    }

    public static Iterable<Nothing$> toIterable() {
        return Nil$.MODULE$.toIterable();
    }

    public static Iterator<Nothing$> toIterator() {
        return Nil$.MODULE$.toIterator();
    }

    public static List<Nothing$> toList() {
        return Nil$.MODULE$.toList();
    }

    public static <T, U> Map<T, U> toMap(Predef$$less$colon$less<Nothing$, Tuple2<T, U>> predef$$less$colon$less) {
        return Nil$.MODULE$.toMap((Predef$$less$colon$less) predef$$less$colon$less);
    }

    public static Seq<Nothing$> toSeq() {
        return Nil$.MODULE$.toSeq();
    }

    /* renamed from: toSeq */
    public static Seq<Nothing$> m6143toSeq() {
        return Nil$.MODULE$.toSeq();
    }

    public static <B> Set<Object> toSet() {
        return Nil$.MODULE$.toSet();
    }

    public static Stream<Nothing$> toStream() {
        return Nil$.MODULE$.toStream();
    }

    public static String toString() {
        return Nil$.MODULE$.toString();
    }

    public static Traversable<Nothing$> toTraversable() {
        return Nil$.MODULE$.toTraversable();
    }

    public static Vector<Nothing$> toVector() {
        return Nil$.MODULE$.toVector();
    }

    public static GenTraversable transpose(Function1 function1) {
        return Nil$.MODULE$.transpose(function1);
    }

    public static <B, That> Object union(GenSeq<Object> genSeq, CanBuildFrom<Seq<Nothing$>, Object, Object> canBuildFrom) {
        return Nil$.MODULE$.union(genSeq, canBuildFrom);
    }

    public static <A1, A2> Tuple2<Traversable<A1>, Traversable<A2>> unzip(Function1<Nothing$, Tuple2<A1, A2>> function1) {
        return (Tuple2<Traversable<A1>, Traversable<A2>>) Nil$.MODULE$.unzip(function1);
    }

    public static <A1, A2, A3> Tuple3<Traversable<A1>, Traversable<A2>, Traversable<A3>> unzip3(Function1<Nothing$, Tuple3<A1, A2, A3>> function1) {
        return (Tuple3<Traversable<A1>, Traversable<A2>, Traversable<A3>>) Nil$.MODULE$.unzip3(function1);
    }

    public static <B, That> Object updated(int i, Object obj, CanBuildFrom<Seq<Nothing$>, Object, Object> canBuildFrom) {
        return Nil$.MODULE$.updated(i, obj, canBuildFrom);
    }

    public static Object view() {
        return Nil$.MODULE$.view();
    }

    public static IterableView<Nothing$, Iterable<Nothing$>> view(int i, int i2) {
        return Nil$.MODULE$.view(i, i2);
    }

    /* renamed from: view */
    public static Object m6144view() {
        return Nil$.MODULE$.view();
    }

    /* renamed from: view */
    public static SeqView<Nothing$, Seq<Nothing$>> m6145view(int i, int i2) {
        return Nil$.MODULE$.view(i, i2);
    }

    /* renamed from: view */
    public static Object m6146view() {
        return Nil$.MODULE$.view();
    }

    /* renamed from: view */
    public static TraversableView<Nothing$, Traversable<Nothing$>> m6147view(int i, int i2) {
        return Nil$.MODULE$.view(i, i2);
    }

    public static FilterMonadic<Nothing$, Traversable<Nothing$>> withFilter(Function1<Nothing$, Object> function1) {
        return Nil$.MODULE$.withFilter(function1);
    }

    public static <A1, B, That> Object zip(GenIterable<Object> genIterable, CanBuildFrom<Iterable<Nothing$>, Tuple2<Object, Object>, Object> canBuildFrom) {
        return Nil$.MODULE$.zip(genIterable, canBuildFrom);
    }

    public static <B, A1, That> Object zipAll(GenIterable<Object> genIterable, Object obj, Object obj2, CanBuildFrom<Iterable<Nothing$>, Tuple2<Object, Object>, Object> canBuildFrom) {
        return Nil$.MODULE$.zipAll(genIterable, obj, obj2, canBuildFrom);
    }

    public static <A1, That> Object zipWithIndex(CanBuildFrom<Iterable<Nothing$>, Tuple2<Object, Object>, Object> canBuildFrom) {
        return Nil$.MODULE$.zipWithIndex(canBuildFrom);
    }
}
