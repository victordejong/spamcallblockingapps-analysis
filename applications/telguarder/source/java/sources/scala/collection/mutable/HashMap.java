package scala.collection.mutable;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Objects;
import scala.Function0;
import scala.Function1;
import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.Tuple2;
import scala.collection.AbstractIterator;
import scala.collection.CustomParallelizable;
import scala.collection.Iterable;
import scala.collection.Iterator;
import scala.collection.MapLike;
import scala.collection.Set;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.Subtractable;
import scala.collection.mutable.HashTable;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.mutable.ParHashMap;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
@ScalaSignature(bytes = "\u0006\u0001\tea\u0001B\u0001\u0003\u0001%\u0011q\u0001S1tQ6\u000b\u0007O\u0003\u0002\u0004\t\u00059Q.\u001e;bE2,'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u0001Qc\u0001\u0006\u00129M9\u0001a\u0003\u0010\"K-J\u0004\u0003\u0002\u0007\u000e\u001fmi\u0011AA\u0005\u0003\u001d\t\u00111\"\u00112tiJ\f7\r^'baB\u0011\u0001#\u0005\u0007\u0001\t\u0015\u0011\u0002A1\u0001\u0014\u0005\u0005\t\u0015C\u0001\u000b\u0019!\t)b#D\u0001\u0007\u0013\t9bAA\u0004O_RD\u0017N\\4\u0011\u0005UI\u0012B\u0001\u000e\u0007\u0005\r\te.\u001f\t\u0003!q!Q!\b\u0001C\u0002M\u0011\u0011A\u0011\t\u0005\u0019}y1$\u0003\u0002!\u0005\t\u0019Q*\u00199\u0011\u000b1\u0011sb\u0007\u0013\n\u0005\r\u0012!aB'ba2K7.\u001a\t\u0005\u0019\u0001y1\u0004\u0005\u0003\rM=A\u0013BA\u0014\u0003\u0005%A\u0015m\u001d5UC\ndW\r\u0005\u0003\rS=Y\u0012B\u0001\u0016\u0003\u00051!UMZ1vYR,e\u000e\u001e:z!\u0011aSf\f\u001a\u000e\u0003\u0011I!A\f\u0003\u0003)\r+8\u000f^8n!\u0006\u0014\u0018\r\u001c7fY&T\u0018M\u00197f!\u0011)\u0002gD\u000e\n\u0005E2!A\u0002+va2,'\u0007\u0005\u00034o=YR\"\u0001\u001b\u000b\u0005\r)$B\u0001\u001c\u0005\u0003!\u0001\u0018M]1mY\u0016d\u0017B\u0001\u001d5\u0005)\u0001\u0016M\u001d%bg\"l\u0015\r\u001d\t\u0003+iJ!a\u000f\u0004\u0003\u0019M+'/[1mSj\f'\r\\3\t\u0011u\u0002!\u0011!Q\u0001\ny\n\u0001bY8oi\u0016tGo\u001d\t\u0005\u007f\t{\u0001F\u0004\u0002\r\u0001&\u0011\u0011IA\u0001\n\u0011\u0006\u001c\b\u000eV1cY\u0016L!a\u0011#\u0003\u0011\r{g\u000e^3oiNT!!\u0011\u0002\t\r\u0019\u0003A\u0011\u0001\u0003H\u0003\u0019a\u0014N\\5u}Q\u0011A\u0005\u0013\u0005\u0006{\u0015\u0003\rAP\u0003\u0005\u0015\u0002\u0001\u0001FA\u0003F]R\u0014\u0018\u0010C\u0003M\u0001\u0011\u0005S*A\u0003f[B$\u00180F\u0001%\u0011\u0015y\u0005\u0001\"\u0011Q\u0003\u0015\u0019G.Z1s)\u0005\t\u0006CA\u000bS\u0013\t\u0019fA\u0001\u0003V]&$\b\"B+\u0001\t\u00032\u0016\u0001B:ju\u0016,\u0012a\u0016\t\u0003+aK!!\u0017\u0004\u0003\u0007%sG\u000fC\u0003G\u0001\u0011\u00051\fF\u0001%\u0011\u0015i\u0006\u0001\"\u0011_\u0003\r\u0001\u0018M]\u000b\u0002e!)\u0001\r\u0001C!C\u0006A1m\u001c8uC&t7\u000f\u0006\u0002cKB\u0011QcY\u0005\u0003I\u001a\u0011qAQ8pY\u0016\fg\u000eC\u0003g?\u0002\u0007q\"A\u0002lKfDQ\u0001\u001b\u0001\u0005B%\fQ!\u00199qYf$\"a\u00076\t\u000b\u0019<\u0007\u0019A\b\t\u000b1\u0004A\u0011A7\u0002\u0007\u001d,G\u000f\u0006\u0002ocB\u0019Qc\\\u000e\n\u0005A4!AB(qi&|g\u000eC\u0003gW\u0002\u0007q\u0002C\u0003t\u0001\u0011\u0005C/A\u0002qkR$2A\\;w\u0011\u00151'\u000f1\u0001\u0010\u0011\u00159(\u000f1\u0001\u001c\u0003\u00151\u0018\r\\;f\u0011\u0015I\b\u0001\"\u0011{\u0003\u0019)\b\u000fZ1uKR\u0019\u0011k\u001f?\t\u000b\u0019D\b\u0019A\b\t\u000b]D\b\u0019A\u000e\t\u000by\u0004A\u0011I@\u0002\rI,Wn\u001c<f)\rq\u0017\u0011\u0001\u0005\u0006Mv\u0004\ra\u0004\u0005\b\u0003\u000b\u0001A\u0011AA\u0004\u0003!!\u0003\u000f\\;tI\u0015\fH\u0003BA\u0005\u0003\u0017i\u0011\u0001\u0001\u0005\b\u0003\u001b\t\u0019\u00011\u00010\u0003\tYg\u000fC\u0004\u0002\u0012\u0001!\t!a\u0005\u0002\u0013\u0011j\u0017N\\;tI\u0015\fH\u0003BA\u0005\u0003+AaAZA\b\u0001\u0004y\u0001bBA\r\u0001\u0011\u0005\u00111D\u0001\tSR,'/\u0019;peV\u0011\u0011Q\u0004\t\u0005Y\u0005}q&C\u0002\u0002\"\u0011\u0011\u0001\"\u0013;fe\u0006$xN\u001d\u0005\b\u0003K\u0001A\u0011IA\u0014\u0003\u001d1wN]3bG\",B!!\u000b\u00028Q\u0019\u0011+a\u000b\t\u0011\u00055\u00121\u0005a\u0001\u0003_\t\u0011A\u001a\t\u0007+\u0005Er&!\u000e\n\u0007\u0005MbAA\u0005Gk:\u001cG/[8ocA\u0019\u0001#a\u000e\u0005\u000f\u0005e\u00121\u0005b\u0001'\t\t1\tC\u0004\u0002>\u0001!\t%a\u0010\u0002\r-,\u0017pU3u+\t\t\t\u0005\u0005\u0003-\u0003\u0007z\u0011bAA#\t\t\u00191+\u001a;\t\u000f\u0005%\u0003\u0001\"\u0011\u0002L\u00051a/\u00197vKN,\"!!\u0014\u0011\t1\nyeG\u0005\u0004\u0003#\"!\u0001C%uKJ\f'\r\\3\t\u000f\u0005U\u0003\u0001\"\u0011\u0002X\u0005a1.Z=t\u0013R,'/\u0019;peV\u0011\u0011\u0011\f\t\u0005Y\u0005}q\u0002C\u0004\u0002^\u0001!\t%a\u0018\u0002\u001dY\fG.^3t\u0013R,'/\u0019;peV\u0011\u0011\u0011\r\t\u0005Y\u0005}1\u0004C\u0004\u0002f\u0001!\t!a\u001a\u0002\u0015U\u001cXmU5{K6\u000b\u0007\u000fF\u0002R\u0003SBq!a\u001b\u0002d\u0001\u0007!-A\u0001u\u0011\u001d\ty\u0007\u0001C\t\u0003c\nab\u0019:fCR,g*Z<F]R\u0014\u00180\u0006\u0003\u0002t\u0005uDCBA;\u0003o\nI\bE\u0002\u0002\n%CaAZA7\u0001\u0004y\u0001bB<\u0002n\u0001\u0007\u00111\u0010\t\u0004!\u0005uDaBA@\u0003[\u0012\ra\u0005\u0002\u0003\u0005FBq!a!\u0001\t\u0013\t))A\u0006xe&$Xm\u00142kK\u000e$HcA)\u0002\b\"A\u0011\u0011RAA\u0001\u0004\tY)A\u0002pkR\u0004B!!$\u0002\u00186\u0011\u0011q\u0012\u0006\u0005\u0003#\u000b\u0019*\u0001\u0002j_*\u0011\u0011QS\u0001\u0005U\u00064\u0018-\u0003\u0003\u0002\u001a\u0006=%AE(cU\u0016\u001cGoT;uaV$8\u000b\u001e:fC6Dq!!(\u0001\t\u0013\ty*\u0001\u0006sK\u0006$wJ\u00196fGR$2!UAQ\u0011!\t\u0019+a'A\u0002\u0005\u0015\u0016AA5o!\u0011\ti)a*\n\t\u0005%\u0016q\u0012\u0002\u0012\u001f\nTWm\u0019;J]B,Ho\u0015;sK\u0006l\u0007F\u0002\u0001\u0002.^\f\u0019\fE\u0002\u0016\u0003_K1!!-\u0007\u0005A\u0019VM]5bYZ+'o]5p]VKEIH\u0001\u0002\u000f\u001d\t9L\u0001E\u0001\u0003s\u000bq\u0001S1tQ6\u000b\u0007\u000fE\u0002\r\u0003w3a!\u0001\u0002\t\u0002\u0005u6#BA^\u0003\u007fK\u0004CBAa\u0003\u000f\fY-\u0004\u0002\u0002D*\u0019\u0011Q\u0019\u0003\u0002\u000f\u001d,g.\u001a:jG&!\u0011\u0011ZAb\u0005EiU\u000f^1cY\u0016l\u0015\r\u001d$bGR|'/\u001f\t\u0003\u0019\u0001AqARA^\t\u0003\ty\r\u0006\u0002\u0002:\"A\u00111[A^\t\u0007\t).\u0001\u0007dC:\u0014U/\u001b7e\rJ|W.\u0006\u0004\u0002X\u0006=\u00181_\u000b\u0003\u00033\u0004\"\"!1\u0002\\\u0006}\u00171^A{\u0013\u0011\ti.a1\u0003\u0019\r\u000bgNQ;jY\u00124%o\\7\u0011\t\u0005\u0005\u00181]\u0007\u0003\u0003wKA!!:\u0002h\n!1i\u001c7m\u0013\u0011\tI/a1\u0003\u001b\u001d+g.T1q\r\u0006\u001cGo\u001c:z!\u0019)\u0002'!<\u0002rB\u0019\u0001#a<\u0005\rI\t\tN1\u0001\u0014!\r\u0001\u00121\u001f\u0003\u0007;\u0005E'\u0019A\n\u0011\r1\u0001\u0011Q^Ay\u0011\u001da\u00151\u0018C\u0001\u0003s,b!a?\u0003\u0002\t\u0015QCAA\u007f!\u0019a\u0001!a@\u0003\u0004A\u0019\u0001C!\u0001\u0005\rI\t9P1\u0001\u0014!\r\u0001\"Q\u0001\u0003\u0007;\u0005](\u0019A\n\t\u0015\t%\u00111XA\u0001\n\u0013\u0011Y!A\u0006sK\u0006$'+Z:pYZ,GC\u0001B\u0007!\u0011\u0011yA!\u0006\u000e\u0005\tE!\u0002\u0002B\n\u0003'\u000bA\u0001\\1oO&!!q\u0003B\t\u0005\u0019y%M[3di\u0002")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/HashMap.class */
public class HashMap<A, B> extends AbstractMap<A, B> implements HashTable<A, DefaultEntry<A, B>>, CustomParallelizable<Tuple2<A, B>, ParHashMap<A, B>>, Serializable {
    public static final long serialVersionUID = 1;
    private transient int _loadFactor;
    private transient int seedvalue;
    private transient int[] sizemap;
    private transient HashEntry<Object, HashEntry>[] table;
    private transient int tableSize;
    private transient int threshold;

