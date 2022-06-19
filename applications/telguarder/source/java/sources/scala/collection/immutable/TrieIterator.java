package scala.collection.immutable;

import java.util.Objects;
import scala.Array$;
import scala.Array$$anon$2;
import scala.MatchError;
import scala.Predef$;
import scala.Tuple2;
import scala.collection.AbstractIterable;
import scala.collection.AbstractIterator;
import scala.collection.IndexedSeqOptimized;
import scala.collection.Iterator;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.immutable.HashMap;
import scala.collection.immutable.HashSet;
import scala.collection.mutable.ArrayOps;
import scala.collection.mutable.SeqLike;
import scala.math.Numeric$IntIsIntegral$;
import scala.reflect.ClassTag$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
@ScalaSignature(bytes = "\u0006\u0001\u0005%eaB\u0001\u0003\u0003\u0003!\u0001b\n\u0002\r)JLW-\u0013;fe\u0006$xN\u001d\u0006\u0003\u0007\u0011\t\u0011\"[7nkR\f'\r\\3\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017-\u0006\u0002\n!M\u0011\u0001A\u0003\t\u0004\u00171qQ\"\u0001\u0003\n\u00055!!\u0001E!cgR\u0014\u0018m\u0019;Ji\u0016\u0014\u0018\r^8s!\ty\u0001\u0003\u0004\u0001\u0005\rE\u0001AQ1\u0001\u0014\u0005\u0005!6\u0001A\t\u0003)a\u0001\"!\u0006\f\u000e\u0003\u0019I!a\u0006\u0004\u0003\u000f9{G\u000f[5oOB\u0011Q#G\u0005\u00035\u0019\u00111!\u00118z\u0011!a\u0002A!A!\u0002\u0013i\u0012!B3mK6\u001c\bcA\u000b\u001fA%\u0011qD\u0002\u0002\u0006\u0003J\u0014\u0018-\u001f\t\u0004C\trQ\"\u0001\u0002\n\u0005\r\u0012!\u0001C%uKJ\f'\r\\3\t\u000b\u0015\u0002A\u0011\u0001\u0014\u0002\rqJg.\u001b;?)\t9\u0003\u0006E\u0002\"\u00019AQ\u0001\b\u0013A\u0002uAaA\u000b\u0001\u0007\u0002\tY\u0013aB4fi\u0016cW-\u001c\u000b\u0003\u001d1BQ!L\u0015A\u00029\n\u0011\u0001\u001f\t\u0003+=J!\u0001\r\u0004\u0003\r\u0005s\u0017PU3g\u0011\u0015\u0011\u0004\u0001\"\u00014\u0003%Ig.\u001b;EKB$\b.F\u00015!\t)R'\u0003\u00027\r\t\u0019\u0011J\u001c;\t\u000ba\u0002A\u0011A\u001d\u0002\u001d%t\u0017\u000e^!se\u0006L8\u000b^1dWV\t!\bE\u0002\u0016=m\u00022!\u0006\u0010=!\r\t#%\u0010\u0016\u0003\u001dyZ\u0013a\u0010\t\u0003\u0001\u0016k\u0011!\u0011\u0006\u0003\u0005\u000e\u000b\u0011\"\u001e8dQ\u0016\u001c7.\u001a3\u000b\u0005\u00113\u0011AC1o]>$\u0018\r^5p]&\u0011a)\u0011\u0002\u0012k:\u001c\u0007.Z2lK\u00124\u0016M]5b]\u000e,\u0007\"\u0002%\u0001\t\u0003I\u0015\u0001D5oSR\u0004vn]*uC\u000e\\W#\u0001&\u0011\u0007UqB\u0007C\u0003M\u0001\u0011\u0005Q*\u0001\u0006j]&$\u0018I\u001d:bs\u0012+\u0012a\u000f\u0005\u0006\u001f\u0002!\taM\u0001\tS:LG\u000fU8t\t\")\u0011\u000b\u0001C\u0001%\u0006Y\u0011N\\5u'V\u0014\u0017\n^3s+\u0005\u0019\u0006cA\u0006U\u001d%\u0011Q\u000b\u0002\u0002\t\u0013R,'/\u0019;pe\"1q\u000b\u0001Q!\nQ\nQ\u0001Z3qi\"Da!\u0017\u0001!B\u0013Q\u0014AC1se\u0006L8\u000b^1dW\"11\f\u0001Q!\n)\u000b\u0001\u0002]8t'R\f7m\u001b\u0005\u0007;\u0002\u0001\u000b\u0015B\u001e\u0002\r\u0005\u0014(/Y=E\u0011\u0019y\u0006\u0001)Q\u0005i\u0005!\u0001o\\:E\u0011\u0019\t\u0007\u0001)Q\u0005'\u000691/\u001e2Ji\u0016\u0014\bBB2\u0001A\u0013%A-\u0001\u0005hKR,E.Z7t)\tiR\rC\u0003.E\u0002\u0007\u0001\u0005\u0003\u0004h\u0001\u0001&I\u0001[\u0001\u0011G>dG.[:j_:$v.\u0011:sCf$\"!H5\t\u000b52\u0007\u0019\u0001\u0011\u0006\r-\u0004\u0001\u0015!\u0003m\u00059\u0019\u0006\u000f\\5u\u0013R,'/\u0019;peN\u0004B!F7p'&\u0011aN\u0002\u0002\u0007)V\u0004H.\u001a\u001a\u0011\tUi7\u000b\u000e\u0005\u0006c\u0002!IA]\u0001\u0007SN$&/[3\u0015\u0005M4\bCA\u000bu\u0013\t)hAA\u0004C_>dW-\u00198\t\u000b5\u0002\b\u0019\u0001\u0018\t\u000ba\u0004A\u0011B=\u0002\u0017%\u001c8i\u001c8uC&tWM\u001d\u000b\u0003gjDQ!L<A\u000292A\u0001 \u0001\u0003{\nYA)\u001e9Ji\u0016\u0014\u0018\r^8s'\tYx\u0005C\u00043w\n\u0007I\u0011I\u001a\t\u0015\u0005\u00051\u0010\"A\u0001B\u0003%A'\u0001\u0006j]&$H)\u001a9uQ\u0002Bq\u0001O>C\u0002\u0013\u0005\u0013\b\u0003\u0006\u0002\bm$\t\u0011!Q\u0001\ni\nq\"\u001b8ji\u0006\u0013(/Y=Ti\u0006\u001c7\u000e\t\u0005\b\u0011n\u0014\r\u0011\"\u0011J\u0011)\tia\u001fC\u0001\u0002\u0003\u0006IAS\u0001\u000eS:LG\u000fU8t'R\f7m\u001b\u0011\t\u000f1[(\u0019!C!\u001b\"Q\u00111C>\u0005\u0002\u0003\u0005\u000b\u0011B\u001e\u0002\u0017%t\u0017\u000e^!se\u0006LH\t\t\u0005\b\u001fn\u0014\r\u0011\"\u00114\u0011)\tIb\u001fC\u0001\u0002\u0003\u0006I\u0001N\u0001\nS:LG\u000fU8t\t\u0002Bq!U>C\u0002\u0013\u0005#\u000b\u0003\u0006\u0002 m$\t\u0011!Q\u0001\nM\u000bA\"\u001b8jiN+(-\u0013;fe\u0002B\u0011\"a\t|\u0005\u0003\u0005\u000b\u0011B\u000f\u0002\u0005a\u001c\bBB\u0013|\t\u0003\t9\u0003\u0006\u0003\u0002*\u00055\u0002cAA\u0016w6\t\u0001\u0001C\u0004\u0002$\u0005\u0015\u0002\u0019A\u000f\t\r)ZHQIA\u0019)\rq\u00111\u0007\u0005\u0007[\u0005=\u0002\u0019\u0001\u0018\t\u000f\u0005]\u0002\u0001\"\u0001\u0002:\u0005YA-\u001e9Ji\u0016\u0014\u0018\r^8s+\u00059\u0003\u0002CA\u001f\u0001\u0001&I!a\u0010\u0002\u00179,w/\u0013;fe\u0006$xN\u001d\u000b\u0004O\u0005\u0005\u0003bBA\u0012\u0003w\u0001\r!\b\u0005\t\u0003\u000b\u0002\u0001\u0015\"\u0003\u0002H\u0005\u0001\u0012\u000e^3sCR|'oV5uQNK'0\u001a\u000b\u0004_\u0006%\u0003bBA&\u0003\u0007\u0002\r!H\u0001\u0004CJ\u0014\b\u0002CA(\u0001\u0001&I!!\u0015\u0002!\u0005\u0014(/Y=U_&#XM]1u_J\u001cH\u0003BA*\u0003+\u00022!a\u000bk\u0011\u001d\tY%!\u0014A\u0002uA\u0001\"!\u0017\u0001A\u0013%\u00111L\u0001\u000bgBd\u0017\u000e^!se\u0006LH\u0003BA*\u0003;Bq!a\u0018\u0002X\u0001\u0007Q$\u0001\u0002bI\"9\u00111\r\u0001\u0005\u0002\u0005\u0015\u0014a\u00025bg:+\u0007\u0010^\u000b\u0002g\"9\u0011\u0011\u000e\u0001\u0005\u0002\u0005-\u0014\u0001\u00028fqR$\u0012A\u0004\u0005\t\u0003_\u0002\u0001\u0015\"\u0003\u0002r\u0005)a.\u001a=uaQ)a\"a\u001d\u0002v!1A$!\u001cA\u0002uAq!a\u001e\u0002n\u0001\u0007A'A\u0001jQ\u0011\ti'a\u001f\u0011\t\u0005u\u0014qP\u0007\u0002\u0007&\u0019\u0011\u0011Q\"\u0003\u000fQ\f\u0017\u000e\u001c:fG\"9\u0011Q\u0011\u0001\u0005\u0002\u0005\u001d\u0015!B:qY&$XCAA*\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/TrieIterator.class */
public abstract class TrieIterator<T> extends AbstractIterator<T> {
    private final Iterable<T>[] elems;
    public int scala$collection$immutable$TrieIterator$$depth = initDepth();
    public Iterable<T>[][] scala$collection$immutable$TrieIterator$$arrayStack = initArrayStack();
    public int[] scala$collection$immutable$TrieIterator$$posStack = initPosStack();
    public Iterable<T>[] scala$collection$immutable$TrieIterator$$arrayD = initArrayD();
    public int scala$collection$immutable$TrieIterator$$posD = initPosD();
    public Iterator<T> scala$collection$immutable$TrieIterator$$subIter = initSubIter();

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/TrieIterator$DupIterator.class */
    public final class DupIterator extends TrieIterator<T> {
        private final /* synthetic */ TrieIterator $outer;
        private final Iterable<T>[] initArrayD;
        private final Iterable<T>[][] initArrayStack;
        private final int initDepth;
        private final int initPosD;
        private final int[] initPosStack;
        private final Iterator<T> initSubIter;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DupIterator(TrieIterator<T> trieIterator, Iterable<T>[] iterableArr) {
            super(iterableArr);
            Objects.requireNonNull(trieIterator);
            this.$outer = trieIterator;
            this.initDepth = trieIterator.scala$collection$immutable$TrieIterator$$depth;
            this.initArrayStack = trieIterator.scala$collection$immutable$TrieIterator$$arrayStack;
            this.initPosStack = trieIterator.scala$collection$immutable$TrieIterator$$posStack;
            this.initArrayD = trieIterator.scala$collection$immutable$TrieIterator$$arrayD;
            this.initPosD = trieIterator.scala$collection$immutable$TrieIterator$$posD;
            this.initSubIter = trieIterator.scala$collection$immutable$TrieIterator$$subIter;
        }

        @Override // scala.collection.immutable.TrieIterator
        public final T getElem(Object obj) {
            return (T) this.$outer.getElem(obj);
        }

        @Override // scala.collection.immutable.TrieIterator
        public Iterable<T>[] initArrayD() {
            return this.initArrayD;
        }

        @Override // scala.collection.immutable.TrieIterator
        public Iterable<T>[][] initArrayStack() {
            return this.initArrayStack;
        }

        @Override // scala.collection.immutable.TrieIterator
        public int initDepth() {
            return this.initDepth;
        }

        @Override // scala.collection.immutable.TrieIterator
        public int initPosD() {
            return this.initPosD;
        }

        @Override // scala.collection.immutable.TrieIterator
        public int[] initPosStack() {
            return this.initPosStack;
        }

        @Override // scala.collection.immutable.TrieIterator
        public Iterator<T> initSubIter() {
            return this.initSubIter;
        }
    }

    public TrieIterator(Iterable<T>[] iterableArr) {
        this.elems = iterableArr;
    }

    private Tuple2<Tuple2<Iterator<T>, Object>, Iterator<T>> arrayToIterators(Iterable<T>[] iterableArr) {
        Tuple2<Object, Object> splitAt = Predef$.MODULE$.refArrayOps(iterableArr).splitAt(iterableArr.length / 2);
        if (splitAt != null) {
            Tuple2 tuple2 = new Tuple2(splitAt.mo269_1(), splitAt.mo268_2());
            return new Tuple2<>(iteratorWithSize((Iterable[]) tuple2.mo268_2()), newIterator((Iterable[]) tuple2.mo269_1()));
        }
        throw new MatchError(splitAt);
    }

    private Iterable<T>[] collisionToArray(Iterable<T> iterable) {
        AbstractIterable[] abstractIterableArr;
        if (iterable instanceof HashMap.HashMapCollision1) {
            abstractIterableArr = (AbstractIterable[]) ((TraversableOnce) ((HashMap.HashMapCollision1) iterable).kvs().map(new TrieIterator$$anonfun$collisionToArray$1(this), Iterable$.MODULE$.canBuildFrom())).toArray(ClassTag$.MODULE$.apply(HashMap.class));
        } else if (!(iterable instanceof HashSet.HashSetCollision1)) {
            throw new MatchError(iterable);
        } else {
            abstractIterableArr = (AbstractIterable[]) ((TraversableOnce) ((HashSet.HashSetCollision1) iterable).m158ks().map(new TrieIterator$$anonfun$collisionToArray$2(this), ListSet$.MODULE$.canBuildFrom())).toArray(ClassTag$.MODULE$.apply(HashSet.class));
        }
        return (Iterable[]) abstractIterableArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [scala.collection.AbstractIterable[]] */
    private Iterable<T>[] getElems(Iterable<T> iterable) {
        HashSet[] hashSetArr;
        if (iterable instanceof HashMap.HashTrieMap) {
            hashSetArr = ((HashMap.HashTrieMap) iterable).elems();
        } else if (!(iterable instanceof HashSet.HashTrieSet)) {
            throw new MatchError(iterable);
        } else {
            hashSetArr = ((HashSet.HashTrieSet) iterable).elems();
        }
        return hashSetArr;
    }

    private boolean isContainer(Object obj) {
        boolean z = true;
        if (!(obj instanceof HashMap.HashMap1) && !(obj instanceof HashSet.HashSet1)) {
            z = false;
        }
        return z;
    }

    private boolean isTrie(Object obj) {
        boolean z = true;
        if (!(obj instanceof HashMap.HashTrieMap) && !(obj instanceof HashSet.HashTrieSet)) {
            z = false;
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Tuple2<Iterator<T>, Object> iteratorWithSize(Iterable<T>[] iterableArr) {
        return new Tuple2<>(newIterator(iterableArr), Predef$.MODULE$.intArrayOps((int[]) Predef$.MODULE$.refArrayOps(iterableArr).map(new TrieIterator$$anonfun$iteratorWithSize$1(this), Array$.MODULE$.canBuildFrom(ClassTag$.MODULE$.Int()))).sum(Numeric$IntIsIntegral$.MODULE$));
    }

    private TrieIterator<T> newIterator(Iterable<T>[] iterableArr) {
        return new TrieIterator$$anon$1(this, iterableArr);
    }

    private T next0(Iterable<T>[] iterableArr, int i) {
        T elem;
        while (true) {
            if (i == iterableArr.length - 1) {
                int i2 = this.scala$collection$immutable$TrieIterator$$depth - 1;
                this.scala$collection$immutable$TrieIterator$$depth = i2;
                if (i2 >= 0) {
                    Iterable<T>[][] iterableArr2 = this.scala$collection$immutable$TrieIterator$$arrayStack;
                    this.scala$collection$immutable$TrieIterator$$arrayD = iterableArr2[i2];
                    this.scala$collection$immutable$TrieIterator$$posD = this.scala$collection$immutable$TrieIterator$$posStack[i2];
                    iterableArr2[i2] = null;
                } else {
                    this.scala$collection$immutable$TrieIterator$$arrayD = null;
                    this.scala$collection$immutable$TrieIterator$$posD = 0;
                }
            } else {
                this.scala$collection$immutable$TrieIterator$$posD++;
            }
            Iterable<T> iterable = iterableArr[i];
            if (!isContainer(iterable)) {
                if (!isTrie(iterable)) {
                    this.scala$collection$immutable$TrieIterator$$subIter = iterable.iterator();
                    elem = next();
                    break;
                }
                int i3 = this.scala$collection$immutable$TrieIterator$$depth;
                if (i3 >= 0) {
                    this.scala$collection$immutable$TrieIterator$$arrayStack[i3] = this.scala$collection$immutable$TrieIterator$$arrayD;
                    this.scala$collection$immutable$TrieIterator$$posStack[i3] = this.scala$collection$immutable$TrieIterator$$posD;
                }
                this.scala$collection$immutable$TrieIterator$$depth = i3 + 1;
                this.scala$collection$immutable$TrieIterator$$arrayD = getElems(iterable);
                this.scala$collection$immutable$TrieIterator$$posD = 0;
                iterableArr = getElems(iterable);
                i = 0;
            } else {
                elem = getElem(iterable);
                break;
            }
        }
        return elem;
    }

    private Tuple2<Tuple2<Iterator<T>, Object>, Iterator<T>> splitArray(Iterable<T>[] iterableArr) {
        Tuple2<Tuple2<Iterator<T>, Object>, Iterator<T>> arrayToIterators;
        while (true) {
            boolean z = true;
            if (iterableArr.length > 1) {
                arrayToIterators = arrayToIterators(iterableArr);
                break;
            }
            Iterable<T> iterable = iterableArr[0];
            if (!(iterable instanceof HashMap.HashMapCollision1) && !(iterable instanceof HashSet.HashSetCollision1)) {
                z = false;
            }
            if (z) {
                arrayToIterators = arrayToIterators(collisionToArray(iterableArr[0]));
                break;
            }
            iterableArr = getElems(iterableArr[0]);
        }
        return arrayToIterators;
    }

    public TrieIterator<T> dupIterator() {
        return new DupIterator(this, this.elems);
    }

    public abstract T getElem(Object obj);

    @Override // scala.collection.Iterator
    public boolean hasNext() {
        return this.scala$collection$immutable$TrieIterator$$subIter != null || this.scala$collection$immutable$TrieIterator$$depth >= 0;
    }

    public Iterable<T>[] initArrayD() {
        return this.elems;
    }

    public Iterable<T>[][] initArrayStack() {
        return (Iterable<T>[][]) new Iterable[6];
    }

    public int initDepth() {
        return 0;
    }

    public int initPosD() {
        return 0;
    }

    public int[] initPosStack() {
        return new int[6];
    }

    public Iterator<T> initSubIter() {
        return null;
    }

    @Override // scala.collection.Iterator
    public T next() {
        T t;
        Iterator<T> iterator = this.scala$collection$immutable$TrieIterator$$subIter;
        if (iterator != null) {
            T next = iterator.next();
            t = next;
            if (!this.scala$collection$immutable$TrieIterator$$subIter.hasNext()) {
                this.scala$collection$immutable$TrieIterator$$subIter = null;
                t = next;
            }
        } else {
            t = next0(this.scala$collection$immutable$TrieIterator$$arrayD, this.scala$collection$immutable$TrieIterator$$posD);
        }
        return t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Tuple2<Tuple2<Iterator<T>, Object>, Iterator<T>> split() {
        Tuple2<Tuple2<Iterator<T>, Object>, Iterator<T>> tuple2;
        Iterable<T>[] iterableArr = this.scala$collection$immutable$TrieIterator$$arrayD;
        if (iterableArr != null && this.scala$collection$immutable$TrieIterator$$depth == 0 && this.scala$collection$immutable$TrieIterator$$posD == 0) {
            return splitArray(iterableArr);
        }
        Iterator<T> iterator = this.scala$collection$immutable$TrieIterator$$subIter;
        if (iterator != null) {
            SeqLike buffer = iterator.toBuffer();
            this.scala$collection$immutable$TrieIterator$$subIter = null;
            tuple2 = new Tuple2<>(new Tuple2(buffer.iterator(), BoxesRunTime.boxToInteger(buffer.length())), this);
        } else if (this.scala$collection$immutable$TrieIterator$$depth <= 0) {
            int i = this.scala$collection$immutable$TrieIterator$$posD;
            if (i == iterableArr.length - 1) {
                Iterable<T> iterable = iterableArr[i];
                tuple2 = arrayToIterators(isTrie(iterable) ? getElems(iterable) : collisionToArray(iterable));
            } else {
                Predef$ predef$ = Predef$.MODULE$;
                ArrayOps.ofRef ofref = new ArrayOps.ofRef(this.scala$collection$immutable$TrieIterator$$arrayD);
                Iterable<T>[] iterableArr2 = this.scala$collection$immutable$TrieIterator$$arrayD;
                Tuple2 splitAt = IndexedSeqOptimized.Cclass.splitAt(ofref, iterableArr2.length - (((iterableArr2.length - this.scala$collection$immutable$TrieIterator$$posD) + 1) / 2));
                if (splitAt == null) {
                    throw new MatchError(splitAt);
                }
                Tuple2 tuple22 = new Tuple2(splitAt.mo269_1(), splitAt.mo268_2());
                this.scala$collection$immutable$TrieIterator$$arrayD = (Iterable[]) tuple22.mo269_1();
                tuple2 = new Tuple2<>(iteratorWithSize((Iterable[]) tuple22.mo268_2()), this);
            }
        } else if (this.scala$collection$immutable$TrieIterator$$posStack[0] == this.scala$collection$immutable$TrieIterator$$arrayStack[0].length - 1) {
            Predef$ predef$2 = Predef$.MODULE$;
            Iterable[] iterableArr3 = {(Iterable) IndexedSeqOptimized.Cclass.last(new ArrayOps.ofRef(this.scala$collection$immutable$TrieIterator$$arrayStack[0]))};
            int size = iterableArr3[0].size();
            this.scala$collection$immutable$TrieIterator$$depth--;
            Predef$ predef$3 = Predef$.MODULE$;
            int length = this.scala$collection$immutable$TrieIterator$$arrayStack.length;
            Range$ range$ = Range$.MODULE$;
            Range range = new Range(1, length, 1);
            range.scala$collection$immutable$Range$$validateMaxLength();
            boolean z = (range.start() == Integer.MIN_VALUE && range.end() == Integer.MIN_VALUE) ? false : true;
            int start = range.start();
            int terminalElement = range.terminalElement();
            int step = range.step();
            int i2 = 0;
            while (true) {
                if (!(!z ? i2 < range.numRangeElements() : start != terminalElement)) {
                    break;
                }
                Iterable<T>[][] iterableArr4 = this.scala$collection$immutable$TrieIterator$$arrayStack;
                iterableArr4[start - 1] = iterableArr4[start];
                i2++;
                start += step;
            }
            Iterable<T>[][] iterableArr5 = this.scala$collection$immutable$TrieIterator$$arrayStack;
            Iterable[] iterableArr6 = new Iterable[1];
            iterableArr6[0] = null;
            iterableArr5[iterableArr5.length - 1] = iterableArr6;
            Predef$ predef$4 = Predef$.MODULE$;
            Predef$ predef$5 = Predef$.MODULE$;
            ArrayOps.ofInt ofint = new ArrayOps.ofInt((int[]) IndexedSeqOptimized.Cclass.tail(new ArrayOps.ofInt(this.scala$collection$immutable$TrieIterator$$posStack)));
            Predef$ predef$6 = Predef$.MODULE$;
            ArrayOps.ofInt ofint2 = new ArrayOps.ofInt((int[]) Array$.MODULE$.apply(Predef$.MODULE$.wrapIntArray(new int[]{0}), ClassTag$.MODULE$.Int()));
            Array$ array$ = Array$.MODULE$;
            this.scala$collection$immutable$TrieIterator$$posStack = (int[]) TraversableLike.Cclass.$plus$plus(ofint, ofint2, new Array$$anon$2(ClassTag$.MODULE$.Int()));
            tuple2 = new Tuple2<>(new Tuple2(new TrieIterator$$anon$1(this, iterableArr3), BoxesRunTime.boxToInteger(size)), this);
        } else {
            Predef$ predef$7 = Predef$.MODULE$;
            ArrayOps.ofRef ofref2 = new ArrayOps.ofRef(this.scala$collection$immutable$TrieIterator$$arrayStack[0]);
            Iterable<T>[][] iterableArr7 = this.scala$collection$immutable$TrieIterator$$arrayStack;
            Tuple2 splitAt2 = IndexedSeqOptimized.Cclass.splitAt(ofref2, iterableArr7[0].length - (((iterableArr7[0].length - this.scala$collection$immutable$TrieIterator$$posStack[0]) + 1) / 2));
            if (splitAt2 == null) {
                throw new MatchError(splitAt2);
            }
            Tuple2 tuple23 = new Tuple2(splitAt2.mo269_1(), splitAt2.mo268_2());
            Iterable<T>[] iterableArr8 = (Iterable[]) tuple23.mo269_1();
            Iterable<T>[] iterableArr9 = (Iterable[]) tuple23.mo268_2();
            this.scala$collection$immutable$TrieIterator$$arrayStack[0] = iterableArr8;
            tuple2 = new Tuple2<>(iteratorWithSize(iterableArr9), this);
        }
        return tuple2;
    }
}
