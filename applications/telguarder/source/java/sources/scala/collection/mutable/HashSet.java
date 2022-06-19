package scala.collection.mutable;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import scala.Function1;
import scala.Option;
import scala.Serializable;
import scala.collection.CustomParallelizable;
import scala.collection.Iterator;
import scala.collection.Set;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.Subtractable;
import scala.collection.mutable.FlatHashTable;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.mutable.ParHashSet;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.TraitSetter;
@ScalaSignature(bytes = "\u0006\u0001\u0005\u001df\u0001B\u0001\u0003\u0001%\u0011q\u0001S1tQN+GO\u0003\u0002\u0004\t\u00059Q.\u001e;bE2,'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u0001QC\u0001\u0006\u0012'!\u00011b\u0007\u0010&S1:\u0004c\u0001\u0007\u000e\u001f5\t!!\u0003\u0002\u000f\u0005\tY\u0011IY:ue\u0006\u001cGoU3u!\t\u0001\u0012\u0003\u0004\u0001\u0005\u000bI\u0001!\u0019A\n\u0003\u0003\u0005\u000b\"\u0001\u0006\r\u0011\u0005U1R\"\u0001\u0004\n\u0005]1!a\u0002(pi\"Lgn\u001a\t\u0003+eI!A\u0007\u0004\u0003\u0007\u0005s\u0017\u0010E\u0002\r9=I!!\b\u0002\u0003\u0007M+G\u000f\u0005\u0003 E=!S\"\u0001\u0011\u000b\u0005\u0005\"\u0011aB4f]\u0016\u0014\u0018nY\u0005\u0003G\u0001\u0012!cR3oKJL7mU3u)\u0016l\u0007\u000f\\1uKB\u0011A\u0002\u0001\t\u0005\u0019\u0019z\u0001&\u0003\u0002(\u0005\t91+\u001a;MS.,\u0007c\u0001\u0007\u0001\u001fA\u0019ABK\b\n\u0005-\u0012!!\u0004$mCRD\u0015m\u001d5UC\ndW\r\u0005\u0003.]=\u0001T\"\u0001\u0003\n\u0005=\"!\u0001F\"vgR|W\u000eU1sC2dW\r\\5{C\ndW\rE\u00022k=i\u0011A\r\u0006\u0003\u0007MR!\u0001\u000e\u0003\u0002\u0011A\f'/\u00197mK2L!A\u000e\u001a\u0003\u0015A\u000b'\u000fS1tQN+G\u000f\u0005\u0002\u0016q%\u0011\u0011H\u0002\u0002\r'\u0016\u0014\u0018.\u00197ju\u0006\u0014G.\u001a\u0005\tw\u0001\u0011\t\u0011)A\u0005y\u0005A1m\u001c8uK:$8\u000fE\u0002>\u0001>q!\u0001\u0004 \n\u0005}\u0012\u0011!\u0004$mCRD\u0015m\u001d5UC\ndW-\u0003\u0002B\u0005\nA1i\u001c8uK:$8O\u0003\u0002@\u0005!1A\t\u0001C\u0001\t\u0015\u000ba\u0001P5oSRtDC\u0001\u0015G\u0011\u0015Y4\t1\u0001=\u0011\u0015!\u0005\u0001\"\u0001I)\u0005A\u0003\"\u0002&\u0001\t\u0003Z\u0015!C2p[B\fg.[8o+\u0005a\u0005cA\u0010NI%\u0011a\n\t\u0002\u0011\u000f\u0016tWM]5d\u0007>l\u0007/\u00198j_:DQ\u0001\u0015\u0001\u0005BE\u000bAa]5{KV\t!\u000b\u0005\u0002\u0016'&\u0011AK\u0002\u0002\u0004\u0013:$\b\"\u0002,\u0001\t\u00039\u0016\u0001C2p]R\f\u0017N\\:\u0015\u0005a[\u0006CA\u000bZ\u0013\tQfAA\u0004C_>dW-\u00198\t\u000bq+\u0006\u0019A\b\u0002\t\u0015dW-\u001c\u0005\u0006=\u0002!\taX\u0001\tIAdWo\u001d\u0013fcR\u0011\u0001-Y\u0007\u0002\u0001!)A,\u0018a\u0001\u001f!)1\r\u0001C\u0001I\u0006IA%\\5okN$S-\u001d\u000b\u0003A\u0016DQ\u0001\u00182A\u0002=AQa\u001a\u0001\u0005B!\f1\u0001]1s+\u0005\u0001\u0004\"\u00026\u0001\t\u0003Z\u0017aA1eIR\u0011\u0001\f\u001c\u0005\u00069&\u0004\ra\u0004\u0005\u0006]\u0002!\te\\\u0001\u0007e\u0016lwN^3\u0015\u0005a\u0003\b\"\u0002/n\u0001\u0004y\u0001\"\u0002:\u0001\t\u0003\u001a\u0018!B2mK\u0006\u0014H#\u0001;\u0011\u0005U)\u0018B\u0001<\u0007\u0005\u0011)f.\u001b;\t\u000ba\u0004A\u0011I=\u0002\u0011%$XM]1u_J,\u0012A\u001f\t\u0004[m|\u0011B\u0001?\u0005\u0005!IE/\u001a:bi>\u0014\b\"\u0002@\u0001\t\u0003z\u0018a\u00024pe\u0016\f7\r[\u000b\u0005\u0003\u0003\ty\u0001F\u0002u\u0003\u0007Aq!!\u0002~\u0001\u0004\t9!A\u0001g!\u0019)\u0012\u0011B\b\u0002\u000e%\u0019\u00111\u0002\u0004\u0003\u0013\u0019+hn\u0019;j_:\f\u0004c\u0001\t\u0002\u0010\u00111\u0011\u0011C?C\u0002M\u0011\u0011!\u0016\u0005\u0007\u0003+\u0001A\u0011\t%\u0002\u000b\rdwN\\3\t\u000f\u0005e\u0001\u0001\"\u0003\u0002\u001c\u0005YqO]5uK>\u0013'.Z2u)\r!\u0018Q\u0004\u0005\t\u0003?\t9\u00021\u0001\u0002\"\u0005\t1\u000f\u0005\u0003\u0002$\u00055RBAA\u0013\u0015\u0011\t9#!\u000b\u0002\u0005%|'BAA\u0016\u0003\u0011Q\u0017M^1\n\t\u0005=\u0012Q\u0005\u0002\u0013\u001f\nTWm\u0019;PkR\u0004X\u000f^*ue\u0016\fW\u000eC\u0004\u00024\u0001!I!!\u000e\u0002\u0015I,\u0017\rZ(cU\u0016\u001cG\u000fF\u0002u\u0003oA\u0001\"!\u000f\u00022\u0001\u0007\u00111H\u0001\u0003S:\u0004B!a\t\u0002>%!\u0011qHA\u0013\u0005Ey%M[3di&s\u0007/\u001e;TiJ,\u0017-\u001c\u0005\b\u0003\u0007\u0002A\u0011AA#\u0003))8/Z*ju\u0016l\u0015\r\u001d\u000b\u0004i\u0006\u001d\u0003bBA%\u0003\u0003\u0002\r\u0001W\u0001\u0002i\":\u0001!!\u0014\u0002T\u0005U\u0003cA\u000b\u0002P%\u0019\u0011\u0011\u000b\u0004\u0003!M+'/[1m-\u0016\u00148/[8o+&#\u0015!\u0002<bYV,g$A\u0001\b\u000f\u0005e#\u0001#\u0001\u0002\\\u00059\u0001*Y:i'\u0016$\bc\u0001\u0007\u0002^\u00191\u0011A\u0001E\u0001\u0003?\u001aR!!\u0018\u0002b]\u0002BaHA2I%\u0019\u0011Q\r\u0011\u0003#5+H/\u00192mKN+GOR1di>\u0014\u0018\u0010C\u0004E\u0003;\"\t!!\u001b\u0015\u0005\u0005m\u0003\u0002CA7\u0003;\"\u0019!a\u001c\u0002\u0019\r\fgNQ;jY\u00124%o\\7\u0016\t\u0005E\u00141Q\u000b\u0003\u0003g\u0002\u0012bHA;\u0003s\n\t)!\"\n\u0007\u0005]\u0004E\u0001\u0007DC:\u0014U/\u001b7e\rJ|W\u000e\u0005\u0003\u0002|\u0005uTBAA/\u0013\r\ty(\u0014\u0002\u0005\u0007>dG\u000eE\u0002\u0011\u0003\u0007#aAEA6\u0005\u0004\u0019\u0002\u0003\u0002\u0007\u0001\u0003\u0003C\u0001\"!#\u0002^\u0011\u0005\u00131R\u0001\u0006K6\u0004H/_\u000b\u0005\u0003\u001b\u000b\u0019*\u0006\u0002\u0002\u0010B!A\u0002AAI!\r\u0001\u00121\u0013\u0003\u0007%\u0005\u001d%\u0019A\n\t\u0015\u0005]\u0015QLA\u0001\n\u0013\tI*A\u0006sK\u0006$'+Z:pYZ,GCAAN!\u0011\ti*a)\u000e\u0005\u0005}%\u0002BAQ\u0003S\tA\u0001\\1oO&!\u0011QUAP\u0005\u0019y%M[3di\u0002")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/HashSet.class */
public class HashSet<A> extends AbstractSet<A> implements FlatHashTable<A>, CustomParallelizable<A, ParHashSet<A>>, Serializable {
    public static final long serialVersionUID = 1;
    private transient int _loadFactor;
    private transient int seedvalue;
    private transient int[] sizemap;
    private transient Object[] table;
    private transient int tableSize;
    private transient int threshold;

