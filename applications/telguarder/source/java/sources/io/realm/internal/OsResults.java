package io.realm.internal;

import io.realm.OrderedRealmCollectionChangeListener;
import io.realm.RealmChangeListener;
import io.realm.RealmList;
import io.realm.RealmModel;
import io.realm.internal.ObservableCollection;
import io.realm.internal.core.DescriptorOrdering;
import io.realm.internal.core.QueryDescriptor;
import io.realm.internal.objectstore.OsObjectBuilder;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Date;
import java.util.NoSuchElementException;
import javax.annotation.Nullable;
import org.bson.types.Decimal128;
import org.bson.types.ObjectId;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/OsResults.class */
public class OsResults implements NativeObject, ObservableCollection {
    public static final byte AGGREGATE_FUNCTION_AVERAGE = 3;
    public static final byte AGGREGATE_FUNCTION_MAXIMUM = 2;
    public static final byte AGGREGATE_FUNCTION_MINIMUM = 1;
    public static final byte AGGREGATE_FUNCTION_SUM = 4;
    private static final String CLOSED_REALM_MESSAGE = "This Realm instance has already been closed, making it unusable.";
    public static final byte MODE_EMPTY = 0;
    public static final byte MODE_LINK_LIST = 4;
    public static final byte MODE_LIST = 2;
    public static final byte MODE_QUERY = 3;
    public static final byte MODE_TABLE = 1;
    public static final byte MODE_TABLEVIEW = 5;
    private static final long nativeFinalizerPtr = nativeGetFinalizerPtr();
    private final NativeContext context;
    protected boolean loaded;
    private final long nativePtr;
    private final OsSharedRealm sharedRealm;
    private final Table table;
    private boolean isSnapshot = false;
    protected final ObserverPairList<ObservableCollection.CollectionObserverPair> observerPairs = new ObserverPairList<>();

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/OsResults$AddListTypeDelegate.class */
    public interface AddListTypeDelegate<T> {
        void addList(OsObjectBuilder osObjectBuilder, RealmList<T> realmList);
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/OsResults$Aggregate.class */
    public enum Aggregate {
        MINIMUM((byte) 1),
        MAXIMUM((byte) 2),
        AVERAGE((byte) 3),
        SUM((byte) 4);
        
        private final byte value;

        Aggregate(byte b) {
            this.value = b;
        }