    public HashMap() {
        this(null);
    }

    public HashMap(HashTable.Contents<A, DefaultEntry<A, B>> contents) {
        HashTable.HashUtils.Cclass.$init$(this);
        HashTable.Cclass.$init$(this);
        CustomParallelizable.Cclass.$init$(this);
        initWithContents(contents);
    }

    public static <A, B> CanBuildFrom<HashMap<?, ?>, Tuple2<A, B>, HashMap<A, B>> canBuildFrom() {
        return HashMap$.MODULE$.canBuildFrom();
    }

    private void readObject(ObjectInputStream objectInputStream) {
        init(objectInputStream, new HashMap$$anonfun$readObject$1(this, objectInputStream));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        serializeTo(objectOutputStream, new HashMap$$anonfun$writeObject$1(this, objectOutputStream));
    }

    @Override // scala.collection.mutable.MapLike, scala.collection.generic.Shrinkable
    public HashMap<A, B> $minus$eq(A a) {
        removeEntry(a);
        return this;
    }

    @Override // scala.collection.mutable.MapLike
    public HashMap<A, B> $plus$eq(Tuple2<A, B> tuple2) {
        DefaultEntry defaultEntry = (DefaultEntry) findOrAddEntry(tuple2.mo269_1(), tuple2.mo268_2());
        if (defaultEntry != null) {
            defaultEntry.value_$eq(tuple2.mo268_2());
        }
        return this;
    }

