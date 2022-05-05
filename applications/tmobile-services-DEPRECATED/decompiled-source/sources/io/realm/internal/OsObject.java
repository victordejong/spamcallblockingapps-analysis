package io.realm.internal;

import io.realm.ObjectChangeSet;
import io.realm.RealmFieldType;
import io.realm.RealmModel;
import io.realm.RealmObjectChangeListener;
import io.realm.exceptions.RealmException;
import io.realm.internal.ObserverPairList;
import javax.annotation.Nullable;
@Keep
/* loaded from: classes2-dex2jar.jar:io/realm/internal/OsObject.class */
public class OsObject implements NativeObject {
    private static final long nativeFinalizerPtr = nativeGetFinalizerPtr();
    private final long nativePtr;
    private ObserverPairList<ObjectObserverPair> observerPairs = new ObserverPairList<>();

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/OsObject$Callback.class */
    private static class Callback implements ObserverPairList.Callback<ObjectObserverPair> {

        /* renamed from: a */
        private final String[] f20124a;

        Callback(String[] strArr) {
            this.f20124a = strArr;
        }

        /* renamed from: b */
        private ObjectChangeSet m2754b() {
            boolean z = this.f20124a == null;
            return new OsObjectChangeSet(z ? new String[0] : this.f20124a, z);
        }

        /* renamed from: c */
        public void mo2544a(ObjectObserverPair objectObserverPair, Object obj) {
            objectObserverPair.m2752a((RealmModel) obj, m2754b());
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/OsObject$ObjectObserverPair.class */
    public static class ObjectObserverPair<T extends RealmModel> extends ObserverPairList.ObserverPair<T, RealmObjectChangeListener<T>> {
        public ObjectObserverPair(T t, RealmObjectChangeListener<T> realmObjectChangeListener) {
            super(t, realmObjectChangeListener);
        }

        /* renamed from: a */
        public void m2752a(T t, @Nullable ObjectChangeSet objectChangeSet) {
            ((RealmObjectChangeListener) this.f20112b).mo2515a(t, objectChangeSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/OsObject$OsObjectChangeSet.class */
    public static class OsObjectChangeSet implements ObjectChangeSet {
        OsObjectChangeSet(String[] strArr, boolean z) {
        }
    }

    public OsObject(OsSharedRealm osSharedRealm, UncheckedRow uncheckedRow) {
        this.nativePtr = nativeCreate(osSharedRealm.getNativePtr(), uncheckedRow.getNativePtr());
        osSharedRealm.context.m2829a(this);
    }

    public static UncheckedRow create(Table table) {
        return new UncheckedRow(table.m2632u().context, table, nativeCreateNewObject(table.getNativePtr()));
    }

    public static long createRow(Table table) {
        return nativeCreateRow(table.getNativePtr());
    }

    public static long createRowWithPrimaryKey(Table table, long j, Object obj) {
        RealmFieldType r = table.m2635r(j);
        OsSharedRealm u = table.m2632u();
        if (r == RealmFieldType.STRING) {
            if (obj == null || (obj instanceof String)) {
                return nativeCreateRowWithStringPrimaryKey(u.getNativePtr(), table.getNativePtr(), j, (String) obj);
            }
            throw new IllegalArgumentException("Primary key value is not a String: " + obj);
        } else if (r == RealmFieldType.INTEGER) {
            return nativeCreateRowWithLongPrimaryKey(u.getNativePtr(), table.getNativePtr(), j, obj == null ? 0L : Long.parseLong(obj.toString()), obj == null);
        } else {
            throw new RealmException("Cannot check for duplicate rows for unsupported primary key type: " + r);
        }
    }

    public static UncheckedRow createWithPrimaryKey(Table table, @Nullable Object obj) {
        long andVerifyPrimaryKeyColumnIndex = getAndVerifyPrimaryKeyColumnIndex(table);
        RealmFieldType r = table.m2635r(andVerifyPrimaryKeyColumnIndex);
        OsSharedRealm u = table.m2632u();
        if (r == RealmFieldType.STRING) {
            if (obj == null || (obj instanceof String)) {
                return new UncheckedRow(u.context, table, nativeCreateNewObjectWithStringPrimaryKey(u.getNativePtr(), table.getNativePtr(), andVerifyPrimaryKeyColumnIndex, (String) obj));
            }
            throw new IllegalArgumentException("Primary key value is not a String: " + obj);
        } else if (r == RealmFieldType.INTEGER) {
            return new UncheckedRow(u.context, table, nativeCreateNewObjectWithLongPrimaryKey(u.getNativePtr(), table.getNativePtr(), andVerifyPrimaryKeyColumnIndex, obj == null ? 0L : Long.parseLong(obj.toString()), obj == null));
        } else {
            throw new RealmException("Cannot check for duplicate rows for unsupported primary key type: " + r);
        }
    }

    private static long getAndVerifyPrimaryKeyColumnIndex(Table table) {
        String b = OsObjectStore.m2744b(table.m2632u(), table.m2641l());
        if (b != null) {
            return table.m2638o(b);
        }
        throw new IllegalStateException(table.m2633t() + " has no primary key defined.");
    }

    private static native long nativeCreate(long j, long j2);

    private static native long nativeCreateNewObject(long j);

    private static native long nativeCreateNewObjectWithLongPrimaryKey(long j, long j2, long j3, long j4, boolean z);

    private static native long nativeCreateNewObjectWithStringPrimaryKey(long j, long j2, long j3, @Nullable String str);

    private static native long nativeCreateRow(long j);

    private static native long nativeCreateRowWithLongPrimaryKey(long j, long j2, long j3, long j4, boolean z);

    private static native long nativeCreateRowWithStringPrimaryKey(long j, long j2, long j3, String str);

    private static native long nativeGetFinalizerPtr();

    private native void nativeStartListening(long j);

    private native void nativeStopListening(long j);

    private void notifyChangeListeners(String[] strArr) {
        this.observerPairs.m2805c(new Callback(strArr));
    }

    public <T extends RealmModel> void addListener(T t, RealmObjectChangeListener<T> realmObjectChangeListener) {
        if (this.observerPairs.m2804d()) {
            nativeStartListening(this.nativePtr);
        }
        this.observerPairs.m2807a(new ObjectObserverPair(t, realmObjectChangeListener));
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
        this.observerPairs.m2802f(t);
        if (this.observerPairs.m2804d()) {
            nativeStopListening(this.nativePtr);
        }
    }

    public <T extends RealmModel> void removeListener(T t, RealmObjectChangeListener<T> realmObjectChangeListener) {
        this.observerPairs.m2803e(t, realmObjectChangeListener);
        if (this.observerPairs.m2804d()) {
            nativeStopListening(this.nativePtr);
        }
    }

    public void setObserverPairs(ObserverPairList<ObjectObserverPair> observerPairList) {
        if (this.observerPairs.m2804d()) {
            this.observerPairs = observerPairList;
            if (!observerPairList.m2804d()) {
                nativeStartListening(this.nativePtr);
                return;
            }
            return;
        }
        throw new IllegalStateException("'observerPairs' is not empty. Listeners have been added before.");
    }
}
