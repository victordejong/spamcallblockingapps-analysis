package scala.collection.parallel.immutable;

import java.util.Objects;
import scala.Array$;
import scala.Function0;
import scala.MatchError;
import scala.None$;
import scala.Option;
import scala.Predef$;
import scala.Some;
import scala.Tuple2;
import scala.collection.Seq;
import scala.collection.immutable.HashMap;
import scala.collection.immutable.HashMap$;
import scala.collection.immutable.List;
import scala.collection.immutable.List$;
import scala.collection.immutable.ListMap;
import scala.collection.immutable.ListMap$;
import scala.collection.mutable.Builder;
import scala.collection.mutable.StringBuilder;
import scala.collection.mutable.UnrolledBuffer;
import scala.collection.parallel.BucketCombiner;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.Task;
import scala.collection.parallel.package$;
import scala.reflect.ClassTag$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.TraitSetter;
@ScalaSignature(bytes = "\u0006\u0001\u0005ehAB\u0001\u0003\u0003\u0003!!BA\bICNDW*\u00199D_6\u0014\u0017N\\3s\u0015\t\u0019A!A\u0005j[6,H/\u00192mK*\u0011QAB\u0001\ta\u0006\u0014\u0018\r\u001c7fY*\u0011q\u0001C\u0001\u000bG>dG.Z2uS>t'\"A\u0005\u0002\u000bM\u001c\u0017\r\\1\u0016\u0007-1\u0012e\u0005\u0002\u0001\u0019A1QB\u0004\t$!\u001dj\u0011\u0001B\u0005\u0003\u001f\u0011\u0011aBQ;dW\u0016$8i\\7cS:,'\u000f\u0005\u0003\u0012%Q\u0001S\"\u0001\u0005\n\u0005MA!A\u0002+va2,'\u0007\u0005\u0002\u0016-1\u0001A!B\f\u0001\u0005\u0004I\"!A&\u0004\u0001E\u0011!$\b\t\u0003#mI!\u0001\b\u0005\u0003\u000f9{G\u000f[5oOB\u0011\u0011CH\u0005\u0003?!\u00111!\u00118z!\t)\u0012\u0005B\u0003#\u0001\t\u0007\u0011DA\u0001W!\u0011!S\u0005\u0006\u0011\u000e\u0003\tI!A\n\u0002\u0003\u0015A\u000b'\u000fS1tQ6\u000b\u0007\u000f\u0005\u0003%\u0001Q\u0001\u0003\"B\u0015\u0001\t\u0003Q\u0013A\u0002\u001fj]&$h\bF\u0001(\u0011\u001da\u0003A1A\u0005\u00025\n\u0011\"Z7qif$&/[3\u0016\u00039\u0002BaL\u0019\u0015A5\t\u0001G\u0003\u0002\u0004\r%\u0011!\u0007\r\u0002\b\u0011\u0006\u001c\b.T1q\u0011\u0019!\u0004\u0001)A\u0005]\u0005QQ-\u001c9usR\u0013\u0018.\u001a\u0011\t\u000bY\u0002A\u0011A\u001c\u0002\u0011\u0011\u0002H.^:%KF$\"\u0001O\u001d\u000e\u0003\u0001AQAO\u001bA\u0002A\tA!\u001a7f[\")A\b\u0001C\u0001{\u00051!/Z:vYR$\u0012a\t\u0005\u0006\u007f\u0001!\t\u0001Q\u0001\u000bOJ|W\u000f\u001d\"z\u0017\u0016LXCA!E)\t\u0011e\t\u0005\u0003%KQ\u0019\u0005CA\u000bE\t\u0015)eH1\u0001\u001a\u0005\u0011\u0011V\r\u001d:\t\u000b\u001ds\u0004\u0019\u0001%\u0002\u0007\r\u0014g\rE\u0002\u0012\u0013.K!A\u0013\u0005\u0003\u0013\u0019+hn\u0019;j_:\u0004\u0004\u0003B\u0007MA\rK!!\u0014\u0003\u0003\u0011\r{WNY5oKJDQa\u0014\u0001\u0005BA\u000b\u0001\u0002^8TiJLgn\u001a\u000b\u0002#B\u0011!kV\u0007\u0002'*\u0011A+V\u0001\u0005Y\u0006twMC\u0001W\u0003\u0011Q\u0017M^1\n\u0005a\u001b&AB*ue&twM\u0002\u0003[\u0001\u0001Y&AC\"sK\u0006$X\r\u0016:jKN\u0019\u0011\fX0\u0011\u0005Ei\u0016B\u00010\t\u0005\u0019\te.\u001f*fMB!Q\u0002\u00192f\u0013\t\tGA\u0001\u0003UCN\\\u0007CA\td\u0013\t!\u0007B\u0001\u0003V]&$\bC\u0001\u001dZ\u0011!9\u0017L!A!\u0002\u0013A\u0017!\u00022vG.\u001c\bcA\tjW&\u0011!\u000e\u0003\u0002\u0006\u0003J\u0014\u0018-\u001f\t\u0004Yj\u0004bBA7x\u001d\tqWO\u0004\u0002pi:\u0011\u0001o]\u0007\u0002c*\u0011!\u000fG\u0001\u0007yI|w\u000e\u001e \n\u0003%I!a\u0002\u0005\n\u0005Y4\u0011aB7vi\u0006\u0014G.Z\u0005\u0003qf\fa\"\u00168s_2dW\r\u001a\"vM\u001a,'O\u0003\u0002w\r%\u00111\u0010 \u0002\t+:\u0014x\u000e\u001c7fI*\u0011\u00010\u001f\u0005\t}f\u0013\t\u0011)A\u0005\u007f\u0006!!o\\8u!\r\t\u0012N\f\u0005\u000b\u0003\u0007I&\u0011!Q\u0001\n\u0005\u0015\u0011AB8gMN,G\u000fE\u0002\u0012\u0003\u000fI1!!\u0003\t\u0005\rIe\u000e\u001e\u0005\u000b\u0003\u001bI&\u0011!Q\u0001\n\u0005\u0015\u0011a\u00025po6\fg.\u001f\u0005\u0007Se#\t!!\u0005\u0015\u0013\u0015\f\u0019\"!\u0006\u0002\u0018\u0005e\u0001BB4\u0002\u0010\u0001\u0007\u0001\u000e\u0003\u0004\u007f\u0003\u001f\u0001\ra \u0005\t\u0003\u0007\ty\u00011\u0001\u0002\u0006!A\u0011QBA\b\u0001\u0004\t)\u0001\u0003\u0005=3\u0002\u0007I\u0011AA\u000f+\u0005\u0011\u0007\"CA\u00113\u0002\u0007I\u0011AA\u0012\u0003)\u0011Xm];mi~#S-\u001d\u000b\u0004E\u0006\u0015\u0002\"CA\u0014\u0003?\t\t\u00111\u0001c\u0003\rAH%\r\u0005\b\u0003WI\u0006\u0015)\u0003c\u0003\u001d\u0011Xm];mi\u0002BC!!\u000b\u00020A\u0019\u0011#!\r\n\u0007\u0005M\u0002B\u0001\u0005w_2\fG/\u001b7f\u0011\u001d\t9$\u0017C\u0001\u0003s\tA\u0001\\3bMR\u0019!-a\u000f\t\u0011\u0005u\u0012Q\u0007a\u0001\u0003\u007f\tA\u0001\u001d:fmB!\u0011#!\u0011c\u0013\r\t\u0019\u0005\u0003\u0002\u0007\u001fB$\u0018n\u001c8\t\u000f\u0005\u001d\u0013\f\"\u0003\u0002J\u0005Q1M]3bi\u0016$&/[3\u0015\u00079\nY\u0005C\u0004\u0002N\u0005\u0015\u0003\u0019A6\u0002\u000b\u0015dW-\\:\t\u000f\u0005E\u0013\f\"\u0001\u0002T\u0005)1\u000f\u001d7jiV\u0011\u0011Q\u000b\t\u0005_\u0005]S-C\u0002\u0002ZA\u0012A\u0001T5ti\"9\u0011QL-\u0005\u0002\u0005}\u0013AE:i_VdGm\u00159mSR4UO\u001d;iKJ,\"!!\u0019\u0011\u0007E\t\u0019'C\u0002\u0002f!\u0011qAQ8pY\u0016\fgN\u0002\u0004\u0002j\u0001\u0001\u00111\u000e\u0002\u0012\u0007J,\u0017\r^3He>,\b/\u001a3Ue&,W\u0003BA7\u0003k\u001aR!a\u001a]\u0003_\u0002R!\u00041c\u0003c\u0002R\u0001OA4\u0003g\u00022!FA;\t\u0019)\u0015q\rb\u00013!Qq)a\u001a\u0003\u0002\u0003\u0006I!!\u001f\u0011\tEI\u00151\u0010\t\u0006\u001b1\u0003\u00131\u000f\u0005\nO\u0006\u001d$\u0011!Q\u0001\n!D!B`A4\u0005\u0003\u0005\u000b\u0011BAA!\u0011\t\u0012.a!\u0011\t=\nD\u0003\u0018\u0005\f\u0003\u0007\t9G!A!\u0002\u0013\t)\u0001C\u0006\u0002\u000e\u0005\u001d$\u0011!Q\u0001\n\u0005\u0015\u0001bB\u0015\u0002h\u0011\u0005\u00111\u0012\u000b\r\u0003c\ni)a$\u0002\u0012\u0006M\u0015Q\u0013\u0005\b\u000f\u0006%\u0005\u0019AA=\u0011\u00199\u0017\u0011\u0012a\u0001Q\"9a0!#A\u0002\u0005\u0005\u0005\u0002CA\u0002\u0003\u0013\u0003\r!!\u0002\t\u0011\u00055\u0011\u0011\u0012a\u0001\u0003\u000bA\u0011\u0002PA4\u0001\u0004%\t!!\b\t\u0015\u0005\u0005\u0012q\ra\u0001\n\u0003\tY\nF\u0002c\u0003;C\u0011\"a\n\u0002\u001a\u0006\u0005\t\u0019\u00012\t\u0011\u0005-\u0012q\rQ!\n\tDC!a(\u00020!A\u0011qGA4\t\u0003\t)\u000bF\u0002c\u0003OC\u0001\"!\u0010\u0002$\u0002\u0007\u0011q\b\u0005\t\u0003W\u000b9\u0007\"\u0003\u0002.\u0006\t2M]3bi\u0016<%o\\;qK\u0012$&/[3\u0015\t\u0005=\u0016\u0011\u0017\t\u0006_E\"\u00121\u000f\u0005\b\u0003\u001b\nI\u000b1\u0001l\u0011!\t),a\u001a\u0005\n\u0005]\u0016!E3wC2,\u0018\r^3D_6\u0014\u0017N\\3sgR!\u0011qVA]\u0011!\tY,a-A\u0002\u0005u\u0016\u0001\u0002;sS\u0016\u0004RaL\u0019\u0015\u0003wB\u0001\"!\u0015\u0002h\u0011\u0005\u0011\u0011Y\u000b\u0003\u0003\u0007\u0004RaLA,\u0003cB\u0001\"!\u0018\u0002h\u0011\u0005\u0011qL\u0004\t\u0003\u0013\u0014\u0001\u0012\u0001\u0003\u0002L\u0006y\u0001*Y:i\u001b\u0006\u00048i\\7cS:,'\u000fE\u0002%\u0003\u001b4q!\u0001\u0002\t\u0002\u0011\tymE\u0002\u0002NrCq!KAg\t\u0003\t\u0019\u000e\u0006\u0002\u0002L\"A\u0011q[Ag\t\u0003\tI.A\u0003baBd\u00170\u0006\u0004\u0002\\\u0006\u0005\u0018Q]\u000b\u0003\u0003;\u0004b\u0001\n\u0001\u0002`\u0006\r\bcA\u000b\u0002b\u00121q#!6C\u0002e\u00012!FAs\t\u0019\u0011\u0013Q\u001bb\u00013!Y\u0011\u0011^Ag\u0005\u0004%\tAAAv\u0003!\u0011xn\u001c;cSR\u001cXCAA\u0003\u0011%\ty/!4!\u0002\u0013\t)!A\u0005s_>$(-\u001b;tA!Y\u00111_Ag\u0005\u0004%\tAAAv\u0003!\u0011xn\u001c;tSj,\u0007\"CA|\u0003\u001b\u0004\u000b\u0011BA\u0003\u0003%\u0011xn\u001c;tSj,\u0007\u0005")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/HashMapCombiner.class */
public abstract class HashMapCombiner<K, V> extends BucketCombiner<Tuple2<K, V>, ParHashMap<K, V>, Tuple2<K, V>, HashMapCombiner<K, V>> {
    private final HashMap<K, V> emptyTrie = HashMap$.MODULE$.empty();

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/HashMapCombiner$CreateGroupedTrie.class */
    public class CreateGroupedTrie<Repr> implements Task<BoxedUnit, HashMapCombiner<K, V>.CreateGroupedTrie<Repr>> {
        public final /* synthetic */ HashMapCombiner $outer;
        private final UnrolledBuffer.Unrolled<Tuple2<K, V>>[] bucks;
        private final Function0<Combiner<V, Repr>> cbf;
        private final int howmany;
        private final int offset;
        private volatile BoxedUnit result = BoxedUnit.UNIT;
        private final HashMap<K, Object>[] root;
        private volatile Throwable throwable;