    @Override // scala.collection.mutable.HashTable
    public int _loadFactor() {
        return this._loadFactor;
    }

    @Override // scala.collection.mutable.HashTable
    public void _loadFactor_$eq(int i) {
        this._loadFactor = i;
    }

    @Override // scala.collection.mutable.HashTable
    public void addEntry(HashEntry hashEntry) {
        HashTable.Cclass.addEntry(this, hashEntry);
    }

    @Override // scala.collection.mutable.HashTable
    public boolean alwaysInitSizeMap() {
        return HashTable.Cclass.alwaysInitSizeMap(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike, scala.Function1
    public B apply(A a) {
        DefaultEntry defaultEntry = (DefaultEntry) findEntry(a);
        return defaultEntry == null ? mo6041default(a) : defaultEntry.value();
    }

    @Override // scala.collection.mutable.HashTable
    public int calcSizeMapSize(int i) {
        return HashTable.Cclass.calcSizeMapSize(this, i);
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.mutable.MapLike, scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
    public void clear() {
        clearTable();
    }

    @Override // scala.collection.mutable.HashTable
    public void clearTable() {
        HashTable.Cclass.clearTable(this);
    }

    @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
    public boolean contains(A a) {
        return findEntry(a) != null;
    }

    @Override // scala.collection.mutable.HashTable
    public <B1> DefaultEntry<A, B> createNewEntry(A a, B1 b1) {
        return new DefaultEntry<>(a, b1);
    }

    @Override // scala.collection.mutable.HashTable
    public boolean elemEquals(A a, A a2) {
        return HashTable.Cclass.elemEquals(this, a, a2);
    }

    @Override // scala.collection.mutable.HashTable.HashUtils
    public int elemHashCode(A a) {
        return HashTable.HashUtils.Cclass.elemHashCode(this, a);
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.AbstractMap, scala.collection.Map, scala.collection.MapLike
    public HashMap<A, B> empty() {
        return HashMap$.MODULE$.empty();
    }

    @Override // scala.collection.mutable.HashTable
    public Iterator<DefaultEntry<A, B>> entriesIterator() {
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

    @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <C> void foreach(Function1<Tuple2<A, B>, C> function1) {
        foreachEntry(new HashMap$$anonfun$foreach$1(this, function1));
    }

    @Override // scala.collection.mutable.HashTable
    public <U> void foreachEntry(Function1<DefaultEntry<A, B>, U> function1) {
        HashTable.Cclass.foreachEntry(this, function1);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public Option<B> get(A a) {
        DefaultEntry defaultEntry = (DefaultEntry) findEntry(a);
        return defaultEntry == null ? None$.MODULE$ : new Some(defaultEntry.value());
    }

    @Override // scala.collection.mutable.HashTable
    public HashTable.Contents<A, DefaultEntry<A, B>> hashTableContents() {
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
    public void init(ObjectInputStream objectInputStream, Function0<DefaultEntry<A, B>> function0) {
        HashTable.Cclass.init(this, objectInputStream, function0);
    }

    @Override // scala.collection.mutable.HashTable
    public void initWithContents(HashTable.Contents<A, DefaultEntry<A, B>> contents) {
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
    public Iterator<Tuple2<A, B>> iterator() {
        return (Iterator<B>) entriesIterator().map(new HashMap$$anonfun$iterator$1(this));
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
    public Set<A> keySet() {
        return new MapLike<A, B, HashMap<A, B>>.DefaultKeySet(this) { // from class: scala.collection.mutable.HashMap$$anon$1
            private final /* synthetic */ HashMap $outer;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(this);
                Objects.requireNonNull(this);
                this.$outer = this;
            }

            @Override // scala.collection.MapLike.DefaultKeySet, scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
            public <C> void foreach(Function1<A, C> function1) {
                this.$outer.foreachEntry(new HashMap$$anon$1$$anonfun$foreach$2(this, function1));
            }
        };
    }

    @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
    public Iterator<A> keysIterator() {
        return new AbstractIterator<A>(this) { // from class: scala.collection.mutable.HashMap$$anon$3
            private final Iterator<DefaultEntry<A, B>> iter;

            {
                this.iter = this.entriesIterator();
            }

            private Iterator<DefaultEntry<A, B>> iter() {
                return this.iter;
            }

            @Override // scala.collection.Iterator
            public boolean hasNext() {
                return iter().hasNext();
            }

            /* JADX WARN: Type inference failed for: r0v4, types: [A, java.lang.Object] */
            @Override // scala.collection.Iterator
            public A next() {
                return ((DefaultEntry) iter().next()).key();
            }
        };
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

    @Override // scala.collection.AbstractTraversable, scala.collection.Parallelizable
    public ParHashMap<A, B> par() {
        return new ParHashMap<>(hashTableContents());
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.AbstractMap, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    public Combiner<Tuple2<A, B>, ParHashMap<A, B>> parCombiner() {
        return CustomParallelizable.Cclass.parCombiner(this);
    }

    @Override // scala.collection.mutable.HashTable
    public void printSizeMap() {
        HashTable.Cclass.printSizeMap(this);
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.mutable.MapLike
    public Option<B> put(A a, B b) {
        None$ none$;
        DefaultEntry defaultEntry = (DefaultEntry) findOrAddEntry(a, b);
        if (defaultEntry == null) {
            none$ = None$.MODULE$;
        } else {
            Object value = defaultEntry.value();
            defaultEntry.value_$eq(b);
            none$ = new Some(value);
        }
        return none$;
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.mutable.MapLike
    public Option<B> remove(A a) {
        DefaultEntry defaultEntry = (DefaultEntry) removeEntry(a);
        return defaultEntry != null ? new Some(defaultEntry.value()) : None$.MODULE$;
    }

    @Override // scala.collection.mutable.HashTable
    public HashEntry removeEntry(Object obj) {
        return HashTable.Cclass.removeEntry(this, obj);
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.AbstractMap, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    public /* bridge */ /* synthetic */ Subtractable repr() {
        return (Subtractable) repr();
    }

    @Override // scala.collection.mutable.HashTable
    public int seedvalue() {
        return this.seedvalue;
    }

    @Override // scala.collection.mutable.HashTable
    public void seedvalue_$eq(int i) {
        this.seedvalue = i;
    }

    @Override // scala.collection.mutable.HashTable
    public void serializeTo(ObjectOutputStream objectOutputStream, Function1<DefaultEntry<A, B>, BoxedUnit> function1) {
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
    public void sizemap_$eq(int[] iArr) {
        this.sizemap = iArr;
    }

    @Override // scala.collection.mutable.HashTable
    public HashEntry<A, DefaultEntry<A, B>>[] table() {
        return (HashEntry<A, DefaultEntry<A, B>>[]) this.table;
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
    public void tableSize_$eq(int i) {
        this.tableSize = i;
    }

    @Override // scala.collection.mutable.HashTable
    public void table_$eq(HashEntry<A, DefaultEntry<A, B>>[] hashEntryArr) {
        this.table = hashEntryArr;
    }

    @Override // scala.collection.mutable.HashTable
    public int threshold() {
        return this.threshold;
    }

    @Override // scala.collection.mutable.HashTable
    public void threshold_$eq(int i) {
        this.threshold = i;
    }

    @Override // scala.collection.mutable.HashTable
    public final int totalSizeMapBuckets() {
        return HashTable.Cclass.totalSizeMapBuckets(this);
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.mutable.MapLike
    public void update(A a, B b) {
        put(a, b);
    }

    public void useSizeMap(boolean z) {
        if (!z) {
            sizeMapDisable();
        } else if (isSizeMapDefined()) {
        } else {
            sizeMapInitAndRebuild();
        }
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
    public Iterable<B> values() {
        return new MapLike<A, B, HashMap<A, B>>.DefaultValuesIterable(this) { // from class: scala.collection.mutable.HashMap$$anon$2
            private final /* synthetic */ HashMap $outer;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(this);
                Objects.requireNonNull(this);
                this.$outer = this;
            }

            @Override // scala.collection.MapLike.DefaultValuesIterable, scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
            public <C> void foreach(Function1<B, C> function1) {
                this.$outer.foreachEntry(new HashMap$$anon$2$$anonfun$foreach$3(this, function1));
            }
        };
    }

    @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
    public Iterator<B> valuesIterator() {
        return new AbstractIterator<B>(this) { // from class: scala.collection.mutable.HashMap$$anon$4
            private final Iterator<DefaultEntry<A, B>> iter;

            {
                this.iter = this.entriesIterator();
            }

            private Iterator<DefaultEntry<A, B>> iter() {
                return this.iter;
            }

            @Override // scala.collection.Iterator
            public boolean hasNext() {
                return iter().hasNext();
            }

            /* JADX WARN: Type inference failed for: r0v4, types: [B, java.lang.Object] */
            @Override // scala.collection.Iterator
            public B next() {
                return ((DefaultEntry) iter().next()).value();
            }
        };
    }
}
