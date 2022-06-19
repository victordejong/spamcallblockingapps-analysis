package scala.collection.parallel.mutable;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import scala.Function0;
import scala.Function1;
import scala.collection.Iterator;
import scala.collection.mutable.DefaultEntry;
import scala.collection.mutable.HashEntry;
import scala.collection.mutable.HashTable;
import scala.runtime.BoxedUnit;
import scala.runtime.TraitSetter;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParHashMapCombiner$table$2$.class */
public class ParHashMapCombiner$table$2$ implements HashTable<K, DefaultEntry<K, V>> {
    private transient int _loadFactor;
    private transient int seedvalue;
    private transient int[] sizemap;
    private transient HashEntry<Object, HashEntry>[] table;
    private transient int tableSize;
    private transient int threshold;

    public ParHashMapCombiner$table$2$(ParHashMapCombiner<K, V> parHashMapCombiner) {
        HashTable.HashUtils.Cclass.$init$(this);
        HashTable.Cclass.$init$(this);
        sizeMapInit(table().length);
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

    @Override // scala.collection.mutable.HashTable
    public void addEntry(HashEntry hashEntry) {
        HashTable.Cclass.addEntry(this, hashEntry);
    }

    @Override // scala.collection.mutable.HashTable
    public boolean alwaysInitSizeMap() {
        return HashTable.Cclass.alwaysInitSizeMap(this);
    }

    @Override // scala.collection.mutable.HashTable
    public int calcSizeMapSize(int i) {
        return HashTable.Cclass.calcSizeMapSize(this, i);
    }

    @Override // scala.collection.mutable.HashTable
    public void clearTable() {
        HashTable.Cclass.clearTable(this);
    }

    @Override // scala.collection.mutable.HashTable
    public <E> DefaultEntry<K, V> createNewEntry(K k, E e) {
        return (DefaultEntry) e;
    }

    @Override // scala.collection.mutable.HashTable
    public boolean elemEquals(K k, K k2) {
        return HashTable.Cclass.elemEquals(this, k, k2);
    }

    @Override // scala.collection.mutable.HashTable.HashUtils
    public int elemHashCode(K k) {
        return HashTable.HashUtils.Cclass.elemHashCode(this, k);
    }

    @Override // scala.collection.mutable.HashTable
    public Iterator<DefaultEntry<K, V>> entriesIterator() {
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

    @Override // scala.collection.mutable.HashTable
    public <U> void foreachEntry(Function1<DefaultEntry<K, V>, U> function1) {
        HashTable.Cclass.foreachEntry(this, function1);
    }

    @Override // scala.collection.mutable.HashTable
    public HashTable.Contents<K, DefaultEntry<K, V>> hashTableContents() {
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
    public void init(ObjectInputStream objectInputStream, Function0<DefaultEntry<K, V>> function0) {
        HashTable.Cclass.init(this, objectInputStream, function0);
    }

    @Override // scala.collection.mutable.HashTable
    public void initWithContents(HashTable.Contents<K, DefaultEntry<K, V>> contents) {
        HashTable.Cclass.initWithContents(this, contents);
    }

    @Override // scala.collection.mutable.HashTable
    public int initialSize() {
        return HashTable.Cclass.initialSize(this);
    }

    public void insertEntry(DefaultEntry<K, V> defaultEntry) {
        HashTable.Cclass.findOrAddEntry(this, defaultEntry.key(), defaultEntry);
    }

    @Override // scala.collection.mutable.HashTable
    public boolean isSizeMapDefined() {
        return HashTable.Cclass.isSizeMapDefined(this);
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

    @Override // scala.collection.mutable.HashTable
    public HashEntry removeEntry(Object obj) {
        return HashTable.Cclass.removeEntry(this, obj);
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
    public void serializeTo(ObjectOutputStream objectOutputStream, Function1<DefaultEntry<K, V>, BoxedUnit> function1) {
        HashTable.Cclass.serializeTo(this, objectOutputStream, function1);
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

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.mutable.HashEntry<K, scala.collection.mutable.DefaultEntry<K, V>>[], scala.collection.mutable.HashEntry<java.lang.Object, scala.collection.mutable.HashEntry>[]] */
    @Override // scala.collection.mutable.HashTable
    public HashEntry<K, DefaultEntry<K, V>>[] table() {
        return this.table;
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
    public void table_$eq(HashEntry<K, DefaultEntry<K, V>>[] hashEntryArr) {
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