        public CreateGroupedTrie(HashMapCombiner<K, V> hashMapCombiner, Function0<Combiner<V, Repr>> function0, UnrolledBuffer.Unrolled<Tuple2<K, V>>[] unrolledArr, HashMap<K, Object>[] hashMapArr, int i, int i2) {
            this.cbf = function0;
            this.bucks = unrolledArr;
            this.root = hashMapArr;
            this.offset = i;
            this.howmany = i2;
            Objects.requireNonNull(hashMapCombiner);
            this.$outer = hashMapCombiner;
            throwable_$eq(null);
        }

        private HashMap<K, Repr> createGroupedTrie(UnrolledBuffer.Unrolled<Tuple2<K, V>> unrolled) {
            Combiner<V, Repr> combiner;
            HashMap<K, Combiner<V, Repr>> hashMap;
            UnrolledBuffer.Unrolled<Tuple2<K, V>> unrolled2 = unrolled;
            HashMap<K, Combiner<V, Repr>> hashMap2 = new HashMap<>();
            while (true) {
                int i = 0;
                if (unrolled2 != null) {
                    Tuple2[] tuple2Arr = (Tuple2[]) unrolled2.array();
                    int size = unrolled2.size();
                    while (i < size) {
                        Tuple2 tuple2 = tuple2Arr[i];
                        int computeHash = hashMap2.computeHash((K) tuple2.mo269_1());
                        Option<Combiner<V, Repr>> option = hashMap2.get0((K) tuple2.mo269_1(), computeHash, HashMapCombiner$.MODULE$.rootbits());
                        if (option instanceof Some) {
                            combiner = (Combiner) ((Some) option).m362x();
                            hashMap = hashMap2;
                        } else if (!None$.MODULE$.equals(option)) {
                            throw new MatchError(option);
                        } else {
                            combiner = this.cbf.apply();
                            hashMap = hashMap2.updated0((K) tuple2.mo269_1(), computeHash, HashMapCombiner$.MODULE$.rootbits(), combiner, null, null);
                        }
                        combiner.$plus$eq((Combiner<V, Repr>) tuple2.mo268_2());
                        i++;
                        hashMap2 = hashMap;
                    }
                    unrolled2 = unrolled2.next();
                } else {
                    return evaluateCombiners(hashMap2);
                }
            }
        }

