package io.realm;

import android.content.Context;
import android.os.Looper;
import io.reactivex.Flowable;
import io.realm.Realm;
import io.realm.RealmCache;
import io.realm.exceptions.RealmException;
import io.realm.exceptions.RealmMigrationNeededException;
import io.realm.internal.CheckedRow;
import io.realm.internal.ColumnInfo;
import io.realm.internal.InvalidRow;
import io.realm.internal.OsObjectStore;
import io.realm.internal.OsRealmConfig;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.OsSharedRealm;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.Row;
import io.realm.internal.Table;
import io.realm.internal.UncheckedRow;
import io.realm.internal.Util;
import io.realm.internal.async.RealmThreadPoolExecutor;
import io.realm.log.RealmLog;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/BaseRealm.class */
public abstract class BaseRealm implements Closeable {
    static final String CLOSED_REALM_MESSAGE = "This Realm instance has already been closed, making it unusable.";
    static final String DELETE_NOT_SUPPORTED_UNDER_PARTIAL_SYNC = "This API is not supported by partially synchronized Realms. Either unsubscribe using 'Realm.unsubscribeAsync()' or delete the objects using a query and 'RealmResults.deleteAllFromRealm()'";
    private static final String INCORRECT_THREAD_CLOSE_MESSAGE = "Realm access from incorrect thread. Realm instance can only be closed on the thread it was created.";
    static final String INCORRECT_THREAD_MESSAGE = "Realm access from incorrect thread. Realm objects can only be accessed on the thread they were created.";
    static final String LISTENER_NOT_ALLOWED_MESSAGE = "Listeners cannot be used on current thread.";
    private static final String NOT_IN_TRANSACTION_MESSAGE = "Changing Realm data can only be done from inside a transaction.";
    static volatile Context applicationContext;
    protected final RealmConfiguration configuration;
    final boolean frozen;
    private RealmCache realmCache;
    private OsSharedRealm.SchemaChangedCallback schemaChangedCallback;
    public OsSharedRealm sharedRealm;
    private boolean shouldCloseSharedRealm;
    final long threadId;
    static final RealmThreadPoolExecutor asyncTaskExecutor = RealmThreadPoolExecutor.newDefaultExecutor();
    public static final RealmThreadPoolExecutor WRITE_EXECUTOR = RealmThreadPoolExecutor.newSingleThreadExecutor();
    public static final ThreadLocalRealmObjectContext objectContext = new ThreadLocalRealmObjectContext();

    /* loaded from: classes2-dex2jar.jar:io/realm/BaseRealm$InstanceCallback.class */
    public static abstract class InstanceCallback<T extends BaseRealm> {
        public void onError(Throwable th) {
            throw new RealmException("Exception happens when initializing Realm in the background thread.", th);
        }

        public abstract void onSuccess(T t);
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/BaseRealm$RealmObjectContext.class */
    public static final class RealmObjectContext {
        private boolean acceptDefaultValue;
        private ColumnInfo columnInfo;
        private List<String> excludeFields;
        private BaseRealm realm;
        private Row row;

        public void clear() {
            this.realm = null;
            this.row = null;
            this.columnInfo = null;
            this.acceptDefaultValue = false;
            this.excludeFields = null;
        }

        public boolean getAcceptDefaultValue() {
            return this.acceptDefaultValue;
        }

        public ColumnInfo getColumnInfo() {
            return this.columnInfo;
        }

        public List<String> getExcludeFields() {
            return this.excludeFields;
        }

        public BaseRealm getRealm() {
            return this.realm;
        }

        public Row getRow() {
            return this.row;
        }

