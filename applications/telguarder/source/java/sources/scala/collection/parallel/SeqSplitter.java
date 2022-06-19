package scala.collection.parallel;

import java.util.Objects;
import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.MatchError;
import scala.Option;
import scala.PartialFunction;
import scala.Predef$;
import scala.Predef$$less$colon$less;
import scala.Tuple2;
import scala.collection.BufferedIterator;
import scala.collection.GenIterable;
import scala.collection.GenTraversableOnce;
import scala.collection.Iterable;
import scala.collection.Iterator;
import scala.collection.Seq;
import scala.collection.Seq$;
import scala.collection.Traversable;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.DelegatedSignalling;
import scala.collection.generic.Signalling;
import scala.collection.immutable.IndexedSeq;
import scala.collection.immutable.List;
import scala.collection.immutable.Map;
import scala.collection.immutable.Set;
import scala.collection.immutable.Stream;
import scala.collection.immutable.Vector;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Builder;
import scala.collection.mutable.StringBuilder;
import scala.collection.parallel.AugmentedIterableIterator;
import scala.collection.parallel.AugmentedSeqIterator;
import scala.collection.parallel.IterableSplitter;
import scala.collection.parallel.RemainsIterator;
import scala.collection.parallel.immutable.package$;
import scala.collection.parallel.mutable.ParArray;
import scala.collection.parallel.mutable.ParArray$;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BooleanRef;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
import scala.runtime.TraitSetter;
@ScalaSignature(bytes = "\u0006\u0001\tMf\u0001C\u0001\u0003!\u0003\r\t!C\u0017\u0003\u0017M+\u0017o\u00159mSR$XM\u001d\u0006\u0003\u0007\u0011\t\u0001\u0002]1sC2dW\r\u001c\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\f7\u0001A\u000b\u0003\u0015U\u0019R\u0001A\u0006\u0010=\u0005\u0002\"\u0001D\u0007\u000e\u0003\u0019I!A\u0004\u0004\u0003\r\u0005s\u0017PU3g!\r\u0001\u0012cE\u0007\u0002\u0005%\u0011!C\u0001\u0002\u0011\u0013R,'/\u00192mKN\u0003H.\u001b;uKJ\u0004\"\u0001F\u000b\r\u0001\u00111a\u0003\u0001CC\u0002]\u0011\u0011\u0001V\t\u00031m\u0001\"\u0001D\r\n\u0005i1!a\u0002(pi\"Lgn\u001a\t\u0003\u0019qI!!\b\u0004\u0003\u0007\u0005s\u0017\u0010E\u0002\u0011?MI!\u0001\t\u0002\u0003)\u0005+x-\\3oi\u0016$7+Z9Ji\u0016\u0014\u0018\r^8s!\r\u0001\"eE\u0005\u0003G\t\u0011q\u0002\u0015:fG&\u001cXm\u00159mSR$XM\u001d\u0005\u0006K\u0001!\tAJ\u0001\u0007I%t\u0017\u000e\u001e\u0013\u0015\u0003\u001d\u0002\"\u0001\u0004\u0015\n\u0005%2!\u0001B+oSRDQa\u000b\u0001\u0007\u00021\n1\u0001Z;q+\u0005i\u0003c\u0001\t\u0001'!)q\u0006\u0001D\u0001a\u0005)1\u000f\u001d7jiV\t\u0011\u0007E\u00023k5r!\u0001D\u001a\n\u0005Q2\u0011a\u00029bG.\fw-Z\u0005\u0003m]\u00121aU3r\u0015\t!d\u0001C\u0003:\u0001\u0019\u0005!(\u0001\u0004qgBd\u0017\u000e\u001e\u000b\u0003cmBQ\u0001\u0010\u001dA\u0002u\nQa]5{KN\u00042\u0001\u0004 A\u0013\tydA\u0001\u0006=e\u0016\u0004X-\u0019;fIz\u0002\"\u0001D!\n\u0005\t3!aA%oi\")A\t\u0001C!a\u0005\u00192\u000f\u001d7ji^KG\u000f[*jO:\fG\u000e\\5oO\")a\t\u0001C\u0001\u000f\u0006!\u0002o\u001d9mSR<\u0016\u000e\u001e5TS\u001et\u0017\r\u001c7j]\u001e$\"!\r%\t\u000bq*\u0005\u0019A\u001f\t\u000b)\u0003a\u0011A&\u0002\u0013I,W.Y5oS:<W#\u0001!\u0007\t5\u0003\u0001A\u0014\u0002\u0006)\u0006\\WM\\\n\u0004\u0019>k\u0003C\u0001)R\u001b\u0005\u0001\u0011BA'\u0012\u0011!\u0019FJ!A!\u0002\u0013\u0001\u0015A\u0001;l\u0011\u0015)F\n\"\u0001W\u0003\u0019a\u0014N\\5u}Q\u0011q\u000b\u0017\t\u0003!2CQa\u0015+A\u0002\u0001CQa\u000b'\u0005B1BQa\f'\u0005BABQ!\u000f'\u0005\u0002q#\"!M/\t\u000bqZ\u0006\u0019A\u001f\t\r}\u0003A\u0011\t\u0003a\u0003!qWm\u001e+bW\u0016tGCA,b\u0011\u0015\u0011g\f1\u0001A\u0003\u0015)h\u000e^5m\u0011\u0015!\u0007\u0001\"\u0011f\u0003\u0011!\u0018m[3\u0015\u000552\u0007\"B4d\u0001\u0004\u0001\u0015!\u00018\t\u000b%\u0004A\u0011\t6\u0002\u000bMd\u0017nY3\u0015\u00075ZW\u000eC\u0003mQ\u0002\u0007\u0001)A\u0003ge>l\u0017\u0007C\u0003oQ\u0002\u0007\u0001)\u0001\u0004v]RLG.\r\u0004\u0005a\u0002\u0001\u0011O\u0001\u0004NCB\u0004X\rZ\u000b\u0003eZ\u001c2a\\:y!\r\u0001F/^\u0005\u0003aF\u0001\"\u0001\u0006<\u0005\u000b]|'\u0019A\f\u0003\u0003M\u00032\u0001\u0005\u0001v\u0011!QxN!A!\u0002\u0013Y\u0018!\u00014\u0011\t1a8#^\u0005\u0003{\u001a\u0011\u0011BR;oGRLwN\\\u0019\t\u000bU{G\u0011A@\u0015\t\u0005\u0005\u00111\u0001\t\u0004!>,\b\"\u0002>\u007f\u0001\u0004Y\bBB\u0016p\t\u0003\n9!F\u0001y\u0011\u0019ys\u000e\"\u0011\u0002\fU\u0011\u0011Q\u0002\t\u0004eUB\bBB\u001dp\t\u0003\t\t\u0002\u0006\u0003\u0002\u000e\u0005M\u0001B\u0002\u001f\u0002\u0010\u0001\u0007Q\bC\u0004\u0002\u0018\u0001!\t%!\u0007\u0002\u00075\f\u0007/\u0006\u0003\u0002\u001c\u0005\u0005B\u0003BA\u000f\u0003G\u0001B\u0001U8\u0002 A\u0019A#!\t\u0005\r]\f)B1\u0001\u0018\u0011\u001dQ\u0018Q\u0003a\u0001\u0003K\u0001R\u0001\u0004?\u0014\u0003?1a!!\u000b\u0001\u0001\u0005-\"\u0001C!qa\u0016tG-\u001a3\u0016\r\u00055\u0012QGA\u001f'\u0019\t9#a\f\u0002DA9\u0001+!\r\u00024\u0005m\u0012bAA\u0015#A\u0019A#!\u000e\u0005\u0011\u0005]\u0012q\u0005b\u0001\u0003s\u0011\u0011!V\t\u0003'm\u00012\u0001FA\u001f\t!\ty$a\nC\u0002\u0005\u0005#A\u0001)J#\rA\u00121\t\t\u0005!\u0001\t\u0019\u0004C\u0007\u0002H\u0005\u001d\"\u0011!Q\u0001\n\u0005m\u0012\u0011J\u0001\u0003SRLA!a\u0013\u00022\u0005!A\u000f[1u\u0011\u001d)\u0016q\u0005C\u0001\u0003\u001f\"B!!\u0015\u0002TA9\u0001+a\n\u00024\u0005m\u0002\u0002CA$\u0003\u001b\u0002\r!a\u000f\t\u000f-\n9\u0003\"\u0011\u0002XU\u0011\u00111\t\u0005\b_\u0005\u001dB\u0011IA.+\t\ti\u0006\u0005\u00033k\u0005\r\u0003bB\u001d\u0002(\u0011\u0005\u0011\u0011\r\u000b\u0005\u0003;\n\u0019\u0007\u0003\u0004=\u0003?\u0002\r!\u0010\u0005\b\u0003O\u0002A\u0011AA5\u00031\t\u0007\u000f]3oIB\u000b'oU3r+\u0019\tY'!\u001d\u0002vQ!\u0011QNA>!\u001d\u0001\u0016qEA8\u0003g\u00022\u0001FA9\t!\t9$!\u001aC\u0002\u0005e\u0002c\u0001\u000b\u0002v\u0011A\u0011qHA3\u0005\u0004\t9(E\u0002\u0019\u0003s\u0002B\u0001\u0005\u0001\u0002p!A\u00111JA3\u0001\u0004\t\u0019H\u0002\u0004\u0002��\u0001\u0001\u0011\u0011\u0011\u0002\u00075&\u0004\b/\u001a3\u0016\t\u0005\r\u00151R\n\u0007\u0003{\n))!$\u0011\u000bA\u000b9)!#\n\u0007\u0005}\u0014\u0003E\u0002\u0015\u0003\u0017#aa^A?\u0005\u00049\u0002\u0003\u0002\t\u0001\u0003\u001f\u0003b\u0001DAI'\u0005%\u0015bAAJ\r\t1A+\u001e9mKJBQ\"a&\u0002~\t\u0005\t\u0015!\u0003\u0002\u001a\u0006m\u0015A\u0001;j!\u0011\u0001\u0002!!#\n\t\u0005-\u0013q\u0011\u0005\b+\u0006uD\u0011AAP)\u0011\t\t+a)\u0011\u000bA\u000bi(!#\t\u0011\u0005]\u0015Q\u0014a\u0001\u00033CqaKA?\t\u0003\n9+\u0006\u0002\u0002\u000e\"9q&! \u0005B\u0005-VCAAW!\u0011\u0011T'!$\t\u000fe\ni\b\"\u0001\u00022R!\u0011QVAZ\u0011\u001d\t),a,A\u0002u\n1a\u001d>t\u0011\u001d\tI\f\u0001C!\u0003w\u000b\u0011B_5q!\u0006\u00148+Z9\u0016\t\u0005u\u00161\u0019\u000b\u0005\u0003\u007f\u000b)\rE\u0003Q\u0003{\n\t\rE\u0002\u0015\u0003\u0007$aa^A\\\u0005\u00049\u0002\u0002CA&\u0003o\u0003\r!a2\u0011\tA\u0001\u0011\u0011\u0019\u0004\u0007\u0003\u0017\u0004\u0001!!4\u0003\u0013iK\u0007\u000f]3e\u00032dWCBAh\u0003/\fYn\u0005\u0004\u0002J\u0006E\u0017Q\u001c\t\b!\u0006M\u0017Q[Am\u0013\r\tY-\u0005\t\u0004)\u0005]G\u0001CA\u001c\u0003\u0013\u0014\r!!\u000f\u0011\u0007Q\tY\u000e\u0002\u0004x\u0003\u0013\u0014\ra\u0006\t\u0005!\u0001\ty\u000eE\u0004\r\u0003#\u000b).!7\t\u001b\u0005]\u0015\u0011\u001aB\u0001B\u0003%\u00111]As!\u0011\u0001\u0002!!7\n\t\u0005-\u00131\u001b\u0005\u000e\u0003S\fIM!A!\u0002\u0013\t).a;\u0002\u000bQD\u0017n]3\n\t\u00055\u00181[\u0001\ti\"L7/\u001a7f[\"i\u0011\u0011_Ae\u0005\u0003\u0005\u000b\u0011BAm\u0003g\fQ\u0001\u001e5bi\u0016LA!!>\u0002T\u0006AA\u000f[1uK2,W\u000eC\u0004V\u0003\u0013$\t!!?\u0015\u0011\u0005m\u0018Q`A��\u0005\u0003\u0001r\u0001UAe\u0003+\fI\u000e\u0003\u0005\u0002\u0018\u0006]\b\u0019AAr\u0011!\tI/a>A\u0002\u0005U\u0007\u0002CAy\u0003o\u0004\r!!7\t\u000f-\nI\r\"\u0011\u0003\u0006U\u0011\u0011Q\u001c\u0005\t\u0005\u0013\tI\r\"\u0003\u0003\f\u00059\u0001/\u0019;dQ\u0016lWC\u0001B\u0007!\u001da\u0011\u0011\u0013B\b\u0003G\u0004B\u0001\u0005\u0001\u0002V\"9q&!3\u0005B\tMQC\u0001B\u000b!\u0011\u0011T'!8\t\u000fe\nI\r\"\u0001\u0003\u001aQ!!Q\u0003B\u000e\u0011\u0019a$q\u0003a\u0001{!9!q\u0004\u0001\u0005B\t\u0005\u0012\u0001\u0004>ja\u0006cG\u000eU1s'\u0016\fX\u0003\u0003B\u0012\u0005k\u0011IC!\f\u0015\u0011\t\u0015\"q\u0007B\u001e\u0005\u007f\u0001r\u0001UAe\u0005O\u0011Y\u0003E\u0002\u0015\u0005S!\u0001\"a\u000e\u0003\u001e\t\u0007\u0011\u0011\b\t\u0004)\t5B\u0001\u0003B\u0018\u0005;\u0011\rA!\r\u0003\u0003I\u000b2Aa\r\u001c!\r!\"Q\u0007\u0003\u0007o\nu!\u0019A\f\t\u0011\u0005-#Q\u0004a\u0001\u0005s\u0001B\u0001\u0005\u0001\u00034!A!Q\bB\u000f\u0001\u0004\u00119#\u0001\u0005uQ&\u001cX\t\\3n\u0011!\u0011\tE!\bA\u0002\t-\u0012\u0001\u0003;iCR,E.Z7\t\r\t\u0015\u0003\u0001\"\u0001-\u0003\u001d\u0011XM^3sg\u00164aA!\u0013\u0001\u0001\t-#a\u0002)bi\u000eDW\rZ\u000b\u0005\u0005\u001b\u0012\u0019fE\u0003\u0003H-\u0011y\u0005\u0005\u0003\u0011\u0001\tE\u0003c\u0001\u000b\u0003T\u0011A\u0011q\u0007B$\u0005\u0004\tI\u0004\u0003\u0006\u0003X\t\u001d#\u0011!Q\u0001\n\u0001\u000bAA\u001a:p[\"Y!1\fB$\u0005\u0003\u0005\u000b\u0011\u0002B(\u0003\u0015\u0001\u0018\r^2i\u0011)\u0011yFa\u0012\u0003\u0002\u0003\u0006I\u0001Q\u0001\te\u0016\u0004H.Y2fI\"9QKa\u0012\u0005\u0002\t\rD\u0003\u0003B3\u0005O\u0012IGa\u001b\u0011\u000bA\u00139E!\u0015\t\u000f\t]#\u0011\ra\u0001\u0001\"A!1\fB1\u0001\u0004\u0011y\u0005C\u0004\u0003`\t\u0005\u0004\u0019\u0001!\t\u0013\t=$q\tQ\u0001\n\tE\u0014\u0001\u0002;sS>\u0004rAa\u001d\u0002(\tES\u0006E\u0004.\u0003O\u0011\tFa\u0014\t\u0011\t]$q\tC\u0001\u0005s\nq\u0001[1t\u001d\u0016DH/\u0006\u0002\u0003|A\u0019AB! \n\u0007\t}dAA\u0004C_>dW-\u00198\t\u0011\t\r%q\tC\u0001\u0005\u000b\u000bAA\\3yiR\u0011!\u0011\u000b\u0005\u0007\u0015\n\u001dC\u0011A&\t\u000f-\u00129\u0005\"\u0001\u0003\fV\u0011!Q\u0012\t\u0006[\t\u001d#\u0011\u000b\u0005\b_\t\u001dC\u0011\u0001BI+\t\u0011\u0019\n\u0005\u00033k\t=\u0003bB\u001d\u0003H\u0011\u0005!q\u0013\u000b\u0005\u0005'\u0013I\n\u0003\u0004=\u0005+\u0003\r!\u0010\u0005\b\u0005;\u0003A\u0011\u0001BP\u0003-\u0001\u0018\r^2i!\u0006\u00148+Z9\u0016\t\t\u0005&q\u0015\u000b\t\u0005G\u0013IKa+\u00032B)\u0001Ka\u0012\u0003&B\u0019ACa*\u0005\u0011\u0005]\"1\u0014b\u0001\u0003sAqAa\u0016\u0003\u001c\u0002\u0007\u0001\t\u0003\u0005\u0003.\nm\u0005\u0019\u0001BX\u0003)\u0001\u0018\r^2i\u000b2,Wn\u001d\t\u0005!\u0001\u0011)\u000bC\u0004\u0003`\tm\u0005\u0019\u0001!")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/SeqSplitter.class */
public interface SeqSplitter<T> extends IterableSplitter<T>, AugmentedSeqIterator<T>, PreciseSplitter<T> {

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/SeqSplitter$Appended.class */
    public class Appended<U, PI extends SeqSplitter<U>> extends IterableSplitter<T>.Appended<U, PI> implements SeqSplitter<U> {
        public Appended(SeqSplitter<T> seqSplitter, PI pi) {
            super(seqSplitter, pi);
            AugmentedSeqIterator.Cclass.$init$(this);
            Cclass.$init$(this);
        }