    public HashSet() {
        this(null);
    }

    public HashSet(FlatHashTable.Contents<A> contents) {
        FlatHashTable.HashUtils.Cclass.$init$(this);
        FlatHashTable.Cclass.$init$(this);
        CustomParallelizable.Cclass.$init$(this);
        initWithContents(contents);
    }

    public static <A> CanBuildFrom<HashSet<?>, A, HashSet<A>> canBuildFrom() {
        return HashSet$.MODULE$.canBuildFrom();
    }

    private void readObject(ObjectInputStream objectInputStream) {
        init(objectInputStream, new HashSet$$anonfun$readObject$1(this));
    }

    public static <A> Object setCanBuildFrom() {
        return HashSet$.MODULE$.setCanBuildFrom();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        serializeTo(objectOutputStream);
    }

    @Override // scala.collection.mutable.SetLike, scala.collection.generic.Shrinkable
    public HashSet<A> $minus$eq(A a) {
        removeElem(a);
        return this;
    }

    @Override // scala.collection.mutable.SetLike, scala.collection.mutable.Builder, scala.collection.generic.Growable
    public HashSet<A> $plus$eq(A a) {
        addElem(a);
        return this;
    }

    @Override // scala.collection.mutable.FlatHashTable
    public int _loadFactor() {
        return this._loadFactor;
    }

