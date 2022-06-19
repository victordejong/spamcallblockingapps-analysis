package scala.collection.parallel.immutable;

import java.util.Objects;
import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.Option;
import scala.PartialFunction;
import scala.Predef$;
import scala.Predef$$less$colon$less;
import scala.Serializable;
import scala.Tuple2;
import scala.Tuple3;
import scala.collection.BufferedIterator;
import scala.collection.CustomParallelizable;
import scala.collection.GenIterable;
import scala.collection.GenSeq;
import scala.collection.GenSeqLike;
import scala.collection.GenTraversable;
import scala.collection.GenTraversableOnce;
import scala.collection.Iterable;
import scala.collection.Iterator;
import scala.collection.Iterator$;
import scala.collection.Parallelizable;
import scala.collection.Seq;
import scala.collection.Seq$;
import scala.collection.Traversable;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.DelegatedSignalling;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.GenericParTemplate;
import scala.collection.generic.GenericTraversableTemplate;
import scala.collection.generic.Signalling;
import scala.collection.immutable.IndexedSeq;
import scala.collection.immutable.List;
import scala.collection.immutable.Map;
import scala.collection.immutable.Range;
import scala.collection.immutable.Set;
import scala.collection.immutable.Stream;
import scala.collection.immutable.Vector;
import scala.collection.mutable.ArrayBuffer;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Builder;
import scala.collection.mutable.StringBuilder;
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
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
import scala.runtime.ObjectRef;
import scala.runtime.TraitSetter;
@ScalaSignature(bytes = "\u0006\u0001\u00055g\u0001B\u0001\u0003\u0001-\u0011\u0001\u0002U1s%\u0006tw-\u001a\u0006\u0003\u0007\u0011\t\u0011\"[7nkR\f'\r\\3\u000b\u0005\u00151\u0011\u0001\u00039be\u0006dG.\u001a7\u000b\u0005\u001dA\u0011AC2pY2,7\r^5p]*\t\u0011\"A\u0003tG\u0006d\u0017m\u0001\u0001\u0014\t\u0001a\u0001c\u0006\t\u0003\u001b9i\u0011\u0001C\u0005\u0003\u001f!\u0011a!\u00118z%\u00164\u0007cA\t\u0013)5\t!!\u0003\u0002\u0014\u0005\t1\u0001+\u0019:TKF\u0004\"!D\u000b\n\u0005YA!aA%oiB\u0011Q\u0002G\u0005\u00033!\u0011AbU3sS\u0006d\u0017N_1cY\u0016D\u0001b\u0007\u0001\u0003\u0006\u0004%\t\u0001H\u0001\u0006e\u0006tw-Z\u000b\u0002;A\u0011a\u0004I\u0007\u0002?)\u00111AB\u0005\u0003C}\u0011QAU1oO\u0016D\u0001b\t\u0001\u0003\u0002\u0003\u0006I!H\u0001\u0007e\u0006tw-\u001a\u0011\t\u000b\u0015\u0002A\u0011\u0001\u0014\u0002\rqJg.\u001b;?)\t9\u0003\u0006\u0005\u0002\u0012\u0001!)1\u0004\na\u0001;!)!\u0006\u0001C!9\u0005\u00191/Z9\t\u000b1\u0002AQA\u0017\u0002\r1,gn\u001a;i+\u0005!\u0002FA\u00160!\ti\u0001'\u0003\u00022\u0011\t1\u0011N\u001c7j]\u0016DQa\r\u0001\u0005\u0006Q\nQ!\u00199qYf$\"\u0001F\u001b\t\u000bY\u0012\u0004\u0019\u0001\u000b\u0002\u0007%$\u0007\u0010\u000b\u00023_!)\u0011\b\u0001C\u0001u\u0005A1\u000f\u001d7jiR,'/F\u0001<!\taT(D\u0001\u0001\r\u0011q\u0004\u0001A \u0003!A\u000b'OU1oO\u0016LE/\u001a:bi>\u00148cA\u001f\r\u0001B\u0019\u0011I\u0011\u000b\u000e\u0003\u0011I!a\u0011\u0003\u0003\u0017M+\u0017o\u00159mSR$XM\u001d\u0005\t7u\u0012\t\u0011)A\u0005;!)Q%\u0010C\u0001\rR\u00111h\u0012\u0005\b7\u0015\u0003\n\u00111\u0001\u001e\u0011\u0015IU\b\"\u0011K\u0003!!xn\u0015;sS:<G#A&\u0011\u00051\u000bV\"A'\u000b\u00059{\u0015\u0001\u00027b]\u001eT\u0011\u0001U\u0001\u0005U\u00064\u0018-\u0003\u0002S\u001b\n11\u000b\u001e:j]\u001eDq\u0001V\u001fA\u0002\u0013%Q&A\u0002j]\u0012DqAV\u001fA\u0002\u0013%q+A\u0004j]\u0012|F%Z9\u0015\u0005a[\u0006CA\u0007Z\u0013\tQ\u0006B\u0001\u0003V]&$\bb\u0002/V\u0003\u0003\u0005\r\u0001F\u0001\u0004q\u0012\n\u0004B\u00020>A\u0003&A#\u0001\u0003j]\u0012\u0004\u0003b\u00021>\u0005\u0004%I!L\u0001\u0004Y\u0016t\u0007B\u00022>A\u0003%A#\u0001\u0003mK:\u0004\u0003\"\u00023>\t\u000bi\u0013!\u0003:f[\u0006Lg.\u001b8h\u0011\u00151W\b\"\u0002h\u0003\u001dA\u0017m\u001d(fqR,\u0012\u0001\u001b\t\u0003\u001b%L!A\u001b\u0005\u0003\u000f\t{w\u000e\\3b]\")A.\u0010C\u0003[\u0006!a.\u001a=u)\u0005!\u0002\"B8>\t\u0013a\u0012!\u0003:b]\u001e,G.\u001a4u\u0011\u0015\tX\b\"\u0001;\u0003\r!W\u000f\u001d\u0005\u0006gv\"\t\u0001^\u0001\u0006gBd\u0017\u000e^\u000b\u0002kB\u0019a/\u001f!\u000f\u000559\u0018B\u0001=\t\u0003\u001d\u0001\u0018mY6bO\u0016L!A_>\u0003\u0007M+\u0017O\u0003\u0002y\u0011!)Q0\u0010C\u0001}\u00061\u0001o\u001d9mSR$\"!^@\t\u000f\u0005\u0005A\u00101\u0001\u0002\u0004\u0005)1/\u001b>fgB!Q\"!\u0002\u0015\u0013\r\t9\u0001\u0003\u0002\u000byI,\u0007/Z1uK\u0012t\u0004bBA\u0006{\u0011\u0005\u0013QB\u0001\bM>\u0014X-Y2i+\u0011\ty!a\b\u0015\u0007a\u000b\t\u0002\u0003\u0005\u0002\u0014\u0005%\u0001\u0019AA\u000b\u0003\u00051\u0007CB\u0007\u0002\u0018Q\tY\"C\u0002\u0002\u001a!\u0011\u0011BR;oGRLwN\\\u0019\u0011\t\u0005u\u0011q\u0004\u0007\u0001\t!\t\t#!\u0003C\u0002\u0005\r\"!A+\u0012\t\u0005\u0015\u00121\u0006\t\u0004\u001b\u0005\u001d\u0012bAA\u0015\u0011\t9aj\u001c;iS:<\u0007cA\u0007\u0002.%\u0019\u0011q\u0006\u0005\u0003\u0007\u0005s\u0017\u0010C\u0004\u00024u\"\t%!\u000e\u0002\rI,G-^2f+\u0011\t9$a\u000f\u0015\t\u0005e\u0012q\b\t\u0005\u0003;\tY\u0004\u0002\u0005\u0002\"\u0005E\"\u0019AA\u001f#\r!\u00121\u0006\u0005\t\u0003\u0003\n\t\u00041\u0001\u0002D\u0005\u0011q\u000e\u001d\t\n\u001b\u0005\u0015\u0013\u0011HA\u001d\u0003sI1!a\u0012\t\u0005%1UO\\2uS>t'\u0007C\u0004\u0002Lu\"\t%!\u0014\u0002\u00195\f\u0007OM2p[\nLg.\u001a:\u0016\r\u0005=\u0013\u0011LA0)\u0019\t\t&a\u0019\u0002hA9\u0011)a\u0015\u0002X\u0005u\u0013bAA+\t\tA1i\\7cS:,'\u000f\u0005\u0003\u0002\u001e\u0005eC\u0001CA.\u0003\u0013\u0012\r!a\t\u0003\u0003M\u0003B!!\b\u0002`\u0011A\u0011\u0011MA%\u0005\u0004\t\u0019C\u0001\u0003UQ\u0006$\b\u0002CA\n\u0003\u0013\u0002\r!!\u001a\u0011\r5\t9\u0002FA,\u0011!\tI'!\u0013A\u0002\u0005E\u0013AA2c\u000f%\ti\u0007AA\u0001\u0012\u0003\ty'\u0001\tQCJ\u0014\u0016M\\4f\u0013R,'/\u0019;peB\u0019A(!\u001d\u0007\u0011y\u0002\u0011\u0011!E\u0001\u0003g\u001a2!!\u001d\r\u0011\u001d)\u0013\u0011\u000fC\u0001\u0003o\"\"!a\u001c\t\u0015\u0005m\u0014\u0011OI\u0001\n\u0003\ti(A\u000e%Y\u0016\u001c8/\u001b8ji\u0012:'/Z1uKJ$C-\u001a4bk2$H%M\u000b\u0003\u0003\u007fR3!HAAW\t\t\u0019\t\u0005\u0003\u0002\u0006\u0006=UBAAD\u0015\u0011\tI)a#\u0002\u0013Ut7\r[3dW\u0016$'bAAG\u0011\u0005Q\u0011M\u001c8pi\u0006$\u0018n\u001c8\n\t\u0005E\u0015q\u0011\u0002\u0012k:\u001c\u0007.Z2lK\u00124\u0016M]5b]\u000e,\u0007f\u0002\u0001\u0002\u0016\u0006m\u0015Q\u0014\t\u0004\u001b\u0005]\u0015bAAM\u0011\t\u00012+\u001a:jC24VM]:j_:,\u0016\nR\u0001\u0006m\u0006dW/\u001a\u0010\u0002\u0003\u001d9\u0011\u0011\u0015\u0002\t\u0002\u0005\r\u0016\u0001\u0003)beJ\u000bgnZ3\u0011\u0007E\t)K\u0002\u0004\u0002\u0005!\u0005\u0011qU\n\u0005\u0003Kcq\u0003C\u0004&\u0003K#\t!a+\u0015\u0005\u0005\r\u0006bB\u001a\u0002&\u0012\u0005\u0011q\u0016\u000b\nO\u0005E\u0016QWA]\u0003{Cq!a-\u0002.\u0002\u0007A#A\u0003ti\u0006\u0014H\u000fC\u0004\u00028\u00065\u0006\u0019\u0001\u000b\u0002\u0007\u0015tG\rC\u0004\u0002<\u00065\u0006\u0019\u0001\u000b\u0002\tM$X\r\u001d\u0005\b\u0003\u007f\u000bi\u000b1\u0001i\u0003%Ign\u00197vg&4X\r\u0003\u0006\u0002D\u0006\u0015\u0016\u0011!C\u0005\u0003\u000b\f1B]3bIJ+7o\u001c7wKR\u0011\u0011q\u0019\t\u0004\u0019\u0006%\u0017bAAf\u001b\n1qJ\u00196fGR\u0004")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/ParRange.class */
public class ParRange implements ParSeq<Object>, Serializable {
    public static final long serialVersionUID = 1;
    private volatile ParRange$ParRangeIterator$ ParRangeIterator$module;
    private volatile ParIterableLike$ScanLeaf$ ScanLeaf$module;
    private volatile ParIterableLike$ScanNode$ ScanNode$module;
    private final Range range;
    private volatile transient TaskSupport scala$collection$parallel$ParIterableLike$$_tasksupport;

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/ParRange$ParRangeIterator.class */
    public class ParRangeIterator implements SeqSplitter<Object> {
        public final /* synthetic */ ParRange $outer;
        private int ind = 0;
        private final int len;
        private final Range range;
        private Signalling signalDelegate;