        @Override // scala.collection.parallel.SeqSplitter
        public <U, PI extends SeqSplitter<U>> SeqSplitter<U>.Appended<U, PI> appendParSeq(PI pi) {
            return Cclass.appendParSeq(this, pi);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <S> boolean corresponds(Function2<U, S, Object> function2, Iterator<S> iterator) {
            return AugmentedSeqIterator.Cclass.corresponds(this, function2, iterator);
        }

        @Override // scala.collection.parallel.IterableSplitter.Appended, scala.collection.parallel.IterableSplitter
        public SeqSplitter<U> dup() {
            return (SeqSplitter) super.dup();
        }

        @Override // scala.collection.parallel.IterableSplitter.Appended, scala.collection.Iterator
        public int indexWhere(Function1<U, Object> function1) {
            return AugmentedSeqIterator.Cclass.indexWhere(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public int lastIndexWhere(Function1<U, Object> function1) {
            return AugmentedSeqIterator.Cclass.lastIndexWhere(this, function1);
        }

        @Override // scala.collection.parallel.IterableSplitter.Appended, scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public <S> SeqSplitter<U>.Mapped<S> map(Function1<U, S> function1) {
            return Cclass.map(this, function1);
        }

        @Override // scala.collection.parallel.IterableSplitter.Appended, scala.collection.parallel.IterableSplitter
        public SeqSplitter<U>.Taken newTaken(int i) {
            return Cclass.newTaken(this, i);
        }

        @Override // scala.collection.parallel.SeqSplitter
        public <U> SeqSplitter<U>.Patched<U> patchParSeq(int i, SeqSplitter<U> seqSplitter, int i2) {
            return Cclass.patchParSeq(this, i, seqSplitter, i2);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public int prefixLength(Function1<U, Object> function1) {
            return AugmentedSeqIterator.Cclass.prefixLength(this, function1);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.PreciseSplitter
        public Seq<SeqSplitter<U>> psplit(Seq<Object> seq) {
            Seq<SeqSplitter<T>> seq2;
            if (firstNonEmpty()) {
                int remaining = scala$collection$parallel$SeqSplitter$Appended$$$outer().remaining();
                BooleanRef create = BooleanRef.create(false);
                Seq seq3 = (Seq) seq.scanLeft(BoxesRunTime.boxToInteger(0), new SeqSplitter$Appended$$anonfun$1(this), Seq$.MODULE$.canBuildFrom());
                Tuple2 span = ((TraversableLike) ((Seq) ((TraversableLike) seq.zip((GenIterable) seq3.init().zip(seq3.tail(), Seq$.MODULE$.canBuildFrom()), Seq$.MODULE$.canBuildFrom())).flatMap(new SeqSplitter$Appended$$anonfun$7(this, remaining, create), Seq$.MODULE$.canBuildFrom())).zip(seq3.init(), Seq$.MODULE$.canBuildFrom())).span(new SeqSplitter$Appended$$anonfun$8(this, remaining));
                if (span == null) {
                    throw new MatchError(span);
                }
                Tuple2 tuple2 = new Tuple2(span.mo269_1(), span.mo268_2());
                Tuple2 tuple22 = new Tuple2(((Seq) tuple2.mo269_1()).map(new SeqSplitter$Appended$$anonfun$9(this), Seq$.MODULE$.canBuildFrom()), ((Seq) tuple2.mo268_2()).map(new SeqSplitter$Appended$$anonfun$10(this), Seq$.MODULE$.canBuildFrom()));
                Tuple2 tuple23 = new Tuple2(tuple22.mo269_1(), tuple22.mo268_2());
                Seq<Object> seq4 = (Seq) tuple23.mo269_1();
                Seq<Object> seq5 = (Seq) tuple23.mo268_2();
                Seq<SeqSplitter<T>> psplit = scala$collection$parallel$SeqSplitter$Appended$$$outer().psplit(seq4);
                Seq<SeqSplitter<T>> psplit2 = ((SeqSplitter) that()).psplit(seq5);
                seq2 = create.elem ? (Seq) ((TraversableLike) psplit.init().$plus$plus(Seq$.MODULE$.apply(Predef$.MODULE$.wrapRefArray(new Appended[]{psplit.last().appendParSeq(psplit2.head())})), Seq$.MODULE$.canBuildFrom())).$plus$plus(psplit2.tail(), Seq$.MODULE$.canBuildFrom()) : (Seq) psplit.$plus$plus(psplit2, Seq$.MODULE$.canBuildFrom());
            } else {
                seq2 = ((SeqSplitter) curr()).psplit(seq);
            }
            return seq2;
        }

        @Override // scala.collection.parallel.SeqSplitter
        public Seq<SeqSplitter<U>> psplitWithSignalling(Seq<Object> seq) {
            return Cclass.psplitWithSignalling(this, seq);
        }

        @Override // scala.collection.parallel.SeqSplitter
        public SeqSplitter<U> reverse() {
            return Cclass.reverse(this);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <U, This> Combiner<U, This> reverse2combiner(Combiner<U, This> combiner) {
            return AugmentedSeqIterator.Cclass.reverse2combiner(this, combiner);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <S, That> Combiner<S, That> reverseMap2combiner(Function1<U, S> function1, Combiner<S, That> combiner) {
            return AugmentedSeqIterator.Cclass.reverseMap2combiner(this, function1, combiner);
        }

        public /* synthetic */ SeqSplitter scala$collection$parallel$SeqSplitter$Appended$$$outer() {
            return (SeqSplitter) this.$outer;
        }

        @Override // scala.collection.parallel.IterableSplitter.Appended, scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public SeqSplitter<U> slice(int i, int i2) {
            return Cclass.slice(this, i, i2);
        }

        @Override // scala.collection.parallel.IterableSplitter.Appended, scala.collection.parallel.IterableSplitter, scala.collection.parallel.Splitter
        public Seq<SeqSplitter<U>> split() {
            return super.split();
        }

        @Override // scala.collection.parallel.IterableSplitter.Appended, scala.collection.parallel.IterableSplitter
        public Seq<SeqSplitter<U>> splitWithSignalling() {
            return Cclass.splitWithSignalling(this);
        }

        @Override // scala.collection.parallel.IterableSplitter.Appended, scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public SeqSplitter<U> take(int i) {
            return Cclass.take(this, i);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <U, That> Combiner<U, That> updated2combiner(int i, U u, Combiner<U, That> combiner) {
            return AugmentedSeqIterator.Cclass.updated2combiner(this, i, u, combiner);
        }

        @Override // scala.collection.parallel.IterableSplitter.Appended, scala.collection.parallel.IterableSplitter
        public <S, U, R> SeqSplitter<U>.ZippedAll<U, R> zipAllParSeq(SeqSplitter<S> seqSplitter, U u, R r) {
            return Cclass.zipAllParSeq(this, seqSplitter, u, r);
        }

        @Override // scala.collection.parallel.IterableSplitter.Appended, scala.collection.parallel.IterableSplitter
        public <S> SeqSplitter<U>.Zipped<S> zipParSeq(SeqSplitter<S> seqSplitter) {
            return Cclass.zipParSeq(this, seqSplitter);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/SeqSplitter$Mapped.class */
    public class Mapped<S> extends IterableSplitter<T>.Mapped<S> implements SeqSplitter<S> {
        public final Function1<T, S> scala$collection$parallel$SeqSplitter$Mapped$$f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Mapped(SeqSplitter<T> seqSplitter, Function1<T, S> function1) {
            super(seqSplitter, function1);
            this.scala$collection$parallel$SeqSplitter$Mapped$$f = function1;
            AugmentedSeqIterator.Cclass.$init$(this);
            Cclass.$init$(this);
        }

        @Override // scala.collection.parallel.SeqSplitter
        public <U, PI extends SeqSplitter<U>> SeqSplitter<S>.Appended<U, PI> appendParSeq(PI pi) {
            return Cclass.appendParSeq(this, pi);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <S> boolean corresponds(Function2<S, S, Object> function2, Iterator<S> iterator) {
            return AugmentedSeqIterator.Cclass.corresponds(this, function2, iterator);
        }

        @Override // scala.collection.parallel.IterableSplitter.Mapped, scala.collection.parallel.IterableSplitter
        public SeqSplitter<S> dup() {
            return (SeqSplitter) super.dup();
        }

        @Override // scala.collection.parallel.IterableSplitter.Mapped, scala.collection.Iterator
        public int indexWhere(Function1<S, Object> function1) {
            return AugmentedSeqIterator.Cclass.indexWhere(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public int lastIndexWhere(Function1<S, Object> function1) {
            return AugmentedSeqIterator.Cclass.lastIndexWhere(this, function1);
        }

        @Override // scala.collection.parallel.IterableSplitter.Mapped, scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public <S> SeqSplitter<S>.Mapped<S> map(Function1<S, S> function1) {
            return Cclass.map(this, function1);
        }

        @Override // scala.collection.parallel.IterableSplitter.Mapped, scala.collection.parallel.IterableSplitter
        public SeqSplitter<S>.Taken newTaken(int i) {
            return Cclass.newTaken(this, i);
        }

        @Override // scala.collection.parallel.SeqSplitter
        public <U> SeqSplitter<S>.Patched<U> patchParSeq(int i, SeqSplitter<U> seqSplitter, int i2) {
            return Cclass.patchParSeq(this, i, seqSplitter, i2);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public int prefixLength(Function1<S, Object> function1) {
            return AugmentedSeqIterator.Cclass.prefixLength(this, function1);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.PreciseSplitter
        public Seq<SeqSplitter<S>> psplit(Seq<Object> seq) {
            return (Seq) scala$collection$parallel$SeqSplitter$Mapped$$$outer().psplit(seq).map(new SeqSplitter$Mapped$$anonfun$psplit$2(this), Seq$.MODULE$.canBuildFrom());
        }

        @Override // scala.collection.parallel.SeqSplitter
        public Seq<SeqSplitter<S>> psplitWithSignalling(Seq<Object> seq) {
            return Cclass.psplitWithSignalling(this, seq);
        }

        @Override // scala.collection.parallel.SeqSplitter
        public SeqSplitter<S> reverse() {
            return Cclass.reverse(this);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <U, This> Combiner<U, This> reverse2combiner(Combiner<U, This> combiner) {
            return AugmentedSeqIterator.Cclass.reverse2combiner(this, combiner);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <S, That> Combiner<S, That> reverseMap2combiner(Function1<S, S> function1, Combiner<S, That> combiner) {
            return AugmentedSeqIterator.Cclass.reverseMap2combiner(this, function1, combiner);
        }

        public /* synthetic */ SeqSplitter scala$collection$parallel$SeqSplitter$Mapped$$$outer() {
            return (SeqSplitter) this.$outer;
        }

        @Override // scala.collection.parallel.IterableSplitter.Mapped, scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public SeqSplitter<S> slice(int i, int i2) {
            return Cclass.slice(this, i, i2);
        }

        @Override // scala.collection.parallel.IterableSplitter.Mapped, scala.collection.parallel.IterableSplitter, scala.collection.parallel.Splitter
        public Seq<SeqSplitter<S>> split() {
            return super.split();
        }

        @Override // scala.collection.parallel.IterableSplitter.Mapped, scala.collection.parallel.IterableSplitter
        public Seq<SeqSplitter<S>> splitWithSignalling() {
            return Cclass.splitWithSignalling(this);
        }

        @Override // scala.collection.parallel.IterableSplitter.Mapped, scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public SeqSplitter<S> take(int i) {
            return Cclass.take(this, i);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <U, That> Combiner<U, That> updated2combiner(int i, U u, Combiner<U, That> combiner) {
            return AugmentedSeqIterator.Cclass.updated2combiner(this, i, u, combiner);
        }

        @Override // scala.collection.parallel.IterableSplitter.Mapped, scala.collection.parallel.IterableSplitter
        public <S, U, R> SeqSplitter<S>.ZippedAll<U, R> zipAllParSeq(SeqSplitter<S> seqSplitter, U u, R r) {
            return Cclass.zipAllParSeq(this, seqSplitter, u, r);
        }

        @Override // scala.collection.parallel.IterableSplitter.Mapped, scala.collection.parallel.IterableSplitter
        public <S> SeqSplitter<S>.Zipped<S> zipParSeq(SeqSplitter<S> seqSplitter) {
            return Cclass.zipParSeq(this, seqSplitter);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/SeqSplitter$Patched.class */
    public class Patched<U> implements SeqSplitter<U> {
        public final /* synthetic */ SeqSplitter $outer;
        private final int from;
        private final SeqSplitter<U> patch;
        private final int replaced;
        private Signalling signalDelegate;
        private final SeqSplitter<U>.Appended<U, SeqSplitter<T>> trio;

        public Patched(SeqSplitter<T> seqSplitter, int i, SeqSplitter<U> seqSplitter2, int i2) {
            this.from = i;
            this.patch = seqSplitter2;
            this.replaced = i2;
            Objects.requireNonNull(seqSplitter);
            this.$outer = seqSplitter;
            TraversableOnce.Cclass.$init$(this);
            Iterator.Cclass.$init$(this);
            RemainsIterator.Cclass.$init$(this);
            AugmentedIterableIterator.Cclass.$init$(this);
            DelegatedSignalling.Cclass.$init$(this);
            IterableSplitter.Cclass.$init$(this);
            AugmentedSeqIterator.Cclass.$init$(this);
            Cclass.$init$(this);
            signalDelegate_$eq(seqSplitter.signalDelegate());
            Seq<SeqSplitter<T>> psplit = seqSplitter.psplit(Predef$.MODULE$.wrapIntArray(new int[]{i, i2, (seqSplitter.remaining() - i) - i2}));
            this.trio = psplit.apply(0).appendParSeq(seqSplitter2).appendParSeq(psplit.apply(2));
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B $colon$bslash(B b, Function2<U, B, B> function2) {
            Object foldRight;
            foldRight = foldRight(b, function2);
            return (B) foldRight;
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B $div$colon(B b, Function2<B, U, B> function2) {
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
        public <B> B aggregate(Function0<B> function0, Function2<B, U, B> function2, Function2<B, B, B> function22) {
            return (B) TraversableOnce.Cclass.aggregate(this, function0, function2, function22);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public <U, PI extends IterableSplitter<U>> IterableSplitter<U>.Appended<U, PI> appendParIterable(PI pi) {
            return IterableSplitter.Cclass.appendParIterable(this, pi);
        }

        @Override // scala.collection.parallel.SeqSplitter
        public <U, PI extends SeqSplitter<U>> SeqSplitter<U>.Appended<U, PI> appendParSeq(PI pi) {
            return Cclass.appendParSeq(this, pi);
        }

        @Override // scala.collection.Iterator
        public BufferedIterator<U> buffered() {
            return Iterator.Cclass.buffered(this);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public String buildString(Function1<Function1<String, BoxedUnit>, BoxedUnit> function1) {
            return IterableSplitter.Cclass.buildString(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> collect(PartialFunction<U, B> partialFunction) {
            return Iterator.Cclass.collect(this, partialFunction);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <S, That> Combiner<S, That> collect2combiner(PartialFunction<U, S> partialFunction, Combiner<S, That> combiner) {
            return AugmentedIterableIterator.Cclass.collect2combiner(this, partialFunction, combiner);
        }

        @Override // scala.collection.TraversableOnce
        public <B> Option<B> collectFirst(PartialFunction<U, B> partialFunction) {
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
        public <S> boolean corresponds(Function2<U, S, Object> function2, Iterator<S> iterator) {
            return AugmentedSeqIterator.Cclass.corresponds(this, function2, iterator);
        }

        @Override // scala.collection.Iterator
        public <B> boolean corresponds(GenTraversableOnce<B> genTraversableOnce, Function2<U, B, Object> function2) {
            return Iterator.Cclass.corresponds(this, genTraversableOnce, function2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int count(Function1<U, Object> function1) {
            return AugmentedIterableIterator.Cclass.count(this, function1);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public String debugInformation() {
            return IterableSplitter.Cclass.debugInformation(this);
        }

        @Override // scala.collection.Iterator
        public Iterator<U> drop(int i) {
            return Iterator.Cclass.drop(this, i);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> drop2combiner(int i, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.drop2combiner(this, i, combiner);
        }

        @Override // scala.collection.Iterator
        public Iterator<U> dropWhile(Function1<U, Object> function1) {
            return Iterator.Cclass.dropWhile(this, function1);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter
        public SeqSplitter<T>.Patched<U> dup() {
            return scala$collection$parallel$SeqSplitter$Patched$$$outer().dup().patchParSeq(this.from, this.patch, this.replaced);
        }

        @Override // scala.collection.Iterator
        public Tuple2<Iterator<U>, Iterator<U>> duplicate() {
            return Iterator.Cclass.duplicate(this);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean exists(Function1<U, Object> function1) {
            return Iterator.Cclass.exists(this, function1);
        }

        @Override // scala.collection.Iterator
        public Iterator<U> filter(Function1<U, Object> function1) {
            return Iterator.Cclass.filter(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> filter2combiner(Function1<U, Object> function1, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.filter2combiner(this, function1, combiner);
        }

        @Override // scala.collection.Iterator
        public Iterator<U> filterNot(Function1<U, Object> function1) {
            return Iterator.Cclass.filterNot(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> filterNot2combiner(Function1<U, Object> function1, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.filterNot2combiner(this, function1, combiner);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Option<U> find(Function1<U, Object> function1) {
            return Iterator.Cclass.find(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> flatMap(Function1<U, GenTraversableOnce<B>> function1) {
            return Iterator.Cclass.flatMap(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <S, That> Combiner<S, That> flatmap2combiner(Function1<U, GenTraversableOnce<S>> function1, Combiner<S, That> combiner) {
            return AugmentedIterableIterator.Cclass.flatmap2combiner(this, function1, combiner);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U fold(U u, Function2<U, U, U> function2) {
            return (U) AugmentedIterableIterator.Cclass.fold(this, u, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B foldLeft(B b, Function2<B, U, B> function2) {
            return (B) TraversableOnce.Cclass.foldLeft(this, b, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <B> B foldRight(B b, Function2<U, B, B> function2) {
            return (B) TraversableOnce.Cclass.foldRight(this, b, function2);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean forall(Function1<U, Object> function1) {
            return Iterator.Cclass.forall(this, function1);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <U> void foreach(Function1<U, U> function1) {
            Iterator.Cclass.foreach(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<U>.GroupedIterator<B> grouped(int i) {
            return Iterator.Cclass.grouped(this, i);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public boolean hasDefiniteSize() {
            return Iterator.Cclass.hasDefiniteSize(this);
        }

        @Override // scala.collection.Iterator
        public boolean hasNext() {
            return this.trio.hasNext();
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
        public int indexWhere(Function1<U, Object> function1) {
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
        public int lastIndexWhere(Function1<U, Object> function1) {
            return AugmentedSeqIterator.Cclass.lastIndexWhere(this, function1);
        }

        @Override // scala.collection.Iterator
        public int length() {
            return Iterator.Cclass.length(this);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public <S> SeqSplitter<U>.Mapped<S> map(Function1<U, S> function1) {
            return Cclass.map(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <S, That> Combiner<S, That> map2combiner(Function1<U, S> function1, Combiner<S, That> combiner) {
            return AugmentedIterableIterator.Cclass.map2combiner(this, function1, combiner);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U max(Ordering<U> ordering) {
            return (U) AugmentedIterableIterator.Cclass.max(this, ordering);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> U maxBy(Function1<U, B> function1, Ordering<B> ordering) {
            return (U) TraversableOnce.Cclass.maxBy(this, function1, ordering);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U min(Ordering<U> ordering) {
            return (U) AugmentedIterableIterator.Cclass.min(this, ordering);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> U minBy(Function1<U, B> function1, Ordering<B> ordering) {
            return (U) TraversableOnce.Cclass.minBy(this, function1, ordering);
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
        public IterableSplitter.Taken newSliceInternal(IterableSplitter.Taken taken, int i) {
            return IterableSplitter.Cclass.newSliceInternal(this, taken, i);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter
        public SeqSplitter<U>.Taken newTaken(int i) {
            return Cclass.newTaken(this, i);
        }

        @Override // scala.collection.Iterator
        public U next() {
            return this.trio.next();
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
        public Tuple2<Iterator<U>, Iterator<U>> partition(Function1<U, Object> function1) {
            return Iterator.Cclass.partition(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> partition2combiners(Function1<U, Object> function1, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
            return AugmentedIterableIterator.Cclass.partition2combiners(this, function1, combiner, combiner2);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> patch(int i, Iterator<B> iterator, int i2) {
            return Iterator.Cclass.patch(this, i, iterator, i2);
        }

        @Override // scala.collection.parallel.SeqSplitter
        public <U> SeqSplitter<U>.Patched<U> patchParSeq(int i, SeqSplitter<U> seqSplitter, int i2) {
            return Cclass.patchParSeq(this, i, seqSplitter, i2);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public int prefixLength(Function1<U, Object> function1) {
            return AugmentedSeqIterator.Cclass.prefixLength(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U product(Numeric<U> numeric) {
            return (U) AugmentedIterableIterator.Cclass.product(this, numeric);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.PreciseSplitter
        public Seq<SeqSplitter<U>> psplit(Seq<Object> seq) {
            return this.trio.psplit(seq);
        }

        @Override // scala.collection.parallel.SeqSplitter
        public Seq<SeqSplitter<U>> psplitWithSignalling(Seq<Object> seq) {
            return Cclass.psplitWithSignalling(this, seq);
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
        public <B> B reduceLeft(Function2<B, U, B> function2) {
            return (B) TraversableOnce.Cclass.reduceLeft(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Option<B> reduceLeftOption(Function2<B, U, B> function2) {
            return TraversableOnce.Cclass.reduceLeftOption(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <A1> Option<A1> reduceOption(Function2<A1, A1, A1> function2) {
            return TraversableOnce.Cclass.reduceOption(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <B> B reduceRight(Function2<U, B, B> function2) {
            return (B) TraversableOnce.Cclass.reduceRight(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Option<B> reduceRightOption(Function2<U, B, B> function2) {
            return TraversableOnce.Cclass.reduceRightOption(this, function2);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter, scala.collection.parallel.RemainsIterator
        public int remaining() {
            return this.trio.remaining();
        }

        @Override // scala.collection.parallel.SeqSplitter
        public SeqSplitter<U> reverse() {
            return Cclass.reverse(this);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <U, This> Combiner<U, This> reverse2combiner(Combiner<U, This> combiner) {
            return AugmentedSeqIterator.Cclass.reverse2combiner(this, combiner);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <S, That> Combiner<S, That> reverseMap2combiner(Function1<U, S> function1, Combiner<S, That> combiner) {
            return AugmentedSeqIterator.Cclass.reverseMap2combiner(this, function1, combiner);
        }

        @Override // scala.collection.TraversableOnce
        public List<U> reversed() {
            return TraversableOnce.Cclass.reversed(this);
        }

        @Override // scala.collection.Iterator
        public boolean sameElements(Iterator<?> iterator) {
            return Iterator.Cclass.sameElements(this, iterator);
        }

        public /* synthetic */ SeqSplitter scala$collection$parallel$SeqSplitter$Patched$$$outer() {
            return this.$outer;
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> scanLeft(B b, Function2<B, U, B> function2) {
            return Iterator.Cclass.scanLeft(this, b, function2);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> scanRight(B b, Function2<U, B, B> function2) {
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
        public Iterator<U> seq() {
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
        public SeqSplitter<U> slice(int i, int i2) {
            return Cclass.slice(this, i, i2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> slice2combiner(int i, int i2, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.slice2combiner(this, i, i2, combiner);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<U>.GroupedIterator<B> sliding(int i, int i2) {
            return Iterator.Cclass.sliding(this, i, i2);
        }

        @Override // scala.collection.Iterator
        public <B> int sliding$default$2() {
            return Iterator.Cclass.sliding$default$2(this);
        }

        @Override // scala.collection.Iterator
        public Tuple2<Iterator<U>, Iterator<U>> span(Function1<U, Object> function1) {
            return Iterator.Cclass.span(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> span2combiners(Function1<U, Object> function1, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
            return AugmentedIterableIterator.Cclass.span2combiners(this, function1, combiner, combiner2);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter, scala.collection.parallel.Splitter
        public Seq<SeqSplitter<U>> split() {
            return this.trio.split();
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> splitAt2combiners(int i, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
            return AugmentedIterableIterator.Cclass.splitAt2combiners(this, i, combiner, combiner2);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter
        public Seq<SeqSplitter<U>> splitWithSignalling() {
            return Cclass.splitWithSignalling(this);
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
        public SeqSplitter<U> take(int i) {
            return Cclass.take(this, i);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> take2combiner(int i, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.take2combiner(this, i, combiner);
        }

        @Override // scala.collection.Iterator
        public Iterator<U> takeWhile(Function1<U, Object> function1) {
            return Iterator.Cclass.takeWhile(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Object> takeWhile2combiner(Function1<U, Object> function1, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.takeWhile2combiner(this, function1, combiner);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        /* renamed from: to */
        public <Col> Col mo1to(CanBuildFrom<Nothing$, U, Col> canBuildFrom) {
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
        public IndexedSeq<U> toIndexedSeq() {
            return TraversableOnce.Cclass.toIndexedSeq(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Iterable<U> toIterable() {
            return TraversableOnce.Cclass.toIterable(this);
        }

        @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Iterator<U> toIterator() {
            return Iterator.Cclass.toIterator(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public List<U> toList() {
            return TraversableOnce.Cclass.toList(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <T, U> Map<T, U> toMap(Predef$$less$colon$less<U, Tuple2<T, U>> predef$$less$colon$less) {
            return TraversableOnce.Cclass.toMap(this, predef$$less$colon$less);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
        public Seq<U> toSeq() {
            return TraversableOnce.Cclass.toSeq(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
        public <B> Set<B> toSet() {
            return TraversableOnce.Cclass.toSet(this);
        }

        @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Stream<U> toStream() {
            return Iterator.Cclass.toStream(this);
        }

        @Override // scala.collection.Iterator
        public String toString() {
            return Iterator.Cclass.toString(this);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Traversable<U> toTraversable() {
            return Iterator.Cclass.toTraversable(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Vector<U> toVector() {
            return TraversableOnce.Cclass.toVector(this);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <U, That> Combiner<U, That> updated2combiner(int i, U u, Combiner<U, That> combiner) {
            return AugmentedSeqIterator.Cclass.updated2combiner(this, i, u, combiner);
        }

        @Override // scala.collection.Iterator
        public Iterator<U> withFilter(Function1<U, Object> function1) {
            return Iterator.Cclass.withFilter(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<Tuple2<U, B>> zip(Iterator<B> iterator) {
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
        public <S, U, R> SeqSplitter<U>.ZippedAll<U, R> zipAllParSeq(SeqSplitter<S> seqSplitter, U u, R r) {
            return Cclass.zipAllParSeq(this, seqSplitter, u, r);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter
        public <S> SeqSplitter<U>.Zipped<S> zipParSeq(SeqSplitter<S> seqSplitter) {
            return Cclass.zipParSeq(this, seqSplitter);
        }

        @Override // scala.collection.Iterator
        public Iterator<Tuple2<U, Object>> zipWithIndex() {
            return Iterator.Cclass.zipWithIndex(this);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/SeqSplitter$Taken.class */
    public class Taken extends IterableSplitter<T>.Taken implements SeqSplitter<T> {
        public Taken(SeqSplitter<T> seqSplitter, int i) {
            super(seqSplitter, i);
            AugmentedSeqIterator.Cclass.$init$(this);
            Cclass.$init$(this);
        }

        @Override // scala.collection.parallel.SeqSplitter
        public <U, PI extends SeqSplitter<U>> SeqSplitter<T>.Appended<U, PI> appendParSeq(PI pi) {
            return Cclass.appendParSeq(this, pi);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <S> boolean corresponds(Function2<T, S, Object> function2, Iterator<S> iterator) {
            return AugmentedSeqIterator.Cclass.corresponds(this, function2, iterator);
        }

        @Override // scala.collection.parallel.IterableSplitter.Taken, scala.collection.parallel.IterableSplitter
        public SeqSplitter<T> dup() {
            return (SeqSplitter) super.dup();
        }

        @Override // scala.collection.parallel.IterableSplitter.Taken, scala.collection.Iterator
        public int indexWhere(Function1<T, Object> function1) {
            return AugmentedSeqIterator.Cclass.indexWhere(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public int lastIndexWhere(Function1<T, Object> function1) {
            return AugmentedSeqIterator.Cclass.lastIndexWhere(this, function1);
        }

        @Override // scala.collection.parallel.IterableSplitter.Taken, scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public <S> SeqSplitter<T>.Mapped<S> map(Function1<T, S> function1) {
            return Cclass.map(this, function1);
        }

        @Override // scala.collection.parallel.IterableSplitter.Taken, scala.collection.parallel.IterableSplitter
        public SeqSplitter<T>.Taken newTaken(int i) {
            return Cclass.newTaken(this, i);
        }

        @Override // scala.collection.parallel.SeqSplitter
        public <U> SeqSplitter<T>.Patched<U> patchParSeq(int i, SeqSplitter<U> seqSplitter, int i2) {
            return Cclass.patchParSeq(this, i, seqSplitter, i2);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public int prefixLength(Function1<T, Object> function1) {
            return AugmentedSeqIterator.Cclass.prefixLength(this, function1);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.PreciseSplitter
        public Seq<SeqSplitter<T>> psplit(Seq<Object> seq) {
            return takeSeq(scala$collection$parallel$SeqSplitter$Taken$$$outer().psplit(seq), new SeqSplitter$Taken$$anonfun$psplit$1(this));
        }

        @Override // scala.collection.parallel.SeqSplitter
        public Seq<SeqSplitter<T>> psplitWithSignalling(Seq<Object> seq) {
            return Cclass.psplitWithSignalling(this, seq);
        }

        @Override // scala.collection.parallel.SeqSplitter
        public SeqSplitter<T> reverse() {
            return Cclass.reverse(this);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <U, This> Combiner<U, This> reverse2combiner(Combiner<U, This> combiner) {
            return AugmentedSeqIterator.Cclass.reverse2combiner(this, combiner);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <S, That> Combiner<S, That> reverseMap2combiner(Function1<T, S> function1, Combiner<S, That> combiner) {
            return AugmentedSeqIterator.Cclass.reverseMap2combiner(this, function1, combiner);
        }

        public /* synthetic */ SeqSplitter scala$collection$parallel$SeqSplitter$Taken$$$outer() {
            return (SeqSplitter) this.$outer;
        }

        @Override // scala.collection.parallel.IterableSplitter.Taken, scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public SeqSplitter<T> slice(int i, int i2) {
            return Cclass.slice(this, i, i2);
        }

        @Override // scala.collection.parallel.IterableSplitter.Taken, scala.collection.parallel.IterableSplitter, scala.collection.parallel.Splitter
        public Seq<SeqSplitter<T>> split() {
            return super.split();
        }

        @Override // scala.collection.parallel.IterableSplitter.Taken, scala.collection.parallel.IterableSplitter
        public Seq<SeqSplitter<T>> splitWithSignalling() {
            return Cclass.splitWithSignalling(this);
        }

        @Override // scala.collection.parallel.IterableSplitter.Taken, scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public SeqSplitter<T> take(int i) {
            return Cclass.take(this, i);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <U, That> Combiner<U, That> updated2combiner(int i, U u, Combiner<U, That> combiner) {
            return AugmentedSeqIterator.Cclass.updated2combiner(this, i, u, combiner);
        }

        @Override // scala.collection.parallel.IterableSplitter.Taken, scala.collection.parallel.IterableSplitter
        public <S, U, R> SeqSplitter<T>.ZippedAll<U, R> zipAllParSeq(SeqSplitter<S> seqSplitter, U u, R r) {
            return Cclass.zipAllParSeq(this, seqSplitter, u, r);
        }

        @Override // scala.collection.parallel.IterableSplitter.Taken, scala.collection.parallel.IterableSplitter
        public <S> SeqSplitter<T>.Zipped<S> zipParSeq(SeqSplitter<S> seqSplitter) {
            return Cclass.zipParSeq(this, seqSplitter);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/SeqSplitter$Zipped.class */
    public class Zipped<S> extends IterableSplitter<T>.Zipped<S> implements SeqSplitter<Tuple2<T, S>> {
        public Zipped(SeqSplitter<T> seqSplitter, SeqSplitter<S> seqSplitter2) {
            super(seqSplitter, seqSplitter2);
            AugmentedSeqIterator.Cclass.$init$(this);
            Cclass.$init$(this);
        }

        @Override // scala.collection.parallel.SeqSplitter
        public <U, PI extends SeqSplitter<U>> SeqSplitter<Tuple2<T, S>>.Appended<U, PI> appendParSeq(PI pi) {
            return Cclass.appendParSeq(this, pi);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <S> boolean corresponds(Function2<Tuple2<T, S>, S, Object> function2, Iterator<S> iterator) {
            return AugmentedSeqIterator.Cclass.corresponds(this, function2, iterator);
        }

        @Override // scala.collection.parallel.IterableSplitter.Zipped, scala.collection.parallel.IterableSplitter
        public SeqSplitter<Tuple2<T, S>> dup() {
            return (SeqSplitter) super.dup();
        }

        @Override // scala.collection.parallel.IterableSplitter.Zipped, scala.collection.Iterator
        public int indexWhere(Function1<Tuple2<T, S>, Object> function1) {
            return AugmentedSeqIterator.Cclass.indexWhere(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public int lastIndexWhere(Function1<Tuple2<T, S>, Object> function1) {
            return AugmentedSeqIterator.Cclass.lastIndexWhere(this, function1);
        }

        @Override // scala.collection.parallel.IterableSplitter.Zipped, scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public <S> SeqSplitter<Tuple2<T, S>>.Mapped<S> map(Function1<Tuple2<T, S>, S> function1) {
            return Cclass.map(this, function1);
        }

        @Override // scala.collection.parallel.IterableSplitter.Zipped, scala.collection.parallel.IterableSplitter
        public SeqSplitter<Tuple2<T, S>>.Taken newTaken(int i) {
            return Cclass.newTaken(this, i);
        }

        @Override // scala.collection.parallel.SeqSplitter
        public <U> SeqSplitter<Tuple2<T, S>>.Patched<U> patchParSeq(int i, SeqSplitter<U> seqSplitter, int i2) {
            return Cclass.patchParSeq(this, i, seqSplitter, i2);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public int prefixLength(Function1<Tuple2<T, S>, Object> function1) {
            return AugmentedSeqIterator.Cclass.prefixLength(this, function1);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.PreciseSplitter
        public Seq<SeqSplitter<Tuple2<T, S>>> psplit(Seq<Object> seq) {
            return (Seq) ((TraversableLike) scala$collection$parallel$SeqSplitter$Zipped$$$outer().psplit(seq).zip(that().psplit(seq), Seq$.MODULE$.canBuildFrom())).map(new SeqSplitter$Zipped$$anonfun$psplit$3(this), Seq$.MODULE$.canBuildFrom());
        }

        @Override // scala.collection.parallel.SeqSplitter
        public Seq<SeqSplitter<Tuple2<T, S>>> psplitWithSignalling(Seq<Object> seq) {
            return Cclass.psplitWithSignalling(this, seq);
        }

        @Override // scala.collection.parallel.SeqSplitter
        public SeqSplitter<Tuple2<T, S>> reverse() {
            return Cclass.reverse(this);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <U, This> Combiner<U, This> reverse2combiner(Combiner<U, This> combiner) {
            return AugmentedSeqIterator.Cclass.reverse2combiner(this, combiner);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <S, That> Combiner<S, That> reverseMap2combiner(Function1<Tuple2<T, S>, S> function1, Combiner<S, That> combiner) {
            return AugmentedSeqIterator.Cclass.reverseMap2combiner(this, function1, combiner);
        }

        public /* synthetic */ SeqSplitter scala$collection$parallel$SeqSplitter$Zipped$$$outer() {
            return (SeqSplitter) this.$outer;
        }

        @Override // scala.collection.parallel.IterableSplitter.Zipped, scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public SeqSplitter<Tuple2<T, S>> slice(int i, int i2) {
            return Cclass.slice(this, i, i2);
        }

        @Override // scala.collection.parallel.IterableSplitter.Zipped, scala.collection.parallel.IterableSplitter, scala.collection.parallel.Splitter
        public Seq<SeqSplitter<Tuple2<T, S>>> split() {
            return super.split();
        }

        @Override // scala.collection.parallel.IterableSplitter.Zipped, scala.collection.parallel.IterableSplitter
        public Seq<SeqSplitter<Tuple2<T, S>>> splitWithSignalling() {
            return Cclass.splitWithSignalling(this);
        }

        @Override // scala.collection.parallel.IterableSplitter.Zipped, scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public SeqSplitter<Tuple2<T, S>> take(int i) {
            return Cclass.take(this, i);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <U, That> Combiner<U, That> updated2combiner(int i, U u, Combiner<U, That> combiner) {
            return AugmentedSeqIterator.Cclass.updated2combiner(this, i, u, combiner);
        }

        @Override // scala.collection.parallel.IterableSplitter.Zipped, scala.collection.parallel.IterableSplitter
        public <S, U, R> SeqSplitter<Tuple2<T, S>>.ZippedAll<U, R> zipAllParSeq(SeqSplitter<S> seqSplitter, U u, R r) {
            return Cclass.zipAllParSeq(this, seqSplitter, u, r);
        }

        @Override // scala.collection.parallel.IterableSplitter.Zipped, scala.collection.parallel.IterableSplitter
        public <S> SeqSplitter<Tuple2<T, S>>.Zipped<S> zipParSeq(SeqSplitter<S> seqSplitter) {
            return Cclass.zipParSeq(this, seqSplitter);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/SeqSplitter$ZippedAll.class */
    public class ZippedAll<U, S> extends IterableSplitter<T>.ZippedAll<U, S> implements SeqSplitter<Tuple2<U, S>> {
        public ZippedAll(SeqSplitter<T> seqSplitter, SeqSplitter<S> seqSplitter2, U u, S s) {
            super(seqSplitter, seqSplitter2, u, s);
            AugmentedSeqIterator.Cclass.$init$(this);
            Cclass.$init$(this);
        }

        private Tuple2<SeqSplitter<U>, SeqSplitter<S>> patchem() {
            int remaining = scala$collection$parallel$SeqSplitter$ZippedAll$$$outer().remaining();
            int remaining2 = that().remaining();
            SeqSplitter scala$collection$parallel$SeqSplitter$ZippedAll$$$outer = scala$collection$parallel$SeqSplitter$ZippedAll$$$outer();
            Appended appended = scala$collection$parallel$SeqSplitter$ZippedAll$$$outer;
            if (remaining < remaining2) {
                appended = scala$collection$parallel$SeqSplitter$ZippedAll$$$outer.appendParSeq(package$.MODULE$.repetition(thiselem(), remaining2 - remaining).splitter());
            }
            return new Tuple2<>(appended, remaining > remaining2 ? that().appendParSeq(package$.MODULE$.repetition(thatelem(), remaining - remaining2).splitter()) : that());
        }

        @Override // scala.collection.parallel.SeqSplitter
        public <U, PI extends SeqSplitter<U>> SeqSplitter<Tuple2<U, S>>.Appended<U, PI> appendParSeq(PI pi) {
            return Cclass.appendParSeq(this, pi);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <S> boolean corresponds(Function2<Tuple2<U, S>, S, Object> function2, Iterator<S> iterator) {
            return AugmentedSeqIterator.Cclass.corresponds(this, function2, iterator);
        }

        @Override // scala.collection.parallel.IterableSplitter.ZippedAll, scala.collection.parallel.IterableSplitter
        public SeqSplitter<Tuple2<U, S>> dup() {
            return (SeqSplitter) super.dup();
        }

        @Override // scala.collection.parallel.IterableSplitter.ZippedAll, scala.collection.Iterator
        public int indexWhere(Function1<Tuple2<U, S>, Object> function1) {
            return AugmentedSeqIterator.Cclass.indexWhere(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public int lastIndexWhere(Function1<Tuple2<U, S>, Object> function1) {
            return AugmentedSeqIterator.Cclass.lastIndexWhere(this, function1);
        }

        @Override // scala.collection.parallel.IterableSplitter.ZippedAll, scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public <S> SeqSplitter<Tuple2<U, S>>.Mapped<S> map(Function1<Tuple2<U, S>, S> function1) {
            return Cclass.map(this, function1);
        }

        @Override // scala.collection.parallel.IterableSplitter.ZippedAll, scala.collection.parallel.IterableSplitter
        public SeqSplitter<Tuple2<U, S>>.Taken newTaken(int i) {
            return Cclass.newTaken(this, i);
        }

        @Override // scala.collection.parallel.SeqSplitter
        public <U> SeqSplitter<Tuple2<U, S>>.Patched<U> patchParSeq(int i, SeqSplitter<U> seqSplitter, int i2) {
            return Cclass.patchParSeq(this, i, seqSplitter, i2);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public int prefixLength(Function1<Tuple2<U, S>, Object> function1) {
            return AugmentedSeqIterator.Cclass.prefixLength(this, function1);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.PreciseSplitter
        public Seq<SeqSplitter<Tuple2<U, S>>> psplit(Seq<Object> seq) {
            Tuple2<SeqSplitter<U>, SeqSplitter<S>> patchem = patchem();
            if (patchem != null) {
                Tuple2 tuple2 = new Tuple2(patchem.mo269_1(), patchem.mo268_2());
                return (Seq<SeqSplitter<Tuple2<T, S>>>) ((SeqSplitter) tuple2.mo269_1()).zipParSeq((SeqSplitter) ((SeqSplitter) tuple2.mo268_2())).psplit(seq);
            }
            throw new MatchError(patchem);
        }

        @Override // scala.collection.parallel.SeqSplitter
        public Seq<SeqSplitter<Tuple2<U, S>>> psplitWithSignalling(Seq<Object> seq) {
            return Cclass.psplitWithSignalling(this, seq);
        }

        @Override // scala.collection.parallel.SeqSplitter
        public SeqSplitter<Tuple2<U, S>> reverse() {
            return Cclass.reverse(this);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <U, This> Combiner<U, This> reverse2combiner(Combiner<U, This> combiner) {
            return AugmentedSeqIterator.Cclass.reverse2combiner(this, combiner);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <S, That> Combiner<S, That> reverseMap2combiner(Function1<Tuple2<U, S>, S> function1, Combiner<S, That> combiner) {
            return AugmentedSeqIterator.Cclass.reverseMap2combiner(this, function1, combiner);
        }

        public /* synthetic */ SeqSplitter scala$collection$parallel$SeqSplitter$ZippedAll$$$outer() {
            return (SeqSplitter) this.$outer;
        }

        @Override // scala.collection.parallel.IterableSplitter.ZippedAll, scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public SeqSplitter<Tuple2<U, S>> slice(int i, int i2) {
            return Cclass.slice(this, i, i2);
        }

        @Override // scala.collection.parallel.IterableSplitter.ZippedAll, scala.collection.parallel.IterableSplitter, scala.collection.parallel.Splitter
        public Seq<SeqSplitter<Tuple2<U, S>>> split() {
            Tuple2<SeqSplitter<U>, SeqSplitter<S>> patchem = patchem();
            if (patchem != null) {
                Tuple2 tuple2 = new Tuple2(patchem.mo269_1(), patchem.mo268_2());
                return (Seq<SeqSplitter<Tuple2<T, S>>>) ((SeqSplitter) tuple2.mo269_1()).zipParSeq((SeqSplitter) ((SeqSplitter) tuple2.mo268_2())).split();
            }
            throw new MatchError(patchem);
        }

        @Override // scala.collection.parallel.IterableSplitter.ZippedAll, scala.collection.parallel.IterableSplitter
        public Seq<SeqSplitter<Tuple2<U, S>>> splitWithSignalling() {
            return Cclass.splitWithSignalling(this);
        }

        @Override // scala.collection.parallel.IterableSplitter.ZippedAll, scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public SeqSplitter<Tuple2<U, S>> take(int i) {
            return Cclass.take(this, i);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <U, That> Combiner<U, That> updated2combiner(int i, U u, Combiner<U, That> combiner) {
            return AugmentedSeqIterator.Cclass.updated2combiner(this, i, u, combiner);
        }

        @Override // scala.collection.parallel.IterableSplitter.ZippedAll, scala.collection.parallel.IterableSplitter
        public <S, U, R> SeqSplitter<Tuple2<U, S>>.ZippedAll<U, R> zipAllParSeq(SeqSplitter<S> seqSplitter, U u, R r) {
            return Cclass.zipAllParSeq(this, seqSplitter, u, r);
        }

        @Override // scala.collection.parallel.IterableSplitter.ZippedAll, scala.collection.parallel.IterableSplitter
        public <S> SeqSplitter<Tuple2<U, S>>.Zipped<S> zipParSeq(SeqSplitter<S> seqSplitter) {
            return Cclass.zipParSeq(this, seqSplitter);
        }
    }

    /* renamed from: scala.collection.parallel.SeqSplitter$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/SeqSplitter$class.class */
    public abstract class Cclass {
        public static void $init$(SeqSplitter seqSplitter) {
        }

        public static Appended appendParSeq(SeqSplitter seqSplitter, SeqSplitter seqSplitter2) {
            return new Appended(seqSplitter, seqSplitter2);
        }

        public static Mapped map(SeqSplitter seqSplitter, Function1 function1) {
            return new Mapped(seqSplitter, function1);
        }

        public static Taken newTaken(SeqSplitter seqSplitter, int i) {
            return new Taken(seqSplitter, i);
        }

        public static Patched patchParSeq(SeqSplitter seqSplitter, int i, SeqSplitter seqSplitter2, int i2) {
            return new Patched(seqSplitter, i, seqSplitter2, i2);
        }

        public static Seq psplitWithSignalling(SeqSplitter seqSplitter, Seq seq) {
            Seq<SeqSplitter<T>> psplit = seqSplitter.psplit(seq);
            psplit.foreach(new SeqSplitter$$anonfun$psplitWithSignalling$1(seqSplitter));
            return psplit;
        }

        public static SeqSplitter reverse(SeqSplitter seqSplitter) {
            return new ParArray<T>.ParArrayIterator(seqSplitter, (ParArray) ParArray$.MODULE$.fromTraversables(Predef$.MODULE$.genericWrapArray(new GenTraversableOnce[]{seqSplitter})).reverse()) { // from class: scala.collection.parallel.SeqSplitter$$anon$1
                private final /* synthetic */ SeqSplitter $outer;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(r8, r8.ParArrayIterator().$lessinit$greater$default$1(), r8.ParArrayIterator().$lessinit$greater$default$2(), r8.ParArrayIterator().$lessinit$greater$default$3());
                    Objects.requireNonNull(seqSplitter);
                    this.$outer = seqSplitter;
                }

                @Override // scala.collection.parallel.mutable.ParArray.ParArrayIterator, scala.collection.parallel.SeqSplitter
                public SeqSplitter<T> reverse() {
                    return this.$outer;
                }
            };
        }

        public static SeqSplitter slice(SeqSplitter seqSplitter, int i, int i2) {
            return (SeqSplitter) seqSplitter.newSliceInternal(seqSplitter.newTaken(i2), i);
        }

        public static Seq splitWithSignalling(SeqSplitter seqSplitter) {
            Seq<SeqSplitter<T>> split = seqSplitter.split();
            split.foreach(new SeqSplitter$$anonfun$splitWithSignalling$2(seqSplitter));
            return split;
        }

        public static SeqSplitter take(SeqSplitter seqSplitter, int i) {
            return seqSplitter.newTaken(i);
        }

        public static ZippedAll zipAllParSeq(SeqSplitter seqSplitter, SeqSplitter seqSplitter2, Object obj, Object obj2) {
            return new ZippedAll(seqSplitter, seqSplitter2, obj, obj2);
        }

        public static Zipped zipParSeq(SeqSplitter seqSplitter, SeqSplitter seqSplitter2) {
            return new Zipped(seqSplitter, seqSplitter2);
        }
    }

    <U, PI extends SeqSplitter<U>> SeqSplitter<T>.Appended<U, PI> appendParSeq(PI pi);

    @Override // scala.collection.parallel.IterableSplitter
    SeqSplitter<T> dup();

    @Override // scala.collection.parallel.IterableSplitter, scala.collection.Iterator
    <S> SeqSplitter<T>.Mapped<S> map(Function1<T, S> function1);

    @Override // scala.collection.parallel.IterableSplitter
    SeqSplitter<T>.Taken newTaken(int i);

    <U> SeqSplitter<T>.Patched<U> patchParSeq(int i, SeqSplitter<U> seqSplitter, int i2);

    Seq<SeqSplitter<T>> psplit(Seq<Object> seq);

    Seq<SeqSplitter<T>> psplitWithSignalling(Seq<Object> seq);

    @Override // scala.collection.parallel.IterableSplitter, scala.collection.parallel.RemainsIterator
    int remaining();

    SeqSplitter<T> reverse();

    @Override // scala.collection.parallel.IterableSplitter, scala.collection.Iterator
    SeqSplitter<T> slice(int i, int i2);

    @Override // scala.collection.parallel.IterableSplitter, scala.collection.parallel.Splitter
    Seq<SeqSplitter<T>> split();

    @Override // scala.collection.parallel.IterableSplitter
    Seq<SeqSplitter<T>> splitWithSignalling();

    @Override // scala.collection.parallel.IterableSplitter, scala.collection.Iterator
    SeqSplitter<T> take(int i);

    @Override // scala.collection.parallel.IterableSplitter
    <S, U, R> SeqSplitter<T>.ZippedAll<U, R> zipAllParSeq(SeqSplitter<S> seqSplitter, U u, R r);

    @Override // scala.collection.parallel.IterableSplitter
    <S> SeqSplitter<T>.Zipped<S> zipParSeq(SeqSplitter<S> seqSplitter);
}