        private HashMap<K, Repr> evaluateCombiners(HashMap<K, Combiner<V, Repr>> hashMap) {
            HashMap.HashTrieMap hashTrieMap;
            HashMap.HashMap1 hashMapCollision1;
            if (hashMap instanceof HashMap.HashMap1) {
                HashMap.HashMap1 hashMap1 = (HashMap.HashMap1) hashMap;
                hashMapCollision1 = new HashMap.HashMap1(hashMap1.key(), hashMap1.hash(), ((Builder) hashMap1.value()).result(), null);
            } else if (!(hashMap instanceof HashMap.HashMapCollision1)) {
                hashTrieMap = hashMap;
                if (hashMap instanceof HashMap.HashTrieMap) {
                    HashMap.HashTrieMap hashTrieMap2 = (HashMap.HashTrieMap) hashMap;
                    int i = 0;
                    while (true) {
                        hashTrieMap = hashTrieMap2;
                        if (i >= hashTrieMap2.elems().length) {
                            break;
                        }
                        hashTrieMap2.elems()[i] = evaluateCombiners(hashTrieMap2.elems()[i]);
                        i++;
                    }
                }
                return (HashMap<K, Repr>) hashTrieMap;
            } else {
                HashMap.HashMapCollision1 hashMapCollision12 = (HashMap.HashMapCollision1) hashMap;
                hashMapCollision1 = new HashMap.HashMapCollision1(hashMapCollision12.hash(), (ListMap) hashMapCollision12.kvs().map(new HashMapCombiner$CreateGroupedTrie$$anonfun$7(this), ListMap$.MODULE$.canBuildFrom()));
            }
            hashTrieMap = hashMapCollision1;
            return (HashMap<K, Repr>) hashTrieMap;
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
                this.root[i3] = createGroupedTrie(this.bucks[i3]);
            }
            result2();
            result_$eq(BoxedUnit.UNIT);
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

