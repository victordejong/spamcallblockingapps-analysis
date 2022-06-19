package scala.collection.parallel.mutable;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import scala.Function1;
import scala.Option;
import scala.Predef$;
import scala.collection.Iterator;
import scala.collection.mutable.FlatHashTable;
import scala.runtime.BoxedUnit;
import scala.runtime.TraitSetter;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParHashSetCombiner$$anon$2.class */
public final class ParHashSetCombiner$$anon$2 implements FlatHashTable<T> {
    private transient int _loadFactor;
    private transient int seedvalue;
    private transient int[] sizemap;
    private transient Object[] table;
    private transient int tableSize;
    private transient int threshold;

    public ParHashSetCombiner$$anon$2(ParHashSetCombiner<T> parHashSetCombiner) {
        FlatHashTable.HashUtils.Cclass.$init$(this);
        FlatHashTable.Cclass.$init$(this);
        sizeMapInit(table().length);
        seedvalue_$eq(parHashSetCombiner.scala$collection$parallel$mutable$ParHashSetCombiner$$seedvalue());
        Predef$.MODULE$.refArrayOps(parHashSetCombiner.buckets()).withFilter(new ParHashSetCombiner$$anon$2$$anonfun$1(this)).foreach(new ParHashSetCombiner$$anon$2$$anonfun$2(this));
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

    @Override // scala.collection.mutable.FlatHashTable
    public boolean addElem(T t) {
        return FlatHashTable.Cclass.addElem(this, t);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public boolean addEntry(Object obj) {
        return FlatHashTable.Cclass.addEntry(this, obj);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public boolean alwaysInitSizeMap() {
        return FlatHashTable.Cclass.alwaysInitSizeMap(this);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public int calcSizeMapSize(int i) {
        return FlatHashTable.Cclass.calcSizeMapSize(this, i);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public int capacity(int i) {
        return FlatHashTable.Cclass.capacity(this, i);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public void clearTable() {
        FlatHashTable.Cclass.clearTable(this);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public boolean containsElem(T t) {
        return FlatHashTable.Cclass.containsElem(this, t);
    }

    @Override // scala.collection.mutable.FlatHashTable.HashUtils
    public final Object elemToEntry(T t) {
        return FlatHashTable.HashUtils.Cclass.elemToEntry(this, t);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
    @Override // scala.collection.mutable.FlatHashTable.HashUtils
    public final T entryToElem(Object obj) {
        return FlatHashTable.HashUtils.Cclass.entryToElem(this, obj);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public Option<T> findEntry(T t) {
        return FlatHashTable.Cclass.findEntry(this, t);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public FlatHashTable.Contents<T> hashTableContents() {
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
    public void init(ObjectInputStream objectInputStream, Function1<T, BoxedUnit> function1) {
        FlatHashTable.Cclass.init(this, objectInputStream, function1);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public void initWithContents(FlatHashTable.Contents<T> contents) {
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

    @Override // scala.collection.mutable.FlatHashTable
    public Iterator<T> iterator() {
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

    @Override // scala.collection.mutable.FlatHashTable
    public boolean removeElem(T t) {
        return FlatHashTable.Cclass.removeElem(this, t);
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
}
