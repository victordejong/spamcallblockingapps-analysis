package scala.collection.mutable;

import scala.Function1;
import scala.Function2;
import scala.Option;
import scala.Predef$;
import scala.Tuple2;
import scala.collection.GenIterable;
import scala.collection.GenSeq;
import scala.collection.IndexedSeq;
import scala.collection.IndexedSeqLike;
import scala.collection.IndexedSeqOptimized;
import scala.collection.IterableLike;
import scala.collection.IterableViewLike;
import scala.collection.Iterator;
import scala.collection.SeqLike;
import scala.collection.SeqView;
import scala.collection.SeqViewLike;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.TraversableViewLike;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.SliceInterval;
import scala.collection.generic.SliceInterval$;
import scala.collection.mutable.Cloneable;
import scala.collection.mutable.IndexedSeq;
import scala.collection.mutable.IndexedSeqLike;
import scala.collection.mutable.Iterable;
import scala.collection.mutable.Seq;
import scala.collection.mutable.SeqLike;
import scala.collection.mutable.Traversable;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.mutable.ParSeq;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.RichInt$;
@ScalaSignature(bytes = "\u0006\u0001\t-d\u0001C\u0001\u0003!\u0003\r\t!C\u0011\u0003\u001d%sG-\u001a=fIN+\u0017OV5fo*\u00111\u0001B\u0001\b[V$\u0018M\u00197f\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\fG.Y\u0002\u0001+\rQQcI\n\u0007\u0001-ya$J\u0015\u0011\u00051iQ\"\u0001\u0004\n\u000591!AB!osJ+g\rE\u0002\u0011#Mi\u0011AA\u0005\u0003%\t\u0011!\"\u00138eKb,GmU3r!\t!R\u0003\u0004\u0001\u0005\u000bY\u0001!\u0019A\f\u0003\u0003\u0005\u000b\"\u0001G\u000e\u0011\u00051I\u0012B\u0001\u000e\u0007\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"\u0001\u0004\u000f\n\u0005u1!aA!osB!\u0001cH\n\"\u0013\t\u0001#AA\nJ]\u0012,\u00070\u001a3TKF|\u0005\u000f^5nSj,G\r\u0005\u0003\u0011\u0001M\u0011\u0003C\u0001\u000b$\t\u0019!\u0003\u0001\"b\u0001/\t!1i\u001c7m!\u00111se\u0005\u0012\u000e\u0003\u0011I!\u0001\u000b\u0003\u0003\u000fM+\u0017OV5foB)aEK\n#C%\u00111\u0006\u0002\u0002\f'\u0016\fh+[3x\u0019&\\W\rC\u0003.\u0001\u0011\u0005a&\u0001\u0004%S:LG\u000f\n\u000b\u0002_A\u0011A\u0002M\u0005\u0003c\u0019\u0011A!\u00168ji\u001611\u0007\u0001Q\u0001\n\u0005\u0012A\u0001\u00165jg\")Q\u0007\u0001D\u0001m\u00051Q\u000f\u001d3bi\u0016$2aL\u001c=\u0011\u0015AD\u00071\u0001:\u0003\rIG\r\u001f\t\u0003\u0019iJ!a\u000f\u0004\u0003\u0007%sG\u000fC\u0003>i\u0001\u00071#\u0001\u0003fY\u0016lgaB \u0001!\u0003\r\t\u0001\u0011\u0002\f)J\fgn\u001d4pe6,G-\u0006\u0002B\tN!ah\u0003\"G!\u0011\u0001\u0002a\u0011\u0012\u0011\u0005Q!E!B#?\u0005\u00049\"!\u0001\"\u0011\u0007\u001dC5)D\u0001\u0001\u0013\ty$\u0006C\u0003.}\u0011\u0005a\u0006C\u00036}\u0019\u00051\nF\u00020\u00196CQ\u0001\u000f&A\u0002eBQ!\u0010&A\u0002\rCQa\u0014 \u0005BA\u000b\u0001\u0002^8TiJLgn\u001a\u000b\u0002#B\u0011!kV\u0007\u0002'*\u0011A+V\u0001\u0005Y\u0006twMC\u0001W\u0003\u0011Q\u0017M^1\n\u0005a\u001b&AB*ue&twM\u0002\u0004[\u0001\u0005\u0005Aa\u0017\u0002\u0014\u0003\n\u001cHO]1diR\u0013\u0018M\\:g_JlW\rZ\u000b\u00039\u0002\u001c2!W/b!\r9elX\u0005\u00035*\u0002\"\u0001\u00061\u0005\u000b\u0015K&\u0019A\f\u0011\u0007\u001dst\fC\u0003d3\u0012\u0005A-\u0001\u0004=S:LGO\u0010\u000b\u0002KB\u0019q)W0\u0007\u000f\u001d\u0004\u0001\u0013aA\u0001Q\n11\u000b\\5dK\u0012\u001cBAZ\u0006jWB\u0011qI[\u0005\u0003O*\u00022a\u0012 \u0014\u0011\u0015ic\r\"\u0001/\u0011\u0015qg\r\"\u0011p\u0003\u0019aWM\\4uQV\t\u0011\bC\u00036M\u0012\u0005\u0011\u000fF\u00020eNDQ\u0001\u000f9A\u0002eBQ!\u00109A\u0002M1q!\u001e\u0001\u0011\u0002\u0007\u0005aO\u0001\u0005GS2$XM]3e'\u0011!8b^6\u0011\u0005\u001dC\u0018BA;+\u0011\u0015iC\u000f\"\u0001/\u0011\u0015)D\u000f\"\u0001|)\ryC0 \u0005\u0006qi\u0004\r!\u000f\u0005\u0006{i\u0004\ra\u0005\u0004\t\u007f\u0002\u0001\n1!\u0001\u0002\u0002\tQA+Y6f]^C\u0017\u000e\\3\u0014\u000by\\\u00111A6\u0011\u0007\u001d\u000b)!\u0003\u0002��U!)QF C\u0001]!1QG C\u0001\u0003\u0017!RaLA\u0007\u0003\u001fAa\u0001OA\u0005\u0001\u0004I\u0004BB\u001f\u0002\n\u0001\u00071CB\u0005\u0002\u0014\u0001\u0001\n1!\u0001\u0002\u0016\taAI]8qa\u0016$w\u000b[5mKN1\u0011\u0011C\u0006\u0002\u0018-\u00042aRA\r\u0013\r\t\u0019B\u000b\u0005\u0007[\u0005EA\u0011\u0001\u0018\t\u000fU\n\t\u0002\"\u0001\u0002 Q)q&!\t\u0002$!1\u0001(!\bA\u0002eBa!PA\u000f\u0001\u0004\u0019b!CA\u0014\u0001A\u0005\u0019\u0011AA\u0015\u0005!\u0011VM^3sg\u0016$7CBA\u0013\u0017\u0005-2\u000eE\u0002H\u0003[I1!a\n+\u0011\u0019i\u0013Q\u0005C\u0001]!9Q'!\n\u0005\u0002\u0005MB#B\u0018\u00026\u0005]\u0002B\u0002\u001d\u00022\u0001\u0007\u0011\b\u0003\u0004>\u0003c\u0001\ra\u0005\u0005\b\u0003w\u0001A\u0011KA\u001f\u0003-qWm\u001e$jYR,'/\u001a3\u0015\u0007-\fy\u0004\u0003\u0005\u0002B\u0005e\u0002\u0019AA\"\u0003\u0005\u0001\bC\u0002\u0007\u0002FM\tI%C\u0002\u0002H\u0019\u0011\u0011BR;oGRLwN\\\u0019\u0011\u00071\tY%C\u0002\u0002N\u0019\u0011qAQ8pY\u0016\fg\u000eC\u0004\u0002R\u0001!\t&a\u0015\u0002\u00139,wo\u00157jG\u0016$GcA6\u0002V!A\u0011qKA(\u0001\u0004\tI&\u0001\u0006`K:$\u0007o\\5oiN\u0004B!a\u0017\u0002b5\u0011\u0011Q\f\u0006\u0004\u0003?\"\u0011aB4f]\u0016\u0014\u0018nY\u0005\u0005\u0003G\niFA\u0007TY&\u001cW-\u00138uKJ4\u0018\r\u001c\u0005\b\u0003O\u0002A\u0011KA5\u0003=qWm\u001e#s_B\u0004X\rZ,iS2,GcA6\u0002l!A\u0011\u0011IA3\u0001\u0004\t\u0019\u0005C\u0004\u0002p\u0001!\t&!\u001d\u0002\u001b9,w\u000fV1lK:<\u0006.\u001b7f)\rY\u00171\u000f\u0005\t\u0003\u0003\ni\u00071\u0001\u0002D!9\u0011q\u000f\u0001\u0005R\u0005e\u0014a\u00038foJ+g/\u001a:tK\u0012,\u0012a\u001b\u0005\b\u0003{\u0002A\u0011IA@\u0003\u00191\u0017\u000e\u001c;feR!\u0011\u0011QAB!\t9%\u0007\u0003\u0005\u0002B\u0005m\u0004\u0019AA\"\u0011\u001d\t9\t\u0001C!\u0003\u0013\u000bA!\u001b8jiV\u0011\u0011\u0011\u0011\u0005\b\u0003\u001b\u0003A\u0011IAH\u0003\u0011!'o\u001c9\u0015\t\u0005\u0005\u0015\u0011\u0013\u0005\b\u0003'\u000bY\t1\u0001:\u0003\u0005q\u0007bBAL\u0001\u0011\u0005\u0013\u0011T\u0001\u0005i\u0006\\W\r\u0006\u0003\u0002\u0002\u0006m\u0005bBAJ\u0003+\u0003\r!\u000f\u0005\b\u0003?\u0003A\u0011IAQ\u0003\u0015\u0019H.[2f)\u0019\t\t)a)\u0002(\"9\u0011QUAO\u0001\u0004I\u0014\u0001\u00024s_6Dq!!+\u0002\u001e\u0002\u0007\u0011(A\u0003v]RLG\u000eC\u0004\u0002.\u0002!\t%a,\u0002\u0013\u0011\u0014x\u000e],iS2,G\u0003BAA\u0003cC\u0001\"!\u0011\u0002,\u0002\u0007\u00111\t\u0005\b\u0003k\u0003A\u0011IA\\\u0003%!\u0018m[3XQ&dW\r\u0006\u0003\u0002\u0002\u0006e\u0006\u0002CA!\u0003g\u0003\r!a\u0011\t\u000f\u0005u\u0006\u0001\"\u0011\u0002@\u0006!1\u000f]1o)\u0011\t\t-a2\u0011\u000f1\t\u0019-!!\u0002\u0002&\u0019\u0011Q\u0019\u0004\u0003\rQ+\b\u000f\\33\u0011!\t\t%a/A\u0002\u0005\r\u0003bBAf\u0001\u0011\u0005\u0013QZ\u0001\bgBd\u0017\u000e^!u)\u0011\t\t-a4\t\u000f\u0005M\u0015\u0011\u001aa\u0001s!9\u00111\u001b\u0001\u0005B\u0005%\u0015a\u0002:fm\u0016\u00148/\u001a\u0005\b\u0003/\u0004A\u0011IAm\u0003\u0011!\u0018-\u001b7\u0016\u0003\u0005Ba\"!8\u0001!\u0003\r\t\u0011!C\u0005\u00033\fy.\u0001\u0006tkB,'\u000f\n;bS2LA!a6\u0002b&\u0019\u00111\u001d\u0003\u0003'Q\u0013\u0018M^3sg\u0006\u0014G.\u001a,jK^d\u0015n[3\b\u000f\u0005\u001d(\u0001#\u0001\u0002j\u0006q\u0011J\u001c3fq\u0016$7+Z9WS\u0016<\bc\u0001\t\u0002l\u001a1\u0011A\u0001E\u0001\u0003[\u001c2!a;\f\u0011\u001d\u0019\u00171\u001eC\u0001\u0003c$\"!!;\u0006\r\u0011\nY\u000fAA{a\u0019\t9P!\u0002\u0002��B9a%!?\u0002~\n\r\u0011bAA~\t\tyAK]1wKJ\u001c\u0018M\u00197f-&,w\u000fE\u0002\u0015\u0003\u007f$1B!\u0001\u0002t\u0006\u0005\t\u0011!B\u0001/\t\u0019q\fJ\u0019\u0011\u0007Q\u0011)\u0001\u0002\u0007\u0003\b\u0005M\u0018\u0011!A\u0001\u0006\u0003\u0011IAA\u0001D#\rA\"1\u0002\u0019\u0005\u0005\u001b\u0011)\u0002E\u0003\u0011\u0005\u001f\u0011\u0019\"C\u0002\u0003\u0012\t\u00111\u0002\u0016:bm\u0016\u00148/\u00192mKB\u0019AC!\u0006\u0005\u0017\t]!\u0011DA\u0001\u0002\u0003\u0015\ta\u0006\u0002\u0004?\u0012\u0012D\u0001\u0004B\u0004\u0003g\f\t\u0011!A\u0003\u0002\t%\u0001\u0002\u0003B\u000f\u0003W$\u0019Aa\b\u0002\u0019\r\fgNQ;jY\u00124%o\\7\u0016\t\t\u0005\"qF\u000b\u0003\u0005G\u0001\"\"a\u0017\u0003&\t%\"Q\u0006B\u0019\u0013\u0011\u00119#!\u0018\u0003\u0019\r\u000bgNQ;jY\u00124%o\\7\u0011\t\t-\u00121_\u0007\u0003\u0003W\u00042\u0001\u0006B\u0018\t\u00191\"1\u0004b\u0001/A1ae\nB\u0017\u0005g\u0001DA!\u000e\u0003>A)\u0001Ca\u000e\u0003<%\u0019!\u0011\b\u0002\u0003\u0007M+\u0017\u000fE\u0002\u0015\u0005{!1Ba\u0010\u0003\u001c\u0005\u0005\t\u0011!B\u0001/\t\u0019q\fJ\u001a\t\u0011\t\r\u00131\u001eC\u0002\u0005\u000b\nq\"\u0019:s\u0007\u0006t')^5mI\u001a\u0013x.\\\u000b\u0005\u0005\u000f\u0012)'\u0006\u0002\u0003JAQ\u00111\fB\u0013\u0005\u0017\u0012\u0019Ga\u001a1\t\t5#\u0011\u000b\t\bM\u0005e(q\nB+!\r!\"\u0011\u000b\u0003\f\u0005'\u0012\t%!A\u0001\u0002\u000b\u0005qCA\u0002`IU\u0002DAa\u0016\u0003`A)AB!\u0017\u0003^%\u0019!1\f\u0004\u0003\u000b\u0005\u0013(/Y=\u0011\u0007Q\u0011y\u0006B\u0006\u0003b\t\u0005\u0013\u0011!A\u0001\u0006\u00039\"aA0%mA\u0019AC!\u001a\u0005\rY\u0011\tE1\u0001\u0018!\u00191sEa\u0019\u0003jA)AB!\u0017\u0003d\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/IndexedSeqView.class */
public interface IndexedSeqView<A, Coll> extends IndexedSeq<A>, IndexedSeqOptimized<A, IndexedSeqView<A, Coll>>, SeqView<A, Coll> {

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/IndexedSeqView$AbstractTransformed.class */
    public abstract class AbstractTransformed<B> extends SeqViewLike<A, Coll, IndexedSeqView<A, Coll>>.AbstractTransformed<B> implements IndexedSeqView<A, Coll>.Transformed<B> {
        public AbstractTransformed(IndexedSeqView<A, Coll> indexedSeqView) {
            super(indexedSeqView);
            Traversable.Cclass.$init$(this);
            Iterable.Cclass.$init$(this);
            Cloneable.Cclass.$init$(this);
            SeqLike.Cclass.$init$(this);
            Seq.Cclass.$init$(this);
            IndexedSeqLike.Cclass.$init$(this);
            IndexedSeq.Cclass.$init$(this);
            IndexedSeqLike.Cclass.$init$(this);
            IndexedSeq.Cclass.$init$(this);
            IndexedSeqOptimized.Cclass.$init$(this);
            Cclass.$init$(this);
            Transformed.Cclass.$init$(this);
        }

        @Override // scala.collection.mutable.Cloneable
        public Object clone() {
            return Cloneable.Cclass.clone(this);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.Seq, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public GenericCompanion<IndexedSeq> companion() {
            return IndexedSeq.Cclass.companion(this);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <B> void copyToArray(Object obj, int i, int i2) {
            IndexedSeqOptimized.Cclass.copyToArray(this, obj, i, i2);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
        public IndexedSeqView<B, Coll> drop(int i) {
            return Cclass.drop(this, i);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.IterableLike
        public Object dropRight(int i) {
            return IndexedSeqOptimized.Cclass.dropRight(this, i);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public IndexedSeqView<B, Coll> dropWhile(Function1<B, Object> function1) {
            return Cclass.dropWhile(this, function1);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.GenSeqLike, scala.collection.SeqLike
        public <B> boolean endsWith(GenSeq<B> genSeq) {
            return IndexedSeqOptimized.Cclass.endsWith(this, genSeq);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean exists(Function1<B, Object> function1) {
            return IndexedSeqOptimized.Cclass.exists(this, function1);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public IndexedSeqView<B, Coll> filter(Function1<B, Object> function1) {
            return Cclass.filter(this, function1);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Option<B> find(Function1<B, Object> function1) {
            return IndexedSeqOptimized.Cclass.find(this, function1);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B foldLeft(B b, Function2<B, B, B> function2) {
            return (B) IndexedSeqOptimized.Cclass.foldLeft(this, b, function2);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <B> B foldRight(B b, Function2<B, B, B> function2) {
            return (B) IndexedSeqOptimized.Cclass.foldRight(this, b, function2);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean forall(Function1<B, Object> function1) {
            return IndexedSeqOptimized.Cclass.forall(this, function1);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <U> void foreach(Function1<B, U> function1) {
            IndexedSeqOptimized.Cclass.foreach(this, function1);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.GenSeqLike
        public int hashCode() {
            return IndexedSeqLike.Cclass.hashCode(this);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public B head() {
            return (B) IndexedSeqOptimized.Cclass.head(this);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.GenSeqLike, scala.collection.SeqLike
        public int indexWhere(Function1<B, Object> function1, int i) {
            return IndexedSeqOptimized.Cclass.indexWhere(this, function1, i);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public IndexedSeqView<B, Coll> init() {
            return Cclass.init(this);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.PartialFunction
        public /* bridge */ /* synthetic */ boolean isDefinedAt(Object obj) {
            return isDefinedAt(BoxesRunTime.unboxToInt(obj));
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public boolean isEmpty() {
            return IndexedSeqOptimized.Cclass.isEmpty(this);
        }

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        public Iterator<B> iterator() {
            return IndexedSeqLike.Cclass.iterator(this);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public B last() {
            return (B) IndexedSeqOptimized.Cclass.last(this);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.GenSeqLike, scala.collection.SeqLike
        public int lastIndexWhere(Function1<B, Object> function1, int i) {
            return IndexedSeqOptimized.Cclass.lastIndexWhere(this, function1, i);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.SeqLike
        public int lengthCompare(int i) {
            return IndexedSeqOptimized.Cclass.lengthCompare(this, i);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
        public IndexedSeqView<B, Coll>.Transformed<B> newDroppedWhile(Function1<B, Object> function1) {
            return Cclass.newDroppedWhile(this, function1);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
        public IndexedSeqView<B, Coll>.Transformed<B> newFiltered(Function1<B, Object> function1) {
            return Cclass.newFiltered(this, function1);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.SeqViewLike
        public IndexedSeqView<B, Coll>.Transformed<B> newReversed() {
            return Cclass.newReversed(this);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
        public IndexedSeqView<B, Coll>.Transformed<B> newSliced(SliceInterval sliceInterval) {
            return Cclass.newSliced(this, sliceInterval);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
        public IndexedSeqView<B, Coll>.Transformed<B> newTakenWhile(Function1<B, Object> function1) {
            return Cclass.newTakenWhile(this, function1);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
        public Combiner<B, ParSeq<B>> parCombiner() {
            return SeqLike.Cclass.parCombiner(this);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableOnce
        public <B> B reduceLeft(Function2<B, B, B> function2) {
            return (B) IndexedSeqOptimized.Cclass.reduceLeft(this, function2);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <B> B reduceRight(Function2<B, B, B> function2) {
            return (B) IndexedSeqOptimized.Cclass.reduceRight(this, function2);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
        public IndexedSeqView<B, Coll> reverse() {
            return Cclass.reverse(this);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.SeqLike
        public Iterator<B> reverseIterator() {
            return IndexedSeqOptimized.Cclass.reverseIterator(this);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.GenIterableLike, scala.collection.IterableLike
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
            return TraversableViewLike.Cclass.init(this);
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
            return TraversableViewLike.Cclass.tail(this);
        }

        @Override // scala.collection.IndexedSeqOptimized
        public /* synthetic */ Object scala$collection$IndexedSeqOptimized$$super$zip(GenIterable genIterable, CanBuildFrom canBuildFrom) {
            return IterableViewLike.Cclass.zip(this, genIterable, canBuildFrom);
        }

        @Override // scala.collection.mutable.Cloneable
        public /* synthetic */ Object scala$collection$mutable$Cloneable$$super$clone() {
            return super.clone();
        }

        @Override // scala.collection.mutable.IndexedSeqView
        public /* synthetic */ IndexedSeqView scala$collection$mutable$IndexedSeqView$$super$tail() {
            return (IndexedSeqView) IndexedSeqOptimized.Cclass.tail(this);
        }

        /* renamed from: scala$collection$mutable$IndexedSeqView$AbstractTransformed$$$outer */
        public /* synthetic */ IndexedSeqView scala$collection$mutable$IndexedSeqView$Transformed$$$outer() {
            return (IndexedSeqView) this.$outer;
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.GenSeqLike, scala.collection.SeqLike
        public int segmentLength(Function1<B, Object> function1, int i) {
            return IndexedSeqOptimized.Cclass.segmentLength(this, function1, i);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.Seq, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public IndexedSeq<B> seq() {
            return IndexedSeq.Cclass.seq(this);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
        public IndexedSeqView<B, Coll> slice(int i, int i2) {
            return Cclass.slice(this, i, i2);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public Tuple2<IndexedSeqView<B, Coll>, IndexedSeqView<B, Coll>> span(Function1<B, Object> function1) {
            return Cclass.span(this, function1);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public Tuple2<IndexedSeqView<B, Coll>, IndexedSeqView<B, Coll>> splitAt(int i) {
            return Cclass.splitAt(this, i);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.GenSeqLike, scala.collection.SeqLike
        public <B> boolean startsWith(GenSeq<B> genSeq, int i) {
            return IndexedSeqOptimized.Cclass.startsWith(this, genSeq, i);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableLike, scala.collection.GenTraversableLike
        public IndexedSeqView<B, Coll> tail() {
            return Cclass.tail(this);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
        public IndexedSeqView<B, Coll> take(int i) {
            return Cclass.take(this, i);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.IterableLike
        public Object takeRight(int i) {
            return IndexedSeqOptimized.Cclass.takeRight(this, i);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
        public IndexedSeqView<B, Coll> takeWhile(Function1<B, Object> function1) {
            return Cclass.takeWhile(this, function1);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableLike, scala.collection.IterableLike
        public IndexedSeq<B> thisCollection() {
            return IndexedSeqLike.Cclass.thisCollection(this);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <A1> Buffer<A1> toBuffer() {
            return IndexedSeqLike.Cclass.toBuffer(this);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableLike, scala.collection.IterableLike
        public IndexedSeq toCollection(Object obj) {
            return IndexedSeqLike.Cclass.toCollection(this, obj);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.SeqViewLike.Transformed, scala.Function1
        public String toString() {
            return Transformed.Cclass.toString(this);
        }

        @Override // scala.collection.mutable.SeqLike
        public SeqLike<B, Seq<B>> transform(Function1<B, B> function1) {
            return SeqLike.Cclass.transform(this, function1);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableLike, scala.collection.IterableLike
        public Object view() {
            return IndexedSeqLike.Cclass.view(this);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableLike, scala.collection.IterableLike
        public IndexedSeqView<B, IndexedSeqView<B, Coll>> view(int i, int i2) {
            return IndexedSeqLike.Cclass.view(this, i, i2);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.GenIterableLike, scala.collection.IterableLike
        public <A1, B, That> That zip(GenIterable<B> genIterable, CanBuildFrom<IndexedSeqView<B, Coll>, Tuple2<A1, B>, That> canBuildFrom) {
            return (That) IndexedSeqOptimized.Cclass.zip(this, genIterable, canBuildFrom);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.GenIterableLike, scala.collection.IterableLike
        public <A1, That> That zipWithIndex(CanBuildFrom<IndexedSeqView<B, Coll>, Tuple2<A1, Object>, That> canBuildFrom) {
            return (That) IndexedSeqOptimized.Cclass.zipWithIndex(this, canBuildFrom);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/IndexedSeqView$DroppedWhile.class */
    public interface DroppedWhile extends SeqViewLike<A, Coll, IndexedSeqView<A, Coll>>.DroppedWhile, IndexedSeqView<A, Coll>.Transformed<A> {

        /* renamed from: scala.collection.mutable.IndexedSeqView$DroppedWhile$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/IndexedSeqView$DroppedWhile$class.class */
        public abstract class Cclass {
            public static void $init$(DroppedWhile droppedWhile) {
            }

            public static void update(DroppedWhile droppedWhile, int i, Object obj) {
                if (i >= 0) {
                    droppedWhile.scala$collection$mutable$IndexedSeqView$DroppedWhile$$$outer().update(i + droppedWhile.start(), obj);
                    return;
                }
                throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
            }
        }

        /* synthetic */ IndexedSeqView scala$collection$mutable$IndexedSeqView$DroppedWhile$$$outer();

        @Override // scala.collection.mutable.IndexedSeqView.Transformed, scala.collection.mutable.IndexedSeqView, scala.collection.mutable.SeqLike, scala.collection.mutable.BufferLike
        void update(int i, A a);
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/IndexedSeqView$Filtered.class */
    public interface Filtered extends SeqViewLike<A, Coll, IndexedSeqView<A, Coll>>.Filtered, IndexedSeqView<A, Coll>.Transformed<A> {

        /* renamed from: scala.collection.mutable.IndexedSeqView$Filtered$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/IndexedSeqView$Filtered$class.class */
        public abstract class Cclass {
            public static void $init$(Filtered filtered) {
            }

            public static void update(Filtered filtered, int i, Object obj) {
                filtered.scala$collection$mutable$IndexedSeqView$Filtered$$$outer().update(filtered.index()[i], obj);
            }
        }

        /* synthetic */ IndexedSeqView scala$collection$mutable$IndexedSeqView$Filtered$$$outer();

        @Override // scala.collection.mutable.IndexedSeqView.Transformed, scala.collection.mutable.IndexedSeqView, scala.collection.mutable.SeqLike, scala.collection.mutable.BufferLike
        void update(int i, A a);
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/IndexedSeqView$Reversed.class */
    public interface Reversed extends SeqViewLike<A, Coll, IndexedSeqView<A, Coll>>.Reversed, IndexedSeqView<A, Coll>.Transformed<A> {

        /* renamed from: scala.collection.mutable.IndexedSeqView$Reversed$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/IndexedSeqView$Reversed$class.class */
        public abstract class Cclass {
            public static void $init$(Reversed reversed) {
            }

            public static void update(Reversed reversed, int i, Object obj) {
                reversed.scala$collection$mutable$IndexedSeqView$Reversed$$$outer().update((reversed.scala$collection$mutable$IndexedSeqView$Reversed$$$outer().length() - 1) - i, obj);
            }
        }

        /* synthetic */ IndexedSeqView scala$collection$mutable$IndexedSeqView$Reversed$$$outer();

        @Override // scala.collection.mutable.IndexedSeqView.Transformed, scala.collection.mutable.IndexedSeqView, scala.collection.mutable.SeqLike, scala.collection.mutable.BufferLike
        void update(int i, A a);
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/IndexedSeqView$Sliced.class */
    public interface Sliced extends SeqViewLike<A, Coll, IndexedSeqView<A, Coll>>.Sliced, IndexedSeqView<A, Coll>.Transformed<A> {

        /* renamed from: scala.collection.mutable.IndexedSeqView$Sliced$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/IndexedSeqView$Sliced$class.class */
        public abstract class Cclass {
            public static void $init$(Sliced sliced) {
            }

            public static int length(Sliced sliced) {
                return sliced.endpoints().width();
            }

            public static void update(Sliced sliced, int i, Object obj) {
                if (i < 0 || sliced.from() + i >= sliced.until()) {
                    throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
                }
                sliced.scala$collection$mutable$IndexedSeqView$Sliced$$$outer().update(i + sliced.from(), obj);
            }
        }

        @Override // scala.collection.SeqViewLike.Sliced, scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
        int length();

        /* synthetic */ IndexedSeqView scala$collection$mutable$IndexedSeqView$Sliced$$$outer();

        @Override // scala.collection.mutable.IndexedSeqView.Transformed, scala.collection.mutable.IndexedSeqView, scala.collection.mutable.SeqLike, scala.collection.mutable.BufferLike
        void update(int i, A a);
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/IndexedSeqView$TakenWhile.class */
    public interface TakenWhile extends SeqViewLike<A, Coll, IndexedSeqView<A, Coll>>.TakenWhile, IndexedSeqView<A, Coll>.Transformed<A> {

        /* renamed from: scala.collection.mutable.IndexedSeqView$TakenWhile$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/IndexedSeqView$TakenWhile$class.class */
        public abstract class Cclass {
            public static void $init$(TakenWhile takenWhile) {
            }

            public static void update(TakenWhile takenWhile, int i, Object obj) {
                if (i < takenWhile.len()) {
                    takenWhile.scala$collection$mutable$IndexedSeqView$TakenWhile$$$outer().update(i, obj);
                    return;
                }
                throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
            }
        }

        /* synthetic */ IndexedSeqView scala$collection$mutable$IndexedSeqView$TakenWhile$$$outer();

        @Override // scala.collection.mutable.IndexedSeqView.Transformed, scala.collection.mutable.IndexedSeqView, scala.collection.mutable.SeqLike, scala.collection.mutable.BufferLike
        void update(int i, A a);
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/IndexedSeqView$Transformed.class */
    public interface Transformed<B> extends IndexedSeqView<B, Coll>, SeqViewLike<A, Coll, IndexedSeqView<A, Coll>>.Transformed<B> {

        /* renamed from: scala.collection.mutable.IndexedSeqView$Transformed$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/IndexedSeqView$Transformed$class.class */
        public abstract class Cclass {
            public static void $init$(Transformed transformed) {
            }

            public static String toString(Transformed transformed) {
                return transformed.viewToString();
            }
        }

        /* synthetic */ IndexedSeqView scala$collection$mutable$IndexedSeqView$Transformed$$$outer();

        @Override // scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
        String toString();

        @Override // scala.collection.mutable.IndexedSeqView, scala.collection.mutable.SeqLike, scala.collection.mutable.BufferLike
        void update(int i, B b);
    }

    /* renamed from: scala.collection.mutable.IndexedSeqView$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/IndexedSeqView$class.class */
    public abstract class Cclass {
        public static void $init$(IndexedSeqView indexedSeqView) {
        }

        public static IndexedSeqView drop(IndexedSeqView indexedSeqView, int i) {
            return indexedSeqView.newSliced(SliceInterval$.MODULE$.apply(i, indexedSeqView.length()));
        }

        public static IndexedSeqView dropWhile(IndexedSeqView indexedSeqView, Function1 function1) {
            return indexedSeqView.newDroppedWhile(function1);
        }

        public static IndexedSeqView filter(IndexedSeqView indexedSeqView, Function1 function1) {
            return indexedSeqView.newFiltered(function1);
        }

        public static IndexedSeqView init(IndexedSeqView indexedSeqView) {
            return indexedSeqView.newSliced(SliceInterval$.MODULE$.apply(0, indexedSeqView.length() - 1));
        }

        public static Transformed newDroppedWhile(IndexedSeqView indexedSeqView, Function1 function1) {
            return new IndexedSeqView$$anon$3(indexedSeqView, function1);
        }

        public static Transformed newFiltered(IndexedSeqView indexedSeqView, Function1 function1) {
            return new IndexedSeqView$$anon$1(indexedSeqView, function1);
        }

        public static Transformed newReversed(IndexedSeqView indexedSeqView) {
            return new IndexedSeqView$$anon$5(indexedSeqView);
        }

        public static Transformed newSliced(IndexedSeqView indexedSeqView, SliceInterval sliceInterval) {
            return new IndexedSeqView$$anon$2(indexedSeqView, sliceInterval);
        }

        public static Transformed newTakenWhile(IndexedSeqView indexedSeqView, Function1 function1) {
            return new IndexedSeqView$$anon$4(indexedSeqView, function1);
        }

        public static IndexedSeqView reverse(IndexedSeqView indexedSeqView) {
            return indexedSeqView.newReversed();
        }

        public static IndexedSeqView slice(IndexedSeqView indexedSeqView, int i, int i2) {
            SliceInterval$ sliceInterval$ = SliceInterval$.MODULE$;
            RichInt$ richInt$ = RichInt$.MODULE$;
            Predef$ predef$ = Predef$.MODULE$;
            return indexedSeqView.newSliced(sliceInterval$.apply(i, richInt$.min$extension(i2, indexedSeqView.length())));
        }

        public static Tuple2 span(IndexedSeqView indexedSeqView, Function1 function1) {
            return new Tuple2(indexedSeqView.newTakenWhile(function1), indexedSeqView.newDroppedWhile(function1));
        }

        public static Tuple2 splitAt(IndexedSeqView indexedSeqView, int i) {
            return new Tuple2(indexedSeqView.take(i), indexedSeqView.drop(i));
        }

        public static IndexedSeqView tail(IndexedSeqView indexedSeqView) {
            return indexedSeqView.isEmpty() ? indexedSeqView.scala$collection$mutable$IndexedSeqView$$super$tail() : indexedSeqView.slice(1, indexedSeqView.length());
        }

        public static IndexedSeqView take(IndexedSeqView indexedSeqView, int i) {
            SliceInterval$ sliceInterval$ = SliceInterval$.MODULE$;
            RichInt$ richInt$ = RichInt$.MODULE$;
            Predef$ predef$ = Predef$.MODULE$;
            return indexedSeqView.newSliced(sliceInterval$.apply(0, richInt$.min$extension(i, indexedSeqView.length())));
        }

        public static IndexedSeqView takeWhile(IndexedSeqView indexedSeqView, Function1 function1) {
            return indexedSeqView.newTakenWhile(function1);
        }
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    IndexedSeqView<A, Coll> drop(int i);

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    IndexedSeqView<A, Coll> dropWhile(Function1<A, Object> function1);

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    IndexedSeqView<A, Coll> filter(Function1<A, Object> function1);

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    IndexedSeqView<A, Coll> init();

    IndexedSeqView<A, Coll>.Transformed<A> newDroppedWhile(Function1<A, Object> function1);

    IndexedSeqView<A, Coll>.Transformed<A> newFiltered(Function1<A, Object> function1);

    IndexedSeqView<A, Coll>.Transformed<A> newReversed();

    IndexedSeqView<A, Coll>.Transformed<A> newSliced(SliceInterval sliceInterval);

    IndexedSeqView<A, Coll>.Transformed<A> newTakenWhile(Function1<A, Object> function1);

    IndexedSeqView<A, Coll> reverse();

    /* synthetic */ IndexedSeqView scala$collection$mutable$IndexedSeqView$$super$tail();

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    IndexedSeqView<A, Coll> slice(int i, int i2);

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    Tuple2<IndexedSeqView<A, Coll>, IndexedSeqView<A, Coll>> span(Function1<A, Object> function1);

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    Tuple2<IndexedSeqView<A, Coll>, IndexedSeqView<A, Coll>> splitAt(int i);

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    IndexedSeqView<A, Coll> tail();

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    IndexedSeqView<A, Coll> take(int i);

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    IndexedSeqView<A, Coll> takeWhile(Function1<A, Object> function1);

    void update(int i, A a);
}