        /* renamed from: scala$collection$parallel$immutable$HashMapCombiner$CreateGroupedTrie$$$outer */
        public /* synthetic */ HashMapCombiner m107x7aefd4f9() {
            return this.$outer;
        }

        @Override // scala.collection.parallel.Task
        public boolean shouldSplitFurther() {
            return this.howmany > package$.MODULE$.thresholdFromSize(this.root.length, m107x7aefd4f9().combinerTaskSupport().parallelismLevel());
        }

        @Override // scala.collection.parallel.Task
        public void signalAbort() {
            Task.Cclass.signalAbort(this);
        }

        @Override // scala.collection.parallel.Task
        public List<HashMapCombiner<K, V>.CreateGroupedTrie<Repr>> split() {
            int i = this.howmany / 2;
            return List$.MODULE$.apply((Seq) Predef$.MODULE$.wrapRefArray(new CreateGroupedTrie[]{new CreateGroupedTrie(m107x7aefd4f9(), this.cbf, this.bucks, this.root, this.offset, i), new CreateGroupedTrie(m107x7aefd4f9(), this.cbf, this.bucks, this.root, this.offset + i, this.howmany - i)}));
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

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/HashMapCombiner$CreateTrie.class */
    public class CreateTrie implements Task<BoxedUnit, HashMapCombiner<K, V>.CreateTrie> {
        public final /* synthetic */ HashMapCombiner $outer;
        private final UnrolledBuffer.Unrolled<Tuple2<K, V>>[] bucks;
        private final int howmany;
        private final int offset;
        private volatile BoxedUnit result = BoxedUnit.UNIT;
        private final HashMap<K, V>[] root;
        private volatile Throwable throwable;

        public CreateTrie(HashMapCombiner<K, V> hashMapCombiner, UnrolledBuffer.Unrolled<Tuple2<K, V>>[] unrolledArr, HashMap<K, V>[] hashMapArr, int i, int i2) {
            this.bucks = unrolledArr;
            this.root = hashMapArr;
            this.offset = i;
            this.howmany = i2;
            Objects.requireNonNull(hashMapCombiner);
            this.$outer = hashMapCombiner;
            throwable_$eq(null);
        }

        private HashMap<K, V> createTrie(UnrolledBuffer.Unrolled<Tuple2<K, V>> unrolled) {
            UnrolledBuffer.Unrolled<Tuple2<K, V>> unrolled2 = unrolled;
            HashMap<K, V> hashMap = new HashMap<>();
            while (true) {
                if (unrolled2 != null) {
                    Tuple2[] tuple2Arr = (Tuple2[]) unrolled2.array();
                    int size = unrolled2.size();
                    for (int i = 0; i < size; i++) {
                        Tuple2 tuple2 = tuple2Arr[i];
                        hashMap = hashMap.updated0((K) tuple2.mo269_1(), hashMap.computeHash((K) tuple2.mo269_1()), HashMapCombiner$.MODULE$.rootbits(), tuple2.mo268_2(), tuple2, null);
                    }
                    unrolled2 = unrolled2.next();
                } else {
                    return hashMap;
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
            result2();
            result_$eq(BoxedUnit.UNIT);
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

        /* renamed from: scala$collection$parallel$immutable$HashMapCombiner$CreateTrie$$$outer */
        public /* synthetic */ HashMapCombiner m106xdcaa63a7() {
            return this.$outer;
        }

        @Override // scala.collection.parallel.Task
        public boolean shouldSplitFurther() {
            return this.howmany > package$.MODULE$.thresholdFromSize(this.root.length, m106xdcaa63a7().combinerTaskSupport().parallelismLevel());
        }

        @Override // scala.collection.parallel.Task
        public void signalAbort() {
            Task.Cclass.signalAbort(this);
        }

        @Override // scala.collection.parallel.Task
        public List<HashMapCombiner<K, V>.CreateTrie> split() {
            int i = this.howmany / 2;
            return List$.MODULE$.apply((Seq) Predef$.MODULE$.wrapRefArray(new CreateTrie[]{new CreateTrie(m106xdcaa63a7(), this.bucks, this.root, this.offset, i), new CreateTrie(m106xdcaa63a7(), this.bucks, this.root, this.offset + i, this.howmany - i)}));
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

    public HashMapCombiner() {
        super(HashMapCombiner$.MODULE$.rootsize());
    }

    public static <K, V> HashMapCombiner<K, V> apply() {
        return HashMapCombiner$.MODULE$.apply();
    }

    public HashMapCombiner<K, V> $plus$eq(Tuple2<K, V> tuple2) {
        sz_$eq(m119sz() + 1);
        int computeHash = emptyTrie().computeHash(tuple2.mo269_1()) & 31;
        if (buckets()[computeHash] == null) {
            buckets()[computeHash] = new UnrolledBuffer<>(ClassTag$.MODULE$.apply(Tuple2.class));
        }
        buckets()[computeHash].$plus$eq((UnrolledBuffer<Tuple2<K, V>>) tuple2);
        return this;
    }

    public HashMap<K, V> emptyTrie() {
        return this.emptyTrie;
    }

    public <Repr> ParHashMap<K, Repr> groupByKey(Function0<Combiner<V, Repr>> function0) {
        int i;
        UnrolledBuffer.Unrolled[] unrolledArr = (UnrolledBuffer.Unrolled[]) Predef$.MODULE$.refArrayOps((Object[]) Predef$.MODULE$.refArrayOps(buckets()).filter(new HashMapCombiner$$anonfun$4(this))).map(new HashMapCombiner$$anonfun$5(this), Array$.MODULE$.canBuildFrom(ClassTag$.MODULE$.apply(UnrolledBuffer.Unrolled.class)));
        HashMap[] hashMapArr = new HashMap[unrolledArr.length];
        combinerTaskSupport().executeAndWaitResult(new CreateGroupedTrie(this, function0, unrolledArr, hashMapArr, 0, unrolledArr.length));
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = i3;
            if (i2 >= HashMapCombiner$.MODULE$.rootsize()) {
                break;
            }
            int i4 = i;
            if (buckets()[i2] != null) {
                i4 = i | (1 << i2);
            }
            i2++;
            i3 = i4;
        }
        int unboxToInt = BoxesRunTime.unboxToInt(Predef$.MODULE$.refArrayOps(hashMapArr).foldLeft(BoxesRunTime.boxToInteger(0), new HashMapCombiner$$anonfun$6(this)));
        return unboxToInt == 0 ? new ParHashMap<>() : unboxToInt == 1 ? new ParHashMap<>(hashMapArr[0]) : new ParHashMap<>(new HashMap.HashTrieMap(i, hashMapArr, unboxToInt));
    }

    @Override // scala.collection.mutable.Builder
    public ParHashMap<K, V> result() {
        int i;
        UnrolledBuffer.Unrolled[] unrolledArr = (UnrolledBuffer.Unrolled[]) Predef$.MODULE$.refArrayOps((Object[]) Predef$.MODULE$.refArrayOps(buckets()).filter(new HashMapCombiner$$anonfun$1(this))).map(new HashMapCombiner$$anonfun$2(this), Array$.MODULE$.canBuildFrom(ClassTag$.MODULE$.apply(UnrolledBuffer.Unrolled.class)));
        HashMap[] hashMapArr = new HashMap[unrolledArr.length];
        combinerTaskSupport().executeAndWaitResult(new CreateTrie(this, unrolledArr, hashMapArr, 0, unrolledArr.length));
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = i3;
            if (i2 >= HashMapCombiner$.MODULE$.rootsize()) {
                break;
            }
            int i4 = i;
            if (buckets()[i2] != null) {
                i4 = i | (1 << i2);
            }
            i2++;
            i3 = i4;
        }
        int unboxToInt = BoxesRunTime.unboxToInt(Predef$.MODULE$.refArrayOps(hashMapArr).foldLeft(BoxesRunTime.boxToInteger(0), new HashMapCombiner$$anonfun$3(this)));
        return unboxToInt == 0 ? new ParHashMap<>() : unboxToInt == 1 ? new ParHashMap<>(hashMapArr[0]) : new ParHashMap<>(new HashMap.HashTrieMap(i, hashMapArr, unboxToInt));
    }

    public String toString() {
        return new StringBuilder().append((Object) "HashTrieCombiner(sz: ").append(BoxesRunTime.boxToInteger(size())).append((Object) ")").toString();
    }
}
