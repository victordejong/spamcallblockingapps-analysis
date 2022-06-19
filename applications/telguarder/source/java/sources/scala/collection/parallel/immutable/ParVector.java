package scala.collection.parallel.immutable;

import java.util.Objects;
import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.Function3;
import scala.Function4;
import scala.Function5;
import scala.Option;
import scala.PartialFunction;
import scala.Predef$;
import scala.Predef$$less$colon$less;
import scala.Serializable;
import scala.Tuple2;
import scala.Tuple3;
import scala.collection.CustomParallelizable;
import scala.collection.GenIterable;
import scala.collection.GenSeq;
import scala.collection.GenSeqLike;
import scala.collection.GenTraversable;
import scala.collection.GenTraversableOnce;
import scala.collection.Iterator;
import scala.collection.Parallelizable;
import scala.collection.Seq;
import scala.collection.Seq$;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.CanCombineFrom;
import scala.collection.generic.DelegatedSignalling;
import scala.collection.generic.GenTraversableFactory;
import scala.collection.generic.GenericParTemplate;
import scala.collection.generic.GenericTraversableTemplate;
import scala.collection.generic.Signalling;
import scala.collection.immutable.IndexedSeq;
import scala.collection.immutable.List;
import scala.collection.immutable.Nil$;
import scala.collection.immutable.Stream;
import scala.collection.immutable.Vector;
import scala.collection.immutable.Vector$;
import scala.collection.immutable.VectorIterator;
import scala.collection.mutable.ArrayBuffer;
import scala.collection.mutable.ArrayBuffer$;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Builder;
import scala.collection.parallel.AugmentedIterableIterator;
import scala.collection.parallel.AugmentedSeqIterator;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.IterableSplitter;
import scala.collection.parallel.ParIterable;
import scala.collection.parallel.ParIterableLike;
import scala.collection.parallel.ParIterableLike$ScanLeaf$;
import scala.collection.parallel.ParIterableLike$ScanNode$;
import scala.collection.parallel.ParSeq;
import scala.collection.parallel.ParSeqLike;
import scala.collection.parallel.PreciseSplitter;
import scala.collection.parallel.RemainsIterator;
import scala.collection.parallel.SeqSplitter;
import scala.collection.parallel.TaskSupport;
import scala.collection.parallel.immutable.ParIterable;
import scala.collection.parallel.immutable.ParSeq;
import scala.collection.parallel.mutable.ParArray$;
import scala.collection.parallel.package$;
import scala.math.Integral;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.Nothing$;
import scala.runtime.ObjectRef;
import scala.runtime.TraitSetter;
@ScalaSignature(bytes = "\u0006\u0001\u0005\u0005d\u0001B\u0001\u0003\u0001-\u0011\u0011\u0002U1s-\u0016\u001cGo\u001c:\u000b\u0005\r!\u0011!C5n[V$\u0018M\u00197f\u0015\t)a!\u0001\u0005qCJ\fG\u000e\\3m\u0015\t9\u0001\"\u0001\u0006d_2dWm\u0019;j_:T\u0011!C\u0001\u0006g\u000e\fG.Y\u0002\u0001+\taqc\u0005\u0004\u0001\u001bE\u0001s%\r\t\u0003\u001d=i\u0011\u0001C\u0005\u0003!!\u0011a!\u00118z%\u00164\u0007c\u0001\n\u0014+5\t!!\u0003\u0002\u0015\u0005\t1\u0001+\u0019:TKF\u0004\"AF\f\r\u0001\u00111\u0001\u0004\u0001CC\u0002e\u0011\u0011\u0001V\t\u00035u\u0001\"AD\u000e\n\u0005qA!a\u0002(pi\"Lgn\u001a\t\u0003\u001dyI!a\b\u0005\u0003\u0007\u0005s\u0017\u0010\u0005\u0003\"IU1S\"\u0001\u0012\u000b\u0005\r2\u0011aB4f]\u0016\u0014\u0018nY\u0005\u0003K\t\u0012!cR3oKJL7\rU1s)\u0016l\u0007\u000f\\1uKB\u0011!\u0003\u0001\t\u0006Q%*2\u0006L\u0007\u0002\t%\u0011!\u0006\u0002\u0002\u000b!\u0006\u00148+Z9MS.,\u0007c\u0001\n\u0001+A\u0019QfL\u000b\u000e\u00039R!a\u0001\u0004\n\u0005Ar#A\u0002,fGR|'\u000f\u0005\u0002\u000fe%\u00111\u0007\u0003\u0002\r'\u0016\u0014\u0018.\u00197ju\u0006\u0014G.\u001a\u0005\tk\u0001\u0011\t\u0011)A\u0005Y\u00051a/Z2u_JDQa\u000e\u0001\u0005\u0002a\na\u0001P5oSRtDCA\u0016:\u0011\u0015)d\u00071\u0001-\u0011\u0015Y\u0004\u0001\"\u0011=\u0003%\u0019w.\u001c9b]&|g.F\u0001>\u001d\t\u0011bhB\u0003@\u0005!\u0005\u0001)A\u0005QCJ4Vm\u0019;peB\u0011!#\u0011\u0004\u0006\u0003\tA\tAQ\n\u0004\u0003\u000e\u000b\u0004cA\u0011EM%\u0011QI\t\u0002\u000b!\u0006\u0014h)Y2u_JL\b\"B\u001cB\t\u00039E#\u0001!\t\u000b%\u000bE1\u0001&\u0002\u0019\r\fgNQ;jY\u00124%o\\7\u0016\u0005-3V#\u0001'\u0011\u000b\u0005ju*V,\n\u00059\u0013#AD\"b]\u000e{WNY5oK\u001a\u0013x.\u001c\t\u0003!Fk\u0011!Q\u0005\u0003%N\u0013AaQ8mY&\u0011AK\t\u0002\u0011\u000f\u0016tWM]5d\u0007>l\u0007/\u00198j_:\u0004\"A\u0006,\u0005\u000baA%\u0019A\r\u0011\u0007I\u0001Q\u000bC\u0003Z\u0003\u0012\u0005!,\u0001\u0006oK^\u0014U/\u001b7eKJ,\"a\u00171\u0016\u0003q\u0003B\u0001K/`C&\u0011a\f\u0002\u0002\t\u0007>l'-\u001b8feB\u0011a\u0003\u0019\u0003\u00061a\u0013\r!\u0007\t\u0004%\u0001y\u0006\"B2B\t\u0003!\u0017a\u00038fo\u000e{WNY5oKJ,\"!\u001a5\u0016\u0003\u0019\u0004B\u0001K/hSB\u0011a\u0003\u001b\u0003\u00061\t\u0014\r!\u0007\t\u0004%\u00019\u0007bB6B\u0003\u0003%I\u0001\\\u0001\fe\u0016\fGMU3t_24X\rF\u0001n!\tq7/D\u0001p\u0015\t\u0001\u0018/\u0001\u0003mC:<'\"\u0001:\u0002\t)\fg/Y\u0005\u0003i>\u0014aa\u00142kK\u000e$\b\"B\u001c\u0001\t\u00031H#A\u0016\t\u000ba\u0004A\u0011A=\u0002\u000b\u0005\u0004\b\u000f\\=\u0015\u0005UQ\b\"B>x\u0001\u0004a\u0018aA5eqB\u0011a\"`\u0005\u0003}\"\u00111!\u00138u\u0011\u001d\t\t\u0001\u0001C\u0001\u0003\u0007\ta\u0001\\3oORDW#\u0001?\t\u000f\u0005\u001d\u0001\u0001\"\u0001\u0002\n\u0005A1\u000f\u001d7jiR,'/\u0006\u0002\u0002\fA!\u0001&!\u0004\u0016\u0013\r\ty\u0001\u0002\u0002\f'\u0016\f8\u000b\u001d7jiR,'\u000fC\u0004\u0002\u0014\u0001!\t%!\u0006\u0002\u0007M,\u0017/F\u0001-\u0011\u001d\tI\u0002\u0001C!\u0003+\t\u0001\u0002^8WK\u000e$xN\u001d\u0004\u0007\u0003;\u0001\u0001!a\b\u0003#A\u000b'OV3di>\u0014\u0018\n^3sCR|'o\u0005\u0004\u0002\u001c\u0005\u0005\u00121\u0002\t\u0005[\u0005\rR#C\u0002\u0002&9\u0012aBV3di>\u0014\u0018\n^3sCR|'\u000f\u0003\u0006\u0002*\u0005m!\u0011!Q\u0001\nq\faaX:uCJ$\bBCA\u0017\u00037\u0011\t\u0011)A\u0005y\u0006!q,\u001a8e\u0011\u001d9\u00141\u0004C\u0001\u0003c!b!a\r\u00028\u0005e\u0002\u0003BA\u001b\u00037i\u0011\u0001\u0001\u0005\b\u0003S\ty\u00031\u0001}\u0011\u001d\ti#a\fA\u0002qD\u0001\"!\u0010\u0002\u001c\u0011\u0005\u00111A\u0001\ne\u0016l\u0017-\u001b8j]\u001eD\u0001\"!\u0011\u0002\u001c\u0011\u0005\u0011\u0011B\u0001\u0004IV\u0004\b\u0002CA#\u00037!\t!a\u0012\u0002\u000bM\u0004H.\u001b;\u0016\u0005\u0005%\u0003CBA&\u0003\u001b\n\u0019$D\u0001\u0007\u0013\r\tyE\u0002\u0002\u0004'\u0016\f\b\u0002CA*\u00037!\t!!\u0016\u0002\rA\u001c\b\u000f\\5u)\u0011\tI%a\u0016\t\u0011\u0005e\u0013\u0011\u000ba\u0001\u00037\nQa]5{KN\u0004BADA/y&\u0019\u0011q\f\u0005\u0003\u0015q\u0012X\r]3bi\u0016$g\b")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/ParVector.class */
public class ParVector<T> implements ParSeq<T>, Serializable {
    private volatile ParIterableLike$ScanLeaf$ ScanLeaf$module;
    private volatile ParIterableLike$ScanNode$ ScanNode$module;
    private volatile transient TaskSupport scala$collection$parallel$ParIterableLike$$_tasksupport;
    private final Vector<T> vector;

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/ParVector$ParVectorIterator.class */
    public class ParVectorIterator extends VectorIterator<T> implements SeqSplitter<T> {
        public final /* synthetic */ ParVector $outer;
        private Signalling signalDelegate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ParVectorIterator(ParVector<T> parVector, int i, int i2) {
            super(i, i2);
            Objects.requireNonNull(parVector);
            this.$outer = parVector;
            RemainsIterator.Cclass.$init$(this);
            AugmentedIterableIterator.Cclass.$init$(this);
            DelegatedSignalling.Cclass.$init$(this);
            IterableSplitter.Cclass.$init$(this);
            AugmentedSeqIterator.Cclass.$init$(this);
            SeqSplitter.Cclass.$init$(this);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public void abort() {
            DelegatedSignalling.Cclass.abort(this);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public <U, PI extends IterableSplitter<U>> IterableSplitter<T>.Appended<U, PI> appendParIterable(PI pi) {
            return IterableSplitter.Cclass.appendParIterable(this, pi);
        }

        @Override // scala.collection.parallel.SeqSplitter
        public <U, PI extends SeqSplitter<U>> SeqSplitter<T>.Appended<U, PI> appendParSeq(PI pi) {
            return SeqSplitter.Cclass.appendParSeq(this, pi);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public String buildString(Function1<Function1<String, BoxedUnit>, BoxedUnit> function1) {
            return IterableSplitter.Cclass.buildString(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <S, That> Combiner<S, That> collect2combiner(PartialFunction<T, S> partialFunction, Combiner<S, That> combiner) {
            return AugmentedIterableIterator.Cclass.collect2combiner(this, partialFunction, combiner);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, Coll, Bld extends Builder<U, Coll>> Bld copy2builder(Bld bld) {
            return (Bld) AugmentedIterableIterator.Cclass.copy2builder(this, bld);
        }

        @Override // scala.collection.AbstractIterator, scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <U> void copyToArray(Object obj, int i, int i2) {
            AugmentedIterableIterator.Cclass.copyToArray(this, obj, i, i2);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <S> boolean corresponds(Function2<T, S, Object> function2, Iterator<S> iterator) {
            return AugmentedSeqIterator.Cclass.corresponds(this, function2, iterator);
        }

        @Override // scala.collection.AbstractIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int count(Function1<T, Object> function1) {
            return AugmentedIterableIterator.Cclass.count(this, function1);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public String debugInformation() {
            return IterableSplitter.Cclass.debugInformation(this);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> drop2combiner(int i, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.drop2combiner(this, i, combiner);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter
        public SeqSplitter<T> dup() {
            return new ParVector(remainingVector()).splitter();
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> filter2combiner(Function1<T, Object> function1, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.filter2combiner(this, function1, combiner);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> filterNot2combiner(Function1<T, Object> function1, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.filterNot2combiner(this, function1, combiner);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <S, That> Combiner<S, That> flatmap2combiner(Function1<T, GenTraversableOnce<S>> function1, Combiner<S, That> combiner) {
            return AugmentedIterableIterator.Cclass.flatmap2combiner(this, function1, combiner);
        }

        @Override // scala.collection.AbstractIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U fold(U u, Function2<U, U, U> function2) {
            return (U) AugmentedIterableIterator.Cclass.fold(this, u, function2);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public int indexFlag() {
            return DelegatedSignalling.Cclass.indexFlag(this);
        }

        @Override // scala.collection.AbstractIterator, scala.collection.Iterator
        public int indexWhere(Function1<T, Object> function1) {
            return AugmentedSeqIterator.Cclass.indexWhere(this, function1);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public boolean isAborted() {
            return DelegatedSignalling.Cclass.isAborted(this);
        }

        @Override // scala.collection.parallel.RemainsIterator
        public boolean isRemainingCheap() {
            return RemainsIterator.Cclass.isRemainingCheap(this);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public int lastIndexWhere(Function1<T, Object> function1) {
            return AugmentedSeqIterator.Cclass.lastIndexWhere(this, function1);
        }

        @Override // scala.collection.AbstractIterator, scala.collection.Iterator
        public <S> SeqSplitter<T>.Mapped<S> map(Function1<T, S> function1) {
            return SeqSplitter.Cclass.map(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <S, That> Combiner<S, That> map2combiner(Function1<T, S> function1, Combiner<S, That> combiner) {
            return AugmentedIterableIterator.Cclass.map2combiner(this, function1, combiner);
        }

        @Override // scala.collection.AbstractIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> T max(Ordering<U> ordering) {
            return (T) AugmentedIterableIterator.Cclass.max(this, ordering);
        }

        @Override // scala.collection.AbstractIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> T min(Ordering<U> ordering) {
            return (T) AugmentedIterableIterator.Cclass.min(this, ordering);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public <U extends IterableSplitter<T>.Taken> U newSliceInternal(U u, int i) {
            return (U) IterableSplitter.Cclass.newSliceInternal(this, u, i);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter
        public SeqSplitter<T>.Taken newTaken(int i) {
            return SeqSplitter.Cclass.newTaken(this, i);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> partition2combiners(Function1<T, Object> function1, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
            return AugmentedIterableIterator.Cclass.partition2combiners(this, function1, combiner, combiner2);
        }

        @Override // scala.collection.parallel.SeqSplitter
        public <U> SeqSplitter<T>.Patched<U> patchParSeq(int i, SeqSplitter<U> seqSplitter, int i2) {
            return SeqSplitter.Cclass.patchParSeq(this, i, seqSplitter, i2);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public int prefixLength(Function1<T, Object> function1) {
            return AugmentedSeqIterator.Cclass.prefixLength(this, function1);
        }

        @Override // scala.collection.AbstractIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U product(Numeric<U> numeric) {
            return (U) AugmentedIterableIterator.Cclass.product(this, numeric);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.PreciseSplitter
        public Seq<ParVector<T>.ParVectorIterator> psplit(Seq<Object> seq) {
            ObjectRef create = ObjectRef.create(remainingVector());
            ArrayBuffer arrayBuffer = new ArrayBuffer();
            seq.foreach(new ParVector$ParVectorIterator$$anonfun$psplit$1(this, create, arrayBuffer));
            return (Seq) arrayBuffer.map(new ParVector$ParVectorIterator$$anonfun$psplit$2(this), ArrayBuffer$.MODULE$.canBuildFrom());
        }

        @Override // scala.collection.parallel.SeqSplitter
        public Seq<SeqSplitter<T>> psplitWithSignalling(Seq<Object> seq) {
            return SeqSplitter.Cclass.psplitWithSignalling(this, seq);
        }

        @Override // scala.collection.AbstractIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U reduce(Function2<U, U, U> function2) {
            return (U) AugmentedIterableIterator.Cclass.reduce(this, function2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U> U reduceLeft(int i, Function2<U, U, U> function2) {
            return (U) AugmentedIterableIterator.Cclass.reduceLeft(this, i, function2);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter, scala.collection.parallel.RemainsIterator
        public int remaining() {
            return remainingElementCount();
        }

        @Override // scala.collection.parallel.SeqSplitter
        public SeqSplitter<T> reverse() {
            return SeqSplitter.Cclass.reverse(this);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <U, This> Combiner<U, This> reverse2combiner(Combiner<U, This> combiner) {
            return AugmentedSeqIterator.Cclass.reverse2combiner(this, combiner);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <S, That> Combiner<S, That> reverseMap2combiner(Function1<T, S> function1, Combiner<S, That> combiner) {
            return AugmentedSeqIterator.Cclass.reverseMap2combiner(this, function1, combiner);
        }

        /* renamed from: scala$collection$parallel$immutable$ParVector$ParVectorIterator$$$outer */
        public /* synthetic */ ParVector m96x8cb30a72() {
            return this.$outer;
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

        @Override // scala.collection.AbstractIterator, scala.collection.Iterator
        public SeqSplitter<T> slice(int i, int i2) {
            return SeqSplitter.Cclass.slice(this, i, i2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> slice2combiner(int i, int i2, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.slice2combiner(this, i, i2, combiner);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> span2combiners(Function1<T, Object> function1, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
            return AugmentedIterableIterator.Cclass.span2combiners(this, function1, combiner, combiner2);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter, scala.collection.parallel.Splitter
        public Seq<ParVector<T>.ParVectorIterator> split() {
            Seq<ParVector<T>.ParVectorIterator> seq;
            int remaining = remaining();
            if (remaining >= 2) {
                int i = remaining / 2;
                seq = psplit(Predef$.MODULE$.wrapIntArray(new int[]{i, remaining - i}));
            } else {
                seq = (Seq) Seq$.MODULE$.apply(Predef$.MODULE$.wrapRefArray(new ParVectorIterator[]{this}));
            }
            return seq;
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> splitAt2combiners(int i, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
            return AugmentedIterableIterator.Cclass.splitAt2combiners(this, i, combiner, combiner2);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter
        public Seq<SeqSplitter<T>> splitWithSignalling() {
            return SeqSplitter.Cclass.splitWithSignalling(this);
        }

        @Override // scala.collection.AbstractIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U sum(Numeric<U> numeric) {
            return (U) AugmentedIterableIterator.Cclass.sum(this, numeric);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public int tag() {
            return DelegatedSignalling.Cclass.tag(this);
        }

        @Override // scala.collection.AbstractIterator, scala.collection.Iterator
        public SeqSplitter<T> take(int i) {
            return SeqSplitter.Cclass.take(this, i);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> take2combiner(int i, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.take2combiner(this, i, combiner);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Object> takeWhile2combiner(Function1<T, Object> function1, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.takeWhile2combiner(this, function1, combiner);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <U, That> Combiner<U, That> updated2combiner(int i, U u, Combiner<U, That> combiner) {
            return AugmentedSeqIterator.Cclass.updated2combiner(this, i, u, combiner);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, S, That> Combiner<Tuple2<U, S>, That> zip2combiner(RemainsIterator<S> remainsIterator, Combiner<Tuple2<U, S>, That> combiner) {
            return AugmentedIterableIterator.Cclass.zip2combiner(this, remainsIterator, combiner);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, S, That> Combiner<Tuple2<U, S>, That> zipAll2combiner(RemainsIterator<S> remainsIterator, U u, S s, Combiner<Tuple2<U, S>, That> combiner) {
            return AugmentedIterableIterator.Cclass.zipAll2combiner(this, remainsIterator, u, s, combiner);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter
        public <S, U, R> SeqSplitter<T>.ZippedAll<U, R> zipAllParSeq(SeqSplitter<S> seqSplitter, U u, R r) {
            return SeqSplitter.Cclass.zipAllParSeq(this, seqSplitter, u, r);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter
        public <S> SeqSplitter<T>.Zipped<S> zipParSeq(SeqSplitter<S> seqSplitter) {
            return SeqSplitter.Cclass.zipParSeq(this, seqSplitter);
        }
    }

    public ParVector() {
        this((Vector) Vector$.MODULE$.apply(Nil$.MODULE$));
    }

    public ParVector(Vector<T> vector) {
        this.vector = vector;
        Parallelizable.Cclass.$init$(this);
        GenSeqLike.Cclass.$init$(this);
        GenericTraversableTemplate.Cclass.$init$(this);
        GenTraversable.Cclass.$init$(this);
        GenIterable.Cclass.$init$(this);
        GenSeq.Cclass.$init$(this);
        GenericParTemplate.Cclass.$init$(this);
        CustomParallelizable.Cclass.$init$(this);
        scala$collection$parallel$ParIterableLike$$_tasksupport_$eq(package$.MODULE$.defaultTaskSupport());
        ParIterable.Cclass.$init$(this);
        ParSeqLike.Cclass.$init$(this);
        ParSeq.Cclass.$init$(this);
        ParIterable.Cclass.$init$(this);
        ParSeq.Cclass.$init$(this);
    }

    public static GenTraversableFactory<ParVector>.GenericCanBuildFrom<Nothing$> ReusableCBF() {
        return (GenTraversableFactory<CC>.GenericCanBuildFrom<Nothing$>) ParVector$.MODULE$.ReusableCBF();
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

    public static <T> CanCombineFrom<ParVector<?>, T, ParVector<T>> canBuildFrom() {
        return ParVector$.MODULE$.canBuildFrom();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable concat(Seq seq) {
        return ParVector$.MODULE$.concat(seq);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable empty() {
        return ParVector$.MODULE$.empty();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, int i4, int i5, Function0 function0) {
        return ParVector$.MODULE$.fill(i, i2, i3, i4, i5, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, int i4, Function0 function0) {
        return ParVector$.MODULE$.fill(i, i2, i3, i4, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, Function0 function0) {
        return ParVector$.MODULE$.fill(i, i2, i3, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, Function0 function0) {
        return ParVector$.MODULE$.fill(i, i2, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, Function0 function0) {
        return ParVector$.MODULE$.fill(i, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable iterate(Object obj, int i, Function1 function1) {
        return ParVector$.MODULE$.iterate(obj, i, function1);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable range(Object obj, Object obj2, Object obj3, Integral integral) {
        return ParVector$.MODULE$.range(obj, obj2, obj3, integral);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable range(Object obj, Object obj2, Integral integral) {
        return ParVector$.MODULE$.range(obj, obj2, integral);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, int i4, int i5, Function5 function5) {
        return ParVector$.MODULE$.tabulate(i, i2, i3, i4, i5, function5);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, int i4, Function4 function4) {
        return ParVector$.MODULE$.tabulate(i, i2, i3, i4, function4);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, Function3 function3) {
        return ParVector$.MODULE$.tabulate(i, i2, i3, function3);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, Function2 function2) {
        return ParVector$.MODULE$.tabulate(i, i2, function2);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, Function1 function1) {
        return ParVector$.MODULE$.tabulate(i, function1);
    }

    @Override // scala.collection.GenTraversableOnce
    public <S> S $colon$bslash(S s, Function2<T, S, S> function2) {
        Object foldRight;
        foldRight = foldRight(s, function2);
        return (S) foldRight;
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <U, That> That $colon$plus(U u, CanBuildFrom<ParVector<T>, U, That> canBuildFrom) {
        Object patch;
        patch = patch(length(), (GenSeq) ParArray$.MODULE$.apply(Predef$.MODULE$.genericWrapArray(new Object[]{u})), 0, canBuildFrom);
        return (That) patch;
    }

    @Override // scala.collection.GenTraversableOnce
    public <S> S $div$colon(S s, Function2<S, T, S> function2) {
        Object foldLeft;
        foldLeft = foldLeft(s, function2);
        return (S) foldLeft;
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <U, That> That $plus$colon(U u, CanBuildFrom<ParVector<T>, U, That> canBuildFrom) {
        Object patch;
        patch = patch(0, (GenSeq) ParArray$.MODULE$.apply(Predef$.MODULE$.genericWrapArray(new Object[]{u})), 0, canBuildFrom);
        return (That) patch;
    }

    @Override // scala.collection.GenTraversableLike
    public <U, That> That $plus$plus(GenTraversableOnce<U> genTraversableOnce, CanBuildFrom<ParVector<T>, U, That> canBuildFrom) {
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
    public <S> S aggregate(Function0<S> function0, Function2<S, T, S> function2, Function2<S, S, S> function22) {
        return (S) ParIterableLike.Cclass.aggregate(this, function0, function2, function22);
    }

    @Override // scala.collection.parallel.ParSeq, scala.collection.GenSeqLike
    public T apply(int i) {
        return this.vector.apply(i);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <S, That> Object bf2seq(CanBuildFrom<ParVector<T>, S, That> canBuildFrom) {
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
    public <S, That> That collect(PartialFunction<T, S> partialFunction, CanBuildFrom<ParVector<T>, S, That> canBuildFrom) {
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

    @Override // scala.collection.parallel.immutable.ParSeq, scala.collection.parallel.ParSeq, scala.collection.GenSeq, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public ParVector$ companion() {
        return ParVector$.MODULE$;
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

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <S> boolean corresponds(GenSeq<S> genSeq, Function2<T, S, Object> function2) {
        return ParSeqLike.Cclass.corresponds(this, genSeq, function2);
    }

    @Override // scala.collection.GenTraversableOnce
    public int count(Function1<T, Object> function1) {
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

    @Override // scala.collection.parallel.ParIterableLike
    public <PI extends DelegatedSignalling> Object delegatedSignalling2ops(PI pi) {
        return ParIterableLike.Cclass.delegatedSignalling2ops(this, pi);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public scala.collection.parallel.ParSeq diff(GenSeq genSeq) {
        return ParSeqLike.Cclass.diff(this, genSeq);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public scala.collection.parallel.ParSeq distinct() {
        return ParSeqLike.Cclass.distinct(this);
    }

    @Override // scala.collection.parallel.ParSeqLike
    public SeqSplitter<T> down(IterableSplitter<?> iterableSplitter) {
        return ParSeqLike.Cclass.down(this, iterableSplitter);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.IterableLike
    public scala.collection.parallel.ParIterable drop(int i) {
        return ParIterableLike.Cclass.drop(this, i);
    }

    @Override // scala.collection.GenTraversableLike
    public scala.collection.parallel.ParIterable dropWhile(Function1 function1) {
        return ParIterableLike.Cclass.dropWhile(this, function1);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <S> boolean endsWith(GenSeq<S> genSeq) {
        return ParSeqLike.Cclass.endsWith(this, genSeq);
    }

    @Override // scala.collection.GenSeqLike, scala.Equals
    public boolean equals(Object obj) {
        return GenSeqLike.Cclass.equals(this, obj);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean exists(Function1<T, Object> function1) {
        return ParIterableLike.Cclass.exists(this, function1);
    }

    @Override // scala.collection.GenTraversableLike
    public scala.collection.parallel.ParIterable filter(Function1 function1) {
        return ParIterableLike.Cclass.filter(this, function1);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.MapLike
    public scala.collection.parallel.ParIterable filterNot(Function1 function1) {
        return ParIterableLike.Cclass.filterNot(this, function1);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Option<T> find(Function1<T, Object> function1) {
        return ParIterableLike.Cclass.find(this, function1);
    }

    @Override // scala.collection.GenTraversableLike
    public <S, That> That flatMap(Function1<T, GenTraversableOnce<S>> function1, CanBuildFrom<ParVector<T>, S, That> canBuildFrom) {
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
    public <S> S foldLeft(S s, Function2<S, T, S> function2) {
        return (S) ParIterableLike.Cclass.foldLeft(this, s, function2);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <S> S foldRight(S s, Function2<T, S, S> function2) {
        return (S) ParIterableLike.Cclass.foldRight(this, s, function2);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean forall(Function1<T, Object> function1) {
        return ParIterableLike.Cclass.forall(this, function1);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<T, U> function1) {
        ParIterableLike.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public <B> Combiner<B, ParVector<B>> genericBuilder() {
        return GenericParTemplate.Cclass.genericBuilder(this);
    }

    @Override // scala.collection.generic.GenericParTemplate
    public <B> Combiner<B, ParVector<B>> genericCombiner() {
        return GenericParTemplate.Cclass.genericCombiner(this);
    }

    @Override // scala.collection.GenTraversableLike
    public <K> ParMap<K, ParVector<T>> groupBy(Function1<T, K> function1) {
        return ParIterableLike.Cclass.groupBy(this, function1);
    }

    @Override // scala.collection.GenTraversableOnce
    public boolean hasDefiniteSize() {
        return ParIterableLike.Cclass.hasDefiniteSize(this);
    }

    @Override // scala.collection.GenSeqLike
    public int hashCode() {
        return GenSeqLike.Cclass.hashCode(this);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public T head() {
        return (T) ParIterableLike.Cclass.head(this);
    }

    @Override // scala.collection.GenTraversableLike
    public Option<T> headOption() {
        return ParIterableLike.Cclass.headOption(this);
    }

    @Override // scala.collection.GenSeqLike
    public <B> int indexOf(B b) {
        return GenSeqLike.Cclass.indexOf(this, b);
    }

    @Override // scala.collection.GenSeqLike
    public <B> int indexOf(B b, int i) {
        return GenSeqLike.Cclass.indexOf(this, b, i);
    }

    @Override // scala.collection.GenSeqLike
    public int indexWhere(Function1<T, Object> function1) {
        return GenSeqLike.Cclass.indexWhere(this, function1);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public int indexWhere(Function1<T, Object> function1, int i) {
        return ParSeqLike.Cclass.indexWhere(this, function1, i);
    }

    @Override // scala.collection.GenTraversableLike
    public scala.collection.parallel.ParIterable init() {
        return ParIterableLike.Cclass.init(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public void initTaskSupport() {
        ParIterableLike.Cclass.initTaskSupport(this);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public scala.collection.parallel.ParSeq intersect(GenSeq genSeq) {
        return ParSeqLike.Cclass.intersect(this, genSeq);
    }

    @Override // scala.collection.GenSeqLike
    public boolean isDefinedAt(int i) {
        return GenSeqLike.Cclass.isDefinedAt(this, i);
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
    public PreciseSplitter<T> iterator() {
        return ParSeqLike.Cclass.iterator(this);
    }

    @Override // scala.collection.GenTraversableLike
    public T last() {
        return (T) ParIterableLike.Cclass.last(this);
    }

    @Override // scala.collection.GenSeqLike
    public <B> int lastIndexOf(B b) {
        return GenSeqLike.Cclass.lastIndexOf(this, b);
    }

    @Override // scala.collection.GenSeqLike
    public <B> int lastIndexOf(B b, int i) {
        return GenSeqLike.Cclass.lastIndexOf(this, b, i);
    }

    @Override // scala.collection.GenSeqLike
    public int lastIndexWhere(Function1<T, Object> function1) {
        return GenSeqLike.Cclass.lastIndexWhere(this, function1);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public int lastIndexWhere(Function1<T, Object> function1, int i) {
        return ParSeqLike.Cclass.lastIndexWhere(this, function1, i);
    }

    @Override // scala.collection.GenTraversableLike
    public Option<T> lastOption() {
        return ParIterableLike.Cclass.lastOption(this);
    }

    @Override // scala.collection.GenSeqLike
    public int length() {
        return this.vector.length();
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.SetLike
    public <S, That> That map(Function1<T, S> function1, CanBuildFrom<ParVector<T>, S, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.map(this, function1, canBuildFrom);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> T max(Ordering<U> ordering) {
        return (T) ParIterableLike.Cclass.max(this, ordering);
    }

    @Override // scala.collection.GenTraversableOnce
    public <S> T maxBy(Function1<T, S> function1, Ordering<S> ordering) {
        return (T) ParIterableLike.Cclass.maxBy(this, function1, ordering);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> T min(Ordering<U> ordering) {
        return (T) ParIterableLike.Cclass.min(this, ordering);
    }

    @Override // scala.collection.GenTraversableOnce
    public <S> T minBy(Function1<T, S> function1, Ordering<S> ordering) {
        return (T) ParIterableLike.Cclass.minBy(this, function1, ordering);
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
    public Builder<T, ParVector<T>> newBuilder() {
        return GenericParTemplate.Cclass.newBuilder(this);
    }

    @Override // scala.collection.generic.GenericParTemplate, scala.collection.generic.HasNewCombiner
    public Combiner<T, ParVector<T>> newCombiner() {
        return GenericParTemplate.Cclass.newCombiner(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public boolean nonEmpty() {
        return ParIterableLike.Cclass.nonEmpty(this);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <U, That> That padTo(int i, U u, CanBuildFrom<ParVector<T>, U, That> canBuildFrom) {
        return (That) ParSeqLike.Cclass.padTo(this, i, u, canBuildFrom);
    }

    @Override // scala.collection.Parallelizable
    public scala.collection.parallel.ParIterable par() {
        return ParIterableLike.Cclass.par(this);
    }

    @Override // scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    public Combiner<T, ParVector<T>> parCombiner() {
        return CustomParallelizable.Cclass.parCombiner(this);
    }

    @Override // scala.collection.GenTraversableLike
    public Tuple2<ParVector<T>, ParVector<T>> partition(Function1<T, Object> function1) {
        return ParIterableLike.Cclass.partition(this, function1);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <U, That> That patch(int i, GenSeq<U> genSeq, int i2, CanBuildFrom<ParVector<T>, U, That> canBuildFrom) {
        return (That) ParSeqLike.Cclass.patch(this, i, genSeq, i2, canBuildFrom);
    }

    @Override // scala.collection.GenSeqLike
    public int prefixLength(Function1<T, Object> function1) {
        return GenSeqLike.Cclass.prefixLength(this, function1);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public void printDebugBuffer() {
        ParIterableLike.Cclass.printDebugBuffer(this);
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
    public <U> U reduceLeft(Function2<U, T, U> function2) {
        return (U) ParIterableLike.Cclass.reduceLeft(this, function2);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> Option<U> reduceLeftOption(Function2<U, T, U> function2) {
        return ParIterableLike.Cclass.reduceLeftOption(this, function2);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> Option<U> reduceOption(Function2<U, U, U> function2) {
        return ParIterableLike.Cclass.reduceOption(this, function2);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <U> U reduceRight(Function2<T, U, U> function2) {
        return (U) ParIterableLike.Cclass.reduceRight(this, function2);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> Option<U> reduceRightOption(Function2<T, U, U> function2) {
        return ParIterableLike.Cclass.reduceRightOption(this, function2);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    public scala.collection.parallel.ParIterable repr() {
        return ParIterableLike.Cclass.repr(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <S, That> Combiner<S, That> reuse(Option<Combiner<S, That>> option, Combiner<S, That> combiner) {
        return ParIterableLike.Cclass.reuse(this, option, combiner);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public scala.collection.parallel.ParSeq reverse() {
        return ParSeqLike.Cclass.reverse(this);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <S, That> That reverseMap(Function1<T, S> function1, CanBuildFrom<ParVector<T>, S, That> canBuildFrom) {
        return (That) ParSeqLike.Cclass.reverseMap(this, function1, canBuildFrom);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <U> boolean sameElements(GenIterable<U> genIterable) {
        return ParSeqLike.Cclass.sameElements(this, genIterable);
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

    @Override // scala.collection.parallel.ParSeqLike
    public /* synthetic */ Object scala$collection$parallel$ParSeqLike$$super$zip(GenIterable genIterable, CanBuildFrom canBuildFrom) {
        return ParIterableLike.Cclass.zip(this, genIterable, canBuildFrom);
    }

    @Override // scala.collection.GenTraversableLike
    public <U, That> That scan(U u, Function2<U, U, U> function2, CanBuildFrom<ParVector<T>, U, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.scan(this, u, function2, canBuildFrom);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public int scanBlockSize() {
        return ParIterableLike.Cclass.scanBlockSize(this);
    }

    @Override // scala.collection.GenTraversableLike
    public <S, That> That scanLeft(S s, Function2<S, T, S> function2, CanBuildFrom<ParVector<T>, S, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.scanLeft(this, s, function2, canBuildFrom);
    }

    @Override // scala.collection.GenTraversableLike
    public <S, That> That scanRight(S s, Function2<T, S, S> function2, CanBuildFrom<ParVector<T>, S, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.scanRight(this, s, function2, canBuildFrom);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public int segmentLength(Function1<T, Object> function1, int i) {
        return ParSeqLike.Cclass.segmentLength(this, function1, i);
    }

    @Override // scala.collection.GenSeq, scala.collection.GenSeqLike, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public Vector<T> seq() {
        return this.vector;
    }

    @Override // scala.collection.parallel.ParIterableLike
    public scala.collection.parallel.ParIterable sequentially(Function1 function1) {
        return ParIterableLike.Cclass.sequentially(this, function1);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.GenTraversableOnce
    public int size() {
        return ParSeqLike.Cclass.size(this);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.IterableLike
    public scala.collection.parallel.ParIterable slice(int i, int i2) {
        return ParIterableLike.Cclass.slice(this, i, i2);
    }

    @Override // scala.collection.GenTraversableLike
    public Tuple2<ParVector<T>, ParVector<T>> span(Function1<T, Object> function1) {
        return ParIterableLike.Cclass.span(this, function1);
    }

    @Override // scala.collection.GenTraversableLike
    public Tuple2<ParVector<T>, ParVector<T>> splitAt(int i) {
        return ParIterableLike.Cclass.splitAt(this, i);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public SeqSplitter<T> splitter() {
        ParVectorIterator parVectorIterator = new ParVectorIterator(this, this.vector.startIndex(), this.vector.endIndex());
        this.vector.initIterator(parVectorIterator);
        return parVectorIterator;
    }

    @Override // scala.collection.GenSeqLike
    public <B> boolean startsWith(GenSeq<B> genSeq) {
        return GenSeqLike.Cclass.startsWith(this, genSeq);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <S> boolean startsWith(GenSeq<S> genSeq, int i) {
        return ParSeqLike.Cclass.startsWith(this, genSeq, i);
    }

    @Override // scala.collection.parallel.ParSeq, scala.collection.GenTraversableLike, scala.collection.SetLike
    public String stringPrefix() {
        return ParSeq.Cclass.stringPrefix(this);
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
    public <R, Tp> Object task2ops(ParIterableLike<T, ParVector<T>, Vector<T>>.StrictSplitterCheckTask<R, Tp> strictSplitterCheckTask) {
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
    public <Col> Col mo1to(CanBuildFrom<Nothing$, T, Col> canBuildFrom) {
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
    public IndexedSeq<T> toIndexedSeq() {
        return ParIterableLike.Cclass.toIndexedSeq(this);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public ParIterable<T> toIterable() {
        return ParIterable.Cclass.toIterable(this);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Iterator<T> toIterator() {
        return ParIterableLike.Cclass.toIterator(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public List<T> toList() {
        return ParIterableLike.Cclass.toList(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public <K, V> ParMap<K, V> toMap(Predef$$less$colon$less<T, Tuple2<K, V>> predef$$less$colon$less) {
        return ParIterableLike.Cclass.toMap(this, predef$$less$colon$less);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <U, That> That toParCollection(Function0<Combiner<U, That>> function0) {
        return (That) ParIterableLike.Cclass.toParCollection(this, function0);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <K, V, That> That toParMap(Function0<Combiner<Tuple2<K, V>, That>> function0, Predef$$less$colon$less<T, Tuple2<K, V>> predef$$less$colon$less) {
        return (That) ParIterableLike.Cclass.toParMap(this, function0, predef$$less$colon$less);
    }

    @Override // scala.collection.parallel.immutable.ParSeq, scala.collection.GenSeqLike, scala.collection.GenTraversableOnce, scala.collection.SetLike
    public ParSeq<T> toSeq() {
        return ParSeq.Cclass.toSeq(this);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.immutable.Set
    public <U> ParSet<U> toSet() {
        return ParIterableLike.Cclass.toSet(this);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Stream<T> toStream() {
        return ParIterableLike.Cclass.toStream(this);
    }

    @Override // scala.collection.parallel.ParSeq, scala.collection.parallel.ParIterableLike
    public String toString() {
        return ParSeq.Cclass.toString(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public GenTraversable<T> toTraversable() {
        return ParIterableLike.Cclass.toTraversable(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public Vector<T> toVector() {
        return this.vector;
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public GenTraversable transpose(Function1 function1) {
        return GenericTraversableTemplate.Cclass.transpose(this, function1);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <B, That> That union(GenSeq<B> genSeq, CanBuildFrom<ParVector<T>, B, That> canBuildFrom) {
        return (That) GenSeqLike.Cclass.union(this, genSeq, canBuildFrom);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public <A1, A2> Tuple2<GenTraversable, GenTraversable> unzip(Function1<T, Tuple2<A1, A2>> function1) {
        return GenericTraversableTemplate.Cclass.unzip(this, function1);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public <A1, A2, A3> Tuple3<GenTraversable, GenTraversable, GenTraversable> unzip3(Function1<T, Tuple3<A1, A2, A3>> function1) {
        return GenericTraversableTemplate.Cclass.unzip3(this, function1);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <U, That> That updated(int i, U u, CanBuildFrom<ParVector<T>, U, That> canBuildFrom) {
        return (That) ParSeqLike.Cclass.updated(this, i, u, canBuildFrom);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public Object view() {
        return ParSeqLike.Cclass.view(this);
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
    public <U, S, That> That zip(GenIterable<S> genIterable, CanBuildFrom<ParVector<T>, Tuple2<U, S>, That> canBuildFrom) {
        return (That) ParSeqLike.Cclass.zip(this, genIterable, canBuildFrom);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <S, U, That> That zipAll(GenIterable<S> genIterable, U u, S s, CanBuildFrom<ParVector<T>, Tuple2<U, S>, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.zipAll(this, genIterable, u, s, canBuildFrom);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <U, That> That zipWithIndex(CanBuildFrom<ParVector<T>, Tuple2<U, Object>, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.zipWithIndex(this, canBuildFrom);
    }
}
