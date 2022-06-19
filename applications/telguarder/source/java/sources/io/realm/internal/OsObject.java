package io.realm.internal;

import io.realm.ObjectChangeSet;
import io.realm.RealmFieldType;
import io.realm.RealmModel;
import io.realm.RealmObjectChangeListener;
import io.realm.exceptions.RealmException;
import io.realm.internal.ObserverPairList;
import javax.annotation.Nullable;
import org.bson.types.ObjectId;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/OsObject.class */
public class OsObject implements NativeObject {
    private static final long nativeFinalizerPtr = nativeGetFinalizerPtr();
    private final long nativePtr;
    private ObserverPairList<ObjectObserverPair> observerPairs = new ObserverPairList<>();

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/OsObject$Callback.class */
    private static class Callback implements ObserverPairList.Callback<ObjectObserverPair> {
        private final String[] changedFields;

        Callback(String[] strArr) {
            this.changedFields = strArr;
        }

        private ObjectChangeSet createChangeSet() {
            String[] strArr = this.changedFields;
            boolean z = strArr == null;
            if (z) {
                strArr = new String[0];
            }
            return new OsObjectChangeSet(strArr, z);
        }

        public void onCalled(ObjectObserverPair objectObserverPair, Object obj) {
            objectObserverPair.onChange((RealmModel) obj, createChangeSet());
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/OsObject$ObjectObserverPair.class */
    public static class ObjectObserverPair<T extends RealmModel> extends ObserverPairList.ObserverPair<T, RealmObjectChangeListener<T>> {
        public ObjectObserverPair(T t, RealmObjectChangeListener<T> realmObjectChangeListener) {
            super(t, realmObjectChangeListener);
        }

        public void onChange(T t, @Nullable ObjectChangeSet objectChangeSet) {
            ((RealmObjectChangeListener) this.listener).onChange(t, objectChangeSet);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/OsObject$OsObjectChangeSet.class */
    public static class OsObjectChangeSet implements ObjectChangeSet {
        final String[] changedFields;
        final boolean deleted;

        OsObjectChangeSet(String[] strArr, boolean z) {
            this.changedFields = strArr;
            this.deleted = z;
        }

        @Override // io.realm.ObjectChangeSet
        public String[] getChangedFields() {
            return this.changedFields;
        }

        @Override // io.realm.ObjectChangeSet
        public boolean isDeleted() {
            return this.deleted;
        }

        @Override // io.realm.ObjectChangeSet
        public boolean isFieldChanged(String str) {
            for (String str2 : this.changedFields) {
                if (str2.equals(str)) {
                    return true;
                }
            }
            return false;
        }
    }

    public OsObject(OsSharedRealm osSharedRealm, UncheckedRow uncheckedRow) {
        this.nativePtr = nativeCreate(osSharedRealm.getNativePtr(), uncheckedRow.getNativePtr());
        osSharedRealm.context.addReference(this);
    }

    public static UncheckedRow create(Table table) {
        return new UncheckedRow(table.getSharedRealm().context, table, nativeCreateNewObject(table.getNativePtr()));
    }

    public static long createEmbeddedObject(Table table, long j, long j2) {
        return nativeCreateEmbeddedObject(table.getNativePtr(), j, j2);
    }

    public static long createRow(Table table) {
        return nativeCreateRow(table.getNativePtr());
    }

    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    public static long createRowWithPrimaryKey(Table table, long j, @Nullable Object obj) {
        RealmFieldType columnType = table.getColumnType(j);
        OsSharedRealm sharedRealm = table.getSharedRealm();
        if (columnType == RealmFieldType.STRING) {
            if (obj == null || (obj instanceof String)) {
                return nativeCreateRowWithStringPrimaryKey(sharedRealm.getNativePtr(), table.getNativePtr(), j, (String) obj);
            }
            throw new IllegalArgumentException("Primary key value is not a String: " + obj);
        } else if (columnType == RealmFieldType.INTEGER) {
            return nativeCreateRowWithLongPrimaryKey(sharedRealm.getNativePtr(), table.getNativePtr(), j, obj == null ? (char) 0 : Long.parseLong(obj.toString()), obj == null);
        } else if (columnType != RealmFieldType.OBJECT_ID) {
            throw new RealmException("Cannot check for duplicate rows for unsupported primary key type: " + columnType);
        } else if (obj == null || (obj instanceof ObjectId)) {
            return nativeCreateRowWithObjectIdPrimaryKey(sharedRealm.getNativePtr(), table.getNativePtr(), j, obj == null ? null : obj.toString());
        } else {
            throw new IllegalArgumentException("Primary key value is not an ObjectId: " + obj);
        }
    }

    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    public static UncheckedRow createWithPrimaryKey(Table table, @Nullable Object obj) {
        long andVerifyPrimaryKeyColumnIndex = getAndVerifyPrimaryKeyColumnIndex(table);
        RealmFieldType columnType = table.getColumnType(andVerifyPrimaryKeyColumnIndex);
        OsSharedRealm sharedRealm = table.getSharedRealm();
        if (columnType == RealmFieldType.STRING) {
            if (obj == null || (obj instanceof String)) {
                return new UncheckedRow(sharedRealm.context, table, nativeCreateNewObjectWithStringPrimaryKey(sharedRealm.getNativePtr(), table.getNativePtr(), andVerifyPrimaryKeyColumnIndex, (String) obj));
            }
            throw new IllegalArgumentException("Primary key value is not a String: " + obj);
        } else if (columnType == RealmFieldType.INTEGER) {
            return new UncheckedRow(sharedRealm.context, table, nativeCreateNewObjectWithLongPrimaryKey(sharedRealm.getNativePtr(), table.getNativePtr(), andVerifyPrimaryKeyColumnIndex, obj == null ? (char) 0 : Long.parseLong(obj.toString()), obj == null));
        } else if (columnType == RealmFieldType.OBJECT_ID) {
            return new UncheckedRow(sharedRealm.context, table, nativeCreateNewObjectWithObjectIdPrimaryKey(sharedRealm.getNativePtr(), table.getNativePtr(), andVerifyPrimaryKeyColumnIndex, obj == null ? null : obj.toString()));
        } else {
            throw new RealmException("Cannot check for duplicate rows for unsupported primary key type: " + columnType);
        }
    }

    private static long getAndVerifyPrimaryKeyColumnIndex(Table table) {
        String primaryKeyForObject = OsObjectStore.getPrimaryKeyForObject(table.getSharedRealm(), table.getClassName());
        if (primaryKeyForObject != null) {
            return table.getColumnKey(primaryKeyForObject);
        }
        throw new IllegalStateException(table.getName() + " has no primary key defined.");
    }

    private static native long nativeCreate(long j, long j2);

    private static native long nativeCreateEmbeddedObject(long j, long j2, long j3);

    private static native long nativeCreateNewObject(long j);

    private static native long nativeCreateNewObjectWithLongPrimaryKey(long j, long j2, long j3, long j4, boolean z);

    private static native long nativeCreateNewObjectWithObjectIdPrimaryKey(long j, long j2, long j3, @Nullable String str);

    private static native long nativeCreateNewObjectWithStringPrimaryKey(long j, long j2, long j3, @Nullable String str);

    private static native long nativeCreateRow(long j);

    private static native long nativeCreateRowWithLongPrimaryKey(long j, long j2, long j3, long j4, boolean z);

    private static native long nativeCreateRowWithObjectIdPrimaryKey(long j, long j2, long j3, @Nullable String str);

    private static native long nativeCreateRowWithStringPrimaryKey(long j, long j2, long j3, @Nullable String str);

    private static native long nativeGetFinalizerPtr();

    private native void nativeStartListening(long j);

    private native void nativeStopListening(long j);

    private void notifyChangeListeners(String[] strArr) {
        this.observerPairs.foreach(new Callback(strArr));
    }

    public <T extends RealmModel> void addListener(T t, RealmObjectChangeListener<T> realmObjectChangeListener) {
        if (this.observerPairs.isEmpty()) {
            nativeStartListening(this.nativePtr);
        }
        this.observerPairs.add(new ObjectObserverPair(t, realmObjectChangeListener));
    }

    @Override // io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return nativeFinalizerPtr;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativePtr() {
        return this.nativePtr;
    }

    public <T extends RealmModel> void removeListener(T t) {
        this.observerPairs.removeByObserver(t);
        if (this.observerPairs.isEmpty()) {
            nativeStopListening(this.nativePtr);
        }
    }

    public <T extends RealmModel> void removeListener(T t, RealmObjectChangeListener<T> realmObjectChangeListener) {
        this.observerPairs.remove(t, realmObjectChangeListener);
        if (this.observerPairs.isEmpty()) {
            nativeStopListening(this.nativePtr);
        }
    }

    public void setObserverPairs(ObserverPairList<ObjectObserverPair> observerPairList) {
        if (this.observerPairs.isEmpty()) {
            this.observerPairs = observerPairList;
            if (observerPairList.isEmpty()) {
                return;
            }
            nativeStartListening(this.nativePtr);
            return;
        }
        throw new IllegalStateException("'observerPairs' is not empty. Listeners have been added before.");
    }
}