        public void set(BaseRealm baseRealm, Row row, ColumnInfo columnInfo, boolean z, List<String> list) {
            this.realm = baseRealm;
            this.row = row;
            this.columnInfo = columnInfo;
            this.acceptDefaultValue = z;
            this.excludeFields = list;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/BaseRealm$ThreadLocalRealmObjectContext.class */
    static final class ThreadLocalRealmObjectContext extends ThreadLocal<RealmObjectContext> {
        ThreadLocalRealmObjectContext() {
        }

        @Override // java.lang.ThreadLocal
        public RealmObjectContext initialValue() {
            return new RealmObjectContext();
        }
    }

    public BaseRealm(RealmCache realmCache, @Nullable OsSchemaInfo osSchemaInfo, OsSharedRealm.VersionID versionID) {
        this(realmCache.getConfiguration(), osSchemaInfo, versionID);
        this.realmCache = realmCache;
    }

    BaseRealm(RealmConfiguration realmConfiguration, @Nullable OsSchemaInfo osSchemaInfo, OsSharedRealm.VersionID versionID) {
        this.schemaChangedCallback = new OsSharedRealm.SchemaChangedCallback() { // from class: io.realm.BaseRealm.1
            @Override // io.realm.internal.OsSharedRealm.SchemaChangedCallback
            public void onSchemaChanged() {
                RealmSchema schema = BaseRealm.this.getSchema();
                if (schema != null) {
                    schema.refresh();
                }
            }
        };
        this.threadId = Thread.currentThread().getId();
        this.configuration = realmConfiguration;
        OsSharedRealm.InitializationCallback initializationCallback = null;
        this.realmCache = null;
        OsSharedRealm.MigrationCallback createMigrationCallback = (osSchemaInfo == null || realmConfiguration.getMigration() == null) ? null : createMigrationCallback(realmConfiguration.getMigration());
        final Realm.Transaction initialDataTransaction = realmConfiguration.getInitialDataTransaction();
        OsSharedRealm osSharedRealm = OsSharedRealm.getInstance(new OsRealmConfig.Builder(realmConfiguration).fifoFallbackDir(new File(applicationContext.getFilesDir(), ".realm.temp")).autoUpdateNotification(true).migrationCallback(createMigrationCallback).schemaInfo(osSchemaInfo).initializationCallback(initialDataTransaction != null ? new OsSharedRealm.InitializationCallback() { // from class: io.realm.BaseRealm.2
            @Override // io.realm.internal.OsSharedRealm.InitializationCallback
            public void onInit(OsSharedRealm osSharedRealm2) {
                initialDataTransaction.execute(Realm.createInstance(osSharedRealm2));
            }
        } : initializationCallback), versionID);
        this.sharedRealm = osSharedRealm;
        this.frozen = osSharedRealm.isFrozen();
        this.shouldCloseSharedRealm = true;
        this.sharedRealm.registerSchemaChangedCallback(this.schemaChangedCallback);
    }

    public BaseRealm(OsSharedRealm osSharedRealm) {
        this.schemaChangedCallback = new OsSharedRealm.SchemaChangedCallback() { // from class: io.realm.BaseRealm.1
            @Override // io.realm.internal.OsSharedRealm.SchemaChangedCallback
            public void onSchemaChanged() {
                RealmSchema schema = BaseRealm.this.getSchema();
                if (schema != null) {
                    schema.refresh();
                }
            }
        };
        this.threadId = Thread.currentThread().getId();
        this.configuration = osSharedRealm.getConfiguration();
        this.realmCache = null;
        this.sharedRealm = osSharedRealm;
        this.frozen = osSharedRealm.isFrozen();
        this.shouldCloseSharedRealm = false;
    }

    public static boolean compactRealm(RealmConfiguration realmConfiguration) {
        OsSharedRealm osSharedRealm = OsSharedRealm.getInstance(realmConfiguration, OsSharedRealm.VersionID.LIVE);
        boolean compact = osSharedRealm.compact();
        osSharedRealm.close();
        return Boolean.valueOf(compact).booleanValue();
    }

    public static OsSharedRealm.MigrationCallback createMigrationCallback(final RealmMigration realmMigration) {
        return new OsSharedRealm.MigrationCallback() { // from class: io.realm.BaseRealm.6
            @Override // io.realm.internal.OsSharedRealm.MigrationCallback
            public void onMigrationNeeded(OsSharedRealm osSharedRealm, long j, long j2) {
                realmMigration.migrate(DynamicRealm.createInstance(osSharedRealm), j, j2);
            }
        };
    }

    public static boolean deleteRealm(final RealmConfiguration realmConfiguration) {
        final AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        if (OsObjectStore.callWithLock(realmConfiguration, new Runnable() { // from class: io.realm.BaseRealm.4
            @Override // java.lang.Runnable
            public void run() {
                atomicBoolean.set(Util.deleteRealm(realmConfiguration.getPath(), realmConfiguration.getRealmDirectory(), realmConfiguration.getRealmFileName()));
            }
        })) {
            return atomicBoolean.get();
        }
        throw new IllegalStateException("It's not allowed to delete the file associated with an open Realm. Remember to close() all the instances of the Realm before deleting its file: " + realmConfiguration.getPath());
    }

    public static void migrateRealm(final RealmConfiguration realmConfiguration, @Nullable final RealmMigration realmMigration) throws FileNotFoundException {
        if (realmConfiguration != null) {
            if (realmConfiguration.isSyncConfiguration()) {
                throw new IllegalArgumentException("Manual migrations are not supported for synced Realms");
            }
            if (realmMigration == null && realmConfiguration.getMigration() == null) {
                throw new RealmMigrationNeededException(realmConfiguration.getPath(), "RealmMigration must be provided.");
            }
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            RealmCache.invokeWithGlobalRefCount(realmConfiguration, new RealmCache.Callback() { // from class: io.realm.BaseRealm.5
                @Override // io.realm.RealmCache.Callback
                public void onResult(int i) {
                    if (i != 0) {
                        throw new IllegalStateException("Cannot migrate a Realm file that is already open: " + realmConfiguration.getPath());
                    } else if (!new File(realmConfiguration.getPath()).exists()) {
                        atomicBoolean.set(true);
                    } else {
                        OsSchemaInfo osSchemaInfo = new OsSchemaInfo(realmConfiguration.getSchemaMediator().getExpectedObjectSchemaInfoMap().values());
                        OsSharedRealm.MigrationCallback migrationCallback = null;
                        RealmMigration realmMigration2 = realmMigration;
                        if (realmMigration2 == null) {
                            realmMigration2 = realmConfiguration.getMigration();
                        }
                        if (realmMigration2 != null) {
                            migrationCallback = BaseRealm.createMigrationCallback(realmMigration2);
                        }
                        OsSharedRealm osSharedRealm = OsSharedRealm.getInstance(new OsRealmConfig.Builder(realmConfiguration).autoUpdateNotification(false).schemaInfo(osSchemaInfo).migrationCallback(migrationCallback), OsSharedRealm.VersionID.LIVE);
                        if (osSharedRealm == null) {
                            return;
                        }
                        osSharedRealm.close();
                    }
                }
            });
            if (!atomicBoolean.get()) {
                return;
            }
            throw new FileNotFoundException("Cannot migrate a Realm file which doesn't exist: " + realmConfiguration.getPath());
        }
        throw new IllegalArgumentException("RealmConfiguration must be provided");
    }

    public <T extends BaseRealm> void addListener(RealmChangeListener<T> realmChangeListener) {
        if (realmChangeListener != null) {
            checkIfValid();
            this.sharedRealm.capabilities.checkCanDeliverNotification(LISTENER_NOT_ALLOWED_MESSAGE);
            if (this.frozen) {
                throw new IllegalStateException("It is not possible to add a change listener to a frozen Realm since it never changes.");
            }
            this.sharedRealm.realmNotifier.addChangeListener(this, realmChangeListener);
            return;
        }
        throw new IllegalArgumentException("Listener should not be null");
    }

    public abstract Flowable asFlowable();

    public void beginTransaction() {
        checkIfValid();
        this.sharedRealm.beginTransaction();
    }

    public void cancelTransaction() {
        checkIfValid();
        this.sharedRealm.cancelTransaction();
    }

    public void checkAllowQueriesOnUiThread() {
        if (!getSharedRealm().capabilities.isMainThread() || getConfiguration().isAllowQueriesOnUiThread()) {
            return;
        }
        throw new RealmException("Queries on the UI thread have been disabled. They can be enabled by setting 'RealmConfiguration.Builder.allowQueriesOnUiThread(true)'.");
    }

    public void checkAllowWritesOnUiThread() {
        if (!getSharedRealm().capabilities.isMainThread() || getConfiguration().isAllowWritesOnUiThread()) {
            return;
        }
        throw new RealmException("Running transactions on the UI thread has been disabled. It can be enabled by setting 'RealmConfiguration.Builder.allowWritesOnUiThread(true)'.");
    }

    public void checkIfInTransaction() {
        if (this.sharedRealm.isInTransaction()) {
            return;
        }
        throw new IllegalStateException(NOT_IN_TRANSACTION_MESSAGE);
    }

    public void checkIfValid() {
        OsSharedRealm osSharedRealm = this.sharedRealm;
        if (osSharedRealm == null || osSharedRealm.isClosed()) {
            throw new IllegalStateException(CLOSED_REALM_MESSAGE);
        }
        if (!this.frozen && this.threadId != Thread.currentThread().getId()) {
            throw new IllegalStateException(INCORRECT_THREAD_MESSAGE);
        }
    }

    public void checkIfValidAndInTransaction() {
        if (isInTransaction()) {
            return;
        }
        throw new IllegalStateException(NOT_IN_TRANSACTION_MESSAGE);
    }

    public void checkNotInSync() {
        if (!this.configuration.isSyncConfiguration()) {
            return;
        }
        throw new UnsupportedOperationException("You cannot perform destructive changes to a schema of a synced Realm");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.frozen || this.threadId == Thread.currentThread().getId()) {
            RealmCache realmCache = this.realmCache;
            if (realmCache != null) {
                realmCache.release(this);
                return;
            } else {
                doClose();
                return;
            }
        }
        throw new IllegalStateException(INCORRECT_THREAD_CLOSE_MESSAGE);
    }