        public ParRangeIterator(ParRange parRange, Range range) {
            this.range = range;
            Objects.requireNonNull(parRange);
            this.$outer = parRange;
            TraversableOnce.Cclass.$init$(this);
            Iterator.Cclass.$init$(this);
            RemainsIterator.Cclass.$init$(this);
            AugmentedIterableIterator.Cclass.$init$(this);
            DelegatedSignalling.Cclass.$init$(this);
            IterableSplitter.Cclass.$init$(this);
            AugmentedSeqIterator.Cclass.$init$(this);
            SeqSplitter.Cclass.$init$(this);
            this.len = range.length();
        }

        private int ind() {
            return this.ind;
        }

        private void ind_$eq(int i) {
            this.ind = i;
        }

        private int len() {
            return this.len;
        }

        private Range rangeleft() {
            return this.range.drop(ind());
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B $colon$bslash(B b, Function2<Object, B, B> function2) {
            Object foldRight;
            foldRight = foldRight(b, function2);
            return (B) foldRight;
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B $div$colon(B b, Function2<B, Object, B> function2) {
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
        public <B> B aggregate(Function0<B> function0, Function2<B, Object, B> function2, Function2<B, B, B> function22) {
            return (B) TraversableOnce.Cclass.aggregate(this, function0, function2, function22);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public <U, PI extends IterableSplitter<U>> IterableSplitter<Object>.Appended<U, PI> appendParIterable(PI pi) {
            return IterableSplitter.Cclass.appendParIterable(this, pi);
        }

        @Override // scala.collection.parallel.SeqSplitter
        public <U, PI extends SeqSplitter<U>> SeqSplitter<Object>.Appended<U, PI> appendParSeq(PI pi) {
            return SeqSplitter.Cclass.appendParSeq(this, pi);
        }

        @Override // scala.collection.Iterator
        public BufferedIterator<Object> buffered() {
            return Iterator.Cclass.buffered(this);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public String buildString(Function1<Function1<String, BoxedUnit>, BoxedUnit> function1) {
            return IterableSplitter.Cclass.buildString(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> collect(PartialFunction<Object, B> partialFunction) {
            return Iterator.Cclass.collect(this, partialFunction);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <S, That> Combiner<S, That> collect2combiner(PartialFunction<Object, S> partialFunction, Combiner<S, That> combiner) {
            return AugmentedIterableIterator.Cclass.collect2combiner(this, partialFunction, combiner);
        }

        @Override // scala.collection.TraversableOnce
        public <B> Option<B> collectFirst(PartialFunction<Object, B> partialFunction) {
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

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <S> boolean corresponds(Function2<Object, S, Object> function2, Iterator<S> iterator) {
            return AugmentedSeqIterator.Cclass.corresponds(this, function2, iterator);
        }

        @Override // scala.collection.Iterator
        public <B> boolean corresponds(GenTraversableOnce<B> genTraversableOnce, Function2<Object, B, Object> function2) {
            return Iterator.Cclass.corresponds(this, genTraversableOnce, function2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int count(Function1<Object, Object> function1) {
            return AugmentedIterableIterator.Cclass.count(this, function1);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public String debugInformation() {
            return IterableSplitter.Cclass.debugInformation(this);
        }

        @Override // scala.collection.Iterator
        public Iterator<Object> drop(int i) {
            return Iterator.Cclass.drop(this, i);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> drop2combiner(int i, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.drop2combiner(this, i, combiner);
        }

        @Override // scala.collection.Iterator
        public Iterator<Object> dropWhile(Function1<Object, Object> function1) {
            return Iterator.Cclass.dropWhile(this, function1);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter
        public ParRangeIterator dup() {
            return new ParRangeIterator(m97xb6b162b2(), rangeleft());
        }

        @Override // scala.collection.Iterator
        public Tuple2<Iterator<Object>, Iterator<Object>> duplicate() {
            return Iterator.Cclass.duplicate(this);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean exists(Function1<Object, Object> function1) {
            return Iterator.Cclass.exists(this, function1);
        }

        @Override // scala.collection.Iterator
        public Iterator<Object> filter(Function1<Object, Object> function1) {
            return Iterator.Cclass.filter(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> filter2combiner(Function1<Object, Object> function1, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.filter2combiner(this, function1, combiner);
        }

        @Override // scala.collection.Iterator
        public Iterator<Object> filterNot(Function1<Object, Object> function1) {
            return Iterator.Cclass.filterNot(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> filterNot2combiner(Function1<Object, Object> function1, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.filterNot2combiner(this, function1, combiner);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Option<Object> find(Function1<Object, Object> function1) {
            return Iterator.Cclass.find(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> flatMap(Function1<Object, GenTraversableOnce<B>> function1) {
            return Iterator.Cclass.flatMap(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <S, That> Combiner<S, That> flatmap2combiner(Function1<Object, GenTraversableOnce<S>> function1, Combiner<S, That> combiner) {
            return AugmentedIterableIterator.Cclass.flatmap2combiner(this, function1, combiner);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U fold(U u, Function2<U, U, U> function2) {
            return (U) AugmentedIterableIterator.Cclass.fold(this, u, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B foldLeft(B b, Function2<B, Object, B> function2) {
            return (B) TraversableOnce.Cclass.foldLeft(this, b, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <B> B foldRight(B b, Function2<Object, B, B> function2) {
            return (B) TraversableOnce.Cclass.foldRight(this, b, function2);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean forall(Function1<Object, Object> function1) {
            return Iterator.Cclass.forall(this, function1);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <U> void foreach(Function1<Object, U> function1) {
            Range drop = this.range.drop(ind());
            drop.scala$collection$immutable$Range$$validateMaxLength();
            boolean z = (drop.start() == Integer.MIN_VALUE && drop.end() == Integer.MIN_VALUE) ? false : true;
            int start = drop.start();
            int terminalElement = drop.terminalElement();
            int step = drop.step();
            int i = 0;
            while (true) {
                if (!(!z ? i < drop.numRangeElements() : start != terminalElement)) {
                    ind_$eq(len());
                    return;
                }
                function1.apply$mcVI$sp(start);
                i++;
                start += step;
            }
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<Object>.GroupedIterator<B> grouped(int i) {
            return Iterator.Cclass.grouped(this, i);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public boolean hasDefiniteSize() {
            return Iterator.Cclass.hasDefiniteSize(this);
        }

        @Override // scala.collection.Iterator
        public final boolean hasNext() {
            return ind() < len();
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
        public int indexWhere(Function1<Object, Object> function1) {
            return AugmentedSeqIterator.Cclass.indexWhere(this, function1);
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

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public int lastIndexWhere(Function1<Object, Object> function1) {
            return AugmentedSeqIterator.Cclass.lastIndexWhere(this, function1);
        }

        @Override // scala.collection.Iterator
        public int length() {
            return Iterator.Cclass.length(this);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public <S> SeqSplitter<Object>.Mapped<S> map(Function1<Object, S> function1) {
            return SeqSplitter.Cclass.map(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <S, That> Combiner<S, That> map2combiner(Function1<Object, S> function1, Combiner<S, That> combiner) {
            while (hasNext()) {
                combiner.$plus$eq((Combiner<S, That>) function1.apply(BoxesRunTime.boxToInteger(next())));
            }
            return combiner;
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
        public <U extends IterableSplitter<Object>.Taken> U newSliceInternal(U u, int i) {
            return (U) IterableSplitter.Cclass.newSliceInternal(this, u, i);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter
        public SeqSplitter<Object>.Taken newTaken(int i) {
            return SeqSplitter.Cclass.newTaken(this, i);
        }

        @Override // scala.collection.Iterator
        public final int next() {
            int i;
            if (hasNext()) {
                i = this.range.apply$mcII$sp(ind());
                ind_$eq(ind() + 1);
            } else {
                i = BoxesRunTime.unboxToInt(Iterator$.MODULE$.empty().next());
            }
            return i;
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
        public Tuple2<Iterator<Object>, Iterator<Object>> partition(Function1<Object, Object> function1) {
            return Iterator.Cclass.partition(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> partition2combiners(Function1<Object, Object> function1, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
            return AugmentedIterableIterator.Cclass.partition2combiners(this, function1, combiner, combiner2);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> patch(int i, Iterator<B> iterator, int i2) {
            return Iterator.Cclass.patch(this, i, iterator, i2);
        }

        @Override // scala.collection.parallel.SeqSplitter
        public <U> SeqSplitter<Object>.Patched<U> patchParSeq(int i, SeqSplitter<U> seqSplitter, int i2) {
            return SeqSplitter.Cclass.patchParSeq(this, i, seqSplitter, i2);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public int prefixLength(Function1<Object, Object> function1) {
            return AugmentedSeqIterator.Cclass.prefixLength(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U product(Numeric<U> numeric) {
            return (U) AugmentedIterableIterator.Cclass.product(this, numeric);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.PreciseSplitter
        public Seq<SeqSplitter<Object>> psplit(Seq<Object> seq) {
            return (Seq) seq.map(new ParRange$ParRangeIterator$$anonfun$psplit$1(this, ObjectRef.create(rangeleft())), Seq$.MODULE$.canBuildFrom());
        }

        @Override // scala.collection.parallel.SeqSplitter
        public Seq<SeqSplitter<Object>> psplitWithSignalling(Seq<Object> seq) {
            return SeqSplitter.Cclass.psplitWithSignalling(this, seq);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U reduce(Function2<U, U, U> function2) {
            U u = (U) rangeleft().reduceLeft(function2);
            ind_$eq(len());
            return u;
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U> U reduceLeft(int i, Function2<U, U, U> function2) {
            return (U) AugmentedIterableIterator.Cclass.reduceLeft(this, i, function2);
        }

        @Override // scala.collection.TraversableOnce
        public <B> B reduceLeft(Function2<B, Object, B> function2) {
            return (B) TraversableOnce.Cclass.reduceLeft(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Option<B> reduceLeftOption(Function2<B, Object, B> function2) {
            return TraversableOnce.Cclass.reduceLeftOption(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <A1> Option<A1> reduceOption(Function2<A1, A1, A1> function2) {
            return TraversableOnce.Cclass.reduceOption(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <B> B reduceRight(Function2<Object, B, B> function2) {
            return (B) TraversableOnce.Cclass.reduceRight(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Option<B> reduceRightOption(Function2<Object, B, B> function2) {
            return TraversableOnce.Cclass.reduceRightOption(this, function2);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter, scala.collection.parallel.RemainsIterator
        public final int remaining() {
            return len() - ind();
        }

        @Override // scala.collection.parallel.SeqSplitter
        public SeqSplitter<Object> reverse() {
            return SeqSplitter.Cclass.reverse(this);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <U, This> Combiner<U, This> reverse2combiner(Combiner<U, This> combiner) {
            return AugmentedSeqIterator.Cclass.reverse2combiner(this, combiner);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <S, That> Combiner<S, That> reverseMap2combiner(Function1<Object, S> function1, Combiner<S, That> combiner) {
            return AugmentedSeqIterator.Cclass.reverseMap2combiner(this, function1, combiner);
        }

        @Override // scala.collection.TraversableOnce
        public List<Object> reversed() {
            return TraversableOnce.Cclass.reversed(this);
        }

        @Override // scala.collection.Iterator
        public boolean sameElements(Iterator<?> iterator) {
            return Iterator.Cclass.sameElements(this, iterator);
        }

        /* renamed from: scala$collection$parallel$immutable$ParRange$ParRangeIterator$$$outer */
        public /* synthetic */ ParRange m97xb6b162b2() {
            return this.$outer;
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> scanLeft(B b, Function2<B, Object, B> function2) {
            return Iterator.Cclass.scanLeft(this, b, function2);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> scanRight(B b, Function2<Object, B, B> function2) {
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
        public Iterator<Object> seq() {
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

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public SeqSplitter<Object> slice(int i, int i2) {
            return SeqSplitter.Cclass.slice(this, i, i2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> slice2combiner(int i, int i2, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.slice2combiner(this, i, i2, combiner);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<Object>.GroupedIterator<B> sliding(int i, int i2) {
            return Iterator.Cclass.sliding(this, i, i2);
        }

        @Override // scala.collection.Iterator
        public <B> int sliding$default$2() {
            return Iterator.Cclass.sliding$default$2(this);
        }

        @Override // scala.collection.Iterator
        public Tuple2<Iterator<Object>, Iterator<Object>> span(Function1<Object, Object> function1) {
            return Iterator.Cclass.span(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> span2combiners(Function1<Object, Object> function1, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
            return AugmentedIterableIterator.Cclass.span2combiners(this, function1, combiner, combiner2);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter, scala.collection.parallel.Splitter
        public Seq<SeqSplitter<Object>> split() {
            Seq<SeqSplitter<Object>> seq;
            Range rangeleft = rangeleft();
            int length = rangeleft.length();
            if (length < 2) {
                seq = (Seq) Seq$.MODULE$.apply(Predef$.MODULE$.wrapRefArray(new ParRangeIterator[]{new ParRangeIterator(m97xb6b162b2(), rangeleft)}));
            } else {
                int i = length / 2;
                seq = (Seq) Seq$.MODULE$.apply(Predef$.MODULE$.wrapRefArray(new ParRangeIterator[]{new ParRangeIterator(m97xb6b162b2(), rangeleft.take(i)), new ParRangeIterator(m97xb6b162b2(), rangeleft.drop(i))}));
            }
            return seq;
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> splitAt2combiners(int i, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
            return AugmentedIterableIterator.Cclass.splitAt2combiners(this, i, combiner, combiner2);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter
        public Seq<SeqSplitter<Object>> splitWithSignalling() {
            return SeqSplitter.Cclass.splitWithSignalling(this);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U sum(Numeric<U> numeric) {
            return (U) AugmentedIterableIterator.Cclass.sum(this, numeric);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public int tag() {
            return DelegatedSignalling.Cclass.tag(this);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public SeqSplitter<Object> take(int i) {
            return SeqSplitter.Cclass.take(this, i);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> take2combiner(int i, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.take2combiner(this, i, combiner);
        }

        @Override // scala.collection.Iterator
        public Iterator<Object> takeWhile(Function1<Object, Object> function1) {
            return Iterator.Cclass.takeWhile(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Object> takeWhile2combiner(Function1<Object, Object> function1, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.takeWhile2combiner(this, function1, combiner);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        /* renamed from: to */
        public <Col> Col mo1to(CanBuildFrom<Nothing$, Object, Col> canBuildFrom) {
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
        public IndexedSeq<Object> toIndexedSeq() {
            return TraversableOnce.Cclass.toIndexedSeq(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Iterable<Object> toIterable() {
            return TraversableOnce.Cclass.toIterable(this);
        }

        @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Iterator<Object> toIterator() {
            return Iterator.Cclass.toIterator(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public List<Object> toList() {
            return TraversableOnce.Cclass.toList(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <T, U> Map<T, U> toMap(Predef$$less$colon$less<Object, Tuple2<T, U>> predef$$less$colon$less) {
            return TraversableOnce.Cclass.toMap(this, predef$$less$colon$less);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
        public Seq<Object> toSeq() {
            return TraversableOnce.Cclass.toSeq(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
        public <B> Set<B> toSet() {
            return TraversableOnce.Cclass.toSet(this);
        }

        @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Stream<Object> toStream() {
            return Iterator.Cclass.toStream(this);
        }

        @Override // scala.collection.Iterator
        public String toString() {
            return new StringBuilder().append((Object) "ParRangeIterator(over: ").append(this.range).append((Object) ")").toString();
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Traversable<Object> toTraversable() {
            return Iterator.Cclass.toTraversable(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Vector<Object> toVector() {
            return TraversableOnce.Cclass.toVector(this);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <U, That> Combiner<U, That> updated2combiner(int i, U u, Combiner<U, That> combiner) {
            return AugmentedSeqIterator.Cclass.updated2combiner(this, i, u, combiner);
        }

        @Override // scala.collection.Iterator
        public Iterator<Object> withFilter(Function1<Object, Object> function1) {
            return Iterator.Cclass.withFilter(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<Tuple2<Object, B>> zip(Iterator<B> iterator) {
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

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter
        public <S, U, R> SeqSplitter<Object>.ZippedAll<U, R> zipAllParSeq(SeqSplitter<S> seqSplitter, U u, R r) {
            return SeqSplitter.Cclass.zipAllParSeq(this, seqSplitter, u, r);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter
        public <S> SeqSplitter<Object>.Zipped<S> zipParSeq(SeqSplitter<S> seqSplitter) {
            return SeqSplitter.Cclass.zipParSeq(this, seqSplitter);
        }

        @Override // scala.collection.Iterator
        public Iterator<Tuple2<Object, Object>> zipWithIndex() {
            return Iterator.Cclass.zipWithIndex(this);
        }
    }

    public ParRange(Range range) {
        this.range = range;
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

    private ParRange$ParRangeIterator$ ParRangeIterator$lzycompute() {
        synchronized (this) {
            if (this.ParRangeIterator$module == null) {
                this.ParRangeIterator$module = new ParRange$ParRangeIterator$(this);
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.ParRangeIterator$module;
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

    @Override // scala.collection.GenTraversableOnce
    public <S> S $colon$bslash(S s, Function2<Object, S, S> function2) {
        Object foldRight;
        foldRight = foldRight(s, function2);
        return (S) foldRight;
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <U, That> That $colon$plus(U u, CanBuildFrom<ParSeq<Object>, U, That> canBuildFrom) {
        Object patch;
        patch = patch(length(), (GenSeq) ParArray$.MODULE$.apply(Predef$.MODULE$.genericWrapArray(new Object[]{u})), 0, canBuildFrom);
        return (That) patch;
    }

    @Override // scala.collection.GenTraversableOnce
    public <S> S $div$colon(S s, Function2<S, Object, S> function2) {
        Object foldLeft;
        foldLeft = foldLeft(s, function2);
        return (S) foldLeft;
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <U, That> That $plus$colon(U u, CanBuildFrom<ParSeq<Object>, U, That> canBuildFrom) {
        Object patch;
        patch = patch(0, (GenSeq) ParArray$.MODULE$.apply(Predef$.MODULE$.genericWrapArray(new Object[]{u})), 0, canBuildFrom);
        return (That) patch;
    }

    @Override // scala.collection.GenTraversableLike
    public <U, That> That $plus$plus(GenTraversableOnce<U> genTraversableOnce, CanBuildFrom<ParSeq<Object>, U, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.$plus$plus(this, genTraversableOnce, canBuildFrom);
    }

    public ParRange$ParRangeIterator$ ParRangeIterator() {
        return this.ParRangeIterator$module == null ? ParRangeIterator$lzycompute() : this.ParRangeIterator$module;
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
    public <S> S aggregate(Function0<S> function0, Function2<S, Object, S> function2, Function2<S, S, S> function22) {
        return (S) ParIterableLike.Cclass.aggregate(this, function0, function2, function22);
    }

    @Override // scala.collection.parallel.ParSeq, scala.collection.GenSeqLike
    public final int apply(int i) {
        return range().apply$mcII$sp(i);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <S, That> Object bf2seq(CanBuildFrom<ParSeq<Object>, S, That> canBuildFrom) {
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
    public <S, That> That collect(PartialFunction<Object, S> partialFunction, CanBuildFrom<ParSeq<Object>, S, That> canBuildFrom) {
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
    public GenericCompanion<ParSeq> companion() {
        return ParSeq.Cclass.companion(this);
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
    public <S> boolean corresponds(GenSeq<S> genSeq, Function2<Object, S, Object> function2) {
        return ParSeqLike.Cclass.corresponds(this, genSeq, function2);
    }

    @Override // scala.collection.GenTraversableOnce
    public int count(Function1<Object, Object> function1) {
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
    public SeqSplitter<Object> down(IterableSplitter<?> iterableSplitter) {
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
    public boolean exists(Function1<Object, Object> function1) {
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
    public Option<Object> find(Function1<Object, Object> function1) {
        return ParIterableLike.Cclass.find(this, function1);
    }

    @Override // scala.collection.GenTraversableLike
    public <S, That> That flatMap(Function1<Object, GenTraversableOnce<S>> function1, CanBuildFrom<ParSeq<Object>, S, That> canBuildFrom) {
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
    public <S> S foldLeft(S s, Function2<S, Object, S> function2) {
        return (S) ParIterableLike.Cclass.foldLeft(this, s, function2);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <S> S foldRight(S s, Function2<Object, S, S> function2) {
        return (S) ParIterableLike.Cclass.foldRight(this, s, function2);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean forall(Function1<Object, Object> function1) {
        return ParIterableLike.Cclass.forall(this, function1);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<Object, U> function1) {
        ParIterableLike.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public <B> Combiner<B, ParSeq<B>> genericBuilder() {
        return GenericParTemplate.Cclass.genericBuilder(this);
    }

    @Override // scala.collection.generic.GenericParTemplate
    public <B> Combiner<B, ParSeq<B>> genericCombiner() {
        return GenericParTemplate.Cclass.genericCombiner(this);
    }

    @Override // scala.collection.GenTraversableLike
    public <K> ParMap<K, ParSeq<Object>> groupBy(Function1<Object, K> function1) {
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
    public Object head() {
        return ParIterableLike.Cclass.head(this);
    }

    @Override // scala.collection.GenTraversableLike
    public Option<Object> headOption() {
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
    public int indexWhere(Function1<Object, Object> function1) {
        return GenSeqLike.Cclass.indexWhere(this, function1);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public int indexWhere(Function1<Object, Object> function1, int i) {
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
    public PreciseSplitter<Object> iterator() {
        return ParSeqLike.Cclass.iterator(this);
    }

    @Override // scala.collection.GenTraversableLike
    public Object last() {
        return ParIterableLike.Cclass.last(this);
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
    public int lastIndexWhere(Function1<Object, Object> function1) {
        return GenSeqLike.Cclass.lastIndexWhere(this, function1);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public int lastIndexWhere(Function1<Object, Object> function1, int i) {
        return ParSeqLike.Cclass.lastIndexWhere(this, function1, i);
    }

    @Override // scala.collection.GenTraversableLike
    public Option<Object> lastOption() {
        return ParIterableLike.Cclass.lastOption(this);
    }

    @Override // scala.collection.GenSeqLike
    public final int length() {
        return range().length();
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.SetLike
    public <S, That> That map(Function1<Object, S> function1, CanBuildFrom<ParSeq<Object>, S, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.map(this, function1, canBuildFrom);
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
    public Builder<Object, ParSeq<Object>> newBuilder() {
        return GenericParTemplate.Cclass.newBuilder(this);
    }

    @Override // scala.collection.generic.GenericParTemplate, scala.collection.generic.HasNewCombiner
    public Combiner<Object, ParSeq<Object>> newCombiner() {
        return GenericParTemplate.Cclass.newCombiner(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public boolean nonEmpty() {
        return ParIterableLike.Cclass.nonEmpty(this);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <U, That> That padTo(int i, U u, CanBuildFrom<ParSeq<Object>, U, That> canBuildFrom) {
        return (That) ParSeqLike.Cclass.padTo(this, i, u, canBuildFrom);
    }

    @Override // scala.collection.Parallelizable
    public scala.collection.parallel.ParIterable par() {
        return ParIterableLike.Cclass.par(this);
    }

    @Override // scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    public Combiner<Object, ParSeq<Object>> parCombiner() {
        return CustomParallelizable.Cclass.parCombiner(this);
    }

    @Override // scala.collection.GenTraversableLike
    public Tuple2<ParSeq<Object>, ParSeq<Object>> partition(Function1<Object, Object> function1) {
        return ParIterableLike.Cclass.partition(this, function1);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <U, That> That patch(int i, GenSeq<U> genSeq, int i2, CanBuildFrom<ParSeq<Object>, U, That> canBuildFrom) {
        return (That) ParSeqLike.Cclass.patch(this, i, genSeq, i2, canBuildFrom);
    }

    @Override // scala.collection.GenSeqLike
    public int prefixLength(Function1<Object, Object> function1) {
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

    public Range range() {
        return this.range;
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> U reduce(Function2<U, U, U> function2) {
        return (U) ParIterableLike.Cclass.reduce(this, function2);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <U> U reduceLeft(Function2<U, Object, U> function2) {
        return (U) ParIterableLike.Cclass.reduceLeft(this, function2);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> Option<U> reduceLeftOption(Function2<U, Object, U> function2) {
        return ParIterableLike.Cclass.reduceLeftOption(this, function2);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> Option<U> reduceOption(Function2<U, U, U> function2) {
        return ParIterableLike.Cclass.reduceOption(this, function2);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <U> U reduceRight(Function2<Object, U, U> function2) {
        return (U) ParIterableLike.Cclass.reduceRight(this, function2);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> Option<U> reduceRightOption(Function2<Object, U, U> function2) {
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
    public <S, That> That reverseMap(Function1<Object, S> function1, CanBuildFrom<ParSeq<Object>, S, That> canBuildFrom) {
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
    public <U, That> That scan(U u, Function2<U, U, U> function2, CanBuildFrom<ParSeq<Object>, U, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.scan(this, u, function2, canBuildFrom);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public int scanBlockSize() {
        return ParIterableLike.Cclass.scanBlockSize(this);
    }

    @Override // scala.collection.GenTraversableLike
    public <S, That> That scanLeft(S s, Function2<S, Object, S> function2, CanBuildFrom<ParSeq<Object>, S, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.scanLeft(this, s, function2, canBuildFrom);
    }

    @Override // scala.collection.GenTraversableLike
    public <S, That> That scanRight(S s, Function2<Object, S, S> function2, CanBuildFrom<ParSeq<Object>, S, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.scanRight(this, s, function2, canBuildFrom);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public int segmentLength(Function1<Object, Object> function1, int i) {
        return ParSeqLike.Cclass.segmentLength(this, function1, i);
    }

    @Override // scala.collection.GenSeq, scala.collection.GenSeqLike, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public Range seq() {
        return range();
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
    public Tuple2<ParSeq<Object>, ParSeq<Object>> span(Function1<Object, Object> function1) {
        return ParIterableLike.Cclass.span(this, function1);
    }

    @Override // scala.collection.GenTraversableLike
    public Tuple2<ParSeq<Object>, ParSeq<Object>> splitAt(int i) {
        return ParIterableLike.Cclass.splitAt(this, i);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public ParRangeIterator splitter() {
        return new ParRangeIterator(this, ParRangeIterator().$lessinit$greater$default$1());
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
    public <R, Tp> Object task2ops(ParIterableLike<Object, ParSeq<Object>, scala.collection.immutable.Seq<Object>>.StrictSplitterCheckTask<R, Tp> strictSplitterCheckTask) {
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
    public <Col> Col mo1to(CanBuildFrom<Nothing$, Object, Col> canBuildFrom) {
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
    public IndexedSeq<Object> toIndexedSeq() {
        return ParIterableLike.Cclass.toIndexedSeq(this);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public ParIterable<Object> toIterable() {
        return ParIterable.Cclass.toIterable(this);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Iterator<Object> toIterator() {
        return ParIterableLike.Cclass.toIterator(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public List<Object> toList() {
        return ParIterableLike.Cclass.toList(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public <K, V> ParMap<K, V> toMap(Predef$$less$colon$less<Object, Tuple2<K, V>> predef$$less$colon$less) {
        return ParIterableLike.Cclass.toMap(this, predef$$less$colon$less);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <U, That> That toParCollection(Function0<Combiner<U, That>> function0) {
        return (That) ParIterableLike.Cclass.toParCollection(this, function0);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <K, V, That> That toParMap(Function0<Combiner<Tuple2<K, V>, That>> function0, Predef$$less$colon$less<Object, Tuple2<K, V>> predef$$less$colon$less) {
        return (That) ParIterableLike.Cclass.toParMap(this, function0, predef$$less$colon$less);
    }

    @Override // scala.collection.parallel.immutable.ParSeq, scala.collection.GenSeqLike, scala.collection.GenTraversableOnce, scala.collection.SetLike
    public ParSeq<Object> toSeq() {
        return ParSeq.Cclass.toSeq(this);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.immutable.Set
    public <U> ParSet<U> toSet() {
        return ParIterableLike.Cclass.toSet(this);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Stream<Object> toStream() {
        return ParIterableLike.Cclass.toStream(this);
    }

    @Override // scala.collection.parallel.ParSeq, scala.collection.parallel.ParIterableLike
    public String toString() {
        return ParSeq.Cclass.toString(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public GenTraversable<Object> toTraversable() {
        return ParIterableLike.Cclass.toTraversable(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public Vector<Object> toVector() {
        return ParIterableLike.Cclass.toVector(this);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public GenTraversable transpose(Function1 function1) {
        return GenericTraversableTemplate.Cclass.transpose(this, function1);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <B, That> That union(GenSeq<B> genSeq, CanBuildFrom<ParSeq<Object>, B, That> canBuildFrom) {
        return (That) GenSeqLike.Cclass.union(this, genSeq, canBuildFrom);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public <A1, A2> Tuple2<GenTraversable, GenTraversable> unzip(Function1<Object, Tuple2<A1, A2>> function1) {
        return GenericTraversableTemplate.Cclass.unzip(this, function1);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public <A1, A2, A3> Tuple3<GenTraversable, GenTraversable, GenTraversable> unzip3(Function1<Object, Tuple3<A1, A2, A3>> function1) {
        return GenericTraversableTemplate.Cclass.unzip3(this, function1);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <U, That> That updated(int i, U u, CanBuildFrom<ParSeq<Object>, U, That> canBuildFrom) {
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
    public <U, S, That> That zip(GenIterable<S> genIterable, CanBuildFrom<ParSeq<Object>, Tuple2<U, S>, That> canBuildFrom) {
        return (That) ParSeqLike.Cclass.zip(this, genIterable, canBuildFrom);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <S, U, That> That zipAll(GenIterable<S> genIterable, U u, S s, CanBuildFrom<ParSeq<Object>, Tuple2<U, S>, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.zipAll(this, genIterable, u, s, canBuildFrom);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <U, That> That zipWithIndex(CanBuildFrom<ParSeq<Object>, Tuple2<U, Object>, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.zipWithIndex(this, canBuildFrom);
    }
}