        public byte getValue() {
            return this.value;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/OsResults$Iterator.class */
    public static abstract class Iterator<T> implements java.util.Iterator<T> {
        OsResults iteratorOsResults;
        protected int pos = -1;

        public Iterator(OsResults osResults) {
            if (!osResults.sharedRealm.isClosed()) {
                this.iteratorOsResults = osResults;
                if (osResults.isSnapshot) {
                    return;
                }
                if (osResults.sharedRealm.isInTransaction()) {
                    detach();
                    return;
                } else {
                    this.iteratorOsResults.sharedRealm.addIterator(this);
                    return;
                }
            }
            throw new IllegalStateException(OsResults.CLOSED_REALM_MESSAGE);
        }

        void checkValid() {
            if (this.iteratorOsResults != null) {
                return;
            }
            throw new ConcurrentModificationException("No outside changes to a Realm is allowed while iterating a living Realm collection.");
        }

        protected abstract T convertRowToObject(UncheckedRow uncheckedRow);

        public void detach() {
            this.iteratorOsResults = this.iteratorOsResults.createSnapshot();
        }

        @Nullable
        T get(int i) {
            return convertRowToObject(this.iteratorOsResults.getUncheckedRow(i));
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            checkValid();
            boolean z = true;
            if (this.pos + 1 >= this.iteratorOsResults.size()) {
                z = false;
            }
            return z;
        }

        public void invalidate() {
            this.iteratorOsResults = null;
        }

        @Override // java.util.Iterator
        @Nullable
        public T next() {
            checkValid();
            int i = this.pos + 1;
            this.pos = i;
            if (i < this.iteratorOsResults.size()) {
                return get(this.pos);
            }
            throw new NoSuchElementException("Cannot access index " + this.pos + " when size is " + this.iteratorOsResults.size() + ". Remember to check hasNext() before using next().");
        }

        @Override // java.util.Iterator
        @Deprecated
        public void remove() {
            throw new UnsupportedOperationException("remove() is not supported by RealmResults iterators.");
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/OsResults$ListIterator.class */
    public static abstract class ListIterator<T> extends Iterator<T> implements java.util.ListIterator<T> {
        public ListIterator(OsResults osResults, int i) {
            super(osResults);
            if (i >= 0 && i <= this.iteratorOsResults.size()) {
                this.pos = i - 1;
                return;
            }
            throw new IndexOutOfBoundsException("Starting location must be a valid index: [0, " + (this.iteratorOsResults.size() - 1) + "]. Yours was " + i);
        }

        @Override // java.util.ListIterator
        @Deprecated
        public void add(@Nullable T t) {
            throw new UnsupportedOperationException("Adding an element is not supported. Use Realm.createObject() instead.");
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            checkValid();
            return this.pos >= 0;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            checkValid();
            return this.pos + 1;
        }

        @Override // java.util.ListIterator
        @Nullable
        public T previous() {
            checkValid();
            try {
                T t = get(this.pos);
                this.pos--;
                return t;
            } catch (IndexOutOfBoundsException e) {
                throw new NoSuchElementException("Cannot access index less than zero. This was " + this.pos + ". Remember to check hasPrevious() before using previous().");
            }
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            checkValid();
            return this.pos;
        }

        @Override // java.util.ListIterator
        @Deprecated
        public void set(@Nullable T t) {
            throw new UnsupportedOperationException("Replacing an element is not supported.");
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/OsResults$Mode.class */
    public enum Mode {
        EMPTY,
        TABLE,
        PRIMITIVE_LIST,
        QUERY,
        LINK_LIST,
        TABLEVIEW;

        static Mode getByValue(byte b) {
            if (b != 0) {
                if (b == 1) {
                    return TABLE;
                }
                if (b == 2) {
                    return PRIMITIVE_LIST;
                }
                if (b == 3) {
                    return QUERY;
                }
                if (b == 4) {
                    return LINK_LIST;
                }
                if (b == 5) {
                    return TABLEVIEW;
                }
                throw new IllegalArgumentException("Invalid value: " + ((int) b));
            }
            return EMPTY;
        }
    }

    OsResults(OsSharedRealm osSharedRealm, Table table, long j) {
        boolean z = false;
        this.sharedRealm = osSharedRealm;
        NativeContext nativeContext = osSharedRealm.context;
        this.context = nativeContext;
        this.table = table;
        this.nativePtr = j;
        nativeContext.addReference(this);
        this.loaded = getMode() != Mode.QUERY ? true : z;
    }

    private <T> void addTypeSpecificList(String str, RealmList<T> realmList, AddListTypeDelegate<T> addListTypeDelegate) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(getTable(), Collections.EMPTY_SET);
        addListTypeDelegate.addList(osObjectBuilder, realmList);
        try {
            nativeSetList(this.nativePtr, str, osObjectBuilder.getNativePtr());
        } finally {
            osObjectBuilder.close();
        }
    }

    public static OsResults createForBacklinks(OsSharedRealm osSharedRealm, UncheckedRow uncheckedRow, Table table, String str) {
        return new OsResults(osSharedRealm, table, nativeCreateResultsFromBacklinks(osSharedRealm.getNativePtr(), uncheckedRow.getNativePtr(), table.getNativePtr(), table.getColumnKey(str)));
    }

    public static OsResults createFromQuery(OsSharedRealm osSharedRealm, TableQuery tableQuery) {
        return createFromQuery(osSharedRealm, tableQuery, new DescriptorOrdering());
    }

    public static OsResults createFromQuery(OsSharedRealm osSharedRealm, TableQuery tableQuery, DescriptorOrdering descriptorOrdering) {
        tableQuery.validateQuery();
        return new OsResults(osSharedRealm, tableQuery.getTable(), nativeCreateResults(osSharedRealm.getNativePtr(), tableQuery.getNativePtr(), descriptorOrdering.getNativePtr()));
    }

    private static native Object nativeAggregate(long j, long j2, byte b);

    private static native void nativeClear(long j);

    private static native boolean nativeContains(long j, long j2);

    protected static native long nativeCreateResults(long j, long j2, long j3);

    private static native long nativeCreateResultsFromBacklinks(long j, long j2, long j3, long j4);

    private static native long nativeCreateSnapshot(long j);

    private static native void nativeDelete(long j, long j2);

    private static native boolean nativeDeleteFirst(long j);

    private static native boolean nativeDeleteLast(long j);

    private static native long nativeDistinct(long j, QueryDescriptor queryDescriptor);

    private static native void nativeEvaluateQueryIfNeeded(long j, boolean z);

    private static native long nativeFirstRow(long j);

    private static native long nativeFreeze(long j, long j2);

    private static native long nativeGetFinalizerPtr();

    private static native byte nativeGetMode(long j);

    private static native long nativeGetRow(long j, int i);

    private static native long nativeIndexOf(long j, long j2);

    private static native boolean nativeIsValid(long j);

    private static native long nativeLastRow(long j);

    private static native void nativeSetBinary(long j, String str, @Nullable byte[] bArr);

    private static native void nativeSetBoolean(long j, String str, boolean z);

    private static native void nativeSetDecimal128(long j, String str, long j2, long j3);

    private static native void nativeSetDouble(long j, String str, double d);

    private static native void nativeSetFloat(long j, String str, float f);

    private static native void nativeSetInt(long j, String str, long j2);

    private static native void nativeSetList(long j, String str, long j2);

    private static native void nativeSetNull(long j, String str);

    private static native void nativeSetObject(long j, String str, long j2);

    private static native void nativeSetObjectId(long j, String str, String str2);

    private static native void nativeSetString(long j, String str, @Nullable String str2);

    private static native void nativeSetTimestamp(long j, String str, long j2);

    private static native long nativeSize(long j);

    private static native long nativeSort(long j, QueryDescriptor queryDescriptor);

    private native void nativeStartListening(long j);

    private native void nativeStopListening(long j);

    private static native long nativeWhere(long j);

    private static native String toJSON(long j, int i);

    public <T> void addListener(T t, OrderedRealmCollectionChangeListener<T> orderedRealmCollectionChangeListener) {
        if (this.observerPairs.isEmpty()) {
            nativeStartListening(this.nativePtr);
        }
        this.observerPairs.add(new ObservableCollection.CollectionObserverPair(t, orderedRealmCollectionChangeListener));
    }

    public <T> void addListener(T t, RealmChangeListener<T> realmChangeListener) {
        addListener((OsResults) t, (OrderedRealmCollectionChangeListener<OsResults>) new ObservableCollection.RealmChangeListenerWrapper(realmChangeListener));
    }

    public Date aggregateDate(Aggregate aggregate, long j) {
        return (Date) nativeAggregate(this.nativePtr, j, aggregate.getValue());
    }

    public Number aggregateNumber(Aggregate aggregate, long j) {
        return (Number) nativeAggregate(this.nativePtr, j, aggregate.getValue());
    }

    public void clear() {
        nativeClear(this.nativePtr);
    }

    public boolean contains(UncheckedRow uncheckedRow) {
        return nativeContains(this.nativePtr, uncheckedRow.getNativePtr());
    }

    public OsResults createSnapshot() {
        if (this.isSnapshot) {
            return this;
        }
        OsResults osResults = new OsResults(this.sharedRealm, this.table, nativeCreateSnapshot(this.nativePtr));
        osResults.isSnapshot = true;
        return osResults;
    }

    public void delete(long j) {
        nativeDelete(this.nativePtr, j);
    }

    public boolean deleteFirst() {
        return nativeDeleteFirst(this.nativePtr);
    }

    public boolean deleteLast() {
        return nativeDeleteLast(this.nativePtr);
    }

    public OsResults distinct(QueryDescriptor queryDescriptor) {
        return new OsResults(this.sharedRealm, this.table, nativeDistinct(this.nativePtr, queryDescriptor));
    }

    public UncheckedRow firstUncheckedRow() {
        long nativeFirstRow = nativeFirstRow(this.nativePtr);
        if (nativeFirstRow != 0) {
            return this.table.getUncheckedRowByPointer(nativeFirstRow);
        }
        return null;
    }

    public OsResults freeze(OsSharedRealm osSharedRealm) {
        OsResults osResults = new OsResults(osSharedRealm, this.table.freeze(osSharedRealm), nativeFreeze(this.nativePtr, osSharedRealm.getNativePtr()));
        if (isLoaded()) {
            osResults.load();
        }
        return osResults;
    }

    public Mode getMode() {
        return Mode.getByValue(nativeGetMode(this.nativePtr));
    }

    @Override // io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return nativeFinalizerPtr;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativePtr() {
        return this.nativePtr;
    }

    public Table getTable() {
        return this.table;
    }

    public UncheckedRow getUncheckedRow(int i) {
        return this.table.getUncheckedRowByPointer(nativeGetRow(this.nativePtr, i));
    }

    public int indexOf(UncheckedRow uncheckedRow) {
        long nativeIndexOf = nativeIndexOf(this.nativePtr, uncheckedRow.getNativePtr());
        return nativeIndexOf > 2147483647L ? Integer.MAX_VALUE : (int) nativeIndexOf;
    }

    public boolean isLoaded() {
        return this.loaded;
    }

    public boolean isValid() {
        return nativeIsValid(this.nativePtr);
    }

    public UncheckedRow lastUncheckedRow() {
        long nativeLastRow = nativeLastRow(this.nativePtr);
        if (nativeLastRow != 0) {
            return this.table.getUncheckedRowByPointer(nativeLastRow);
        }
        return null;
    }

    public void load() {
        if (this.loaded) {
            return;
        }
        nativeEvaluateQueryIfNeeded(this.nativePtr, false);
        notifyChangeListeners(0L);
    }

    @Override // io.realm.internal.ObservableCollection
    public void notifyChangeListeners(long j) {
        EmptyLoadChangeSet emptyLoadChangeSet = j == 0 ? new EmptyLoadChangeSet() : new OsCollectionChangeSet(j, !isLoaded());
        if (!emptyLoadChangeSet.isEmpty() || !isLoaded()) {
            this.loaded = true;
            this.observerPairs.foreach(new ObservableCollection.Callback(emptyLoadChangeSet));
        }
    }

    public void removeAllListeners() {
        this.observerPairs.clear();
        nativeStopListening(this.nativePtr);
    }

    public <T> void removeListener(T t, OrderedRealmCollectionChangeListener<T> orderedRealmCollectionChangeListener) {
        this.observerPairs.remove(t, orderedRealmCollectionChangeListener);
        if (this.observerPairs.isEmpty()) {
            nativeStopListening(this.nativePtr);
        }
    }

    public <T> void removeListener(T t, RealmChangeListener<T> realmChangeListener) {
        removeListener((OsResults) t, (OrderedRealmCollectionChangeListener<OsResults>) new ObservableCollection.RealmChangeListenerWrapper(realmChangeListener));
    }

    public void setBlob(String str, @Nullable byte[] bArr) {
        nativeSetBinary(this.nativePtr, str, bArr);
    }

    public void setBoolean(String str, boolean z) {
        nativeSetBoolean(this.nativePtr, str, z);
    }

    public void setBooleanList(String str, RealmList<Boolean> realmList) {
        addTypeSpecificList(str, realmList, new AddListTypeDelegate<Boolean>() { // from class: io.realm.internal.OsResults.6
            @Override // io.realm.internal.OsResults.AddListTypeDelegate
            public void addList(OsObjectBuilder osObjectBuilder, RealmList<Boolean> realmList2) {
                osObjectBuilder.addBooleanList(0L, realmList2);
            }
        });
    }

    public void setByteArrayList(String str, RealmList<byte[]> realmList) {
        addTypeSpecificList(str, realmList, new AddListTypeDelegate<byte[]>() { // from class: io.realm.internal.OsResults.7
            @Override // io.realm.internal.OsResults.AddListTypeDelegate
            public void addList(OsObjectBuilder osObjectBuilder, RealmList<byte[]> realmList2) {
                osObjectBuilder.addByteArrayList(0L, realmList2);
            }
        });
    }

    public void setByteList(String str, RealmList<Byte> realmList) {
        addTypeSpecificList(str, realmList, new AddListTypeDelegate<Byte>() { // from class: io.realm.internal.OsResults.2
            @Override // io.realm.internal.OsResults.AddListTypeDelegate
            public void addList(OsObjectBuilder osObjectBuilder, RealmList<Byte> realmList2) {
                osObjectBuilder.addByteList(0L, realmList2);
            }
        });
    }

    public void setDate(String str, @Nullable Date date) {
        if (date == null) {
            nativeSetNull(this.nativePtr, str);
        } else {
            nativeSetTimestamp(this.nativePtr, str, date.getTime());
        }
    }

    public void setDateList(String str, RealmList<Date> realmList) {
        addTypeSpecificList(str, realmList, new AddListTypeDelegate<Date>() { // from class: io.realm.internal.OsResults.8
            @Override // io.realm.internal.OsResults.AddListTypeDelegate
            public void addList(OsObjectBuilder osObjectBuilder, RealmList<Date> realmList2) {
                osObjectBuilder.addDateList(0L, realmList2);
            }
        });
    }

    public void setDecimal128(String str, @Nullable Decimal128 decimal128) {
        if (decimal128 == null) {
            nativeSetNull(this.nativePtr, str);
        } else {
            nativeSetDecimal128(this.nativePtr, str, decimal128.getLow(), decimal128.getHigh());
        }
    }

    public void setDecimal128List(String str, RealmList<Decimal128> realmList) {
        addTypeSpecificList(str, realmList, new AddListTypeDelegate<Decimal128>() { // from class: io.realm.internal.OsResults.12
            @Override // io.realm.internal.OsResults.AddListTypeDelegate
            public void addList(OsObjectBuilder osObjectBuilder, RealmList<Decimal128> realmList2) {
                osObjectBuilder.addDecimal128List(0L, realmList2);
            }
        });
    }

    public void setDouble(String str, double d) {
        nativeSetDouble(this.nativePtr, str, d);
    }

    public void setDoubleList(String str, RealmList<Double> realmList) {
        addTypeSpecificList(str, realmList, new AddListTypeDelegate<Double>() { // from class: io.realm.internal.OsResults.10
            @Override // io.realm.internal.OsResults.AddListTypeDelegate
            public void addList(OsObjectBuilder osObjectBuilder, RealmList<Double> realmList2) {
                osObjectBuilder.addDoubleList(0L, realmList2);
            }
        });
    }

    public void setFloat(String str, float f) {
        nativeSetFloat(this.nativePtr, str, f);
    }

    public void setFloatList(String str, RealmList<Float> realmList) {
        addTypeSpecificList(str, realmList, new AddListTypeDelegate<Float>() { // from class: io.realm.internal.OsResults.9
            @Override // io.realm.internal.OsResults.AddListTypeDelegate
            public void addList(OsObjectBuilder osObjectBuilder, RealmList<Float> realmList2) {
                osObjectBuilder.addFloatList(0L, realmList2);
            }
        });
    }

    public void setInt(String str, long j) {
        nativeSetInt(this.nativePtr, str, j);
    }

    public void setIntegerList(String str, RealmList<Integer> realmList) {
        addTypeSpecificList(str, realmList, new AddListTypeDelegate<Integer>() { // from class: io.realm.internal.OsResults.4
            @Override // io.realm.internal.OsResults.AddListTypeDelegate
            public void addList(OsObjectBuilder osObjectBuilder, RealmList<Integer> realmList2) {
                osObjectBuilder.addIntegerList(0L, realmList2);
            }
        });
    }

    public void setLongList(String str, RealmList<Long> realmList) {
        addTypeSpecificList(str, realmList, new AddListTypeDelegate<Long>() { // from class: io.realm.internal.OsResults.5
            @Override // io.realm.internal.OsResults.AddListTypeDelegate
            public void addList(OsObjectBuilder osObjectBuilder, RealmList<Long> realmList2) {
                osObjectBuilder.addLongList(0L, realmList2);
            }
        });
    }

    public void setModelList(String str, RealmList<RealmModel> realmList) {
        addTypeSpecificList(str, realmList, new AddListTypeDelegate<RealmModel>() { // from class: io.realm.internal.OsResults.11
            @Override // io.realm.internal.OsResults.AddListTypeDelegate
            public void addList(OsObjectBuilder osObjectBuilder, RealmList<RealmModel> realmList2) {
                osObjectBuilder.addObjectList(0L, realmList2);
            }
        });
    }

    public void setNull(String str) {
        nativeSetNull(this.nativePtr, str);
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    public void setObject(String str, @Nullable Row row) {
        char c;
        if (row == null) {
            setNull(str);
            return;
        }
        if (row instanceof UncheckedRow) {
            c = ((UncheckedRow) row).getNativePtr();
        } else if (!(row instanceof CheckedRow)) {
            throw new UnsupportedOperationException("Unsupported Row type: " + row.getClass().getCanonicalName());
        } else {
            c = ((CheckedRow) row).getNativePtr();
        }
        nativeSetObject(this.nativePtr, str, c);
    }

    public void setObjectId(String str, @Nullable ObjectId objectId) {
        if (objectId == null) {
            nativeSetNull(this.nativePtr, str);
        } else {
            nativeSetObjectId(this.nativePtr, str, objectId.toString());
        }
    }

    public void setObjectIdList(String str, RealmList<ObjectId> realmList) {
        addTypeSpecificList(str, realmList, new AddListTypeDelegate<ObjectId>() { // from class: io.realm.internal.OsResults.13
            @Override // io.realm.internal.OsResults.AddListTypeDelegate
            public void addList(OsObjectBuilder osObjectBuilder, RealmList<ObjectId> realmList2) {
                osObjectBuilder.addObjectIdList(0L, realmList2);
            }
        });
    }

    public void setShortList(String str, RealmList<Short> realmList) {
        addTypeSpecificList(str, realmList, new AddListTypeDelegate<Short>() { // from class: io.realm.internal.OsResults.3
            @Override // io.realm.internal.OsResults.AddListTypeDelegate
            public void addList(OsObjectBuilder osObjectBuilder, RealmList<Short> realmList2) {
                osObjectBuilder.addShortList(0L, realmList2);
            }
        });
    }

    public void setString(String str, @Nullable String str2) {
        nativeSetString(this.nativePtr, str, str2);
    }

    public void setStringList(String str, RealmList<String> realmList) {
        addTypeSpecificList(str, realmList, new AddListTypeDelegate<String>() { // from class: io.realm.internal.OsResults.1
            @Override // io.realm.internal.OsResults.AddListTypeDelegate
            public void addList(OsObjectBuilder osObjectBuilder, RealmList<String> realmList2) {
                osObjectBuilder.addStringList(0L, realmList2);
            }
        });
    }

    public long size() {
        return nativeSize(this.nativePtr);
    }

    public OsResults sort(QueryDescriptor queryDescriptor) {
        return new OsResults(this.sharedRealm, this.table, nativeSort(this.nativePtr, queryDescriptor));
    }

    public String toJSON(int i) {
        return toJSON(this.nativePtr, i);
    }

    public TableQuery where() {
        return new TableQuery(this.context, this.table, nativeWhere(this.nativePtr));
    }
}
