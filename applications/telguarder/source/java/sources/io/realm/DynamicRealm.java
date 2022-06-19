package io.realm;

import io.reactivex.Flowable;
import io.realm.BaseRealm;
import io.realm.RealmCache;
import io.realm.exceptions.RealmException;
import io.realm.internal.CheckedRow;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectStore;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.OsSharedRealm;
import io.realm.internal.RealmNotifier;
import io.realm.internal.Table;
import io.realm.internal.Util;
import io.realm.internal.async.RealmAsyncTaskImpl;
import io.realm.log.RealmLog;
import java.io.File;
import java.util.Locale;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/DynamicRealm.class */
public class DynamicRealm extends BaseRealm {
    private final RealmSchema schema = new MutableRealmSchema(this);

    /* renamed from: io.realm.DynamicRealm$2 */
    /* loaded from: classes2-dex2jar.jar:io/realm/DynamicRealm$2.class */
    public class RunnableC23732 implements Runnable {
        final /* synthetic */ boolean val$canDeliverNotification;
        final /* synthetic */ Transaction.OnError val$onError;
        final /* synthetic */ Transaction.OnSuccess val$onSuccess;
        final /* synthetic */ RealmConfiguration val$realmConfiguration;
        final /* synthetic */ RealmNotifier val$realmNotifier;
        final /* synthetic */ Transaction val$transaction;

        RunnableC23732(RealmConfiguration realmConfiguration, Transaction transaction, boolean z, Transaction.OnSuccess onSuccess, RealmNotifier realmNotifier, Transaction.OnError onError) {
            DynamicRealm.this = r4;
            this.val$realmConfiguration = realmConfiguration;
            this.val$transaction = transaction;
            this.val$canDeliverNotification = z;
            this.val$onSuccess = onSuccess;
            this.val$realmNotifier = realmNotifier;
            this.val$onError = onError;
        }

