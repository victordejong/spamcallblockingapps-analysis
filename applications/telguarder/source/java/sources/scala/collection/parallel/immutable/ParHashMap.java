package scala.collection.parallel.immutable;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.MatchError;
import scala.None$;
import scala.Option;
import scala.PartialFunction;
import scala.Predef$;
import scala.Predef$$less$colon$less;
import scala.Serializable;
import scala.Some;
import scala.Tuple2;
import scala.Tuple3;
import scala.collection.BufferedIterator;
import scala.collection.CustomParallelizable;
import scala.collection.GenIterable;
import scala.collection.GenIterableLike;
import scala.collection.GenMapLike;
import scala.collection.GenTraversable;
import scala.collection.GenTraversableOnce;
import scala.collection.Iterable;
import scala.collection.Iterator;
import scala.collection.Parallelizable;
import scala.collection.Seq;
import scala.collection.Seq$;
import scala.collection.Traversable;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.CanCombineFrom;
import scala.collection.generic.DelegatedSignalling;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.GenericParMapCompanion;
import scala.collection.generic.GenericParMapTemplate;
import scala.collection.generic.GenericParTemplate;
import scala.collection.generic.GenericTraversableTemplate;
import scala.collection.generic.Signalling;
import scala.collection.immutable.HashMap;
import scala.collection.immutable.HashMap$;
import scala.collection.immutable.IndexedSeq;
import scala.collection.immutable.List;
import scala.collection.immutable.Map;
import scala.collection.immutable.Set;
import scala.collection.immutable.Stream;
import scala.collection.immutable.TrieIterator;
import scala.collection.immutable.Vector;
import scala.collection.mutable.ArrayBuffer;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Builder;
import scala.collection.mutable.SeqLike;
import scala.collection.mutable.StringBuilder;
import scala.collection.parallel.AugmentedIterableIterator;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.IterableSplitter;
import scala.collection.parallel.ParIterable;
import scala.collection.parallel.ParIterableLike;
import scala.collection.parallel.ParIterableLike$ScanLeaf$;
import scala.collection.parallel.ParIterableLike$ScanNode$;
import scala.collection.parallel.ParMap;
import scala.collection.parallel.ParMapLike;
import scala.collection.parallel.ParSet;
import scala.collection.parallel.RemainsIterator;
import scala.collection.parallel.SeqSplitter;
import scala.collection.parallel.Splitter;
import scala.collection.parallel.TaskSupport;
import scala.collection.parallel.immutable.ParIterable;
import scala.collection.parallel.immutable.ParMap;
import scala.collection.parallel.package$;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
import scala.runtime.TraitSetter;
@ScalaSignature(bytes = "\u0006\u0001\tud!B\u0001\u0003\u0001-q#A\u0003)be\"\u000b7\u000f['ba*\u00111\u0001B\u0001\nS6lW\u000f^1cY\u0016T!!\u0002\u0004\u0002\u0011A\f'/\u00197mK2T!a\u0002\u0005\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\n\u0003\u0015\u00198-\u00197b\u0007\u0001)2\u0001D\f\"'\u0019\u0001Q\"E\u0012+iA\u0011abD\u0007\u0002\u0011%\u0011\u0001\u0003\u0003\u0002\u0007\u0003:L(+\u001a4\u0011\tI\u0019R\u0003I\u0007\u0002\u0005%\u0011AC\u0001\u0002\u0007!\u0006\u0014X*\u00199\u0011\u0005Y9B\u0002\u0001\u0003\u00061\u0001\u0011\r!\u0007\u0002\u0002\u0017F\u0011!$\b\t\u0003\u001dmI!\u0001\b\u0005\u0003\u000f9{G\u000f[5oOB\u0011aBH\u0005\u0003?!\u00111!\u00118z!\t1\u0012\u0005\u0002\u0004#\u0001\u0011\u0015\r!\u0007\u0002\u0002-B)AeJ\u000b!S5\tQE\u0003\u0002'\r\u00059q-\u001a8fe&\u001c\u0017B\u0001\u0015&\u0005U9UM\\3sS\u000e\u0004\u0016M]'baR+W\u000e\u001d7bi\u0016\u0004\"A\u0005\u0001\u0011\r-bS\u0003\t\u00180\u001b\u0005!\u0011BA\u0017\u0005\u0005)\u0001\u0016M]'ba2K7.\u001a\t\u0005%\u0001)\u0002\u0005\u0005\u00031eU\u0001S\"A\u0019\u000b\u0005\r1\u0011BA\u001a2\u0005\u001dA\u0015m\u001d5NCB\u0004\"AD\u001b\n\u0005YB!\u0001D*fe&\fG.\u001b>bE2,\u0007\u0002\u0003\u001d\u0001\u0005\u0003\u0005\u000b\u0011B\u0018\u0002\tQ\u0014\u0018.\u001a\u0005\u0007u\u0001!\tAA\u001e\u0002\rqJg.\u001b;?)\tqC\bC\u00039s\u0001\u0007q\u0006C\u0003;\u0001\u0011\u0005a\bF\u0001/\u0011\u0015\u0001\u0005\u0001\"\u0011B\u00031i\u0017\r]\"p[B\fg.[8o+\u0005\u0011\u0005c\u0001\u0013DS%\u0011A)\n\u0002\u0017\u000f\u0016tWM]5d!\u0006\u0014X*\u00199D_6\u0004\u0018M\\5p]\")a\t\u0001C!\u000f\u0006)Q-\u001c9usV\ta\u0006\u0003\u0004J\u0001\u0001&\tFS\u0001\f]\u0016<8i\\7cS:,'/F\u0001L!\u0011\u0011B*\u0006\u0011\n\u00055\u0013!a\u0004%bg\"l\u0015\r]\"p[\nLg.\u001a:\t\u000b=\u0003A\u0011\u0001)\u0002\u0011M\u0004H.\u001b;uKJ,\u0012!\u0015\t\u0004WI#\u0016BA*\u0005\u0005AIE/\u001a:bE2,7\u000b\u001d7jiR,'\u000f\u0005\u0003\u000f+V\u0001\u0013B\u0001,\t\u0005\u0019!V\u000f\u001d7fe!)\u0001\f\u0001C!3\u0006\u00191/Z9\u0016\u0003=BQa\u0017\u0001\u0005\u0002q\u000ba\u0001J7j]V\u001cHC\u0001\u0018^\u0011\u0015q&\f1\u0001\u0016\u0003\u0005Y\u0007\"\u00021\u0001\t\u0003\t\u0017!\u0002\u0013qYV\u001cXC\u00012f)\t\u0019\u0007\u000e\u0005\u0003\u0013\u0001U!\u0007C\u0001\ff\t\u00151wL1\u0001h\u0005\u0005)\u0016C\u0001\u0011\u001e\u0011\u0015Iw\f1\u0001k\u0003\tYg\u000f\u0005\u0003\u000f+V!\u0007\"\u00027\u0001\t\u0003i\u0017aA4fiR\u0011a.\u001d\t\u0004\u001d=\u0004\u0013B\u00019\t\u0005\u0019y\u0005\u000f^5p]\")al\u001ba\u0001+!)1\u000f\u0001C!i\u0006!1/\u001b>f+\u0005)\bC\u0001\bw\u0013\t9\bBA\u0002J]RDQ!\u001f\u0001\u0005Ri\fQA]3vg\u0016,Ra_A\u0001\u0003\u000f!R\u0001`A\u0006\u0003#\u0001RaK?��\u0003\u000bI!A \u0003\u0003\u0011\r{WNY5oKJ\u00042AFA\u0001\t\u0019\t\u0019\u0001\u001fb\u00013\t\t1\u000bE\u0002\u0017\u0003\u000f!a!!\u0003y\u0005\u0004I\"\u0001\u0002+iCRDq!!\u0004y\u0001\u0004\ty!\u0001\u0003pY\u0012\u001c\u0007c\u0001\bpy\"1\u00111\u0003=A\u0002q\fAA\\3xG\u001a1\u0011q\u0003\u0001\u0001\u00033\u0011!\u0003U1s\u0011\u0006\u001c\b.T1q\u0013R,'/\u0019;peN!\u0011QC\u0007R\u0011-\ti\"!\u0006\u0003\u0002\u0004%\t!a\b\u0002\rQ\u0014\u0018\u000e^3s+\t\t\t\u0003\u0005\u0004\u0002$\u0005%\u0012q\u0006\b\u0004\u001d\u0005\u0015\u0012bAA\u0014\u0011\u00059\u0001/Y2lC\u001e,\u0017\u0002BA\u0016\u0003[\u0011\u0001\"\u0013;fe\u0006$xN\u001d\u0006\u0004\u0003OA\u0001#\u0002\bV+\u0005E\"f\u0001\u0011\u00024-\u0012\u0011Q\u0007\t\u0005\u0003o\t\t%\u0004\u0002\u0002:)!\u00111HA\u001f\u0003%)hn\u00195fG.,GMC\u0002\u0002@!\t!\"\u00198o_R\fG/[8o\u0013\u0011\t\u0019%!\u000f\u0003#Ut7\r[3dW\u0016$g+\u0019:jC:\u001cW\rC\u0006\u0002H\u0005U!\u00111A\u0005\u0002\u0005%\u0013A\u0003;sSR,'o\u0018\u0013fcR!\u00111JA)!\rq\u0011QJ\u0005\u0004\u0003\u001fB!\u0001B+oSRD!\"a\u0015\u0002F\u0005\u0005\t\u0019AA\u0011\u0003\rAH%\r\u0005\f\u0003/\n)B!A!B\u0013\t\t#A\u0004ue&$XM\u001d\u0011\t\u0015\u0005m\u0013Q\u0003BC\u0002\u0013\u0005A/\u0001\u0002tu\"Q\u0011qLA\u000b\u0005\u0003\u0005\u000b\u0011B;\u0002\u0007MT\b\u0005C\u0004;\u0003+!\t!a\u0019\u0015\r\u0005\u0015\u0014\u0011NA6!\u0011\t9'!\u0006\u000e\u0003\u0001A\u0001\"!\b\u0002b\u0001\u0007\u0011\u0011\u0005\u0005\b\u00037\n\t\u00071\u0001v\u0011%\ty'!\u0006A\u0002\u0013\u0005A/A\u0001j\u0011)\t\u0019(!\u0006A\u0002\u0013\u0005\u0011QO\u0001\u0006S~#S-\u001d\u000b\u0005\u0003\u0017\n9\bC\u0005\u0002T\u0005E\u0014\u0011!a\u0001k\"A\u00111PA\u000bA\u0003&Q/\u0001\u0002jA!9\u0011qPA\u000b\t\u0003\u0001\u0016a\u00013va\"A\u00111QA\u000b\t\u0013\t))A\bekB4%o\\7Ji\u0016\u0014\u0018\r^8s)\u0011\t)'a\"\t\u0011\u0005%\u0015\u0011\u0011a\u0001\u0003C\t!!\u001b;\t\u0011\u00055\u0015Q\u0003C\u0001\u0003\u001f\u000bQa\u001d9mSR,\"!!%\u0011\u000b\u0005\r\u00121S)\n\t\u0005U\u0015Q\u0006\u0002\u0004'\u0016\f\b\u0002CAM\u0003+!\t!a'\u0002\t9,\u0007\u0010\u001e\u000b\u0002)\"A\u0011qTA\u000b\t\u0003\t\t+A\u0004iCNtU\r\u001f;\u0016\u0005\u0005\r\u0006c\u0001\b\u0002&&\u0019\u0011q\u0015\u0005\u0003\u000f\t{w\u000e\\3b]\"9\u00111VA\u000b\t\u0003!\u0018!\u0003:f[\u0006Lg.\u001b8h\u0011!\ty+!\u0006\u0005B\u0005E\u0016\u0001\u0003;p'R\u0014\u0018N\\4\u0015\u0005\u0005M\u0006\u0003BA[\u0003\u007fk!!a.\u000b\t\u0005e\u00161X\u0001\u0005Y\u0006twM\u0003\u0002\u0002>\u0006!!.\u0019<b\u0013\u0011\t\t-a.\u0003\rM#(/\u001b8h\u0011!\t)\r\u0001C\u0001\t\u0005\u001d\u0017A\u00049sS:$H)\u001a2vO&sgm\u001c\u000b\u0003\u0003\u0017Bs\u0001AAf\u0003#\f\u0019\u000eE\u0002\u000f\u0003\u001bL1!a4\t\u0005A\u0019VM]5bYZ+'o]5p]VKE)A\u0003wC2,XMH\u0001\u0002\u000f\u001d\t9N\u0001E\u0001\u00033\f!\u0002U1s\u0011\u0006\u001c\b.T1q!\r\u0011\u00121\u001c\u0004\u0007\u0003\tA\t!!8\u0014\u000b\u0005m\u0017q\u001c\u001b\u0011\t\u0011\n\t/K\u0005\u0004\u0003G,#!\u0004)be6\u000b\u0007OR1di>\u0014\u0018\u0010C\u0004;\u00037$\t!a:\u0015\u0005\u0005e\u0007b\u0002$\u0002\\\u0012\u0005\u00111^\u000b\u0007\u0003[\f\u00190a>\u0016\u0005\u0005=\bC\u0002\n\u0001\u0003c\f)\u0010E\u0002\u0017\u0003g$a\u0001GAu\u0005\u0004I\u0002c\u0001\f\u0002x\u00121!%!;C\u0002eAq!SAn\t\u0003\tY0\u0006\u0004\u0002~\n\u0015!\u0011B\u000b\u0003\u0003\u007f\u0004baK?\u0003\u0002\t-\u0001C\u0002\bV\u0005\u0007\u00119\u0001E\u0002\u0017\u0005\u000b!a\u0001GA}\u0005\u0004I\u0002c\u0001\f\u0003\n\u00111!%!?C\u0002e\u0001bA\u0005\u0001\u0003\u0004\t\u001d\u0001\u0002\u0003B\b\u00037$\u0019A!\u0005\u0002\u0019\r\fgNQ;jY\u00124%o\\7\u0016\r\tM!1\u0006B\u0018+\t\u0011)\u0002E\u0005%\u0005/\u0011YBa\n\u00032%\u0019!\u0011D\u0013\u0003\u001d\r\u000bgnQ8nE&tWM\u0012:p[B!!Q\u0004B\u0010\u001b\t\tY.\u0003\u0003\u0003\"\t\r\"\u0001B\"pY2L1A!\n&\u000559UM\\'ba\u001a\u000b7\r^8ssB1a\"\u0016B\u0015\u0005[\u00012A\u0006B\u0016\t\u0019A\"Q\u0002b\u00013A\u0019aCa\f\u0005\r\t\u0012iA1\u0001\u001a!\u0019\u0011\u0002A!\u000b\u0003.!A!QGAn\t\u0003\u00119$\u0001\u0005ge>lGK]5f+\u0019\u0011IDa\u0010\u0003DQ!!1\bB#!\u0019\u0011\u0002A!\u0010\u0003BA\u0019aCa\u0010\u0005\ra\u0011\u0019D1\u0001\u001a!\r1\"1\t\u0003\u0007E\tM\"\u0019A\r\t\u0011\t\u001d#1\u0007a\u0001\u0005\u0013\n\u0011\u0001\u001e\t\u0007aI\u0012iD!\u0011\t\u0015\t5\u00131\u001ca\u0001\n\u0003\u0011y%A\u0007u_R\fGnY8nE&tWm]\u000b\u0003\u0005#\u0002BAa\u0015\u0003b5\u0011!Q\u000b\u0006\u0005\u0005/\u0012I&\u0001\u0004bi>l\u0017n\u0019\u0006\u0005\u00057\u0012i&\u0001\u0006d_:\u001cWO\u001d:f]RTAAa\u0018\u0002<\u0006!Q\u000f^5m\u0013\u0011\u0011\u0019G!\u0016\u0003\u001b\u0005#x.\\5d\u0013:$XmZ3s\u0011)\u00119'a7A\u0002\u0013\u0005!\u0011N\u0001\u0012i>$\u0018\r\\2p[\nLg.Z:`I\u0015\fH\u0003BA&\u0005WB!\"a\u0015\u0003f\u0005\u0005\t\u0019\u0001B)\u0011%\u0011y'a7!B\u0013\u0011\t&\u0001\bu_R\fGnY8nE&tWm\u001d\u0011\t\u0015\tM\u00141\\A\u0001\n\u0013\u0011)(A\u0006sK\u0006$'+Z:pYZ,GC\u0001B<!\u0011\t)L!\u001f\n\t\tm\u0014q\u0017\u0002\u0007\u001f\nTWm\u0019;")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/ParHashMap.class */
public class ParHashMap<K, V> implements ParMap<K, V>, Serializable {
    public static final long serialVersionUID = 1;
    private volatile ParIterableLike$ScanLeaf$ ScanLeaf$module;
    private volatile ParIterableLike$ScanNode$ ScanNode$module;
    private volatile transient TaskSupport scala$collection$parallel$ParIterableLike$$_tasksupport;
    private final HashMap<K, V> trie;

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/ParHashMap$ParHashMapIterator.class */
    public class ParHashMapIterator implements IterableSplitter<Tuple2<K, V>> {
        public final /* synthetic */ ParHashMap $outer;

