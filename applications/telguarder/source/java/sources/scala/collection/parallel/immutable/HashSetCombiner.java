package scala.collection.parallel.immutable;

import java.util.Objects;
import scala.Array$;
import scala.Option;
import scala.Predef$;
import scala.collection.Seq;
import scala.collection.immutable.HashSet;
import scala.collection.immutable.HashSet$;
import scala.collection.immutable.List;
import scala.collection.immutable.List$;
import scala.collection.mutable.UnrolledBuffer;
import scala.collection.parallel.BucketCombiner;
import scala.collection.parallel.Task;
import scala.collection.parallel.package$;
import scala.reflect.ClassTag$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.TraitSetter;
@ScalaSignature(bytes = "\u0006\u0001\u0005-cAB\u0001\u0003\u0003\u0003\u0011!BA\bICND7+\u001a;D_6\u0014\u0017N\\3s\u0015\t\u0019A!A\u0005j[6,H/\u00192mK*\u0011QAB\u0001\ta\u0006\u0014\u0018\r\u001c7fY*\u0011q\u0001C\u0001\u000bG>dG.Z2uS>t'\"A\u0005\u0002\u000bM\u001c\u0017\r\\1\u0016\u0005-\u00112C\u0001\u0001\r!\u0019ia\u0002E\u000f\u001bC5\tA!\u0003\u0002\u0010\t\tq!)^2lKR\u001cu.\u001c2j]\u0016\u0014\bCA\t\u0013\u0019\u0001!Qa\u0005\u0001C\u0002U\u0011\u0011\u0001V\u0002\u0001#\t1\"\u0004\u0005\u0002\u001815\t\u0001\"\u0003\u0002\u001a\u0011\t9aj\u001c;iS:<\u0007CA\f\u001c\u0013\ta\u0002BA\u0002B]f\u00042AH\u0010\u0011\u001b\u0005\u0011\u0011B\u0001\u0011\u0003\u0005)\u0001\u0016M\u001d%bg\"\u001cV\r\u001e\t\u0004=\u0001\u0001\u0002\"B\u0012\u0001\t\u0003!\u0013A\u0002\u001fj]&$h\bF\u0001\"\u0011\u001d1\u0003A1A\u0005\u0002\u001d\n\u0011\"Z7qif$&/[3\u0016\u0003!\u00022!K\u0016\u0011\u001b\u0005Q#BA\u0002\u0007\u0013\ta#FA\u0004ICND7+\u001a;\t\r9\u0002\u0001\u0015!\u0003)\u0003))W\u000e\u001d;z)JLW\r\t\u0005\u0006a\u0001!\t!M\u0001\tIAdWo\u001d\u0013fcR\u0011!gM\u0007\u0002\u0001!)Ag\fa\u0001!\u0005!Q\r\\3n\u0011\u00151\u0004\u0001\"\u00018\u0003\u0019\u0011Xm];miR\tQD\u0002\u0003:\u0001\u0001Q$AC\"sK\u0006$X\r\u0016:jKN\u0019\u0001h\u000f \u0011\u0005]a\u0014BA\u001f\t\u0005\u0019\te.\u001f*fMB!QbP!E\u0013\t\u0001EA\u0001\u0003UCN\\\u0007CA\fC\u0013\t\u0019\u0005B\u0001\u0003V]&$\bC\u0001\u001a9\u0011!1\u0005H!A!\u0002\u00139\u0015!\u00022vG.\u001c\bcA\fI\u0015&\u0011\u0011\n\u0003\u0002\u0006\u0003J\u0014\u0018-\u001f\t\u0004\u0017fSbB\u0001'W\u001d\tiEK\u0004\u0002O':\u0011qJU\u0007\u0002!*\u0011\u0011\u000bF\u0001\u0007yI|w\u000e\u001e \n\u0003%I!a\u0002\u0005\n\u0005U3\u0011aB7vi\u0006\u0014G.Z\u0005\u0003/b\u000ba\"\u00168s_2dW\r\u001a\"vM\u001a,'O\u0003\u0002V\r%\u0011!l\u0017\u0002\t+:\u0014x\u000e\u001c7fI*\u0011q\u000b\u0017\u0005\t;b\u0012\t\u0011)A\u0005=\u0006!!o\\8u!\r9\u0002\n\u000b\u0005\tAb\u0012\t\u0011)A\u0005C\u00061qN\u001a4tKR\u0004\"a\u00062\n\u0005\rD!aA%oi\"AQ\r\u000fB\u0001B\u0003%\u0011-A\u0004i_^l\u0017M\\=\t\u000b\rBD\u0011A4\u0015\u000b\u0011C\u0017N[6\t\u000b\u00193\u0007\u0019A$\t\u000bu3\u0007\u0019\u00010\t\u000b\u00014\u0007\u0019A1\t\u000b\u00154\u0007\u0019A1\t\u000fYB\u0004\u0019!C\u0001[V\t\u0011\tC\u0004pq\u0001\u0007I\u0011\u00019\u0002\u0015I,7/\u001e7u?\u0012*\u0017\u000f\u0006\u0002Bc\"9!O\\A\u0001\u0002\u0004\t\u0015a\u0001=%c!1A\u000f\u000fQ!\n\u0005\u000bqA]3tk2$\b\u0005C\u0003wq\u0011\u0005q/\u0001\u0003mK\u00064GCA!y\u0011\u0015IX\u000f1\u0001{\u0003\u0011\u0001(/\u001a<\u0011\u0007]Y\u0018)\u0003\u0002}\u0011\t1q\n\u001d;j_:DQA \u001d\u0005\n}\f!b\u0019:fCR,GK]5f)\rA\u0013\u0011\u0001\u0005\u0007\u0003\u0007i\b\u0019\u0001&\u0002\u000b\u0015dW-\\:\t\u000f\u0005\u001d\u0001\b\"\u0001\u0002\n\u0005)1\u000f\u001d7jiV\u0011\u00111\u0002\t\u0005S\u00055A)C\u0002\u0002\u0010)\u0012A\u0001T5ti\"9\u00111\u0003\u001d\u0005\u0002\u0005U\u0011AE:i_VdGm\u00159mSR4UO\u001d;iKJ,\"!a\u0006\u0011\u0007]\tI\"C\u0002\u0002\u001c!\u0011qAQ8pY\u0016\fgnB\u0004\u0002 \tA\t!!\t\u0002\u001f!\u000b7\u000f[*fi\u000e{WNY5oKJ\u00042AHA\u0012\r\u0019\t!\u0001#\u0001\u0002&M\u0019\u00111E\u001e\t\u000f\r\n\u0019\u0003\"\u0001\u0002*Q\u0011\u0011\u0011\u0005\u0005\t\u0003[\t\u0019\u0003\"\u0001\u00020\u0005)\u0011\r\u001d9msV!\u0011\u0011GA\u001c+\t\t\u0019\u0004\u0005\u0003\u001f\u0001\u0005U\u0002cA\t\u00028\u001111#a\u000bC\u0002UA1\"a\u000f\u0002$\t\u0007I\u0011\u0001\u0002\u0002>\u0005A!o\\8uE&$8/F\u0001b\u0011!\t\t%a\t!\u0002\u0013\t\u0017!\u0003:p_R\u0014\u0017\u000e^:!\u0011-\t)%a\tC\u0002\u0013\u0005!!!\u0010\u0002\u0011I|w\u000e^:ju\u0016D\u0001\"!\u0013\u0002$\u0001\u0006I!Y\u0001\ne>|Go]5{K\u0002\u0002")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/HashSetCombiner.class */
public abstract class HashSetCombiner<T> extends BucketCombiner<T, ParHashSet<T>, Object, HashSetCombiner<T>> {
    private final HashSet<T> emptyTrie = (HashSet) HashSet$.MODULE$.empty();

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/HashSetCombiner$CreateTrie.class */
    public class CreateTrie implements Task<BoxedUnit, HashSetCombiner<T>.CreateTrie> {
        public final /* synthetic */ HashSetCombiner $outer;
        private final UnrolledBuffer.Unrolled<Object>[] bucks;
        private final int howmany;
        private final int offset;
        private BoxedUnit result = BoxedUnit.UNIT;
        private final HashSet<T>[] root;
        private volatile Throwable throwable;

