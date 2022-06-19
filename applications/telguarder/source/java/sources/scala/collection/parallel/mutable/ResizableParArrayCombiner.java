package scala.collection.parallel.mutable;

import java.util.Objects;
import scala.Array$;
import scala.MatchError;
import scala.Option;
import scala.Predef$;
import scala.Tuple2;
import scala.Tuple2$mcII$sp;
import scala.collection.Seq;
import scala.collection.immutable.List;
import scala.collection.immutable.List$;
import scala.collection.mutable.ArrayBuffer;
import scala.collection.mutable.ArraySeq;
import scala.collection.mutable.StringBuilder;
import scala.collection.parallel.Task;
import scala.collection.parallel.package$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.TraitSetter;
@ScalaSignature(bytes = "\u0006\u0001\u0005\u001ddaB\u0001\u0003!\u0003\r\ta\u0003\u0002\u001a%\u0016\u001c\u0018N_1cY\u0016\u0004\u0016M]!se\u0006L8i\\7cS:,'O\u0003\u0002\u0004\t\u00059Q.\u001e;bE2,'BA\u0003\u0007\u0003!\u0001\u0018M]1mY\u0016d'BA\u0004\t\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u0013\u0005)1oY1mC\u000e\u0001QC\u0001\u0007\u0018'\r\u0001Q\"\u0005\t\u0003\u001d=i\u0011\u0001C\u0005\u0003!!\u0011a!\u00118z%\u00164\u0007#\u0002\n\u0014+\u0001\u001aS\"\u0001\u0002\n\u0005Q\u0011!\u0001\u0004'buf\u001cu.\u001c2j]\u0016\u0014\bC\u0001\f\u0018\u0019\u0001!Q\u0001\u0007\u0001C\u0002e\u0011\u0011\u0001V\t\u00035u\u0001\"AD\u000e\n\u0005qA!a\u0002(pi\"Lgn\u001a\t\u0003\u001dyI!a\b\u0005\u0003\u0007\u0005s\u0017\u0010E\u0002\u0013CUI!A\t\u0002\u0003\u0011A\u000b'/\u0011:sCf\u00042A\u0005\u0013\u0016\u0013\t)#A\u0001\nFqB|7/\u001a3BeJ\f\u0017PQ;gM\u0016\u0014\b\"B\u0014\u0001\t\u0003A\u0013A\u0002\u0013j]&$H\u0005F\u0001*!\tq!&\u0003\u0002,\u0011\t!QK\\5u\u0011\u0015i\u0003\u0001\"\u0011/\u0003!\u0019\u0018N_3IS:$HCA\u00150\u0011\u0015\u0001D\u00061\u00012\u0003\t\u0019(\u0010\u0005\u0002\u000fe%\u00111\u0007\u0003\u0002\u0004\u0013:$\b\"B\u001b\u0001\t\u000b1\u0014a\u00048fo2\u000b'0_\"p[\nLg.\u001a:\u0015\u0005]B\u0004c\u0001\n\u0001+!)\u0011\b\u000ea\u0001u\u0005\t1\rE\u0002<{\rj\u0011\u0001\u0010\u0006\u0003\u0007\u0019I!A\u0010\u001f\u0003\u0017\u0005\u0013(/Y=Ck\u001a4WM\u001d\u0005\u0006\u0001\u0002!\t!Q\u0001\u0010C2dwnY1uK\u0006sGmQ8qsV\t\u0001\u0005C\u0003D\u0001\u0011\u0005C)\u0001\u0005u_N#(/\u001b8h)\u0005)\u0005C\u0001$L\u001b\u00059%B\u0001%J\u0003\u0011a\u0017M\\4\u000b\u0003)\u000bAA[1wC&\u0011Aj\u0012\u0002\u0007'R\u0014\u0018N\\4\u0007\t9\u0003\u0001a\u0014\u0002\u0011\u0007>\u0004\u0018p\u00115bS:$v.\u0011:sCf\u001c2!T\u0007Q!\u0011\t&+\u000b+\u000e\u0003\u0011I!a\u0015\u0003\u0003\tQ\u000b7o\u001b\t\u0003+6k\u0011\u0001\u0001\u0005\t/6\u0013\t\u0011)A\u00051\u0006)\u0011M\u001d:bsB\u0019a\"W\u000f\n\u0005iC!!B!se\u0006L\b\u0002\u0003/N\u0005\u0003\u0005\u000b\u0011B\u0019\u0002\r=4gm]3u\u0011!qVJ!A!\u0002\u0013\t\u0014a\u00025po6\fg.\u001f\u0005\u0006A6#\t!Y\u0001\u0007y%t\u0017\u000e\u001e \u0015\tQ\u00137\r\u001a\u0005\u0006/~\u0003\r\u0001\u0017\u0005\u00069~\u0003\r!\r\u0005\u0006=~\u0003\r!\r\u0005\bM6\u0003\r\u0011\"\u0001h\u0003\u0019\u0011Xm];miV\t\u0011\u0006C\u0004j\u001b\u0002\u0007I\u0011\u00016\u0002\u0015I,7/\u001e7u?\u0012*\u0017\u000f\u0006\u0002*W\"9A\u000e[A\u0001\u0002\u0004I\u0013a\u0001=%c!1a.\u0014Q!\n%\nqA]3tk2$\b\u0005C\u0003q\u001b\u0012\u0005\u0011/\u0001\u0003mK\u00064GCA\u0015s\u0011\u0015\u0019x\u000e1\u0001u\u0003\u0011\u0001(/\u001a<\u0011\u00079)\u0018&\u0003\u0002w\u0011\t1q\n\u001d;j_:DQ\u0001_'\u0005\ne\f\u0011bY8qs\u000eCWO\\6\u0015\u0011%RXp`A\u0002\u0003\u000fAQa_<A\u0002q\fqAY;gM\u0006\u0014(\u000fE\u0002\u000f36AQA`<A\u0002E\n\u0011BY;gMN#\u0018M\u001d;\t\r\u0005\u0005q\u000f1\u0001Y\u0003\t\u0011\u0018\r\u0003\u0004\u0002\u0006]\u0004\r!M\u0001\u000bCJ\u0014\u0018-_*uCJ$\bBBA\u0005o\u0002\u0007\u0011'A\u0003v]RLG\u000eC\u0004\u0002\u000e5#I!a\u0004\u0002\u0013\u0019Lg\u000eZ*uCJ$H\u0003BA\t\u0003/\u0001RADA\ncEJ1!!\u0006\t\u0005\u0019!V\u000f\u001d7fe!9\u0011\u0011DA\u0006\u0001\u0004\t\u0014a\u00019pg\"9\u0011QD'\u0005\u0002\u0005}\u0011!B:qY&$XCAA\u0011!\u0015\t\u0019#!\u000bU\u001b\t\t)CC\u0002\u0002(\u0019\t\u0011\"[7nkR\f'\r\\3\n\t\u0005-\u0012Q\u0005\u0002\u0005\u0019&\u001cH\u000fC\u0004\u000205#\t!!\r\u0002%MDw.\u001e7e'Bd\u0017\u000e\u001e$veRDWM]\u000b\u0003\u0003g\u00012ADA\u001b\u0013\r\t9\u0004\u0003\u0002\b\u0005>|G.Z1o\u000f\u001d\tYD\u0001E\u0001\u0003{\t\u0011DU3tSj\f'\r\\3QCJ\f%O]1z\u0007>l'-\u001b8feB\u0019!#a\u0010\u0007\r\u0005\u0011\u0001\u0012AA!'\r\ty$\u0004\u0005\bA\u0006}B\u0011AA#)\t\ti\u0004\u0003\u0005\u0002J\u0005}B\u0011AA&\u0003\u0015\t\u0007\u000f\u001d7z+\u0011\ti%a\u0015\u0015\t\u0005=\u0013Q\u000b\t\u0005%\u0001\t\t\u0006E\u0002\u0017\u0003'\"a\u0001GA$\u0005\u0004I\u0002bB\u001d\u0002H\u0001\u0007\u0011q\u000b\t\u0005wu\nI\u0006\u0005\u0003\u0013I\u0005E\u0003\u0002CA%\u0003\u007f!\t!!\u0018\u0016\t\u0005}\u0013Q\r\u000b\u0003\u0003C\u0002BA\u0005\u0001\u0002dA\u0019a#!\u001a\u0005\ra\tYF1\u0001\u001a\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ResizableParArrayCombiner.class */
public interface ResizableParArrayCombiner<T> extends LazyCombiner<T, ParArray<T>, ExposedArrayBuffer<T>> {

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ResizableParArrayCombiner$CopyChainToArray.class */
    public class CopyChainToArray implements Task<BoxedUnit, ResizableParArrayCombiner<T>.CopyChainToArray> {
        public final /* synthetic */ ResizableParArrayCombiner $outer;
        private final Object[] array;
        private final int howmany;
        private final int offset;
        private BoxedUnit result = BoxedUnit.UNIT;
        private volatile Throwable throwable;

        public CopyChainToArray(ResizableParArrayCombiner<T> resizableParArrayCombiner, Object[] objArr, int i, int i2) {
            this.array = objArr;
            this.offset = i;
            this.howmany = i2;
            Objects.requireNonNull(resizableParArrayCombiner);
            this.$outer = resizableParArrayCombiner;
            throwable_$eq(null);
        }

        private void copyChunk(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
            Array$.MODULE$.copy(objArr, i, objArr2, i2, i3 - i);
        }

        private Tuple2<Object, Object> findStart(int i) {
            int i2 = i;
            int i3 = 0;
            while (i2 >= m67x782f1a0a().chain().apply(i3).size()) {
                i2 -= m67x782f1a0a().chain().apply(i3).size();
                i3++;
            }
            return new Tuple2$mcII$sp(i3, i2);
        }

        @Override // scala.collection.parallel.Task
        public void forwardThrowable() {
            Task.Cclass.forwardThrowable(this);
        }

        @Override // scala.collection.parallel.Task
        public void leaf(Option<BoxedUnit> option) {
            int i = this.howmany;
            if (i > 0) {
                Tuple2<Object, Object> findStart = findStart(this.offset);
                if (findStart == null) {
                    throw new MatchError(findStart);
                }
                Tuple2$mcII$sp tuple2$mcII$sp = new Tuple2$mcII$sp(findStart._1$mcI$sp(), findStart._2$mcI$sp());
                int _1$mcI$sp = tuple2$mcII$sp._1$mcI$sp();
                int _2$mcI$sp = tuple2$mcII$sp._2$mcI$sp();
                int i2 = this.offset;
                while (i > 0) {
                    ExposedArrayBuffer<T> apply = m67x782f1a0a().chain().apply(_1$mcI$sp);
                    int size = i < apply.size() - _2$mcI$sp ? i : apply.size() - _2$mcI$sp;
                    copyChunk(apply.internalArray(), _2$mcI$sp, this.array, i2, _2$mcI$sp + size);
                    i2 += size;
                    i -= size;
                    _1$mcI$sp++;
                    _2$mcI$sp = 0;
                }
            }
        }

        @Override // scala.collection.parallel.Task
        public void merge(Object obj) {
            Task.Cclass.merge(this, obj);
        }

        @Override // scala.collection.parallel.Task
        public void mergeThrowables(Task<?, ?> task) {
            Task.Cclass.mergeThrowables(this, task);
        }

        @Override // scala.collection.parallel.Task
        public Object repr() {
            return Task.Cclass.repr(this);
        }

        @Override // scala.collection.parallel.Task
        /* renamed from: result */
        public void result2() {
        }

        public void result_$eq(BoxedUnit boxedUnit) {
            this.result = boxedUnit;
        }

        /* renamed from: scala$collection$parallel$mutable$ResizableParArrayCombiner$CopyChainToArray$$$outer */
        public /* synthetic */ ResizableParArrayCombiner m67x782f1a0a() {
            return this.$outer;
        }

        @Override // scala.collection.parallel.Task
        public boolean shouldSplitFurther() {
            return this.howmany > package$.MODULE$.thresholdFromSize(m67x782f1a0a().size(), m67x782f1a0a().combinerTaskSupport().parallelismLevel());
        }

        @Override // scala.collection.parallel.Task
        public void signalAbort() {
            Task.Cclass.signalAbort(this);
        }

        @Override // scala.collection.parallel.Task
        public List<ResizableParArrayCombiner<T>.CopyChainToArray> split() {
            int i = this.howmany / 2;
            return List$.MODULE$.apply((Seq) Predef$.MODULE$.wrapRefArray(new CopyChainToArray[]{new CopyChainToArray(m67x782f1a0a(), this.array, this.offset, i), new CopyChainToArray(m67x782f1a0a(), this.array, this.offset + i, this.howmany - i)}));
        }

        @Override // scala.collection.parallel.Task
        public Throwable throwable() {
            return this.throwable;
        }

        @Override // scala.collection.parallel.Task
        @TraitSetter
        public void throwable_$eq(Throwable th) {
            this.throwable = th;
        }

        @Override // scala.collection.parallel.Task
        public void tryLeaf(Option<BoxedUnit> option) {
            Task.Cclass.tryLeaf(this, option);
        }

        @Override // scala.collection.parallel.Task
        public void tryMerge(Object obj) {
            Task.Cclass.tryMerge(this, obj);
        }
    }

    /* renamed from: scala.collection.parallel.mutable.ResizableParArrayCombiner$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ResizableParArrayCombiner$class.class */
    public abstract class Cclass {
        public static void $init$(ResizableParArrayCombiner resizableParArrayCombiner) {
        }

        public static ParArray allocateAndCopy(ResizableParArrayCombiner resizableParArrayCombiner) {
            ParArray parArray;
            if (resizableParArrayCombiner.chain().size() > 1) {
                ArraySeq arraySeq = new ArraySeq(resizableParArrayCombiner.size());
                resizableParArrayCombiner.combinerTaskSupport().executeAndWaitResult(new CopyChainToArray(resizableParArrayCombiner, arraySeq.array(), 0, resizableParArrayCombiner.size()));
                parArray = new ParArray(arraySeq);
            } else {
                parArray = new ParArray(new ExposedArraySeq(resizableParArrayCombiner.chain().apply(0).internalArray(), resizableParArrayCombiner.size()));
            }
            return parArray;
        }

        public static final ResizableParArrayCombiner newLazyCombiner(ResizableParArrayCombiner resizableParArrayCombiner, ArrayBuffer arrayBuffer) {
            return ResizableParArrayCombiner$.MODULE$.apply(arrayBuffer);
        }

        public static void sizeHint(ResizableParArrayCombiner resizableParArrayCombiner, int i) {
            if (resizableParArrayCombiner.chain().length() == 1) {
                resizableParArrayCombiner.chain().apply(0).sizeHint(i);
            }
        }

        public static String toString(ResizableParArrayCombiner resizableParArrayCombiner) {
            return new StringBuilder().append((Object) "ResizableParArrayCombiner(").append(BoxesRunTime.boxToInteger(resizableParArrayCombiner.size())).append((Object) "): ").toString();
        }
    }

    @Override // scala.collection.parallel.mutable.LazyCombiner
    ParArray<T> allocateAndCopy();

    @Override // scala.collection.parallel.mutable.LazyCombiner
    ResizableParArrayCombiner<T> newLazyCombiner(ArrayBuffer<ExposedArrayBuffer<T>> arrayBuffer);

    @Override // scala.collection.mutable.Builder
    void sizeHint(int i);

    String toString();
}