        @Override // java.lang.Runnable
        public void run() {
            OsSharedRealm.VersionID versionID;
            if (Thread.currentThread().isInterrupted()) {
                return;
            }
            DynamicRealm dynamicRealm = DynamicRealm.getInstance(this.val$realmConfiguration);
            dynamicRealm.beginTransaction();
            Throwable th = null;
            try {
                this.val$transaction.execute(dynamicRealm);
            } catch (Throwable th2) {
                th = th2;
                try {
                    if (dynamicRealm.isInTransaction()) {
                        dynamicRealm.cancelTransaction();
                    }
                    dynamicRealm.close();
                    versionID = null;
                } finally {
                }
            }
            if (Thread.currentThread().isInterrupted()) {
                try {
                    if (dynamicRealm.isInTransaction()) {
                        dynamicRealm.cancelTransaction();
                    }
                    return;
                } finally {
                }
            }
            dynamicRealm.commitTransaction();
            versionID = dynamicRealm.sharedRealm.getVersionID();
            try {
                if (dynamicRealm.isInTransaction()) {
                    dynamicRealm.cancelTransaction();
                }
                if (!this.val$canDeliverNotification) {
                    if (th != null) {
                        throw new RealmException("Async transaction failed", th);
                    }
                } else if (versionID != null && this.val$onSuccess != null) {
                    final OsSharedRealm.VersionID versionID2 = versionID;
                    this.val$realmNotifier.post(new Runnable() { // from class: io.realm.DynamicRealm.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (DynamicRealm.this.isClosed()) {
                                RunnableC23732.this.val$onSuccess.onSuccess();
                            } else if (DynamicRealm.this.sharedRealm.getVersionID().compareTo(versionID2) < 0) {
                                DynamicRealm.this.sharedRealm.realmNotifier.addTransactionCallback(new Runnable() { // from class: io.realm.DynamicRealm.2.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        RunnableC23732.this.val$onSuccess.onSuccess();
                                    }
                                });
                            } else {
                                RunnableC23732.this.val$onSuccess.onSuccess();
                            }
                        }
                    });
                } else if (th == null) {
                } else {
                    final Throwable th3 = th;
                    this.val$realmNotifier.post(new Runnable() { // from class: io.realm.DynamicRealm.2.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (RunnableC23732.this.val$onError != null) {
                                RunnableC23732.this.val$onError.onError(th3);
                                return;
                            }
                            throw new RealmException("Async transaction failed", th3);
                        }
                    });
                }
            } finally {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/DynamicRealm$Callback.class */
    public static abstract class Callback extends BaseRealm.InstanceCallback<DynamicRealm> {
        @Override // io.realm.BaseRealm.InstanceCallback
        public void onError(Throwable th) {
            super.onError(th);
        }

        public abstract void onSuccess(DynamicRealm dynamicRealm);
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/DynamicRealm$Transaction.class */
    public interface Transaction {

        /* loaded from: classes2-dex2jar.jar:io/realm/DynamicRealm$Transaction$Callback.class */
        public static class Callback {
            public void onError(Exception exc) {
            }

            public void onSuccess() {
            }
        }

        /* loaded from: classes2-dex2jar.jar:io/realm/DynamicRealm$Transaction$OnError.class */
        public interface OnError {
            void onError(Throwable th);
        }

        /* loaded from: classes2-dex2jar.jar:io/realm/DynamicRealm$Transaction$OnSuccess.class */
        public interface OnSuccess {
            void onSuccess();
        }

        void execute(DynamicRealm dynamicRealm);
    }

    private DynamicRealm(final RealmCache realmCache, OsSharedRealm.VersionID versionID) {
        super(realmCache, (OsSchemaInfo) null, versionID);
        RealmCache.invokeWithGlobalRefCount(realmCache.getConfiguration(), new RealmCache.Callback() { // from class: io.realm.DynamicRealm.1
            @Override // io.realm.RealmCache.Callback
            public void onResult(int i) {
                if (i <= 0 && !realmCache.getConfiguration().isReadOnly() && OsObjectStore.getSchemaVersion(DynamicRealm.this.sharedRealm) == -1) {
                    DynamicRealm.this.sharedRealm.beginTransaction();
                    if (OsObjectStore.getSchemaVersion(DynamicRealm.this.sharedRealm) == -1) {
                        OsObjectStore.setSchemaVersion(DynamicRealm.this.sharedRealm, -1L);
                    }
                    DynamicRealm.this.sharedRealm.commitTransaction();
                }
            }
        });
    }

    private DynamicRealm(OsSharedRealm osSharedRealm) {
        super(osSharedRealm);
    }

    public static DynamicRealm createInstance(RealmCache realmCache, OsSharedRealm.VersionID versionID) {
        return new DynamicRealm(realmCache, versionID);
    }

    public static DynamicRealm createInstance(OsSharedRealm osSharedRealm) {
        return new DynamicRealm(osSharedRealm);
    }

    public static DynamicRealm getInstance(RealmConfiguration realmConfiguration) {
        if (realmConfiguration != null) {
            return (DynamicRealm) RealmCache.createRealmOrGetFromCache(realmConfiguration, DynamicRealm.class);
        }
        throw new IllegalArgumentException("A non-null RealmConfiguration must be provided");
    }

    public static RealmAsyncTask getInstanceAsync(RealmConfiguration realmConfiguration, Callback callback) {
        if (realmConfiguration != null) {
            return RealmCache.createRealmOrGetFromCacheAsync(realmConfiguration, callback, DynamicRealm.class);
        }
        throw new IllegalArgumentException("A non-null RealmConfiguration must be provided");
    }

    public void addChangeListener(RealmChangeListener<DynamicRealm> realmChangeListener) {
        addListener(realmChangeListener);
    }

    @Override // io.realm.BaseRealm
    public Flowable<DynamicRealm> asFlowable() {
        return this.configuration.getRxFactory().from(this);
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ void beginTransaction() {
        super.beginTransaction();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ void cancelTransaction() {
        super.cancelTransaction();
    }

    @Override // io.realm.BaseRealm, java.io.Closeable, java.lang.AutoCloseable
    public /* bridge */ /* synthetic */ void close() {
        super.close();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ void commitTransaction() {
        super.commitTransaction();
    }

    public DynamicRealmObject createEmbeddedObject(String str, DynamicRealmObject dynamicRealmObject, String str2) {
        checkIfValid();
        Util.checkNull(dynamicRealmObject, "parentObject");
        Util.checkEmpty(str2, "parentProperty");
        if (!RealmObject.isManaged(dynamicRealmObject) || !RealmObject.isValid(dynamicRealmObject)) {
            throw new IllegalArgumentException("Only valid, managed objects can be a parent to an embedded object.");
        }
        String primaryKeyForObject = OsObjectStore.getPrimaryKeyForObject(this.sharedRealm, str);
        if (primaryKeyForObject != null) {
            throw new RealmException(String.format(Locale.US, "'%s' has a primary key field '%s', embedded objects cannot have primary keys.", str, primaryKeyForObject));
        }
        String type = dynamicRealmObject.getType();
        RealmObjectSchema realmObjectSchema = this.schema.get(type);
        if (realmObjectSchema == null) {
            throw new IllegalStateException(String.format("No schema found for '%s'.", type));
        }
        return new DynamicRealmObject(this, getEmbeddedObjectRow(str, dynamicRealmObject, str2, this.schema, realmObjectSchema));
    }

    public DynamicRealmObject createObject(String str) {
        checkIfValid();
        Table table = this.schema.getTable(str);
        String primaryKeyForObject = OsObjectStore.getPrimaryKeyForObject(this.sharedRealm, str);
        if (primaryKeyForObject == null) {
            return new DynamicRealmObject(this, CheckedRow.getFromRow(OsObject.create(table)));
        }
        throw new RealmException(String.format(Locale.US, "'%s' has a primary key field '%s', use  'createObject(String, Object)' instead.", str, primaryKeyForObject));
    }

    public DynamicRealmObject createObject(String str, Object obj) {
        return new DynamicRealmObject(this, CheckedRow.getFromRow(OsObject.createWithPrimaryKey(this.schema.getTable(str), obj)));
    }

    public void delete(String str) {
        checkIfValid();
        checkIfInTransaction();
        this.schema.getTable(str).clear();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ void deleteAll() {
        super.deleteAll();
    }

    public void executeTransaction(Transaction transaction) {
        if (transaction != null) {
            checkAllowWritesOnUiThread();
            beginTransaction();
            try {
                transaction.execute(this);
                commitTransaction();
                return;
            } catch (RuntimeException e) {
                if (isInTransaction()) {
                    cancelTransaction();
                } else {
                    RealmLog.warn("Could not cancel transaction, not currently in a transaction.", new Object[0]);
                }
                throw e;
            }
        }
        throw new IllegalArgumentException("Transaction should not be null");
    }

    public RealmAsyncTask executeTransactionAsync(Transaction transaction) {
        return executeTransactionAsync(transaction, null, null);
    }

    public RealmAsyncTask executeTransactionAsync(Transaction transaction, Transaction.OnError onError) {
        if (onError != null) {
            return executeTransactionAsync(transaction, null, onError);
        }
        throw new IllegalArgumentException("onError callback can't be null");
    }

    public RealmAsyncTask executeTransactionAsync(Transaction transaction, Transaction.OnSuccess onSuccess) {
        if (onSuccess != null) {
            return executeTransactionAsync(transaction, onSuccess, null);
        }
        throw new IllegalArgumentException("onSuccess callback can't be null");
    }

    public RealmAsyncTask executeTransactionAsync(Transaction transaction, @Nullable Transaction.OnSuccess onSuccess, @Nullable Transaction.OnError onError) {
        checkIfValid();
        if (transaction != null) {
            if (isFrozen()) {
                throw new IllegalStateException("Write transactions on a frozen Realm is not allowed.");
            }
            boolean canDeliverNotification = this.sharedRealm.capabilities.canDeliverNotification();
            if (onSuccess != null || onError != null) {
                this.sharedRealm.capabilities.checkCanDeliverNotification("Callback cannot be delivered on current thread.");
            }
            return new RealmAsyncTaskImpl(asyncTaskExecutor.submitTransaction(new RunnableC23732(getConfiguration(), transaction, canDeliverNotification, onSuccess, this.sharedRealm.realmNotifier, onError)), asyncTaskExecutor);
        }
        throw new IllegalArgumentException("Transaction should not be null");
    }

    @Override // io.realm.BaseRealm
    public DynamicRealm freeze() {
        OsSharedRealm.VersionID versionID;
        try {
            versionID = this.sharedRealm.getVersionID();
        } catch (IllegalStateException e) {
            getVersion();
            versionID = this.sharedRealm.getVersionID();
        }
        return (DynamicRealm) RealmCache.createRealmOrGetFromCache(this.configuration, DynamicRealm.class, versionID);
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ RealmConfiguration getConfiguration() {
        return super.getConfiguration();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ long getNumberOfActiveVersions() {
        return super.getNumberOfActiveVersions();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ String getPath() {
        return super.getPath();
    }

    @Override // io.realm.BaseRealm
    public RealmSchema getSchema() {
        return this.schema;
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ long getVersion() {
        return super.getVersion();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ boolean isAutoRefresh() {
        return super.isAutoRefresh();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ boolean isClosed() {
        return super.isClosed();
    }

    @Override // io.realm.BaseRealm
    public boolean isEmpty() {
        checkIfValid();
        return this.sharedRealm.isEmpty();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ boolean isFrozen() {
        return super.isFrozen();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ boolean isInTransaction() {
        return super.isInTransaction();
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ void refresh() {
        super.refresh();
    }

    public void removeAllChangeListeners() {
        removeAllListeners();
    }

    public void removeChangeListener(RealmChangeListener<DynamicRealm> realmChangeListener) {
        removeListener(realmChangeListener);
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ void setAutoRefresh(boolean z) {
        super.setAutoRefresh(z);
    }

    void setVersion(long j) {
        OsObjectStore.setSchemaVersion(this.sharedRealm, j);
    }

    @Override // io.realm.BaseRealm
    @Deprecated
    public /* bridge */ /* synthetic */ void stopWaitForChange() {
        super.stopWaitForChange();
    }

    @Override // io.realm.BaseRealm
    @Deprecated
    public /* bridge */ /* synthetic */ boolean waitForChange() {
        return super.waitForChange();
    }

    public RealmQuery<DynamicRealmObject> where(String str) {
        checkIfValid();
        if (this.sharedRealm.hasTable(Table.getTableNameForClass(str))) {
            return RealmQuery.createDynamicQuery(this, str);
        }
        throw new IllegalArgumentException("Class does not exist in the Realm and cannot be queried: " + str);
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ void writeCopyTo(File file) {
        super.writeCopyTo(file);
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ void writeEncryptedCopyTo(File file, byte[] bArr) {
        super.writeEncryptedCopyTo(file, bArr);
    }
}