        public CreateTrie(HashSetCombiner<T> hashSetCombiner, UnrolledBuffer.Unrolled<Object>[] unrolledArr, HashSet<T>[] hashSetArr, int i, int i2) {
            this.bucks = unrolledArr;
            this.root = hashSetArr;
            this.offset = i;
            this.howmany = i2;
            Objects.requireNonNull(hashSetCombiner);
            this.$outer = hashSetCombiner;
            throwable_$eq(null);
        }

        private HashSet<T> createTrie(UnrolledBuffer.Unrolled<Object> unrolled) {
            HashSet<T> hashSet = new HashSet<>();
            while (true) {
                if (unrolled != null) {
                    Object[] objArr = (Object[]) unrolled.array();
                    int size = unrolled.size();
                    for (int i = 0; i < size; i++) {
                        T t = (T) objArr[i];
                        hashSet = hashSet.updated0(t, hashSet.computeHash(t), HashSetCombiner$.MODULE$.rootbits());
                    }
                    unrolled = unrolled.next();
                } else {
                    return hashSet;
                }
            }
        }

        @Override // scala.collection.parallel.Task
        public void forwardThrowable() {
            Task.Cclass.forwardThrowable(this);
        }

        @Override // scala.collection.parallel.Task
        public void leaf(Option<BoxedUnit> option) {
            int i = this.offset;
            int i2 = this.howmany;
            for (int i3 = i; i3 < i2 + i; i3++) {
                this.root[i3] = createTrie(this.bucks[i3]);
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

        /* renamed from: scala$collection$parallel$immutable$HashSetCombiner$CreateTrie$$$outer */
        public /* synthetic */ HashSetCombiner m105x493a18e1() {
            return this.$outer;
        }

        @Override // scala.collection.parallel.Task
        public boolean shouldSplitFurther() {
            return this.howmany > package$.MODULE$.thresholdFromSize(this.root.length, m105x493a18e1().combinerTaskSupport().parallelismLevel());
        }

        @Override // scala.collection.parallel.Task
        public void signalAbort() {
            Task.Cclass.signalAbort(this);
        }

        @Override // scala.collection.parallel.Task
        public List<HashSetCombiner<T>.CreateTrie> split() {
            int i = this.howmany / 2;
            return List$.MODULE$.apply((Seq) Predef$.MODULE$.wrapRefArray(new CreateTrie[]{new CreateTrie(m105x493a18e1(), this.bucks, this.root, this.offset, i), new CreateTrie(m105x493a18e1(), this.bucks, this.root, this.offset + i, this.howmany - i)}));
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

    public HashSetCombiner() {
        super(HashSetCombiner$.MODULE$.rootsize());
    }

    public static <T> HashSetCombiner<T> apply() {
        return HashSetCombiner$.MODULE$.apply();
    }

    @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable
    public HashSetCombiner<T> $plus$eq(T t) {
        sz_$eq(m119sz() + 1);
        int computeHash = emptyTrie().computeHash(t) & 31;
        if (buckets()[computeHash] == null) {
            buckets()[computeHash] = new UnrolledBuffer<>(ClassTag$.MODULE$.Any());
        }
        buckets()[computeHash].$plus$eq((UnrolledBuffer<Object>) t);
        return this;
    }

    public HashSet<T> emptyTrie() {
        return this.emptyTrie;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // scala.collection.mutable.Builder
    public ParHashSet<T> result() {
        int i;
        UnrolledBuffer.Unrolled[] unrolledArr = (UnrolledBuffer.Unrolled[]) Predef$.MODULE$.refArrayOps((Object[]) Predef$.MODULE$.refArrayOps(buckets()).filter(new HashSetCombiner$$anonfun$1(this))).map(new HashSetCombiner$$anonfun$2(this), Array$.MODULE$.canBuildFrom(ClassTag$.MODULE$.apply(UnrolledBuffer.Unrolled.class)));
        HashSet[] hashSetArr = new HashSet[unrolledArr.length];
        combinerTaskSupport().executeAndWaitResult(new CreateTrie(this, unrolledArr, hashSetArr, 0, unrolledArr.length));
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = i3;
            if (i2 >= HashSetCombiner$.MODULE$.rootsize()) {
                break;
            }
            int i4 = i;
            if (buckets()[i2] != null) {
                i4 = i | (1 << i2);
            }
            i2++;
            i3 = i4;
        }
        int unboxToInt = BoxesRunTime.unboxToInt(Predef$.MODULE$.refArrayOps(hashSetArr).foldLeft(BoxesRunTime.boxToInteger(0), new HashSetCombiner$$anonfun$3(this)));
        return unboxToInt == 0 ? new ParHashSet<>() : unboxToInt == 1 ? new ParHashSet<>(hashSetArr[0]) : new ParHashSet<>(new HashSet.HashTrieSet(i, hashSetArr, unboxToInt));
    }
}