    @Override // scala.collection.mutable.FlatHashTable
    @TraitSetter
    public void _loadFactor_$eq(int i) {
        this._loadFactor = i;
    }

    @Override // scala.collection.mutable.AbstractSet, scala.collection.mutable.SetLike
    public boolean add(A a) {
        return addElem(a);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public boolean addElem(A a) {
        return FlatHashTable.Cclass.addElem(this, a);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public boolean addEntry(Object obj) {
        return FlatHashTable.Cclass.addEntry(this, obj);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public boolean alwaysInitSizeMap() {
        return FlatHashTable.Cclass.alwaysInitSizeMap(this);
    }

    @Override // scala.collection.mutable.AbstractSet, scala.collection.GenSetLike, scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply(obj));
    }

    @Override // scala.collection.mutable.FlatHashTable
    public int calcSizeMapSize(int i) {
        return FlatHashTable.Cclass.calcSizeMapSize(this, i);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public int capacity(int i) {
        return FlatHashTable.Cclass.capacity(this, i);
    }

    @Override // scala.collection.mutable.AbstractSet, scala.collection.mutable.SetLike, scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
    public void clear() {
        clearTable();
    }

    @Override // scala.collection.mutable.FlatHashTable
    public void clearTable() {
        FlatHashTable.Cclass.clearTable(this);
    }

    @Override // scala.collection.mutable.AbstractSet, scala.collection.mutable.SetLike, scala.collection.mutable.Cloneable
    public HashSet<A> clone() {
        return (HashSet) new HashSet().$plus$plus$eq(this);
    }

    @Override // scala.collection.mutable.AbstractSet, scala.collection.mutable.AbstractIterable, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<HashSet> companion() {
        return HashSet$.MODULE$;
    }

    @Override // scala.collection.GenSetLike, scala.collection.SetLike
    public boolean contains(A a) {
        return containsElem(a);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public boolean containsElem(A a) {
        return FlatHashTable.Cclass.containsElem(this, a);
    }

    @Override // scala.collection.mutable.FlatHashTable.HashUtils
    public final Object elemToEntry(A a) {
        return FlatHashTable.HashUtils.Cclass.elemToEntry(this, a);
    }

    @Override // scala.collection.mutable.AbstractSet, scala.collection.generic.GenericSetTemplate, scala.collection.SetLike, scala.collection.immutable.SortedSet, scala.collection.SortedSet
    public /* bridge */ /* synthetic */ Set empty() {
        return (Set) empty();
    }

    @Override // scala.collection.mutable.FlatHashTable.HashUtils
    public final A entryToElem(Object obj) {
        return (A) FlatHashTable.HashUtils.Cclass.entryToElem(this, obj);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public Option<A> findEntry(A a) {
        return FlatHashTable.Cclass.findEntry(this, a);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<A, U> function1) {
        int length = table().length;
        for (int i = 0; i < length; i++) {
            Object obj = table()[i];
            if (obj != null) {
                function1.apply(entryToElem(obj));
            } else {
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
        }
    }

    @Override // scala.collection.mutable.FlatHashTable
    public FlatHashTable.Contents<A> hashTableContents() {
        return FlatHashTable.Cclass.hashTableContents(this);
    }

    @Override // scala.collection.mutable.FlatHashTable.HashUtils
    public final int improve(int i, int i2) {
        return FlatHashTable.HashUtils.Cclass.improve(this, i, i2);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public final int index(int i) {
        return FlatHashTable.Cclass.index(this, i);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public void init(ObjectInputStream objectInputStream, Function1<A, BoxedUnit> function1) {
        FlatHashTable.Cclass.init(this, objectInputStream, function1);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public void initWithContents(FlatHashTable.Contents<A> contents) {
        FlatHashTable.Cclass.initWithContents(this, contents);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public int initialSize() {
        return FlatHashTable.Cclass.initialSize(this);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public boolean isSizeMapDefined() {
        return FlatHashTable.Cclass.isSizeMapDefined(this);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<A> iterator() {
        return FlatHashTable.Cclass.iterator(this);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public void nnSizeMapAdd(int i) {
        FlatHashTable.Cclass.nnSizeMapAdd(this, i);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public void nnSizeMapRemove(int i) {
        FlatHashTable.Cclass.nnSizeMapRemove(this, i);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public void nnSizeMapReset(int i) {
        FlatHashTable.Cclass.nnSizeMapReset(this, i);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.Parallelizable
    public ParHashSet<A> par() {
        return new ParHashSet<>(hashTableContents());
    }

    @Override // scala.collection.mutable.AbstractSet, scala.collection.mutable.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    public Combiner<A, ParHashSet<A>> parCombiner() {
        return CustomParallelizable.Cclass.parCombiner(this);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public void printContents() {
        FlatHashTable.Cclass.printContents(this);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public void printSizeMap() {
        FlatHashTable.Cclass.printSizeMap(this);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public int randomSeed() {
        return FlatHashTable.Cclass.randomSeed(this);
    }

    @Override // scala.collection.mutable.AbstractSet, scala.collection.mutable.SetLike
    public boolean remove(A a) {
        return removeElem(a);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public boolean removeElem(A a) {
        return FlatHashTable.Cclass.removeElem(this, a);
    }

    @Override // scala.collection.mutable.AbstractSet, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    public /* bridge */ /* synthetic */ Subtractable repr() {
        return (Subtractable) repr();
    }

    @Override // scala.collection.mutable.FlatHashTable
    public int seedvalue() {
        return this.seedvalue;
    }

    @Override // scala.collection.mutable.FlatHashTable
    @TraitSetter
    public void seedvalue_$eq(int i) {
        this.seedvalue = i;
    }

    @Override // scala.collection.mutable.FlatHashTable
    public void serializeTo(ObjectOutputStream objectOutputStream) {
        FlatHashTable.Cclass.serializeTo(this, objectOutputStream);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int size() {
        return tableSize();
    }

    @Override // scala.collection.mutable.FlatHashTable.HashUtils
    public final int sizeMapBucketBitSize() {
        return FlatHashTable.HashUtils.Cclass.sizeMapBucketBitSize(this);
    }

    @Override // scala.collection.mutable.FlatHashTable.HashUtils
    public final int sizeMapBucketSize() {
        return FlatHashTable.HashUtils.Cclass.sizeMapBucketSize(this);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public void sizeMapDisable() {
        FlatHashTable.Cclass.sizeMapDisable(this);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public void sizeMapInit(int i) {
        FlatHashTable.Cclass.sizeMapInit(this, i);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public void sizeMapInitAndRebuild() {
        FlatHashTable.Cclass.sizeMapInitAndRebuild(this);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public int[] sizemap() {
        return this.sizemap;
    }

    @Override // scala.collection.mutable.FlatHashTable
    @TraitSetter
    public void sizemap_$eq(int[] iArr) {
        this.sizemap = iArr;
    }

    @Override // scala.collection.mutable.FlatHashTable
    public Object[] table() {
        return this.table;
    }

    @Override // scala.collection.mutable.FlatHashTable
    public int tableSize() {
        return this.tableSize;
    }

    @Override // scala.collection.mutable.FlatHashTable
    public int tableSizeSeed() {
        return FlatHashTable.Cclass.tableSizeSeed(this);
    }

    @Override // scala.collection.mutable.FlatHashTable
    @TraitSetter
    public void tableSize_$eq(int i) {
        this.tableSize = i;
    }

    @Override // scala.collection.mutable.FlatHashTable
    @TraitSetter
    public void table_$eq(Object[] objArr) {
        this.table = objArr;
    }

    @Override // scala.collection.mutable.FlatHashTable
    public int threshold() {
        return this.threshold;
    }

    @Override // scala.collection.mutable.FlatHashTable
    @TraitSetter
    public void threshold_$eq(int i) {
        this.threshold = i;
    }

    @Override // scala.collection.mutable.FlatHashTable
    public final int totalSizeMapBuckets() {
        return FlatHashTable.Cclass.totalSizeMapBuckets(this);
    }

    public void useSizeMap(boolean z) {
        if (!z) {
            sizeMapDisable();
        } else if (isSizeMapDefined()) {
        } else {
            sizeMapInitAndRebuild();
        }
    }
}