        /* renamed from: i */
        private int f1593i = 0;
        private Signalling signalDelegate;

        /* renamed from: sz */
        private final int f1594sz;
        private Iterator<Tuple2<K, V>> triter;

        public ParHashMapIterator(ParHashMap<K, V> parHashMap, Iterator<Tuple2<K, V>> iterator, int i) {
            this.triter = iterator;
            this.f1594sz = i;
            Objects.requireNonNull(parHashMap);
            this.$outer = parHashMap;
            TraversableOnce.Cclass.$init$(this);
            Iterator.Cclass.$init$(this);
            RemainsIterator.Cclass.$init$(this);
            AugmentedIterableIterator.Cclass.$init$(this);
            DelegatedSignalling.Cclass.$init$(this);
            IterableSplitter.Cclass.$init$(this);
        }

        private ParHashMap<K, V>.ParHashMapIterator dupFromIterator(Iterator<Tuple2<K, V>> iterator) {
            ParHashMap<K, V>.ParHashMapIterator parHashMapIterator = new ParHashMapIterator(m102x9cf26b92(), iterator, m101sz());
            parHashMapIterator.i_$eq(m103i());
            return parHashMapIterator;
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B $colon$bslash(B b, Function2<Tuple2<K, V>, B, B> function2) {
            Object foldRight;
            foldRight = foldRight(b, function2);
            return (B) foldRight;
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B $div$colon(B b, Function2<B, Tuple2<K, V>, B> function2) {
            Object foldLeft;
            foldLeft = foldLeft(b, function2);
            return (B) foldLeft;
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> $plus$plus(Function0<GenTraversableOnce<B>> function0) {
            return Iterator.Cclass.$plus$plus(this, function0);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public void abort() {
            DelegatedSignalling.Cclass.abort(this);
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
        public <B> B aggregate(Function0<B> function0, Function2<B, Tuple2<K, V>, B> function2, Function2<B, B, B> function22) {
            return (B) TraversableOnce.Cclass.aggregate(this, function0, function2, function22);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public <U, PI extends IterableSplitter<U>> IterableSplitter<Tuple2<K, V>>.Appended<U, PI> appendParIterable(PI pi) {
            return IterableSplitter.Cclass.appendParIterable(this, pi);
        }

        @Override // scala.collection.Iterator
        public BufferedIterator<Tuple2<K, V>> buffered() {
            return Iterator.Cclass.buffered(this);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public String buildString(Function1<Function1<String, BoxedUnit>, BoxedUnit> function1) {
            return IterableSplitter.Cclass.buildString(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> collect(PartialFunction<Tuple2<K, V>, B> partialFunction) {
            return Iterator.Cclass.collect(this, partialFunction);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <S, That> Combiner<S, That> collect2combiner(PartialFunction<Tuple2<K, V>, S> partialFunction, Combiner<S, That> combiner) {
            return AugmentedIterableIterator.Cclass.collect2combiner(this, partialFunction, combiner);
        }

        @Override // scala.collection.TraversableOnce
        public <B> Option<B> collectFirst(PartialFunction<Tuple2<K, V>, B> partialFunction) {
            return TraversableOnce.Cclass.collectFirst(this, partialFunction);
        }

        @Override // scala.collection.Iterator
        public boolean contains(Object obj) {
            return Iterator.Cclass.contains(this, obj);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, Coll, Bld extends Builder<U, Coll>> Bld copy2builder(Bld bld) {
            return (Bld) AugmentedIterableIterator.Cclass.copy2builder(this, bld);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> void copyToArray(Object obj) {
            TraversableOnce.Cclass.copyToArray(this, obj);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> void copyToArray(Object obj, int i) {
            TraversableOnce.Cclass.copyToArray(this, obj, i);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <U> void copyToArray(Object obj, int i, int i2) {
            AugmentedIterableIterator.Cclass.copyToArray(this, obj, i, i2);
        }

        @Override // scala.collection.TraversableOnce
        public <B> void copyToBuffer(Buffer<B> buffer) {
            TraversableOnce.Cclass.copyToBuffer(this, buffer);
        }

        @Override // scala.collection.Iterator
        public <B> boolean corresponds(GenTraversableOnce<B> genTraversableOnce, Function2<Tuple2<K, V>, B, Object> function2) {
            return Iterator.Cclass.corresponds(this, genTraversableOnce, function2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int count(Function1<Tuple2<K, V>, Object> function1) {
            return AugmentedIterableIterator.Cclass.count(this, function1);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public String debugInformation() {
            return IterableSplitter.Cclass.debugInformation(this);
        }

        @Override // scala.collection.Iterator
        public Iterator<Tuple2<K, V>> drop(int i) {
            return Iterator.Cclass.drop(this, i);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> drop2combiner(int i, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.drop2combiner(this, i, combiner);
        }

        @Override // scala.collection.Iterator
        public Iterator<Tuple2<K, V>> dropWhile(Function1<Tuple2<K, V>, Object> function1) {
            return Iterator.Cclass.dropWhile(this, function1);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public IterableSplitter<Tuple2<K, V>> dup() {
            ParHashMap<K, V>.ParHashMapIterator parHashMapIterator;
            Iterator<Tuple2<K, V>> triter = triter();
            if (triter instanceof TrieIterator) {
                parHashMapIterator = dupFromIterator(((TrieIterator) triter).dupIterator());
            } else {
                GenIterableLike buffer = triter().toBuffer();
                triter_$eq(buffer.iterator());
                parHashMapIterator = dupFromIterator(buffer.iterator());
            }
            return parHashMapIterator;
        }

        @Override // scala.collection.Iterator
        public Tuple2<Iterator<Tuple2<K, V>>, Iterator<Tuple2<K, V>>> duplicate() {
            return Iterator.Cclass.duplicate(this);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean exists(Function1<Tuple2<K, V>, Object> function1) {
            return Iterator.Cclass.exists(this, function1);
        }

        @Override // scala.collection.Iterator
        public Iterator<Tuple2<K, V>> filter(Function1<Tuple2<K, V>, Object> function1) {
            return Iterator.Cclass.filter(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> filter2combiner(Function1<Tuple2<K, V>, Object> function1, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.filter2combiner(this, function1, combiner);
        }

        @Override // scala.collection.Iterator
        public Iterator<Tuple2<K, V>> filterNot(Function1<Tuple2<K, V>, Object> function1) {
            return Iterator.Cclass.filterNot(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> filterNot2combiner(Function1<Tuple2<K, V>, Object> function1, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.filterNot2combiner(this, function1, combiner);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Option<Tuple2<K, V>> find(Function1<Tuple2<K, V>, Object> function1) {
            return Iterator.Cclass.find(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> flatMap(Function1<Tuple2<K, V>, GenTraversableOnce<B>> function1) {
            return Iterator.Cclass.flatMap(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <S, That> Combiner<S, That> flatmap2combiner(Function1<Tuple2<K, V>, GenTraversableOnce<S>> function1, Combiner<S, That> combiner) {
            return AugmentedIterableIterator.Cclass.flatmap2combiner(this, function1, combiner);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U fold(U u, Function2<U, U, U> function2) {
            return (U) AugmentedIterableIterator.Cclass.fold(this, u, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B foldLeft(B b, Function2<B, Tuple2<K, V>, B> function2) {
            return (B) TraversableOnce.Cclass.foldLeft(this, b, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <B> B foldRight(B b, Function2<Tuple2<K, V>, B, B> function2) {
            return (B) TraversableOnce.Cclass.foldRight(this, b, function2);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean forall(Function1<Tuple2<K, V>, Object> function1) {
            return Iterator.Cclass.forall(this, function1);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <U> void foreach(Function1<Tuple2<K, V>, U> function1) {
            Iterator.Cclass.foreach(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<Tuple2<K, V>>.GroupedIterator<B> grouped(int i) {
            return Iterator.Cclass.grouped(this, i);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public boolean hasDefiniteSize() {
            return Iterator.Cclass.hasDefiniteSize(this);
        }

        @Override // scala.collection.Iterator
        public boolean hasNext() {
            return m103i() < m101sz();
        }

        /* renamed from: i */
        public int m103i() {
            return this.f1593i;
        }

        public void i_$eq(int i) {
            this.f1593i = i;
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public int indexFlag() {
            return DelegatedSignalling.Cclass.indexFlag(this);
        }

        @Override // scala.collection.Iterator
        public <B> int indexOf(B b) {
            return Iterator.Cclass.indexOf(this, b);
        }

        @Override // scala.collection.Iterator
        public int indexWhere(Function1<Tuple2<K, V>, Object> function1) {
            return Iterator.Cclass.indexWhere(this, function1);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public boolean isAborted() {
            return DelegatedSignalling.Cclass.isAborted(this);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public boolean isEmpty() {
            return Iterator.Cclass.isEmpty(this);
        }

        @Override // scala.collection.parallel.RemainsIterator
        public boolean isRemainingCheap() {
            return RemainsIterator.Cclass.isRemainingCheap(this);
        }

        @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce
        public boolean isTraversableAgain() {
            return Iterator.Cclass.isTraversableAgain(this);
        }

        @Override // scala.collection.Iterator
        public int length() {
            return Iterator.Cclass.length(this);
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public <S> IterableSplitter<Tuple2<K, V>>.Mapped<S> map(Function1<Tuple2<K, V>, S> function1) {
            return IterableSplitter.Cclass.map(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <S, That> Combiner<S, That> map2combiner(Function1<Tuple2<K, V>, S> function1, Combiner<S, That> combiner) {
            return AugmentedIterableIterator.Cclass.map2combiner(this, function1, combiner);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Object max(Ordering ordering) {
            return AugmentedIterableIterator.Cclass.max(this, ordering);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Object maxBy(Function1 function1, Ordering ordering) {
            return TraversableOnce.Cclass.maxBy(this, function1, ordering);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Object min(Ordering ordering) {
            return AugmentedIterableIterator.Cclass.min(this, ordering);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Object minBy(Function1 function1, Ordering ordering) {
            return TraversableOnce.Cclass.minBy(this, function1, ordering);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public String mkString() {
            return TraversableOnce.Cclass.mkString(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public String mkString(String str) {
            return TraversableOnce.Cclass.mkString(this, str);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public String mkString(String str, String str2, String str3) {
            return TraversableOnce.Cclass.mkString(this, str, str2, str3);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public <U extends IterableSplitter<Tuple2<K, V>>.Taken> U newSliceInternal(U u, int i) {
            return (U) IterableSplitter.Cclass.newSliceInternal(this, u, i);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public IterableSplitter<Tuple2<K, V>>.Taken newTaken(int i) {
            return IterableSplitter.Cclass.newTaken(this, i);
        }

        @Override // scala.collection.Iterator
        public Tuple2<K, V> next() {
            i_$eq(m103i() + 1);
            return triter().next();
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public boolean nonEmpty() {
            return TraversableOnce.Cclass.nonEmpty(this);
        }

        @Override // scala.collection.Iterator
        public <A1> Iterator<A1> padTo(int i, A1 a1) {
            return Iterator.Cclass.padTo(this, i, a1);
        }

        @Override // scala.collection.Iterator
        public Tuple2<Iterator<Tuple2<K, V>>, Iterator<Tuple2<K, V>>> partition(Function1<Tuple2<K, V>, Object> function1) {
            return Iterator.Cclass.partition(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> partition2combiners(Function1<Tuple2<K, V>, Object> function1, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
            return AugmentedIterableIterator.Cclass.partition2combiners(this, function1, combiner, combiner2);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> patch(int i, Iterator<B> iterator, int i2) {
            return Iterator.Cclass.patch(this, i, iterator, i2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U product(Numeric<U> numeric) {
            return (U) AugmentedIterableIterator.Cclass.product(this, numeric);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U reduce(Function2<U, U, U> function2) {
            return (U) AugmentedIterableIterator.Cclass.reduce(this, function2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U> U reduceLeft(int i, Function2<U, U, U> function2) {
            return (U) AugmentedIterableIterator.Cclass.reduceLeft(this, i, function2);
        }

        @Override // scala.collection.TraversableOnce
        public <B> B reduceLeft(Function2<B, Tuple2<K, V>, B> function2) {
            return (B) TraversableOnce.Cclass.reduceLeft(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Option<B> reduceLeftOption(Function2<B, Tuple2<K, V>, B> function2) {
            return TraversableOnce.Cclass.reduceLeftOption(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <A1> Option<A1> reduceOption(Function2<A1, A1, A1> function2) {
            return TraversableOnce.Cclass.reduceOption(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <B> B reduceRight(Function2<Tuple2<K, V>, B, B> function2) {
            return (B) TraversableOnce.Cclass.reduceRight(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Option<B> reduceRightOption(Function2<Tuple2<K, V>, B, B> function2) {
            return TraversableOnce.Cclass.reduceRightOption(this, function2);
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.parallel.RemainsIterator
        public int remaining() {
            return m101sz() - m103i();
        }

        @Override // scala.collection.TraversableOnce
        public List<Tuple2<K, V>> reversed() {
            return TraversableOnce.Cclass.reversed(this);
        }

        @Override // scala.collection.Iterator
        public boolean sameElements(Iterator<?> iterator) {
            return Iterator.Cclass.sameElements(this, iterator);
        }

        /* renamed from: scala$collection$parallel$immutable$ParHashMap$ParHashMapIterator$$$outer */
        public /* synthetic */ ParHashMap m102x9cf26b92() {
            return this.$outer;
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> scanLeft(B b, Function2<B, Tuple2<K, V>, B> function2) {
            return Iterator.Cclass.scanLeft(this, b, function2);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> scanRight(B b, Function2<Tuple2<K, V>, B, B> function2) {
            return Iterator.Cclass.scanRight(this, b, function2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, A> void scanToArray(U u, Function2<U, U, U> function2, Object obj, int i) {
            AugmentedIterableIterator.Cclass.scanToArray(this, u, function2, obj, i);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, That> Combiner<U, That> scanToCombiner(int i, U u, Function2<U, U, U> function2, Combiner<U, That> combiner) {
            return AugmentedIterableIterator.Cclass.scanToCombiner(this, i, u, function2, combiner);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, That> Combiner<U, That> scanToCombiner(U u, Function2<U, U, U> function2, Combiner<U, That> combiner) {
            return AugmentedIterableIterator.Cclass.scanToCombiner(this, u, function2, combiner);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public Iterator<Tuple2<K, V>> seq() {
            return Iterator.Cclass.seq(this);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public void setIndexFlag(int i) {
            DelegatedSignalling.Cclass.setIndexFlag(this, i);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public void setIndexFlagIfGreater(int i) {
            DelegatedSignalling.Cclass.setIndexFlagIfGreater(this, i);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public void setIndexFlagIfLesser(int i) {
            DelegatedSignalling.Cclass.setIndexFlagIfLesser(this, i);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public <S> boolean shouldSplitFurther(ParIterable<S> parIterable, int i) {
            return IterableSplitter.Cclass.shouldSplitFurther(this, parIterable, i);
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.generic.DelegatedSignalling
        public Signalling signalDelegate() {
            return this.signalDelegate;
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.generic.DelegatedSignalling
        @TraitSetter
        public void signalDelegate_$eq(Signalling signalling) {
            this.signalDelegate = signalling;
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int size() {
            return TraversableOnce.Cclass.size(this);
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public IterableSplitter<Tuple2<K, V>> slice(int i, int i2) {
            return IterableSplitter.Cclass.slice(this, i, i2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> slice2combiner(int i, int i2, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.slice2combiner(this, i, i2, combiner);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<Tuple2<K, V>>.GroupedIterator<B> sliding(int i, int i2) {
            return Iterator.Cclass.sliding(this, i, i2);
        }

        @Override // scala.collection.Iterator
        public <B> int sliding$default$2() {
            return Iterator.Cclass.sliding$default$2(this);
        }

        @Override // scala.collection.Iterator
        public Tuple2<Iterator<Tuple2<K, V>>, Iterator<Tuple2<K, V>>> span(Function1<Tuple2<K, V>, Object> function1) {
            return Iterator.Cclass.span(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> span2combiners(Function1<Tuple2<K, V>, Object> function1, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
            return AugmentedIterableIterator.Cclass.span2combiners(this, function1, combiner, combiner2);
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.parallel.Splitter
        public Seq<IterableSplitter<Tuple2<K, V>>> split() {
            Seq<IterableSplitter<Tuple2<K, V>>> seq;
            if (remaining() < 2) {
                seq = (Seq) Seq$.MODULE$.apply(Predef$.MODULE$.wrapRefArray(new ParHashMapIterator[]{this}));
            } else {
                Iterator<Tuple2<K, V>> triter = triter();
                if (triter instanceof TrieIterator) {
                    TrieIterator trieIterator = (TrieIterator) triter;
                    int remaining = remaining();
                    Tuple2 split = trieIterator.split();
                    if (split == null || split.mo269_1() == null) {
                        throw new MatchError(split);
                    }
                    Tuple3 tuple3 = new Tuple3(((Tuple2) split.mo269_1()).mo269_1(), BoxesRunTime.boxToInteger(((Tuple2) split.mo269_1())._2$mcI$sp()), split.mo268_2());
                    Iterator iterator = (Iterator) tuple3.mo240_1();
                    int unboxToInt = BoxesRunTime.unboxToInt(tuple3.mo239_2());
                    seq = (Seq) Seq$.MODULE$.apply(Predef$.MODULE$.wrapRefArray(new ParHashMapIterator[]{new ParHashMapIterator(m102x9cf26b92(), iterator, unboxToInt), new ParHashMapIterator(m102x9cf26b92(), (Iterator) tuple3.mo238_3(), remaining - unboxToInt)}));
                } else {
                    SeqLike buffer = triter().toBuffer();
                    Tuple2 splitAt = buffer.splitAt(buffer.length() / 2);
                    if (splitAt == null) {
                        throw new MatchError(splitAt);
                    }
                    Tuple2 tuple2 = new Tuple2(splitAt.mo269_1(), splitAt.mo268_2());
                    seq = (Seq) ((TraversableLike) Seq$.MODULE$.apply(Predef$.MODULE$.wrapRefArray(new Buffer[]{(Buffer) tuple2.mo269_1(), (Buffer) tuple2.mo268_2()}))).map(new ParHashMap$ParHashMapIterator$$anonfun$split$1(this), Seq$.MODULE$.canBuildFrom());
                }
            }
            return seq;
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> splitAt2combiners(int i, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
            return AugmentedIterableIterator.Cclass.splitAt2combiners(this, i, combiner, combiner2);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public Seq<IterableSplitter<Tuple2<K, V>>> splitWithSignalling() {
            return IterableSplitter.Cclass.splitWithSignalling(this);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U sum(Numeric<U> numeric) {
            return (U) AugmentedIterableIterator.Cclass.sum(this, numeric);
        }

        /* renamed from: sz */
        public int m101sz() {
            return this.f1594sz;
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public int tag() {
            return DelegatedSignalling.Cclass.tag(this);
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public IterableSplitter<Tuple2<K, V>> take(int i) {
            return IterableSplitter.Cclass.take(this, i);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> take2combiner(int i, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.take2combiner(this, i, combiner);
        }

        @Override // scala.collection.Iterator
        public Iterator<Tuple2<K, V>> takeWhile(Function1<Tuple2<K, V>, Object> function1) {
            return Iterator.Cclass.takeWhile(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Object> takeWhile2combiner(Function1<Tuple2<K, V>, Object> function1, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.takeWhile2combiner(this, function1, combiner);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        /* renamed from: to */
        public <Col> Col mo1to(CanBuildFrom<Nothing$, Tuple2<K, V>, Col> canBuildFrom) {
            return (Col) TraversableOnce.Cclass.m182to(this, canBuildFrom);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Object toArray(ClassTag<B> classTag) {
            return TraversableOnce.Cclass.toArray(this, classTag);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Buffer<B> toBuffer() {
            return TraversableOnce.Cclass.toBuffer(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public IndexedSeq<Tuple2<K, V>> toIndexedSeq() {
            return TraversableOnce.Cclass.toIndexedSeq(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Iterable<Tuple2<K, V>> toIterable() {
            return TraversableOnce.Cclass.toIterable(this);
        }

        @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Iterator<Tuple2<K, V>> toIterator() {
            return Iterator.Cclass.toIterator(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public List<Tuple2<K, V>> toList() {
            return TraversableOnce.Cclass.toList(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <T, U> Map<T, U> toMap(Predef$$less$colon$less<Tuple2<K, V>, Tuple2<T, U>> predef$$less$colon$less) {
            return TraversableOnce.Cclass.toMap(this, predef$$less$colon$less);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
        public Seq<Tuple2<K, V>> toSeq() {
            return TraversableOnce.Cclass.toSeq(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
        public <B> Set<B> toSet() {
            return TraversableOnce.Cclass.toSet(this);
        }

        @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Stream<Tuple2<K, V>> toStream() {
            return Iterator.Cclass.toStream(this);
        }

        @Override // scala.collection.Iterator
        public String toString() {
            return new StringBuilder().append((Object) "HashTrieIterator(").append(BoxesRunTime.boxToInteger(m101sz())).append((Object) ")").toString();
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Traversable<Tuple2<K, V>> toTraversable() {
            return Iterator.Cclass.toTraversable(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Vector<Tuple2<K, V>> toVector() {
            return TraversableOnce.Cclass.toVector(this);
        }

        public Iterator<Tuple2<K, V>> triter() {
            return this.triter;
        }

        public void triter_$eq(Iterator<Tuple2<K, V>> iterator) {
            this.triter = iterator;
        }

        @Override // scala.collection.Iterator
        public Iterator<Tuple2<K, V>> withFilter(Function1<Tuple2<K, V>, Object> function1) {
            return Iterator.Cclass.withFilter(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<Tuple2<Tuple2<K, V>, B>> zip(Iterator<B> iterator) {
            return Iterator.Cclass.zip(this, iterator);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, S, That> Combiner<Tuple2<U, S>, That> zip2combiner(RemainsIterator<S> remainsIterator, Combiner<Tuple2<U, S>, That> combiner) {
            return AugmentedIterableIterator.Cclass.zip2combiner(this, remainsIterator, combiner);
        }

        @Override // scala.collection.Iterator
        public <B, A1, B1> Iterator<Tuple2<A1, B1>> zipAll(Iterator<B> iterator, A1 a1, B1 b1) {
            return Iterator.Cclass.zipAll(this, iterator, a1, b1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, S, That> Combiner<Tuple2<U, S>, That> zipAll2combiner(RemainsIterator<S> remainsIterator, U u, S s, Combiner<Tuple2<U, S>, That> combiner) {
            return AugmentedIterableIterator.Cclass.zipAll2combiner(this, remainsIterator, u, s, combiner);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public <S, U, R> IterableSplitter<Tuple2<K, V>>.ZippedAll<U, R> zipAllParSeq(SeqSplitter<S> seqSplitter, U u, R r) {
            return IterableSplitter.Cclass.zipAllParSeq(this, seqSplitter, u, r);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public <S> IterableSplitter<Tuple2<K, V>>.Zipped<S> zipParSeq(SeqSplitter<S> seqSplitter) {
            return IterableSplitter.Cclass.zipParSeq(this, seqSplitter);
        }

        @Override // scala.collection.Iterator
        public Iterator<Tuple2<Tuple2<K, V>, Object>> zipWithIndex() {
            return Iterator.Cclass.zipWithIndex(this);
        }
    }

    public ParHashMap() {
        this(HashMap$.MODULE$.empty());
    }

    public ParHashMap(HashMap<K, V> hashMap) {
        this.trie = hashMap;
        Parallelizable.Cclass.$init$(this);
        GenMapLike.Cclass.$init$(this);
        GenericTraversableTemplate.Cclass.$init$(this);
        GenTraversable.Cclass.$init$(this);
        GenIterable.Cclass.$init$(this);
        GenericParTemplate.Cclass.$init$(this);
        GenericParMapTemplate.Cclass.$init$(this);
        CustomParallelizable.Cclass.$init$(this);
        scala$collection$parallel$ParIterableLike$$_tasksupport_$eq(package$.MODULE$.defaultTaskSupport());
        ParIterable.Cclass.$init$(this);
        ParMapLike.Cclass.$init$(this);
        ParMap.Cclass.$init$(this);
        ParIterable.Cclass.$init$(this);
        ParMap.Cclass.$init$(this);
    }

    private ParIterableLike$ScanLeaf$ ScanLeaf$lzycompute() {
        synchronized (this) {
            if (this.ScanLeaf$module == null) {
                this.ScanLeaf$module = new ParIterableLike$ScanLeaf$(this);
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.ScanLeaf$module;
    }

    private ParIterableLike$ScanNode$ ScanNode$lzycompute() {
        synchronized (this) {
            if (this.ScanNode$module == null) {
                this.ScanNode$module = new ParIterableLike$ScanNode$(this);
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.ScanNode$module;
    }

    public static <K, V> CanCombineFrom<ParHashMap<?, ?>, Tuple2<K, V>, ParHashMap<K, V>> canBuildFrom() {
        return ParHashMap$.MODULE$.canBuildFrom();
    }

    public static <K, V> ParHashMap<K, V> fromTrie(HashMap<K, V> hashMap) {
        return ParHashMap$.MODULE$.fromTrie(hashMap);
    }

    public static AtomicInteger totalcombines() {
        return ParHashMap$.MODULE$.totalcombines();
    }

    @Override // scala.collection.GenTraversableOnce
    public <S> S $colon$bslash(S s, Function2<Tuple2<K, V>, S, S> function2) {
        Object foldRight;
        foldRight = foldRight(s, function2);
        return (S) foldRight;
    }

    @Override // scala.collection.GenTraversableOnce
    public <S> S $div$colon(S s, Function2<S, Tuple2<K, V>, S> function2) {
        Object foldLeft;
        foldLeft = foldLeft(s, function2);
        return (S) foldLeft;
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.collection.generic.Subtractable
    public ParHashMap<K, V> $minus(K k) {
        return new ParHashMap<>(this.trie.$minus((HashMap<K, V>) k));
    }

    @Override // scala.collection.parallel.immutable.ParMap, scala.collection.parallel.ParMap, scala.collection.GenMapLike, scala.collection.MapLike
    public <U> ParHashMap<K, U> $plus(Tuple2<K, U> tuple2) {
        return new ParHashMap<>(this.trie.$plus((Tuple2<K, B1>) tuple2));
    }

    @Override // scala.collection.GenTraversableLike
    public <U, That> That $plus$plus(GenTraversableOnce<U> genTraversableOnce, CanBuildFrom<ParHashMap<K, V>, U, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.$plus$plus(this, genTraversableOnce, canBuildFrom);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public ParIterableLike$ScanLeaf$ ScanLeaf() {
        return this.ScanLeaf$module == null ? ScanLeaf$lzycompute() : this.ScanLeaf$module;
    }

    @Override // scala.collection.parallel.ParIterableLike
    public ParIterableLike$ScanNode$ ScanNode() {
        return this.ScanNode$module == null ? ScanNode$lzycompute() : this.ScanNode$module;
    }

    @Override // scala.collection.GenTraversableOnce
    public <S> S aggregate(Function0<S> function0, Function2<S, Tuple2<K, V>, S> function2, Function2<S, S, S> function22) {
        return (S) ParIterableLike.Cclass.aggregate(this, function0, function2, function22);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.Function1
    public V apply(K k) {
        return (V) ParMapLike.Cclass.apply(this, k);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <S, That> Object bf2seq(CanBuildFrom<ParHashMap<K, V>, S, That> canBuildFrom) {
        return ParIterableLike.Cclass.bf2seq(this, canBuildFrom);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public Seq<String> brokenInvariants() {
        return ParIterableLike.Cclass.brokenInvariants(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <Elem, To> Object builder2ops(Builder<Elem, To> builder) {
        return ParIterableLike.Cclass.builder2ops(this, builder);
    }

    @Override // scala.Equals
    public boolean canEqual(Object obj) {
        return ParIterableLike.Cclass.canEqual(this, obj);
    }

    @Override // scala.collection.GenTraversableLike
    public <S, That> That collect(PartialFunction<Tuple2<K, V>, S> partialFunction, CanBuildFrom<ParHashMap<K, V>, S, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.collect(this, partialFunction, canBuildFrom);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public Object combinerFactory() {
        return ParIterableLike.Cclass.combinerFactory(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <S, That> Object combinerFactory(Function0<Combiner<S, That>> function0) {
        return ParIterableLike.Cclass.combinerFactory(this, function0);
    }

    @Override // scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<ParIterable> companion() {
        return ParIterable.Cclass.companion(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public boolean contains(K k) {
        return ParMapLike.Cclass.contains(this, k);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> void copyToArray(Object obj) {
        ParIterableLike.Cclass.copyToArray(this, obj);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> void copyToArray(Object obj, int i) {
        ParIterableLike.Cclass.copyToArray(this, obj, i);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <U> void copyToArray(Object obj, int i, int i2) {
        ParIterableLike.Cclass.copyToArray(this, obj, i, i2);
    }

    @Override // scala.collection.GenTraversableOnce
    public int count(Function1<Tuple2<K, V>, Object> function1) {
        return ParIterableLike.Cclass.count(this, function1);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public ArrayBuffer<String> debugBuffer() {
        return ParIterableLike.Cclass.debugBuffer(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public String debugInformation() {
        return ParIterableLike.Cclass.debugInformation(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public void debugclear() {
        ParIterableLike.Cclass.debugclear(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public ArrayBuffer<String> debuglog(String str) {
        return ParIterableLike.Cclass.debuglog(this, str);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    /* renamed from: default */
    public V mo6041default(K k) {
        return (V) ParMapLike.Cclass.m6252default(this, k);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <PI extends DelegatedSignalling> Object delegatedSignalling2ops(PI pi) {
        return ParIterableLike.Cclass.delegatedSignalling2ops(this, pi);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.IterableLike
    public scala.collection.parallel.ParIterable drop(int i) {
        return ParIterableLike.Cclass.drop(this, i);
    }

    @Override // scala.collection.GenTraversableLike
    public scala.collection.parallel.ParIterable dropWhile(Function1 function1) {
        return ParIterableLike.Cclass.dropWhile(this, function1);
    }

    @Override // scala.collection.parallel.immutable.ParMap, scala.collection.parallel.ParMap, scala.collection.parallel.ParMapLike
    public ParHashMap<K, V> empty() {
        return new ParHashMap<>();
    }

    @Override // scala.collection.GenMapLike, scala.Equals
    public boolean equals(Object obj) {
        return GenMapLike.Cclass.equals(this, obj);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean exists(Function1<Tuple2<K, V>, Object> function1) {
        return ParIterableLike.Cclass.exists(this, function1);
    }

    @Override // scala.collection.GenTraversableLike
    public scala.collection.parallel.ParIterable filter(Function1 function1) {
        return ParIterableLike.Cclass.filter(this, function1);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public scala.collection.parallel.ParMap<K, V> filterKeys(Function1<K, Object> function1) {
        return ParMapLike.Cclass.filterKeys(this, function1);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.MapLike
    public scala.collection.parallel.ParIterable filterNot(Function1 function1) {
        return ParIterableLike.Cclass.filterNot(this, function1);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Option<Tuple2<K, V>> find(Function1<Tuple2<K, V>, Object> function1) {
        return ParIterableLike.Cclass.find(this, function1);
    }

    @Override // scala.collection.GenTraversableLike
    public <S, That> That flatMap(Function1<Tuple2<K, V>, GenTraversableOnce<S>> function1, CanBuildFrom<ParHashMap<K, V>, S, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.flatMap(this, function1, canBuildFrom);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public GenTraversable flatten(Function1 function1) {
        return GenericTraversableTemplate.Cclass.flatten(this, function1);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> U fold(U u, Function2<U, U, U> function2) {
        return (U) ParIterableLike.Cclass.fold(this, u, function2);
    }

    @Override // scala.collection.GenTraversableOnce
    public <S> S foldLeft(S s, Function2<S, Tuple2<K, V>, S> function2) {
        return (S) ParIterableLike.Cclass.foldLeft(this, s, function2);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <S> S foldRight(S s, Function2<Tuple2<K, V>, S, S> function2) {
        return (S) ParIterableLike.Cclass.foldRight(this, s, function2);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean forall(Function1<Tuple2<K, V>, Object> function1) {
        return ParIterableLike.Cclass.forall(this, function1);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<Tuple2<K, V>, U> function1) {
        ParIterableLike.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public <B> Combiner<B, ParIterable<B>> genericBuilder() {
        return GenericParTemplate.Cclass.genericBuilder(this);
    }

    @Override // scala.collection.generic.GenericParTemplate
    public <B> Combiner<B, ParIterable<B>> genericCombiner() {
        return GenericParTemplate.Cclass.genericCombiner(this);
    }

    @Override // scala.collection.generic.GenericParMapTemplate
    public <P, Q> Combiner<Tuple2<P, Q>, ParHashMap<P, Q>> genericMapCombiner() {
        return GenericParMapTemplate.Cclass.genericMapCombiner(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public Option<V> get(K k) {
        return this.trie.get(k);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public <U> U getOrElse(K k, Function0<U> function0) {
        return (U) ParMapLike.Cclass.getOrElse(this, k, function0);
    }

    @Override // scala.collection.GenTraversableLike
    public <K> ParMap<K, ParHashMap<K, V>> groupBy(Function1<Tuple2<K, V>, K> function1) {
        return ParIterableLike.Cclass.groupBy(this, function1);
    }

    @Override // scala.collection.GenTraversableOnce
    public boolean hasDefiniteSize() {
        return ParIterableLike.Cclass.hasDefiniteSize(this);
    }

    @Override // scala.collection.GenMapLike
    public int hashCode() {
        return GenMapLike.Cclass.hashCode(this);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public Object head() {
        return ParIterableLike.Cclass.head(this);
    }

    @Override // scala.collection.GenTraversableLike
    public Option<Tuple2<K, V>> headOption() {
        return ParIterableLike.Cclass.headOption(this);
    }

    @Override // scala.collection.GenTraversableLike
    public scala.collection.parallel.ParIterable init() {
        return ParIterableLike.Cclass.init(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public void initTaskSupport() {
        ParIterableLike.Cclass.initTaskSupport(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.PartialFunction
    public boolean isDefinedAt(K k) {
        return ParMapLike.Cclass.isDefinedAt(this, k);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        return ParIterableLike.Cclass.isEmpty(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public boolean isStrictSplitterCollection() {
        return ParIterableLike.Cclass.isStrictSplitterCollection(this);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.GenTraversableOnce
    public final boolean isTraversableAgain() {
        return ParIterableLike.Cclass.isTraversableAgain(this);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Splitter<Tuple2<K, V>> iterator() {
        return ParIterableLike.Cclass.iterator(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public ParSet<K> keySet() {
        return ParMapLike.Cclass.keySet(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public scala.collection.parallel.ParIterable<K> keys() {
        return ParMapLike.Cclass.keys(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public IterableSplitter<K> keysIterator() {
        return ParMapLike.Cclass.keysIterator(this);
    }

    @Override // scala.collection.GenTraversableLike
    public Object last() {
        return ParIterableLike.Cclass.last(this);
    }

    @Override // scala.collection.GenTraversableLike
    public Option<Tuple2<K, V>> lastOption() {
        return ParIterableLike.Cclass.lastOption(this);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.SetLike
    public <S, That> That map(Function1<Tuple2<K, V>, S> function1, CanBuildFrom<ParHashMap<K, V>, S, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.map(this, function1, canBuildFrom);
    }

    @Override // scala.collection.parallel.immutable.ParMap, scala.collection.parallel.ParMap, scala.collection.generic.GenericParMapTemplate
    public GenericParMapCompanion<scala.collection.parallel.ParMap> mapCompanion() {
        return ParHashMap$.MODULE$;
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public <S> scala.collection.parallel.ParMap<K, S> mapValues(Function1<V, S> function1) {
        return ParMapLike.Cclass.mapValues(this, function1);
    }

    @Override // scala.collection.GenTraversableOnce
    public Object max(Ordering ordering) {
        return ParIterableLike.Cclass.max(this, ordering);
    }

    @Override // scala.collection.GenTraversableOnce
    public Object maxBy(Function1 function1, Ordering ordering) {
        return ParIterableLike.Cclass.maxBy(this, function1, ordering);
    }

    @Override // scala.collection.GenTraversableOnce
    public Object min(Ordering ordering) {
        return ParIterableLike.Cclass.min(this, ordering);
    }

    @Override // scala.collection.GenTraversableOnce
    public Object minBy(Function1 function1, Ordering ordering) {
        return ParIterableLike.Cclass.minBy(this, function1, ordering);
    }

    @Override // scala.collection.GenTraversableOnce
    public String mkString() {
        return ParIterableLike.Cclass.mkString(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public String mkString(String str) {
        return ParIterableLike.Cclass.mkString(this, str);
    }

    @Override // scala.collection.GenTraversableOnce
    public String mkString(String str, String str2, String str3) {
        return ParIterableLike.Cclass.mkString(this, str, str2, str3);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
    public Builder<Tuple2<K, V>, ParIterable<Tuple2<K, V>>> newBuilder() {
        return GenericParTemplate.Cclass.newBuilder(this);
    }

    @Override // scala.collection.generic.GenericParMapTemplate, scala.collection.generic.GenericParTemplate, scala.collection.generic.HasNewCombiner
    public HashMapCombiner<K, V> newCombiner() {
        return HashMapCombiner$.MODULE$.apply();
    }

    @Override // scala.collection.GenTraversableOnce
    public boolean nonEmpty() {
        return ParIterableLike.Cclass.nonEmpty(this);
    }

    @Override // scala.collection.Parallelizable
    public scala.collection.parallel.ParIterable par() {
        return ParIterableLike.Cclass.par(this);
    }

    @Override // scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    public Combiner<Tuple2<K, V>, ParHashMap<K, V>> parCombiner() {
        return CustomParallelizable.Cclass.parCombiner(this);
    }

    @Override // scala.collection.GenTraversableLike
    public Tuple2<ParHashMap<K, V>, ParHashMap<K, V>> partition(Function1<Tuple2<K, V>, Object> function1) {
        return ParIterableLike.Cclass.partition(this, function1);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public void printDebugBuffer() {
        ParIterableLike.Cclass.printDebugBuffer(this);
    }

    public void printDebugInfo() {
        Predef$.MODULE$.println("Parallel hash trie");
        Predef$.MODULE$.println(new StringBuilder().append((Object) "Top level inner trie type: ").append(this.trie.getClass()).toString());
        HashMap<K, V> hashMap = this.trie;
        if (!(hashMap instanceof HashMap.HashMap1)) {
            Predef$.MODULE$.println("other kind of node");
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
            return;
        }
        HashMap.HashMap1 hashMap1 = (HashMap.HashMap1) hashMap;
        Predef$.MODULE$.println("single node type");
        Predef$.MODULE$.println(new StringBuilder().append((Object) "key stored: ").append(hashMap1.getKey()).toString());
        Predef$.MODULE$.println(new StringBuilder().append((Object) "hash of key: ").append(BoxesRunTime.boxToInteger(hashMap1.getHash())).toString());
        Predef$.MODULE$.println(new StringBuilder().append((Object) "computed hash of ").append(hashMap1.getKey()).append((Object) ": ").append(BoxesRunTime.boxToInteger(hashMap1.computeHashFor(hashMap1.getKey()))).toString());
        Predef$.MODULE$.println(new StringBuilder().append((Object) "trie.get(key): ").append(hashMap1.get(hashMap1.getKey())).toString());
        BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> U product(Numeric<U> numeric) {
        return (U) ParIterableLike.Cclass.product(this, numeric);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> U reduce(Function2<U, U, U> function2) {
        return (U) ParIterableLike.Cclass.reduce(this, function2);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <U> U reduceLeft(Function2<U, Tuple2<K, V>, U> function2) {
        return (U) ParIterableLike.Cclass.reduceLeft(this, function2);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> Option<U> reduceLeftOption(Function2<U, Tuple2<K, V>, U> function2) {
        return ParIterableLike.Cclass.reduceLeftOption(this, function2);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> Option<U> reduceOption(Function2<U, U, U> function2) {
        return ParIterableLike.Cclass.reduceOption(this, function2);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <U> U reduceRight(Function2<Tuple2<K, V>, U, U> function2) {
        return (U) ParIterableLike.Cclass.reduceRight(this, function2);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> Option<U> reduceRightOption(Function2<Tuple2<K, V>, U, U> function2) {
        return ParIterableLike.Cclass.reduceRightOption(this, function2);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    public scala.collection.parallel.ParIterable repr() {
        return ParIterableLike.Cclass.repr(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <S, That> Combiner<S, That> reuse(Option<Combiner<S, That>> option, Combiner<S, That> combiner) {
        if (option instanceof Some) {
            combiner = (Combiner) ((Some) option).m362x();
        } else if (!None$.MODULE$.equals(option)) {
            throw new MatchError(option);
        }
        return combiner;
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <U> boolean sameElements(GenIterable<U> genIterable) {
        return ParIterableLike.Cclass.sameElements(this, genIterable);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public TaskSupport scala$collection$parallel$ParIterableLike$$_tasksupport() {
        return this.scala$collection$parallel$ParIterableLike$$_tasksupport;
    }

    @Override // scala.collection.parallel.ParIterableLike
    @TraitSetter
    public void scala$collection$parallel$ParIterableLike$$_tasksupport_$eq(TaskSupport taskSupport) {
        this.scala$collection$parallel$ParIterableLike$$_tasksupport = taskSupport;
    }

    @Override // scala.collection.GenTraversableLike
    public <U, That> That scan(U u, Function2<U, U, U> function2, CanBuildFrom<ParHashMap<K, V>, U, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.scan(this, u, function2, canBuildFrom);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public int scanBlockSize() {
        return ParIterableLike.Cclass.scanBlockSize(this);
    }

    @Override // scala.collection.GenTraversableLike
    public <S, That> That scanLeft(S s, Function2<S, Tuple2<K, V>, S> function2, CanBuildFrom<ParHashMap<K, V>, S, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.scanLeft(this, s, function2, canBuildFrom);
    }

    @Override // scala.collection.GenTraversableLike
    public <S, That> That scanRight(S s, Function2<Tuple2<K, V>, S, S> function2, CanBuildFrom<ParHashMap<K, V>, S, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.scanRight(this, s, function2, canBuildFrom);
    }

    @Override // scala.collection.GenMap, scala.collection.GenMapLike, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public HashMap<K, V> seq() {
        return this.trie;
    }

    @Override // scala.collection.parallel.ParIterableLike
    public scala.collection.parallel.ParIterable sequentially(Function1 function1) {
        return ParIterableLike.Cclass.sequentially(this, function1);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.GenTraversableOnce
    public int size() {
        return this.trie.size();
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.IterableLike
    public scala.collection.parallel.ParIterable slice(int i, int i2) {
        return ParIterableLike.Cclass.slice(this, i, i2);
    }

    @Override // scala.collection.GenTraversableLike
    public Tuple2<ParHashMap<K, V>, ParHashMap<K, V>> span(Function1<Tuple2<K, V>, Object> function1) {
        return ParIterableLike.Cclass.span(this, function1);
    }

    @Override // scala.collection.GenTraversableLike
    public Tuple2<ParHashMap<K, V>, ParHashMap<K, V>> splitAt(int i) {
        return ParIterableLike.Cclass.splitAt(this, i);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public IterableSplitter<Tuple2<K, V>> splitter() {
        return new ParHashMapIterator(this, this.trie.iterator(), this.trie.size());
    }

    @Override // scala.collection.parallel.immutable.ParMap, scala.collection.parallel.ParMap, scala.collection.GenTraversableLike, scala.collection.SetLike
    public String stringPrefix() {
        return ParMap.Cclass.stringPrefix(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> U sum(Numeric<U> numeric) {
        return (U) ParIterableLike.Cclass.sum(this, numeric);
    }

    @Override // scala.collection.GenTraversableLike
    public scala.collection.parallel.ParIterable tail() {
        return ParIterableLike.Cclass.tail(this);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.IterableLike
    public scala.collection.parallel.ParIterable take(int i) {
        return ParIterableLike.Cclass.take(this, i);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.IterableLike
    public scala.collection.parallel.ParIterable takeWhile(Function1 function1) {
        return ParIterableLike.Cclass.takeWhile(this, function1);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <R, Tp> Object task2ops(ParIterableLike<Tuple2<K, V>, ParHashMap<K, V>, HashMap<K, V>>.StrictSplitterCheckTask<R, Tp> strictSplitterCheckTask) {
        return ParIterableLike.Cclass.task2ops(this, strictSplitterCheckTask);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public TaskSupport tasksupport() {
        return ParIterableLike.Cclass.tasksupport(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public void tasksupport_$eq(TaskSupport taskSupport) {
        scala$collection$parallel$ParIterableLike$$_tasksupport_$eq(taskSupport);
    }

    @Override // scala.collection.GenTraversableOnce
    /* renamed from: to */
    public <Col> Col mo1to(CanBuildFrom<Nothing$, Tuple2<K, V>, Col> canBuildFrom) {
        return (Col) ParIterableLike.Cclass.m112to(this, canBuildFrom);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> Object toArray(ClassTag<U> classTag) {
        return ParIterableLike.Cclass.toArray(this, classTag);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> Buffer<U> toBuffer() {
        return ParIterableLike.Cclass.toBuffer(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public IndexedSeq<Tuple2<K, V>> toIndexedSeq() {
        return ParIterableLike.Cclass.toIndexedSeq(this);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public ParIterable<Tuple2<K, V>> toIterable() {
        return ParIterable.Cclass.toIterable(this);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Iterator<Tuple2<K, V>> toIterator() {
        return ParIterableLike.Cclass.toIterator(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public List<Tuple2<K, V>> toList() {
        return ParIterableLike.Cclass.toList(this);
    }

    @Override // scala.collection.parallel.immutable.ParMap, scala.collection.GenTraversableOnce
    public <P, Q> ParMap<P, Q> toMap(Predef$$less$colon$less<Tuple2<K, V>, Tuple2<P, Q>> predef$$less$colon$less) {
        return ParMap.Cclass.toMap(this, predef$$less$colon$less);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <U, That> That toParCollection(Function0<Combiner<U, That>> function0) {
        return (That) ParIterableLike.Cclass.toParCollection(this, function0);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <K, V, That> That toParMap(Function0<Combiner<Tuple2<K, V>, That>> function0, Predef$$less$colon$less<Tuple2<K, V>, Tuple2<K, V>> predef$$less$colon$less) {
        return (That) ParIterableLike.Cclass.toParMap(this, function0, predef$$less$colon$less);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.SetLike
    public ParSeq<Tuple2<K, V>> toSeq() {
        return ParIterable.Cclass.toSeq(this);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.immutable.Set
    public <U> ParSet<U> toSet() {
        return ParIterableLike.Cclass.toSet(this);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Stream<Tuple2<K, V>> toStream() {
        return ParIterableLike.Cclass.toStream(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public String toString() {
        return ParIterableLike.Cclass.toString(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public GenTraversable<Tuple2<K, V>> toTraversable() {
        return ParIterableLike.Cclass.toTraversable(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public Vector<Tuple2<K, V>> toVector() {
        return ParIterableLike.Cclass.toVector(this);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public GenTraversable transpose(Function1 function1) {
        return GenericTraversableTemplate.Cclass.transpose(this, function1);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public <A1, A2> Tuple2<GenTraversable, GenTraversable> unzip(Function1<Tuple2<K, V>, Tuple2<A1, A2>> function1) {
        return GenericTraversableTemplate.Cclass.unzip(this, function1);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public <A1, A2, A3> Tuple3<GenTraversable, GenTraversable, GenTraversable> unzip3(Function1<Tuple2<K, V>, Tuple3<A1, A2, A3>> function1) {
        return GenericTraversableTemplate.Cclass.unzip3(this, function1);
    }

    @Override // scala.collection.parallel.immutable.ParMap, scala.collection.parallel.ParMap, scala.collection.GenMap, scala.collection.MapLike
    public <U> ParMap<K, U> updated(K k, U u) {
        return ParMap.Cclass.updated(this, k, u);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public scala.collection.parallel.ParIterable<V> values() {
        return ParMapLike.Cclass.values(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public IterableSplitter<V> valuesIterator() {
        return ParMapLike.Cclass.valuesIterator(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public Object view() {
        return ParIterableLike.Cclass.view(this);
    }

    @Override // scala.collection.parallel.immutable.ParMap
    public <U> ParMap<K, U> withDefault(Function1<K, U> function1) {
        return ParMap.Cclass.withDefault(this, function1);
    }

    @Override // scala.collection.parallel.immutable.ParMap
    public <U> ParMap<K, U> withDefaultValue(U u) {
        return ParMap.Cclass.withDefaultValue(this, u);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public scala.collection.parallel.ParIterable withFilter(Function1 function1) {
        return ParIterableLike.Cclass.withFilter(this, function1);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <R> Object wrap(Function0<R> function0) {
        return ParIterableLike.Cclass.wrap(this, function0);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <U, S, That> That zip(GenIterable<S> genIterable, CanBuildFrom<ParHashMap<K, V>, Tuple2<U, S>, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.zip(this, genIterable, canBuildFrom);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <S, U, That> That zipAll(GenIterable<S> genIterable, U u, S s, CanBuildFrom<ParHashMap<K, V>, Tuple2<U, S>, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.zipAll(this, genIterable, u, s, canBuildFrom);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <U, That> That zipWithIndex(CanBuildFrom<ParHashMap<K, V>, Tuple2<U, Object>, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.zipWithIndex(this, canBuildFrom);
    }
}