    public void commitTransaction() {
        checkIfValid();
        this.sharedRealm.commitTransaction();
    }

    public void deleteAll() {
        checkIfValid();
        for (RealmObjectSchema realmObjectSchema : getSchema().getAll()) {
            getSchema().getTable(realmObjectSchema.getClassName()).clear();
        }
    }

    public void doClose() {
        this.realmCache = null;
        OsSharedRealm osSharedRealm = this.sharedRealm;
        if (osSharedRealm == null || !this.shouldCloseSharedRealm) {
            return;
        }
        osSharedRealm.close();
        this.sharedRealm = null;
    }

    protected void finalize() throws Throwable {
        OsSharedRealm osSharedRealm;
        if (this.shouldCloseSharedRealm && (osSharedRealm = this.sharedRealm) != null && !osSharedRealm.isClosed()) {
            RealmLog.warn("Remember to call close() on all Realm instances. Realm %s is being finalized without being closed, this can lead to running out of native memory.", this.configuration.getPath());
            RealmCache realmCache = this.realmCache;
            if (realmCache != null) {
                realmCache.leak();
            }
        }
        super.finalize();
    }

    public abstract BaseRealm freeze();

    <E extends RealmModel> E get(Class<E> cls, long j, boolean z, List<String> list) {
        return (E) this.configuration.getSchemaMediator().newInstance(cls, this, getSchema().getTable(cls).getUncheckedRow(j), getSchema().getColumnInfo(cls), z, list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [io.realm.RealmModel] */
    public <E extends RealmModel> E get(@Nullable Class<E> cls, @Nullable String str, long j) {
        DynamicRealmObject dynamicRealmObject;
        boolean z = str != null;
        Table table = z ? getSchema().getTable(str) : getSchema().getTable(cls);
        if (z) {
            dynamicRealmObject = new DynamicRealmObject(this, j != -1 ? table.getCheckedRow(j) : InvalidRow.INSTANCE);
        } else {
            dynamicRealmObject = this.configuration.getSchemaMediator().newInstance(cls, this, j != -1 ? table.getUncheckedRow(j) : InvalidRow.INSTANCE, getSchema().getColumnInfo(cls), false, Collections.emptyList());
        }
        return dynamicRealmObject;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [io.realm.RealmModel] */
    public <E extends RealmModel> E get(@Nullable Class<E> cls, @Nullable String str, UncheckedRow uncheckedRow) {
        return str != null ? new DynamicRealmObject(this, CheckedRow.getFromRow(uncheckedRow)) : this.configuration.getSchemaMediator().newInstance(cls, this, uncheckedRow, getSchema().getColumnInfo(cls), false, Collections.emptyList());
    }

    public RealmConfiguration getConfiguration() {
        return this.configuration;
    }

    public Row getEmbeddedObjectRow(String str, RealmObjectProxy realmObjectProxy, String str2, RealmSchema realmSchema, RealmObjectSchema realmObjectSchema) {
        long columnKey = realmObjectSchema.getColumnKey(str2);
        RealmFieldType fieldType = realmObjectSchema.getFieldType(str2);
        Row row$realm = realmObjectProxy.realmGet$proxyState().getRow$realm();
        if (realmObjectSchema.isPropertyAcceptableForEmbeddedObject(realmObjectSchema.getFieldType(str2))) {
            String propertyClassName = realmObjectSchema.getPropertyClassName(str2);
            if (!propertyClassName.equals(str)) {
                throw new IllegalArgumentException(String.format("Parent type %s expects that property '%s' be of type %s but was %s.", realmObjectSchema.getClassName(), str2, propertyClassName, str));
            }
            return realmSchema.getTable(str).getCheckedRow(row$realm.createEmbeddedObject(columnKey, fieldType));
        }
        throw new IllegalArgumentException(String.format("Field '%s' does not contain a valid link", str2));
    }

    public long getNumberOfActiveVersions() {
        checkIfValid();
        return getSharedRealm().getNumberOfVersions();
    }

    public String getPath() {
        return this.configuration.getPath();
    }

    public abstract RealmSchema getSchema();

    public OsSharedRealm getSharedRealm() {
        return this.sharedRealm;
    }

    public long getVersion() {
        return OsObjectStore.getSchemaVersion(this.sharedRealm);
    }

    public boolean isAutoRefresh() {
        return this.sharedRealm.isAutoRefresh();
    }

    public boolean isClosed() {
        if (this.frozen || this.threadId == Thread.currentThread().getId()) {
            OsSharedRealm osSharedRealm = this.sharedRealm;
            return osSharedRealm == null || osSharedRealm.isClosed();
        }
        throw new IllegalStateException(INCORRECT_THREAD_MESSAGE);
    }

    public abstract boolean isEmpty();

    public boolean isFrozen() {
        OsSharedRealm osSharedRealm = this.sharedRealm;
        if (osSharedRealm == null || osSharedRealm.isClosed()) {
            throw new IllegalStateException(CLOSED_REALM_MESSAGE);
        }
        return this.frozen;
    }

    public boolean isInTransaction() {
        checkIfValid();
        return this.sharedRealm.isInTransaction();
    }

    public void refresh() {
        checkIfValid();
        checkAllowQueriesOnUiThread();
        if (!isInTransaction()) {
            this.sharedRealm.refresh();
            return;
        }
        throw new IllegalStateException("Cannot refresh a Realm instance inside a transaction.");
    }

    public void removeAllListeners() {
        if (isClosed()) {
            RealmLog.warn("Calling removeChangeListener on a closed Realm %s, make sure to close all listeners before closing the Realm.", this.configuration.getPath());
        }
        this.sharedRealm.realmNotifier.removeChangeListeners(this);
    }

    public <T extends BaseRealm> void removeListener(RealmChangeListener<T> realmChangeListener) {
        if (realmChangeListener != null) {
            if (isClosed()) {
                RealmLog.warn("Calling removeChangeListener on a closed Realm %s, make sure to close all listeners before closing the Realm.", this.configuration.getPath());
            }
            this.sharedRealm.realmNotifier.removeChangeListener(this, realmChangeListener);
            return;
        }
        throw new IllegalArgumentException("Listener should not be null");
    }

    public void setAutoRefresh(boolean z) {
        checkIfValid();
        this.sharedRealm.setAutoRefresh(z);
    }

    @Deprecated
    public void stopWaitForChange() {
        RealmCache realmCache = this.realmCache;
        if (realmCache != null) {
            realmCache.invokeWithLock(new RealmCache.Callback0() { // from class: io.realm.BaseRealm.3
                @Override // io.realm.RealmCache.Callback0
                public void onCall() {
                    if (BaseRealm.this.sharedRealm == null || BaseRealm.this.sharedRealm.isClosed()) {
                        throw new IllegalStateException(BaseRealm.CLOSED_REALM_MESSAGE);
                    }
                    BaseRealm.this.sharedRealm.stopWaitForChange();
                }
            });
            return;
        }
        throw new IllegalStateException(CLOSED_REALM_MESSAGE);
    }

    @Deprecated
    public boolean waitForChange() {
        checkIfValid();
        if (!isInTransaction()) {
            if (Looper.myLooper() != null) {
                throw new IllegalStateException("Cannot wait for changes inside a Looper thread. Use RealmChangeListeners instead.");
            }
            boolean waitForChange = this.sharedRealm.waitForChange();
            if (waitForChange) {
                this.sharedRealm.refresh();
            }
            return waitForChange;
        }
        throw new IllegalStateException("Cannot wait for changes inside of a transaction.");
    }

    public void writeCopyTo(File file) {
        if (file != null) {
            checkIfValid();
            this.sharedRealm.writeCopy(file, null);
            return;
        }
        throw new IllegalArgumentException("The destination argument cannot be null");
    }

    public void writeEncryptedCopyTo(File file, byte[] bArr) {
        if (file != null) {
            checkIfValid();
            this.sharedRealm.writeCopy(file, bArr);
            return;
        }
        throw new IllegalArgumentException("The destination argument cannot be null");
    }
}
