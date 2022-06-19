package scala.collection.mutable;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import scala.Function0;
import scala.Function1;
import scala.Serializable;
import scala.collection.AbstractIterator;
import scala.collection.Iterator;
import scala.collection.Iterator$;
import scala.collection.Set;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.Subtractable;
import scala.collection.mutable.HashEntry;
import scala.collection.mutable.HashTable;
import scala.collection.mutable.LinkedHashSet;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
import scala.runtime.TraitSetter;
@ScalaSignature(bytes = "\u0006\u0001\t\rb\u0001B\u0001\u0003\u0001%\u0011Q\u0002T5oW\u0016$\u0007*Y:i'\u0016$(BA\u0002\u0005\u0003\u001diW\u000f^1cY\u0016T!!\u0002\u0004\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\b\u0003\u0015\u00198-\u00197b\u0007\u0001)\"AC\t\u0014\u000f\u0001Y1DH\u0013*mA\u0019A\"D\b\u000e\u0003\tI!A\u0004\u0002\u0003\u0017\u0005\u00137\u000f\u001e:bGR\u001cV\r\u001e\t\u0003!Ea\u0001\u0001B\u0003\u0013\u0001\t\u00071CA\u0001B#\t!\u0002\u0004\u0005\u0002\u0016-5\ta!\u0003\u0002\u0018\r\t9aj\u001c;iS:<\u0007CA\u000b\u001a\u0013\tQbAA\u0002B]f\u00042\u0001\u0004\u000f\u0010\u0013\ti\"AA\u0002TKR\u0004Ba\b\u0012\u0010I5\t\u0001E\u0003\u0002\"\t\u00059q-\u001a8fe&\u001c\u0017BA\u0012!\u0005I9UM\\3sS\u000e\u001cV\r\u001e+f[Bd\u0017\r^3\u0011\u00051\u0001\u0001\u0003\u0002\u0007'\u001f!J!a\n\u0002\u0003\u000fM+G\u000fT5lKB\u0019A\u0002A\b\u0011\t1Qs\u0002L\u0005\u0003W\t\u0011\u0011\u0002S1tQR\u000b'\r\\3\u0011\u00075\u001avB\u0004\u0002\r]\u001d)qF\u0001E\u0001a\u0005iA*\u001b8lK\u0012D\u0015m\u001d5TKR\u0004\"\u0001D\u0019\u0007\u000b\u0005\u0011\u0001\u0012\u0001\u001a\u0014\u0007E\u001ad\u0007E\u0002 i\u0011J!!\u000e\u0011\u0003#5+H/\u00192mKN+GOR1di>\u0014\u0018\u0010\u0005\u0002\u0016o%\u0011\u0001H\u0002\u0002\r'\u0016\u0014\u0018.\u00197ju\u0006\u0014G.\u001a\u0005\u0006uE\"\taO\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003ABQ!P\u0019\u0005\u0004y\nAbY1o\u0005VLG\u000e\u001a$s_6,\"a\u0010&\u0016\u0003\u0001\u0003RaH!D\u0013.K!A\u0011\u0011\u0003\u0019\r\u000bgNQ;jY\u00124%o\\7\u0011\u0005\u0011+U\"A\u0019\n\u0005\u0019;%\u0001B\"pY2L!\u0001\u0013\u0011\u0003!\u001d+g.\u001a:jG\u000e{W\u000e]1oS>t\u0007C\u0001\tK\t\u0015\u0011BH1\u0001\u0014!\ra\u0001!\u0013\u0005\u0006\u001bF\"\tET\u0001\u0006K6\u0004H/_\u000b\u0003\u001fJ+\u0012\u0001\u0015\t\u0004\u0019\u0001\t\u0006C\u0001\tS\t\u0015\u0011BJ1\u0001\u0014\r\u0015!\u0016G\u0001\u0004V\u0005\u0015)e\u000e\u001e:z+\t1fl\u0005\u0003T/j3\u0004CA\u000bY\u0013\tIfA\u0001\u0004B]f\u0014VM\u001a\t\u0005\u0019mkv,\u0003\u0002]\u0005\tI\u0001*Y:i\u000b:$(/\u001f\t\u0003!y#QAE*C\u0002M\u00012\u0001R*^\u0011!\t7K!b\u0001\n\u0003\u0011\u0017aA6fsV\tQ\f\u0003\u0005e'\n\u0005\t\u0015!\u0003^\u0003\u0011YW-\u001f\u0011\t\u000bi\u001aF\u0011\u00014\u0015\u0005};\u0007\"B1f\u0001\u0004i\u0006bB5T\u0001\u0004%\tA[\u0001\bK\u0006\u0014H.[3s+\u0005y\u0006b\u00027T\u0001\u0004%\t!\\\u0001\fK\u0006\u0014H.[3s?\u0012*\u0017\u000f\u0006\u0002ocB\u0011Qc\\\u0005\u0003a\u001a\u0011A!\u00168ji\"9!o[A\u0001\u0002\u0004y\u0016a\u0001=%c!1Ao\u0015Q!\n}\u000b\u0001\"Z1sY&,'\u000f\t\u0005\bmN\u0003\r\u0011\"\u0001k\u0003\u0015a\u0017\r^3s\u0011\u001dA8\u000b1A\u0005\u0002e\f\u0011\u0002\\1uKJ|F%Z9\u0015\u00059T\bb\u0002:x\u0003\u0003\u0005\ra\u0018\u0005\u0007yN\u0003\u000b\u0015B0\u0002\r1\fG/\u001a:!\u0011\u001dq\u0018'!A\u0005\n}\f1B]3bIJ+7o\u001c7wKR\u0011\u0011\u0011\u0001\t\u0005\u0003\u0007\ti!\u0004\u0002\u0002\u0006)!\u0011qAA\u0005\u0003\u0011a\u0017M\\4\u000b\u0005\u0005-\u0011\u0001\u00026bm\u0006LA!a\u0004\u0002\u0006\t1qJ\u00196fGRDaA\u000f\u0001\u0005\u0002\u0005MA#\u0001\u0015\t\u000f\u0005]\u0001\u0001\"\u0011\u0002\u001a\u0005I1m\\7qC:LwN\\\u000b\u0003\u00037\u00012aH$%\u000b\u0011!\u0006\u0001\u0001\u0017\t\u0013\u0005\u0005\u0002\u00011A\u0005\u0012\u0005\r\u0012A\u00034jeN$XI\u001c;ssV\u0011\u0011Q\u0005\t\u0005\u0003O\ti\"D\u0001\u0001\u0011%\tY\u0003\u0001a\u0001\n#\ti#\u0001\bgSJ\u001cH/\u00128uef|F%Z9\u0015\u00079\fy\u0003C\u0005s\u0003S\t\t\u00111\u0001\u0002&!A\u00111\u0007\u0001!B\u0013\t)#A\u0006gSJ\u001cH/\u00128uef\u0004\u0003\u0006BA\u0019\u0003o\u00012!FA\u001d\u0013\r\tYD\u0002\u0002\niJ\fgn]5f]RD\u0011\"a\u0010\u0001\u0001\u0004%\t\"a\t\u0002\u00131\f7\u000f^#oiJL\b\"CA\"\u0001\u0001\u0007I\u0011CA#\u00035a\u0017m\u001d;F]R\u0014\u0018p\u0018\u0013fcR\u0019a.a\u0012\t\u0013I\f\t%!AA\u0002\u0005\u0015\u0002\u0002CA&\u0001\u0001\u0006K!!\n\u0002\u00151\f7\u000f^#oiJL\b\u0005\u000b\u0003\u0002J\u0005]\u0002bBA)\u0001\u0011\u0005\u00131K\u0001\u0005g&TX-\u0006\u0002\u0002VA\u0019Q#a\u0016\n\u0007\u0005ecAA\u0002J]RDq!!\u0018\u0001\t\u0003\ty&\u0001\u0005d_:$\u0018-\u001b8t)\u0011\t\t'a\u001a\u0011\u0007U\t\u0019'C\u0002\u0002f\u0019\u0011qAQ8pY\u0016\fg\u000eC\u0004\u0002j\u0005m\u0003\u0019A\b\u0002\t\u0015dW-\u001c\u0005\b\u0003[\u0002A\u0011AA8\u0003!!\u0003\u000f\\;tI\u0015\fH\u0003BA\u0014\u0003cBq!!\u001b\u0002l\u0001\u0007q\u0002\u000b\u0005\u0002l\u0005U\u00141PA@!\r)\u0012qO\u0005\u0004\u0003s2!\u0001\u00063faJ,7-\u0019;fI>3XM\u001d:jI&tw-\t\u0002\u0002~\u0005a4&\u0010\u0011tQ>,H\u000e\u001a\u0011o_R\u0004#-\u001a\u0011pm\u0016\u0014(/\u001b3eK:\u00043o\u001c\u0011ji\u0002\u001aH/Y=tA\r|gn]5ti\u0016tG\u000fI<ji\"\u0004\u0013\r\u001a3/C\t\t\t)\u0001\u00043]E\nd\u0006\r\u0005\b\u0003\u000b\u0003A\u0011AAD\u0003%!S.\u001b8vg\u0012*\u0017\u000f\u0006\u0003\u0002(\u0005%\u0005bBA5\u0003\u0007\u0003\ra\u0004\u0015\t\u0003\u0007\u000b)(!$\u0002��\u0005\u0012\u0011qR\u0001@[u\u00023\u000f[8vY\u0012\u0004cn\u001c;!E\u0016\u0004sN^3se&$G-\u001a8!g>\u0004\u0013\u000e\u001e\u0011ti\u0006L8\u000fI2p]NL7\u000f^3oi\u0002:\u0018\u000e\u001e5!e\u0016lwN^3/\u0011\u001d\t\u0019\n\u0001C!\u0003+\u000b1!\u00193e)\u0011\t\t'a&\t\u000f\u0005%\u0014\u0011\u0013a\u0001\u001f!9\u00111\u0014\u0001\u0005B\u0005u\u0015A\u0002:f[>4X\r\u0006\u0003\u0002b\u0005}\u0005bBA5\u00033\u0003\ra\u0004\u0005\b\u0003G\u0003A\u0011AAS\u0003!IG/\u001a:bi>\u0014XCAAT!\u0015\tI+a+\u0010\u001b\u0005!\u0011bAAW\t\tA\u0011\n^3sCR|'\u000fC\u0004\u00022\u0002!\t%a-\u0002\u000f\u0019|'/Z1dQV!\u0011QWAb)\rq\u0017q\u0017\u0005\t\u0003s\u000by\u000b1\u0001\u0002<\u0006\ta\r\u0005\u0004\u0016\u0003{{\u0011\u0011Y\u0005\u0004\u0003\u007f3!!\u0003$v]\u000e$\u0018n\u001c82!\r\u0001\u00121\u0019\u0003\b\u0003\u000b\fyK1\u0001\u0014\u0005\u0005)\u0006bBAe\u0001\u0011E\u00131Z\u0001\rM>\u0014X-Y2i\u000b:$(/_\u000b\u0005\u0003\u001b\f)\u000eF\u0002o\u0003\u001fD\u0001\"!/\u0002H\u0002\u0007\u0011\u0011\u001b\t\b+\u0005u\u0016QEAj!\r\u0001\u0012Q\u001b\u0003\b\u0003\u000b\f9M1\u0001\u0014\u0011\u001d\tI\u000e\u0001C\t\u00037\fab\u0019:fCR,g*Z<F]R\u0014\u00180\u0006\u0003\u0002^\u0006\u001dHCBA\u0013\u0003?\f\t\u000f\u0003\u0004b\u0003/\u0004\ra\u0004\u0005\t\u0003G\f9\u000e1\u0001\u0002f\u0006)A-^7nsB\u0019\u0001#a:\u0005\u000f\u0005%\u0018q\u001bb\u0001'\t\t!\tC\u0004\u0002n\u0002!\t%a<\u0002\u000b\rdW-\u0019:\u0015\u00039Dq!a=\u0001\t\u0013\t)0A\u0006xe&$Xm\u00142kK\u000e$Hc\u00018\u0002x\"A\u0011\u0011`Ay\u0001\u0004\tY0A\u0002pkR\u0004B!!@\u0003\u00045\u0011\u0011q \u0006\u0005\u0005\u0003\tI!\u0001\u0002j_&!!QAA��\u0005Iy%M[3di>+H\u000f];u'R\u0014X-Y7\t\u000f\t%\u0001\u0001\"\u0003\u0003\f\u0005Q!/Z1e\u001f\nTWm\u0019;\u0015\u00079\u0014i\u0001\u0003\u0005\u0003\u0010\t\u001d\u0001\u0019\u0001B\t\u0003\tIg\u000e\u0005\u0003\u0002~\nM\u0011\u0002\u0002B\u000b\u0003\u007f\u0014\u0011c\u00142kK\u000e$\u0018J\u001c9viN#(/Z1nQ\u001d\u0001!\u0011\u0004B\u0010\u0005C\u00012!\u0006B\u000e\u0013\r\u0011iB\u0002\u0002\u0011'\u0016\u0014\u0018.\u00197WKJ\u001c\u0018n\u001c8V\u0013\u0012\u000bQA^1mk\u0016t\u0012!\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/LinkedHashSet.class */
public class LinkedHashSet<A> extends AbstractSet<A> implements HashTable<A, Entry<A>>, Serializable {
    public static final long serialVersionUID = 1;
    private transient int _loadFactor;
    private transient Entry<A> firstEntry = null;
    private transient Entry<A> lastEntry = null;
    private transient int seedvalue;
    private transient int[] sizemap;
    private transient HashEntry<Object, HashEntry>[] table;
    private transient int tableSize;
    private transient int threshold;

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/LinkedHashSet$Entry.class */
    public static final class Entry<A> implements HashEntry<A, Entry<A>>, Serializable {
        private final A key;
        private Object next;
        private Entry<A> earlier = null;
        private Entry<A> later = null;

        public Entry(A a) {
            this.key = a;
            HashEntry.Cclass.$init$(this);
        }

        public Entry<A> earlier() {
            return this.earlier;
        }

        public void earlier_$eq(Entry<A> entry) {
            this.earlier = entry;
        }

        @Override // scala.collection.mutable.HashEntry
        public A key() {
            return this.key;
        }

        public Entry<A> later() {
            return this.later;
        }

        public void later_$eq(Entry<A> entry) {
            this.later = entry;
        }

        @Override // scala.collection.mutable.HashEntry
        public Object next() {
            return this.next;
        }

        @Override // scala.collection.mutable.HashEntry
        @TraitSetter
        public void next_$eq(Object obj) {
            this.next = obj;
        }
    }

    public LinkedHashSet() {
        HashTable.HashUtils.Cclass.$init$(this);
        HashTable.Cclass.$init$(this);
    }

    public static <A> CanBuildFrom<LinkedHashSet<?>, A, LinkedHashSet<A>> canBuildFrom() {
        return LinkedHashSet$.MODULE$.canBuildFrom();
    }

    private void readObject(ObjectInputStream objectInputStream) {
        firstEntry_$eq(null);
        lastEntry_$eq(null);
        init(objectInputStream, new LinkedHashSet$$anonfun$readObject$1(this, objectInputStream));
    }

    public static <A> Object setCanBuildFrom() {
        return LinkedHashSet$.MODULE$.setCanBuildFrom();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        serializeTo(objectOutputStream, new LinkedHashSet$$anonfun$writeObject$1(this, objectOutputStream));
    }

    @Override // scala.collection.mutable.SetLike, scala.collection.generic.Shrinkable
    public LinkedHashSet<A> $minus$eq(A a) {
        remove(a);
        return this;
    }

    @Override // scala.collection.mutable.SetLike, scala.collection.mutable.Builder, scala.collection.generic.Growable
    public LinkedHashSet<A> $plus$eq(A a) {
        add(a);
        return this;
    }

    @Override // scala.collection.mutable.HashTable
    public int _loadFactor() {
        return this._loadFactor;
    }

    @Override // scala.collection.mutable.HashTable
    @TraitSetter
    public void _loadFactor_$eq(int i) {
        this._loadFactor = i;
    }

    @Override // scala.collection.mutable.AbstractSet, scala.collection.mutable.SetLike
    public boolean add(A a) {
        return findOrAddEntry(a, null) == null;
    }

    @Override // scala.collection.mutable.HashTable
    public void addEntry(HashEntry hashEntry) {
        HashTable.Cclass.addEntry(this, hashEntry);
    }

    @Override // scala.collection.mutable.HashTable
    public boolean alwaysInitSizeMap() {
        return HashTable.Cclass.alwaysInitSizeMap(this);
    }

    @Override // scala.collection.mutable.AbstractSet, scala.collection.GenSetLike, scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply(obj));
    }

    @Override // scala.collection.mutable.HashTable
    public int calcSizeMapSize(int i) {
        return HashTable.Cclass.calcSizeMapSize(this, i);
    }

    @Override // scala.collection.mutable.AbstractSet, scala.collection.mutable.SetLike, scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
    public void clear() {
        clearTable();
        firstEntry_$eq(null);
        lastEntry_$eq(null);
    }

    @Override // scala.collection.mutable.HashTable
    public void clearTable() {
        HashTable.Cclass.clearTable(this);
    }

    @Override // scala.collection.mutable.AbstractSet, scala.collection.mutable.AbstractIterable, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<LinkedHashSet> companion() {
        return LinkedHashSet$.MODULE$;
    }

    @Override // scala.collection.GenSetLike, scala.collection.SetLike
    public boolean contains(A a) {
        return findEntry(a) != null;
    }

    @Override // scala.collection.mutable.HashTable
    public <B> Entry<A> createNewEntry(A a, B b) {
        Entry<A> entry = new Entry<>(a);
        if (firstEntry() == null) {
            firstEntry_$eq(entry);
        } else {
            lastEntry().later_$eq(entry);
            entry.earlier_$eq(lastEntry());
        }
        lastEntry_$eq(entry);
        return entry;
    }

    @Override // scala.collection.mutable.HashTable
    public boolean elemEquals(A a, A a2) {
        return HashTable.Cclass.elemEquals(this, a, a2);
    }

    @Override // scala.collection.mutable.HashTable.HashUtils
    public int elemHashCode(A a) {
        return HashTable.HashUtils.Cclass.elemHashCode(this, a);
    }

    @Override // scala.collection.mutable.AbstractSet, scala.collection.generic.GenericSetTemplate, scala.collection.SetLike, scala.collection.immutable.SortedSet, scala.collection.SortedSet
    public /* bridge */ /* synthetic */ Set empty() {
        return (Set) empty();
    }

    @Override // scala.collection.mutable.HashTable
    public Iterator<Entry<A>> entriesIterator() {
        return HashTable.Cclass.entriesIterator(this);
    }

    @Override // scala.collection.mutable.HashTable
    public HashEntry findEntry(Object obj) {
        return HashTable.Cclass.findEntry(this, obj);
    }

    @Override // scala.collection.mutable.HashTable
    public HashEntry findOrAddEntry(Object obj, Object obj2) {
        return HashTable.Cclass.findOrAddEntry(this, obj, obj2);
    }

    public Entry<A> firstEntry() {
        return this.firstEntry;
    }

    public void firstEntry_$eq(Entry<A> entry) {
        this.firstEntry = entry;
    }

    @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<A, U> function1) {
        Entry<A> firstEntry = firstEntry();
        while (true) {
            Entry<A> entry = firstEntry;
            if (entry != null) {
                function1.apply(entry.key());
                firstEntry = entry.later();
            } else {
                return;
            }
        }
    }

    @Override // scala.collection.mutable.HashTable
    public <U> void foreachEntry(Function1<Entry<A>, U> function1) {
        Entry<A> firstEntry = firstEntry();
        while (true) {
            Entry<A> entry = firstEntry;
            if (entry != null) {
                function1.apply(entry);
                firstEntry = entry.later();
            } else {
                return;
            }
        }
    }

    @Override // scala.collection.mutable.HashTable
    public HashTable.Contents<A, Entry<A>> hashTableContents() {
        return HashTable.Cclass.hashTableContents(this);
    }

    @Override // scala.collection.mutable.HashTable.HashUtils
    public final int improve(int i, int i2) {
        return HashTable.HashUtils.Cclass.improve(this, i, i2);
    }

    @Override // scala.collection.mutable.HashTable
    public final int index(int i) {
        return HashTable.Cclass.index(this, i);
    }

    @Override // scala.collection.mutable.HashTable
    public void init(ObjectInputStream objectInputStream, Function0<Entry<A>> function0) {
        HashTable.Cclass.init(this, objectInputStream, function0);
    }

    @Override // scala.collection.mutable.HashTable
    public void initWithContents(HashTable.Contents<A, Entry<A>> contents) {
        HashTable.Cclass.initWithContents(this, contents);
    }

    @Override // scala.collection.mutable.HashTable
    public int initialSize() {
        return HashTable.Cclass.initialSize(this);
    }

    @Override // scala.collection.mutable.HashTable
    public boolean isSizeMapDefined() {
        return HashTable.Cclass.isSizeMapDefined(this);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<A> iterator() {
        return new AbstractIterator<A>(this) { // from class: scala.collection.mutable.LinkedHashSet$$anon$1
            private LinkedHashSet.Entry<A> cur;

            {
                this.cur = this.firstEntry();
            }

            private LinkedHashSet.Entry<A> cur() {
                return this.cur;
            }

            private void cur_$eq(LinkedHashSet.Entry<A> entry) {
                this.cur = entry;
            }

            @Override // scala.collection.Iterator
            public boolean hasNext() {
                return cur() != null;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // scala.collection.Iterator
            public A next() {
                Nothing$ nothing$;
                if (hasNext()) {
                    nothing$ = cur().key();
                    cur_$eq(cur().later());
                } else {
                    nothing$ = Iterator$.MODULE$.empty().next();
                }
                return nothing$;
            }
        };
    }

    public Entry<A> lastEntry() {
        return this.lastEntry;
    }

    public void lastEntry_$eq(Entry<A> entry) {
        this.lastEntry = entry;
    }

    @Override // scala.collection.mutable.HashTable
    public void nnSizeMapAdd(int i) {
        HashTable.Cclass.nnSizeMapAdd(this, i);
    }

    @Override // scala.collection.mutable.HashTable
    public void nnSizeMapRemove(int i) {
        HashTable.Cclass.nnSizeMapRemove(this, i);
    }

    @Override // scala.collection.mutable.HashTable
    public void nnSizeMapReset(int i) {
        HashTable.Cclass.nnSizeMapReset(this, i);
    }

    @Override // scala.collection.mutable.HashTable
    public void printSizeMap() {
        HashTable.Cclass.printSizeMap(this);
    }

    @Override // scala.collection.mutable.AbstractSet, scala.collection.mutable.SetLike
    public boolean remove(A a) {
        boolean z;
        Entry entry = (Entry) removeEntry(a);
        if (entry == null) {
            z = false;
        } else {
            if (entry.earlier() == null) {
                firstEntry_$eq(entry.later());
            } else {
                entry.earlier().later_$eq(entry.later());
            }
            if (entry.later() == null) {
                lastEntry_$eq(entry.earlier());
            } else {
                entry.later().earlier_$eq(entry.earlier());
            }
            z = true;
        }
        return z;
    }

    @Override // scala.collection.mutable.HashTable
    public HashEntry removeEntry(Object obj) {
        return HashTable.Cclass.removeEntry(this, obj);
    }

    @Override // scala.collection.mutable.AbstractSet, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    public /* bridge */ /* synthetic */ Subtractable repr() {
        return (Subtractable) repr();
    }

    @Override // scala.collection.mutable.HashTable
    public int seedvalue() {
        return this.seedvalue;
    }

    @Override // scala.collection.mutable.HashTable
    @TraitSetter
    public void seedvalue_$eq(int i) {
        this.seedvalue = i;
    }

    @Override // scala.collection.mutable.HashTable
    public void serializeTo(ObjectOutputStream objectOutputStream, Function1<Entry<A>, BoxedUnit> function1) {
        HashTable.Cclass.serializeTo(this, objectOutputStream, function1);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int size() {
        return tableSize();
    }

    @Override // scala.collection.mutable.HashTable.HashUtils
    public final int sizeMapBucketBitSize() {
        return HashTable.HashUtils.Cclass.sizeMapBucketBitSize(this);
    }

    @Override // scala.collection.mutable.HashTable.HashUtils
    public final int sizeMapBucketSize() {
        return HashTable.HashUtils.Cclass.sizeMapBucketSize(this);
    }

    @Override // scala.collection.mutable.HashTable
    public void sizeMapDisable() {
        HashTable.Cclass.sizeMapDisable(this);
    }

    @Override // scala.collection.mutable.HashTable
    public void sizeMapInit(int i) {
        HashTable.Cclass.sizeMapInit(this, i);
    }

    @Override // scala.collection.mutable.HashTable
    public void sizeMapInitAndRebuild() {
        HashTable.Cclass.sizeMapInitAndRebuild(this);
    }

    @Override // scala.collection.mutable.HashTable
    public int[] sizemap() {
        return this.sizemap;
    }

    @Override // scala.collection.mutable.HashTable
    @TraitSetter
    public void sizemap_$eq(int[] iArr) {
        this.sizemap = iArr;
    }

    @Override // scala.collection.mutable.HashTable
    public HashEntry<A, Entry<A>>[] table() {
        return (HashEntry<A, Entry<A>>[]) this.table;
    }

    @Override // scala.collection.mutable.HashTable
    public int tableSize() {
        return this.tableSize;
    }

    @Override // scala.collection.mutable.HashTable
    public int tableSizeSeed() {
        return HashTable.Cclass.tableSizeSeed(this);
    }

    @Override // scala.collection.mutable.HashTable
    @TraitSetter
    public void tableSize_$eq(int i) {
        this.tableSize = i;
    }

    @Override // scala.collection.mutable.HashTable
    @TraitSetter
    public void table_$eq(HashEntry<A, Entry<A>>[] hashEntryArr) {
        this.table = hashEntryArr;
    }

    @Override // scala.collection.mutable.HashTable
    public int threshold() {
        return this.threshold;
    }

    @Override // scala.collection.mutable.HashTable
    @TraitSetter
    public void threshold_$eq(int i) {
        this.threshold = i;
    }

    @Override // scala.collection.mutable.HashTable
    public final int totalSizeMapBuckets() {
        return HashTable.Cclass.totalSizeMapBuckets(this);
    }
}
