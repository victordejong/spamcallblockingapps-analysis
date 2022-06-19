package scala.collection.concurrent;

import scala.Array$;
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
import scala.collection.GenTraversableOnce;
import scala.collection.Iterable;
import scala.collection.Iterator;
import scala.collection.Iterator$;
import scala.collection.Seq;
import scala.collection.Seq$;
import scala.collection.Traversable;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.immutable.IndexedSeq;
import scala.collection.immutable.List;
import scala.collection.immutable.Map;
import scala.collection.immutable.Set;
import scala.collection.immutable.Stream;
import scala.collection.immutable.Vector;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.StringBuilder;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
@ScalaSignature(bytes = "\u0006\u0001\u0005ud!B\u0001\u0003\u0001\u0011A!a\u0004+sS\u0016l\u0015\r]%uKJ\fGo\u001c:\u000b\u0005\r!\u0011AC2p]\u000e,(O]3oi*\u0011QAB\u0001\u000bG>dG.Z2uS>t'\"A\u0004\u0002\u000bM\u001c\u0017\r\\1\u0016\u0007%9\"eE\u0002\u0001\u00159\u0001\"a\u0003\u0007\u000e\u0003\u0019I!!\u0004\u0004\u0003\r\u0005s\u0017PU3g!\ry\u0001CE\u0007\u0002\t%\u0011\u0011\u0003\u0002\u0002\t\u0013R,'/\u0019;peB!1bE\u000b\"\u0013\t!bA\u0001\u0004UkBdWM\r\t\u0003-]a\u0001\u0001B\u0003\u0019\u0001\t\u0007!DA\u0001L\u0007\u0001\t\"a\u0007\u0010\u0011\u0005-a\u0012BA\u000f\u0007\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"aC\u0010\n\u0005\u00012!aA!osB\u0011aC\t\u0003\u0006G\u0001\u0011\rA\u0007\u0002\u0002-\"AQ\u0005\u0001BA\u0002\u0013\u0005a%A\u0003mKZ,G.F\u0001(!\tY\u0001&\u0003\u0002*\r\t\u0019\u0011J\u001c;\t\u0011-\u0002!\u00111A\u0005\u00021\n\u0011\u0002\\3wK2|F%Z9\u0015\u00055\u0002\u0004CA\u0006/\u0013\tycA\u0001\u0003V]&$\bbB\u0019+\u0003\u0003\u0005\raJ\u0001\u0004q\u0012\n\u0004\u0002C\u001a\u0001\u0005\u0003\u0005\u000b\u0015B\u0014\u0002\r1,g/\u001a7!\u0011!)\u0004A!a\u0001\n\u00131\u0014AA2u+\u00059\u0004\u0003\u0002\u001d:+\u0005j\u0011AA\u0005\u0003u\t\u0011q\u0001\u0016:jK6\u000b\u0007\u000f\u0003\u0005=\u0001\t\u0005\r\u0011\"\u0003>\u0003\u0019\u0019Go\u0018\u0013fcR\u0011QF\u0010\u0005\bcm\n\t\u00111\u00018\u0011!\u0001\u0005A!A!B\u00139\u0014aA2uA!A!\t\u0001B\u0001B\u0003%1)\u0001\u0005nkN$\u0018J\\5u!\tYA)\u0003\u0002F\r\t9!i\\8mK\u0006t\u0007\"B$\u0001\t\u0003A\u0015A\u0002\u001fj]&$h\b\u0006\u0003J\u0015.c\u0005\u0003\u0002\u001d\u0001+\u0005BQ!\n$A\u0002\u001dBQ!\u000e$A\u0002]BqA\u0011$\u0011\u0002\u0003\u00071\tC\u0004O\u0001\t\u0007I\u0011B(\u0002\u000bM$\u0018mY6\u0016\u0003A\u00032aC)T\u0013\t\u0011fAA\u0003BeJ\f\u0017\u0010E\u0002\f#R\u0003\"\u0001O+\n\u0005Y\u0013!!\u0003\"bg&\u001cgj\u001c3f\u0011\u0019A\u0006\u0001)A\u0005!\u000611\u000f^1dW\u0002BqA\u0017\u0001C\u0002\u0013%1,\u0001\u0005ti\u0006\u001c7\u000e]8t+\u0005a\u0006cA\u0006RO!1a\f\u0001Q\u0001\nq\u000b\u0011b\u001d;bG.\u0004xn\u001d\u0011\t\u000f\u0001\u0004\u0001\u0019!C\u0005M\u0005)A-\u001a9uQ\"9!\r\u0001a\u0001\n\u0013\u0019\u0017!\u00033faRDw\fJ3r)\tiC\rC\u00042C\u0006\u0005\t\u0019A\u0014\t\r\u0019\u0004\u0001\u0015)\u0003(\u0003\u0019!W\r\u001d;iA!9\u0001\u000e\u0001a\u0001\n\u0013I\u0017aB:vE&$XM]\u000b\u0002\u001d!91\u000e\u0001a\u0001\n\u0013a\u0017aC:vE&$XM]0%KF$\"!L7\t\u000fER\u0017\u0011!a\u0001\u001d!1q\u000e\u0001Q!\n9\t\u0001b];cSR,'\u000f\t\u0005\bc\u0002\u0001\r\u0011\"\u0003s\u0003\u001d\u0019WO\u001d:f]R,\u0012a\u001d\t\u0005qQ,\u0012%\u0003\u0002v\u0005\t11J\u0016(pI\u0016Dqa\u001e\u0001A\u0002\u0013%\u00010A\u0006dkJ\u0014XM\u001c;`I\u0015\fHCA\u0017z\u0011\u001d\td/!AA\u0002MDaa\u001f\u0001!B\u0013\u0019\u0018\u0001C2veJ,g\u000e\u001e\u0011\t\u000bu\u0004A\u0011\u0001@\u0002\u000f!\f7OT3yiV\t1\tC\u0004\u0002\u0002\u0001!\t!a\u0001\u0002\t9,\u0007\u0010\u001e\u000b\u0002%!9\u0011q\u0001\u0001\u0005\n\u0005%\u0011A\u0002:fC\u0012Lg\u000eF\u0002.\u0003\u0017A\u0001\"!\u0004\u0002\u0006\u0001\u0007\u0011qB\u0001\u0003S:\u0004R\u0001OA\t+\u0005J1!a\u0005\u0003\u0005\u0015Iej\u001c3f\u0011\u001d\t9\u0002\u0001C\u0005\u00033\tAb\u00195fG.\u001cVOY5uKJ$\u0012!\f\u0005\b\u0003;\u0001A\u0011BA\r\u0003)Ig.\u001b;jC2L'0\u001a\u0005\b\u0003C\u0001A\u0011AA\r\u0003\u001d\tGM^1oG\u0016Dq!!\n\u0001\t#\t9#A\u0006oK^LE/\u001a:bi>\u0014HcB%\u0002*\u00055\u0012\u0011\u0007\u0005\b\u0003W\t\u0019\u00031\u0001(\u0003\u0011yF.\u001a<\t\u000f\u0005=\u00121\u0005a\u0001o\u0005\u0019ql\u0019;\t\u000f\u0005M\u00121\u0005a\u0001\u0007\u0006Iq,\\;ti&s\u0017\u000e\u001e\u0005\b\u0003o\u0001A\u0011CA\u001d\u0003\u0015!W\u000f\u001d+p)\ri\u00131\b\u0005\b\u0003{\t)\u00041\u0001J\u0003\tIG\u000fC\u0004\u0002B\u0001!\t\"a\u0011\u0002\u0013M,(\rZ5wS\u0012,GCAA#!\u0011y\u0011q\t\b\n\u0007\u0005%CAA\u0002TKFDq!!\u0014\u0001\t\u0003\tI\"\u0001\u0006qe&tG\u000fR3ck\u001e<!\"!\u0015\u0003\u0003\u0003E\t\u0001BA*\u0003=!&/[3NCBLE/\u001a:bi>\u0014\bc\u0001\u001d\u0002V\u0019I\u0011AAA\u0001\u0012\u0003!\u0011qK\n\u0004\u0003+R\u0001bB$\u0002V\u0011\u0005\u00111\f\u000b\u0003\u0003'B!\"a\u0018\u0002VE\u0005I\u0011AA1\u0003m!C.Z:tS:LG\u000fJ4sK\u0006$XM\u001d\u0013eK\u001a\fW\u000f\u001c;%gU1\u00111MA=\u0003w*\"!!\u001a+\u0007\r\u000b9g\u000b\u0002\u0002jA!\u00111NA;\u001b\t\tiG\u0003\u0003\u0002p\u0005E\u0014!C;oG\",7m[3e\u0015\r\t\u0019HB\u0001\u000bC:tw\u000e^1uS>t\u0017\u0002BA<\u0003[\u0012\u0011#\u001e8dQ\u0016\u001c7.\u001a3WCJL\u0017M\\2f\t\u0019A\u0012Q\fb\u00015\u001111%!\u0018C\u0002i\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/concurrent/TrieMapIterator.class */
public class TrieMapIterator<K, V> implements Iterator<Tuple2<K, V>> {

    /* renamed from: ct */
    private TrieMap<K, V> f1534ct;
    private int level;
    private final BasicNode[][] stack = new BasicNode[7];
    private final int[] stackpos = new int[7];
    private int depth = -1;
    private Iterator<Tuple2<K, V>> subiter = null;
    private KVNode<K, V> current = null;

    /* JADX WARN: Type inference failed for: r1v3, types: [scala.collection.concurrent.BasicNode[], scala.collection.concurrent.BasicNode[][]] */
    public TrieMapIterator(int i, TrieMap<K, V> trieMap, boolean z) {
        this.level = i;
        this.f1534ct = trieMap;
        TraversableOnce.Cclass.$init$(this);
        Iterator.Cclass.$init$(this);
        if (z) {
            initialize();
        }
    }

    private void checkSubiter() {
        if (!subiter().hasNext()) {
            subiter_$eq(null);
            advance();
        }
    }

    /* renamed from: ct */
    private TrieMap<K, V> m174ct() {
        return this.f1534ct;
    }

    private void ct_$eq(TrieMap<K, V> trieMap) {
        this.f1534ct = trieMap;
    }

    private KVNode<K, V> current() {
        return this.current;
    }

    private void current_$eq(KVNode<K, V> kVNode) {
        this.current = kVNode;
    }

    private int depth() {
        return this.depth;
    }

    private void depth_$eq(int i) {
        this.depth = i;
    }

    private void initialize() {
        Predef$.MODULE$.m5971assert(m174ct().isReadOnly());
        TrieMap<K, V> m174ct = m174ct();
        readin(m174ct.RDCSS_READ_ROOT(m174ct.RDCSS_READ_ROOT$default$1()));
    }

    private void readin(INode<K, V> iNode) {
        MainNode<K, V> gcasRead = iNode.gcasRead(m174ct());
        if (gcasRead instanceof CNode) {
            depth_$eq(depth() + 1);
            stack()[depth()] = ((CNode) gcasRead).array();
            stackpos()[depth()] = -1;
            advance();
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        } else if (gcasRead instanceof TNode) {
            current_$eq((TNode) gcasRead);
            BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
        } else if (gcasRead instanceof LNode) {
            subiter_$eq(((LNode) gcasRead).listmap().iterator());
            checkSubiter();
            BoxedUnit boxedUnit3 = BoxedUnit.UNIT;
        } else if (gcasRead != null) {
            throw new MatchError(gcasRead);
        } else {
            current_$eq(null);
            BoxedUnit boxedUnit4 = BoxedUnit.UNIT;
        }
    }

    private BasicNode[][] stack() {
        return this.stack;
    }

    private int[] stackpos() {
        return this.stackpos;
    }

    private Iterator<Tuple2<K, V>> subiter() {
        return this.subiter;
    }

    private void subiter_$eq(Iterator<Tuple2<K, V>> iterator) {
        this.subiter = iterator;
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

    public void advance() {
        if (depth() < 0) {
            current_$eq(null);
            return;
        }
        int i = stackpos()[depth()] + 1;
        if (i >= stack()[depth()].length) {
            depth_$eq(depth() - 1);
            advance();
            return;
        }
        stackpos()[depth()] = i;
        BasicNode basicNode = stack()[depth()][i];
        if (basicNode instanceof SNode) {
            current_$eq((SNode) basicNode);
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        } else if (!(basicNode instanceof INode)) {
            throw new MatchError(basicNode);
        } else {
            readin((INode) basicNode);
            BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
        }
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B aggregate(Function0<B> function0, Function2<B, Tuple2<K, V>, B> function2, Function2<B, B, B> function22) {
        return (B) TraversableOnce.Cclass.aggregate(this, function0, function2, function22);
    }

    @Override // scala.collection.Iterator
    public BufferedIterator<Tuple2<K, V>> buffered() {
        return Iterator.Cclass.buffered(this);
    }

    @Override // scala.collection.Iterator
    public <B> Iterator<B> collect(PartialFunction<Tuple2<K, V>, B> partialFunction) {
        return Iterator.Cclass.collect(this, partialFunction);
    }

    @Override // scala.collection.TraversableOnce
    public <B> Option<B> collectFirst(PartialFunction<Tuple2<K, V>, B> partialFunction) {
        return TraversableOnce.Cclass.collectFirst(this, partialFunction);
    }

    @Override // scala.collection.Iterator
    public boolean contains(Object obj) {
        return Iterator.Cclass.contains(this, obj);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> void copyToArray(Object obj) {
        TraversableOnce.Cclass.copyToArray(this, obj);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> void copyToArray(Object obj, int i) {
        TraversableOnce.Cclass.copyToArray(this, obj, i);
    }

    @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <B> void copyToArray(Object obj, int i, int i2) {
        Iterator.Cclass.copyToArray(this, obj, i, i2);
    }

    @Override // scala.collection.TraversableOnce
    public <B> void copyToBuffer(Buffer<B> buffer) {
        TraversableOnce.Cclass.copyToBuffer(this, buffer);
    }

    @Override // scala.collection.Iterator
    public <B> boolean corresponds(GenTraversableOnce<B> genTraversableOnce, Function2<Tuple2<K, V>, B, Object> function2) {
        return Iterator.Cclass.corresponds(this, genTraversableOnce, function2);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int count(Function1<Tuple2<K, V>, Object> function1) {
        return TraversableOnce.Cclass.count(this, function1);
    }

    @Override // scala.collection.Iterator
    public Iterator<Tuple2<K, V>> drop(int i) {
        return Iterator.Cclass.drop(this, i);
    }

    @Override // scala.collection.Iterator
    public Iterator<Tuple2<K, V>> dropWhile(Function1<Tuple2<K, V>, Object> function1) {
        return Iterator.Cclass.dropWhile(this, function1);
    }

    public void dupTo(TrieMapIterator<K, V> trieMapIterator) {
        trieMapIterator.level_$eq(level());
        trieMapIterator.ct_$eq(m174ct());
        trieMapIterator.depth_$eq(depth());
        trieMapIterator.current_$eq(current());
        Array$.MODULE$.copy(stack(), 0, trieMapIterator.stack(), 0, 7);
        Array$.MODULE$.copy(stackpos(), 0, trieMapIterator.stackpos(), 0, 7);
        if (subiter() == null) {
            trieMapIterator.subiter_$eq(null);
            return;
        }
        List<Tuple2<K, V>> list = subiter().toList();
        subiter_$eq(list.iterator());
        trieMapIterator.subiter_$eq(list.iterator());
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

    @Override // scala.collection.Iterator
    public Iterator<Tuple2<K, V>> filterNot(Function1<Tuple2<K, V>, Object> function1) {
        return Iterator.Cclass.filterNot(this, function1);
    }

    @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Option<Tuple2<K, V>> find(Function1<Tuple2<K, V>, Object> function1) {
        return Iterator.Cclass.find(this, function1);
    }

    @Override // scala.collection.Iterator
    public <B> Iterator<B> flatMap(Function1<Tuple2<K, V>, GenTraversableOnce<B>> function1) {
        return Iterator.Cclass.flatMap(this, function1);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <A1> A1 fold(A1 a1, Function2<A1, A1, A1> function2) {
        return (A1) TraversableOnce.Cclass.fold(this, a1, function2);
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
        return (current() == null && subiter() == null) ? false : true;
    }

    @Override // scala.collection.Iterator
    public <B> int indexOf(B b) {
        return Iterator.Cclass.indexOf(this, b);
    }

    @Override // scala.collection.Iterator
    public int indexWhere(Function1<Tuple2<K, V>, Object> function1) {
        return Iterator.Cclass.indexWhere(this, function1);
    }

    @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        return Iterator.Cclass.isEmpty(this);
    }

    @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce
    public boolean isTraversableAgain() {
        return Iterator.Cclass.isTraversableAgain(this);
    }

    @Override // scala.collection.Iterator
    public int length() {
        return Iterator.Cclass.length(this);
    }

    public int level() {
        return this.level;
    }

    public void level_$eq(int i) {
        this.level = i;
    }

    @Override // scala.collection.Iterator
    public <B> Iterator<B> map(Function1<Tuple2<K, V>, B> function1) {
        return Iterator.Cclass.map(this, function1);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public Object max(Ordering ordering) {
        return TraversableOnce.Cclass.max(this, ordering);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public Object maxBy(Function1 function1, Ordering ordering) {
        return TraversableOnce.Cclass.maxBy(this, function1, ordering);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public Object min(Ordering ordering) {
        return TraversableOnce.Cclass.min(this, ordering);
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

    public TrieMapIterator<K, V> newIterator(int i, TrieMap<K, V> trieMap, boolean z) {
        return new TrieMapIterator<>(i, trieMap, z);
    }

    @Override // scala.collection.Iterator
    public Tuple2<K, V> next() {
        Tuple2<K, V> tuple2;
        if (!hasNext()) {
            tuple2 = (Tuple2) Iterator$.MODULE$.empty().next();
        } else if (subiter() != null) {
            tuple2 = subiter().next();
            checkSubiter();
        } else {
            tuple2 = current().kvPair();
            advance();
        }
        return tuple2;
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

    @Override // scala.collection.Iterator
    public <B> Iterator<B> patch(int i, Iterator<B> iterator, int i2) {
        return Iterator.Cclass.patch(this, i, iterator, i2);
    }

    public void printDebug() {
        Predef$.MODULE$.println("ctrie iterator");
        Predef$.MODULE$.println(Predef$.MODULE$.intArrayOps(stackpos()).mkString(","));
        Predef$.MODULE$.println(new StringBuilder().append((Object) "depth: ").append(BoxesRunTime.boxToInteger(depth())).toString());
        Predef$.MODULE$.println(new StringBuilder().append((Object) "curr.: ").append(current()).toString());
        Predef$.MODULE$.println(Predef$.MODULE$.refArrayOps(stack()).mkString("\n"));
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B product(Numeric<B> numeric) {
        return (B) TraversableOnce.Cclass.product(this, numeric);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <A1> A1 reduce(Function2<A1, A1, A1> function2) {
        return (A1) TraversableOnce.Cclass.reduce(this, function2);
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

    @Override // scala.collection.TraversableOnce
    public List<Tuple2<K, V>> reversed() {
        return TraversableOnce.Cclass.reversed(this);
    }

    @Override // scala.collection.Iterator
    public boolean sameElements(Iterator<?> iterator) {
        return Iterator.Cclass.sameElements(this, iterator);
    }

    @Override // scala.collection.Iterator
    public <B> Iterator<B> scanLeft(B b, Function2<B, Tuple2<K, V>, B> function2) {
        return Iterator.Cclass.scanLeft(this, b, function2);
    }

    @Override // scala.collection.Iterator
    public <B> Iterator<B> scanRight(B b, Function2<Tuple2<K, V>, B, B> function2) {
        return Iterator.Cclass.scanRight(this, b, function2);
    }

    @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public Iterator<Tuple2<K, V>> seq() {
        return Iterator.Cclass.seq(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int size() {
        return TraversableOnce.Cclass.size(this);
    }

    @Override // scala.collection.Iterator
    public Iterator<Tuple2<K, V>> slice(int i, int i2) {
        return Iterator.Cclass.slice(this, i, i2);
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

    public Seq<Iterator<Tuple2<K, V>>> subdivide() {
        Seq<Iterator<Tuple2<K, V>>> seq;
        if (subiter() != null) {
            TrieMapIterator<K, V> newIterator = newIterator(level() + 1, m174ct(), false);
            newIterator.depth_$eq(-1);
            newIterator.subiter_$eq(subiter());
            newIterator.current_$eq(null);
            subiter_$eq(null);
            advance();
            level_$eq(level() + 1);
            seq = (Seq) Seq$.MODULE$.apply(Predef$.MODULE$.wrapRefArray(new TrieMapIterator[]{newIterator, this}));
        } else if (depth() == -1) {
            level_$eq(level() + 1);
            seq = (Seq) Seq$.MODULE$.apply(Predef$.MODULE$.wrapRefArray(new TrieMapIterator[]{this}));
        } else {
            for (int i = 0; i <= depth(); i++) {
                int length = (stack()[i].length - 1) - stackpos()[i];
                if (length > 0) {
                    Tuple2<Object, Object> splitAt = Predef$.MODULE$.refArrayOps((Object[]) Predef$.MODULE$.refArrayOps(stack()[i]).drop(stackpos()[i] + 1)).splitAt(length / 2);
                    if (splitAt == null) {
                        throw new MatchError(splitAt);
                    }
                    Tuple2 tuple2 = new Tuple2(splitAt.mo269_1(), splitAt.mo268_2());
                    BasicNode[] basicNodeArr = (BasicNode[]) tuple2.mo269_1();
                    BasicNode[] basicNodeArr2 = (BasicNode[]) tuple2.mo268_2();
                    stack()[i] = basicNodeArr;
                    stackpos()[i] = -1;
                    TrieMapIterator<K, V> newIterator2 = newIterator(level() + 1, m174ct(), false);
                    newIterator2.stack()[0] = basicNodeArr2;
                    newIterator2.stackpos()[0] = -1;
                    newIterator2.depth_$eq(0);
                    newIterator2.advance();
                    level_$eq(level() + 1);
                    return (Seq) Seq$.MODULE$.apply(Predef$.MODULE$.wrapRefArray(new TrieMapIterator[]{this, newIterator2}));
                }
            }
            level_$eq(level() + 1);
            seq = (Seq) Seq$.MODULE$.apply(Predef$.MODULE$.wrapRefArray(new TrieMapIterator[]{this}));
        }
        return seq;
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B sum(Numeric<B> numeric) {
        return (B) TraversableOnce.Cclass.sum(this, numeric);
    }

    @Override // scala.collection.Iterator
    public Iterator<Tuple2<K, V>> take(int i) {
        return Iterator.Cclass.take(this, i);
    }

    @Override // scala.collection.Iterator
    public Iterator<Tuple2<K, V>> takeWhile(Function1<Tuple2<K, V>, Object> function1) {
        return Iterator.Cclass.takeWhile(this, function1);
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
        return Iterator.Cclass.toString(this);
    }

    @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public Traversable<Tuple2<K, V>> toTraversable() {
        return Iterator.Cclass.toTraversable(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public Vector<Tuple2<K, V>> toVector() {
        return TraversableOnce.Cclass.toVector(this);
    }

    @Override // scala.collection.Iterator
    public Iterator<Tuple2<K, V>> withFilter(Function1<Tuple2<K, V>, Object> function1) {
        return Iterator.Cclass.withFilter(this, function1);
    }

    @Override // scala.collection.Iterator
    public <B> Iterator<Tuple2<Tuple2<K, V>, B>> zip(Iterator<B> iterator) {
        return Iterator.Cclass.zip(this, iterator);
    }

    @Override // scala.collection.Iterator
    public <B, A1, B1> Iterator<Tuple2<A1, B1>> zipAll(Iterator<B> iterator, A1 a1, B1 b1) {
        return Iterator.Cclass.zipAll(this, iterator, a1, b1);
    }

    @Override // scala.collection.Iterator
    public Iterator<Tuple2<Tuple2<K, V>, Object>> zipWithIndex() {
        return Iterator.Cclass.zipWithIndex(this);
    }
}
