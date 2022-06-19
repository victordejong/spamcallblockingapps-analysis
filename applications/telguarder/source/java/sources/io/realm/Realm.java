package io.realm;

import android.content.Context;
import android.os.SystemClock;
import android.util.JsonReader;
import com.pubmatic.sdk.common.POBCommonConstants;
import io.reactivex.Flowable;
import io.realm.BaseRealm;
import io.realm.RealmCache;
import io.realm.RealmConfiguration;
import io.realm.exceptions.RealmException;
import io.realm.exceptions.RealmMigrationNeededException;
import io.realm.exceptions.RealmPrimaryKeyConstraintException;
import io.realm.internal.ColumnIndices;
import io.realm.internal.ObjectServerFacade;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectStore;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.OsSharedRealm;
import io.realm.internal.RealmCore;
import io.realm.internal.RealmNotifier;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.RealmProxyMediator;
import io.realm.internal.Table;
import io.realm.internal.Util;
import io.realm.internal.async.RealmAsyncTaskImpl;
import io.realm.log.RealmLog;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Scanner;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:io/realm/Realm.class */
public class Realm extends BaseRealm {
    public static final String DEFAULT_REALM_NAME = "default.realm";
    public static final int ENCRYPTION_KEY_LENGTH = 64;
    private static final String NULL_CONFIG_MSG = "A non-null RealmConfiguration must be provided";
    private static RealmConfiguration defaultConfiguration;
    private static final Object defaultConfigurationLock = new Object();
    private final RealmSchema schema;

    /* renamed from: io.realm.Realm$1 */
    /* loaded from: classes2-dex2jar.jar:io/realm/Realm$1.class */
    public class RunnableC23801 implements Runnable {
        final /* synthetic */ boolean val$canDeliverNotification;
        final /* synthetic */ Transaction.OnError val$onError;
        final /* synthetic */ Transaction.OnSuccess val$onSuccess;
        final /* synthetic */ RealmConfiguration val$realmConfiguration;
        final /* synthetic */ RealmNotifier val$realmNotifier;
        final /* synthetic */ Transaction val$transaction;

        RunnableC23801(RealmConfiguration realmConfiguration, Transaction transaction, boolean z, Transaction.OnSuccess onSuccess, RealmNotifier realmNotifier, Transaction.OnError onError) {
            Realm.this = r4;
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
            Realm realm = Realm.getInstance(this.val$realmConfiguration);
            realm.beginTransaction();
            Throwable th = null;
            try {
                this.val$transaction.execute(realm);
            } catch (Throwable th2) {
                th = th2;
                try {
                    if (realm.isInTransaction()) {
                        realm.cancelTransaction();
                    }
                    realm.close();
                    versionID = null;
                } finally {
                }
            }
            if (Thread.currentThread().isInterrupted()) {
                try {
                    if (realm.isInTransaction()) {
                        realm.cancelTransaction();
                    }
                    return;
                } finally {
                }
            }
            realm.commitTransaction();
            versionID = realm.sharedRealm.getVersionID();
            try {
                if (realm.isInTransaction()) {
                    realm.cancelTransaction();
                }
                if (!this.val$canDeliverNotification) {
                    if (th != null) {
                        throw new RealmException("Async transaction failed", th);
                    }
                } else if (versionID != null && this.val$onSuccess != null) {
                    final OsSharedRealm.VersionID versionID2 = versionID;
                    this.val$realmNotifier.post(new Runnable() { // from class: io.realm.Realm.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (Realm.this.isClosed()) {
                                RunnableC23801.this.val$onSuccess.onSuccess();
                            } else if (Realm.this.sharedRealm.getVersionID().compareTo(versionID2) < 0) {
                                Realm.this.sharedRealm.realmNotifier.addTransactionCallback(new Runnable() { // from class: io.realm.Realm.1.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        RunnableC23801.this.val$onSuccess.onSuccess();
                                    }
                                });
                            } else {
                                RunnableC23801.this.val$onSuccess.onSuccess();
                            }
                        }
                    });
                } else if (th == null) {
                } else {
                    final Throwable th3 = th;
                    this.val$realmNotifier.post(new Runnable() { // from class: io.realm.Realm.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (RunnableC23801.this.val$onError != null) {
                                RunnableC23801.this.val$onError.onError(th3);
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

    /* loaded from: classes2-dex2jar.jar:io/realm/Realm$Callback.class */
    public static abstract class Callback extends BaseRealm.InstanceCallback<Realm> {
        @Override // io.realm.BaseRealm.InstanceCallback
        public void onError(Throwable th) {
            super.onError(th);
        }

        public abstract void onSuccess(Realm realm);
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/Realm$Transaction.class */
    public interface Transaction {

        /* loaded from: classes2-dex2jar.jar:io/realm/Realm$Transaction$Callback.class */
        public static class Callback {
            public void onError(Exception exc) {
            }

            public void onSuccess() {
            }
        }

        /* loaded from: classes2-dex2jar.jar:io/realm/Realm$Transaction$OnError.class */
        public interface OnError {
            void onError(Throwable th);
        }

        /* loaded from: classes2-dex2jar.jar:io/realm/Realm$Transaction$OnSuccess.class */
        public interface OnSuccess {
            void onSuccess();
        }

        void execute(Realm realm);
    }

    private Realm(RealmCache realmCache, OsSharedRealm.VersionID versionID) {
        super(realmCache, createExpectedSchemaInfo(realmCache.getConfiguration().getSchemaMediator()), versionID);
        this.schema = new ImmutableRealmSchema(this, new ColumnIndices(this.configuration.getSchemaMediator(), this.sharedRealm.getSchemaInfo()));
        if (this.configuration.isReadOnly()) {
            RealmProxyMediator schemaMediator = this.configuration.getSchemaMediator();
            for (Class<? extends RealmModel> cls : schemaMediator.getModelClasses()) {
                String tableNameForClass = Table.getTableNameForClass(schemaMediator.getSimpleClassName(cls));
                if (!this.sharedRealm.hasTable(tableNameForClass)) {
                    this.sharedRealm.close();
                    throw new RealmMigrationNeededException(this.configuration.getPath(), String.format(Locale.US, "Cannot open the read only Realm. '%s' is missing.", Table.getClassNameForTable(tableNameForClass)));
                }
            }
        }
    }

    private Realm(OsSharedRealm osSharedRealm) {
        super(osSharedRealm);
        this.schema = new ImmutableRealmSchema(this, new ColumnIndices(this.configuration.getSchemaMediator(), osSharedRealm.getSchemaInfo()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27 */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    private static void checkFilesDirAvailable(Context context) {
        ?? r0;
        File filesDir = context.getFilesDir();
        if (filesDir != null) {
            if (filesDir.exists()) {
                return;
            }
            try {
                filesDir.mkdirs();
            } catch (SecurityException e) {
            }
        }
        if (filesDir == null || !filesDir.exists()) {
            ?? r9 = false;
            int i = -1;
            do {
                if (context.getFilesDir() != null && context.getFilesDir().exists()) {
                    break;
                }
                i++;
                long j = new long[]{1, 2, 5, 10, 16}[Math.min(i, 4)];
                SystemClock.sleep(j);
                r0 = (r9 == true ? 1L : 0L) + j;
                r9 = r0;
            } while (r0 <= 200);
        }
        if (context.getFilesDir() == null || !context.getFilesDir().exists()) {
            throw new IllegalStateException("Context.getFilesDir() returns " + context.getFilesDir() + " which is not an existing directory. See https://issuetracker.google.com/issues/36918154");
        }
    }

    private void checkHasPrimaryKey(Class<? extends RealmModel> cls) {
        if (this.sharedRealm.getSchemaInfo().getObjectSchemaInfo(this.configuration.getSchemaMediator().getSimpleClassName(cls)).getPrimaryKeyProperty() != null) {
            return;
        }
        throw new IllegalArgumentException("A RealmObject with no @PrimaryKey cannot be updated: " + cls.toString());
    }

    private void checkMaxDepth(int i) {
        if (i >= 0) {
            return;
        }
        throw new IllegalArgumentException("maxDepth must be > 0. It was: " + i);
    }

    private <E extends RealmModel> void checkNotNullObject(E e) {
        if (e != null) {
            return;
        }
        throw new IllegalArgumentException("Null objects cannot be copied into Realm.");
    }

    private <E extends RealmModel> void checkValidObjectForDetach(E e) {
        if (e != null) {
            if (!RealmObject.isManaged(e) || !RealmObject.isValid(e)) {
                throw new IllegalArgumentException("Only valid managed objects can be copied from Realm.");
            }
            if (e instanceof DynamicRealmObject) {
                throw new IllegalArgumentException("DynamicRealmObject cannot be copied from Realm.");
            }
            return;
        }
        throw new IllegalArgumentException("Null objects cannot be copied from Realm.");
    }

    public static boolean compactRealm(RealmConfiguration realmConfiguration) {
        return BaseRealm.compactRealm(realmConfiguration);
    }

    private <E extends RealmModel> E copyOrUpdate(E e, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        checkIfValid();
        if (isInTransaction()) {
            if (this.configuration.getSchemaMediator().isEmbedded(Util.getOriginalModelClass(e.getClass()))) {
                throw new IllegalArgumentException("Embedded objects cannot be copied into Realm by themselves. They need to be attached to a parent object");
            }
            try {
                return (E) this.configuration.getSchemaMediator().copyOrUpdate(this, e, z, map, set);
            } catch (IllegalStateException e2) {
                if (!e2.getMessage().startsWith("Attempting to create an object of type")) {
                    throw e2;
                }
                throw new RealmPrimaryKeyConstraintException(e2.getMessage());
            }
        }
        throw new IllegalStateException("`copyOrUpdate` can only be called inside a write transaction.");
    }

    private <E extends RealmModel> E createDetachedCopy(E e, int i, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        checkIfValid();
        return (E) this.configuration.getSchemaMediator().createDetachedCopy(e, i, map);
    }

    private static OsSchemaInfo createExpectedSchemaInfo(RealmProxyMediator realmProxyMediator) {
        return new OsSchemaInfo(realmProxyMediator.getExpectedObjectSchemaInfoMap().values());
    }

    public static Realm createInstance(RealmCache realmCache, OsSharedRealm.VersionID versionID) {
        return new Realm(realmCache, versionID);
    }

    public static Realm createInstance(OsSharedRealm osSharedRealm) {
        return new Realm(osSharedRealm);
    }

    public static boolean deleteRealm(RealmConfiguration realmConfiguration) {
        return BaseRealm.deleteRealm(realmConfiguration);
    }

    @Nullable
    public static Context getApplicationContext() {
        return applicationContext;
    }

    @Nullable
    public static RealmConfiguration getDefaultConfiguration() {
        RealmConfiguration realmConfiguration;
        synchronized (defaultConfigurationLock) {
            realmConfiguration = defaultConfiguration;
        }
        return realmConfiguration;
    }

    public static Realm getDefaultInstance() {
        RealmConfiguration defaultConfiguration2 = getDefaultConfiguration();
        if (defaultConfiguration2 == null) {
            if (BaseRealm.applicationContext != null) {
                throw new IllegalStateException("Set default configuration by using `Realm.setDefaultConfiguration(RealmConfiguration)`.");
            }
            throw new IllegalStateException("Call `Realm.init(Context)` before calling this method.");
        }
        return (Realm) RealmCache.createRealmOrGetFromCache(defaultConfiguration2, Realm.class);
    }

    @Nullable
    public static Object getDefaultModule() {
        try {
            Constructor<?> constructor = Class.forName("io.realm.DefaultRealmModule").getDeclaredConstructors()[0];
            constructor.setAccessible(true);
            return constructor.newInstance(new Object[0]);
        } catch (ClassNotFoundException e) {
            return null;
        } catch (IllegalAccessException e2) {
            throw new RealmException("Could not create an instance of io.realm.DefaultRealmModule", e2);
        } catch (InstantiationException e3) {
            throw new RealmException("Could not create an instance of io.realm.DefaultRealmModule", e3);
        } catch (InvocationTargetException e4) {
            throw new RealmException("Could not create an instance of io.realm.DefaultRealmModule", e4);
        }
    }

    private Scanner getFullStringScanner(InputStream inputStream) {
        return new Scanner(inputStream, POBCommonConstants.URL_ENCODING).useDelimiter("\\A");
    }

    public static int getGlobalInstanceCount(RealmConfiguration realmConfiguration) {
        final AtomicInteger atomicInteger = new AtomicInteger(0);
        RealmCache.invokeWithGlobalRefCount(realmConfiguration, new RealmCache.Callback() { // from class: io.realm.Realm.2
            @Override // io.realm.RealmCache.Callback
            public void onResult(int i) {
                atomicInteger.set(i);
            }
        });
        return atomicInteger.get();
    }

    public static Realm getInstance(RealmConfiguration realmConfiguration) {
        if (realmConfiguration != null) {
            return (Realm) RealmCache.createRealmOrGetFromCache(realmConfiguration, Realm.class);
        }
        throw new IllegalArgumentException(NULL_CONFIG_MSG);
    }

    public static RealmAsyncTask getInstanceAsync(RealmConfiguration realmConfiguration, Callback callback) {
        if (realmConfiguration != null) {
            return RealmCache.createRealmOrGetFromCacheAsync(realmConfiguration, callback, Realm.class);
        }
        throw new IllegalArgumentException(NULL_CONFIG_MSG);
    }

    public static int getLocalInstanceCount(RealmConfiguration realmConfiguration) {
        return RealmCache.getLocalThreadCount(realmConfiguration);
    }

    public static void init(Context context) {
        synchronized (Realm.class) {
            try {
                initializeRealm(context, "");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static void initializeRealm(Context context, String str) {
        if (BaseRealm.applicationContext == null) {
            if (context == null) {
                throw new IllegalArgumentException("Non-null context required.");
            }
            checkFilesDirAvailable(context);
            RealmCore.loadLibrary(context);
            setDefaultConfiguration(new RealmConfiguration.Builder(context).build());
            ObjectServerFacade.getSyncFacadeIfPossible().initialize(context, str);
            if (context.getApplicationContext() != null) {
                BaseRealm.applicationContext = context.getApplicationContext();
            } else {
                BaseRealm.applicationContext = context;
            }
            OsSharedRealm.initialize(new File(context.getFilesDir(), ".realm.temp"));
        }
    }

    public static void migrateRealm(RealmConfiguration realmConfiguration) throws FileNotFoundException {
        migrateRealm(realmConfiguration, null);
    }

    public static void migrateRealm(RealmConfiguration realmConfiguration, @Nullable RealmMigration realmMigration) throws FileNotFoundException {
        BaseRealm.migrateRealm(realmConfiguration, realmMigration);
    }

    public static void removeDefaultConfiguration() {
        synchronized (defaultConfigurationLock) {
            defaultConfiguration = null;
        }
    }

    public static void setDefaultConfiguration(RealmConfiguration realmConfiguration) {
        if (realmConfiguration != null) {
            synchronized (defaultConfigurationLock) {
                defaultConfiguration = realmConfiguration;
            }
            return;
        }
        throw new IllegalArgumentException(NULL_CONFIG_MSG);
    }

    public void addChangeListener(RealmChangeListener<Realm> realmChangeListener) {
        addListener(realmChangeListener);
    }

    @Override // io.realm.BaseRealm
    public Flowable<Realm> asFlowable() {
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

    public <E extends RealmModel> E copyFromRealm(E e) {
        return (E) copyFromRealm((Realm) e, Integer.MAX_VALUE);
    }

    public <E extends RealmModel> E copyFromRealm(E e, int i) {
        checkMaxDepth(i);
        checkValidObjectForDetach(e);
        return (E) createDetachedCopy(e, i, new HashMap());
    }

    public <E extends RealmModel> List<E> copyFromRealm(Iterable<E> iterable) {
        return copyFromRealm(iterable, Integer.MAX_VALUE);
    }

    public <E extends RealmModel> List<E> copyFromRealm(Iterable<E> iterable, int i) {
        checkMaxDepth(i);
        if (iterable == null) {
            return new ArrayList(0);
        }
        ArrayList arrayList = iterable instanceof Collection ? new ArrayList(((Collection) iterable).size()) : new ArrayList();
        HashMap hashMap = new HashMap();
        for (E e : iterable) {
            checkValidObjectForDetach(e);
            arrayList.add(createDetachedCopy(e, i, hashMap));
        }
        return arrayList;
    }

    public <E extends RealmModel> E copyToRealm(E e, ImportFlag... importFlagArr) {
        checkNotNullObject(e);
        return (E) copyOrUpdate(e, false, new HashMap(), Util.toSet(importFlagArr));
    }

    public <E extends RealmModel> List<E> copyToRealm(Iterable<E> iterable, ImportFlag... importFlagArr) {
        if (iterable == null) {
            return new ArrayList();
        }
        ArrayList arrayList = iterable instanceof Collection ? new ArrayList(((Collection) iterable).size()) : new ArrayList();
        HashMap hashMap = new HashMap();
        for (E e : iterable) {
            checkNotNullObject(e);
            arrayList.add(copyOrUpdate(e, false, hashMap, Util.toSet(importFlagArr)));
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <E extends RealmModel> E copyToRealmOrUpdate(E e, ImportFlag... importFlagArr) {
        checkNotNullObject(e);
        checkHasPrimaryKey(e.getClass());
        return (E) copyOrUpdate(e, true, new HashMap(), Util.toSet(importFlagArr));
    }

    public <E extends RealmModel> List<E> copyToRealmOrUpdate(Iterable<E> iterable, ImportFlag... importFlagArr) {
        if (iterable == null) {
            return new ArrayList(0);
        }
        ArrayList arrayList = iterable instanceof Collection ? new ArrayList(((Collection) iterable).size()) : new ArrayList();
        HashMap hashMap = new HashMap();
        Set<ImportFlag> set = Util.toSet(importFlagArr);
        for (E e : iterable) {
            checkNotNullObject(e);
            arrayList.add(copyOrUpdate(e, true, hashMap, set));
        }
        return arrayList;
    }

    public <E extends RealmModel> void createAllFromJson(Class<E> cls, InputStream inputStream) throws IOException {
        if (cls == null || inputStream == null) {
            return;
        }
        checkIfValid();
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, POBCommonConstants.URL_ENCODING));
        try {
            jsonReader.beginArray();
            while (jsonReader.hasNext()) {
                this.configuration.getSchemaMediator().createUsingJsonStream(cls, this, jsonReader);
            }
            jsonReader.endArray();
        } finally {
            jsonReader.close();
        }
    }

    public <E extends RealmModel> void createAllFromJson(Class<E> cls, String str) {
        if (cls == null || str == null || str.length() == 0) {
            return;
        }
        try {
            createAllFromJson(cls, new JSONArray(str));
        } catch (JSONException e) {
            throw new RealmException("Could not create JSON array from string", e);
        }
    }

    public <E extends RealmModel> void createAllFromJson(Class<E> cls, JSONArray jSONArray) {
        if (cls == null || jSONArray == null) {
            return;
        }
        checkIfValid();
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                this.configuration.getSchemaMediator().createOrUpdateUsingJsonObject(cls, this, jSONArray.getJSONObject(i), false);
            } catch (JSONException e) {
                throw new RealmException("Could not map JSON", e);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <E extends RealmModel> E createEmbeddedObject(Class<E> cls, RealmModel realmModel, String str) {
        checkIfValid();
        Util.checkNull(realmModel, "parentObject");
        Util.checkEmpty(str, "parentProperty");
        if (!RealmObject.isManaged(realmModel) || !RealmObject.isValid(realmModel)) {
            throw new IllegalArgumentException("Only valid, managed objects can be a parent to an embedded object.");
        }
        return (E) this.configuration.getSchemaMediator().newInstance(cls, this, getEmbeddedObjectRow(this.schema.getSchemaForClass(cls).getClassName(), (RealmObjectProxy) realmModel, str, this.schema, this.schema.getSchemaForClass((Class<? extends RealmModel>) realmModel.getClass())), this.schema.getColumnInfo(cls), true, Collections.EMPTY_LIST);
    }

    public <E extends RealmModel> E createObject(Class<E> cls) {
        checkIfValid();
        RealmProxyMediator schemaMediator = this.configuration.getSchemaMediator();
        if (!schemaMediator.isEmbedded(cls)) {
            return (E) createObjectInternal(cls, true, Collections.emptyList());
        }
        throw new IllegalArgumentException("This class is marked embedded. Use `createEmbeddedObject(class, parent, property)` instead:  " + schemaMediator.getSimpleClassName(cls));
    }

    public <E extends RealmModel> E createObject(Class<E> cls, @Nullable Object obj) {
        checkIfValid();
        RealmProxyMediator schemaMediator = this.configuration.getSchemaMediator();
        if (!schemaMediator.isEmbedded(cls)) {
            return (E) createObjectInternal(cls, obj, true, Collections.emptyList());
        }
        throw new IllegalArgumentException("This class is marked embedded. Use `createEmbeddedObject(class, parent, property)` instead:  " + schemaMediator.getSimpleClassName(cls));
    }

    @Nullable
    public <E extends RealmModel> E createObjectFromJson(Class<E> cls, InputStream inputStream) throws IOException {
        RealmModel realmModel;
        Scanner scanner = null;
        Scanner scanner2 = null;
        if (cls == null || inputStream == null) {
            return null;
        }
        checkIfValid();
        if (OsObjectStore.getPrimaryKeyForObject(this.sharedRealm, this.configuration.getSchemaMediator().getSimpleClassName(cls)) != null) {
            try {
                try {
                    Scanner fullStringScanner = getFullStringScanner(inputStream);
                    scanner2 = fullStringScanner;
                    scanner = fullStringScanner;
                    RealmModel createOrUpdateUsingJsonObject = this.configuration.getSchemaMediator().createOrUpdateUsingJsonObject(cls, this, new JSONObject(fullStringScanner.next()), false);
                    realmModel = createOrUpdateUsingJsonObject;
                    if (fullStringScanner != null) {
                        fullStringScanner.close();
                        realmModel = createOrUpdateUsingJsonObject;
                    }
                } catch (JSONException e) {
                    Scanner scanner3 = scanner;
                    scanner2 = scanner;
                    throw new RealmException("Failed to read JSON", e);
                }
            } finally {
                if (scanner2 != null) {
                    scanner2.close();
                }
            }
        } else {
            JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, POBCommonConstants.URL_ENCODING));
            try {
                RealmModel createUsingJsonStream = this.configuration.getSchemaMediator().createUsingJsonStream(cls, this, jsonReader);
            } finally {
                jsonReader.close();
            }
        }
        return (E) realmModel;
    }

    @Nullable
    public <E extends RealmModel> E createObjectFromJson(Class<E> cls, String str) {
        if (cls == null || str == null || str.length() == 0) {
            return null;
        }
        try {
            return (E) createObjectFromJson(cls, new JSONObject(str));
        } catch (JSONException e) {
            throw new RealmException("Could not create Json object from string", e);
        }
    }

    @Nullable
    public <E extends RealmModel> E createObjectFromJson(Class<E> cls, JSONObject jSONObject) {
        if (cls == null || jSONObject == null) {
            return null;
        }
        checkIfValid();
        try {
            return (E) this.configuration.getSchemaMediator().createOrUpdateUsingJsonObject(cls, this, jSONObject, false);
        } catch (JSONException e) {
            throw new RealmException("Could not map JSON", e);
        }
    }

    <E extends RealmModel> E createObjectInternal(Class<E> cls, @Nullable Object obj, boolean z, List<String> list) {
        return (E) this.configuration.getSchemaMediator().newInstance(cls, this, OsObject.createWithPrimaryKey(this.schema.getTable(cls), obj), this.schema.getColumnInfo(cls), z, list);
    }

    public <E extends RealmModel> E createObjectInternal(Class<E> cls, boolean z, List<String> list) {
        Table table = this.schema.getTable(cls);
        if (OsObjectStore.getPrimaryKeyForObject(this.sharedRealm, this.configuration.getSchemaMediator().getSimpleClassName(cls)) == null) {
            return (E) this.configuration.getSchemaMediator().newInstance(cls, this, OsObject.create(table), this.schema.getColumnInfo(cls), z, list);
        }
        throw new RealmException(String.format(Locale.US, "'%s' has a primary key, use 'createObject(Class<E>, Object)' instead.", table.getClassName()));
    }

    public <E extends RealmModel> void createOrUpdateAllFromJson(Class<E> cls, InputStream inputStream) {
        if (cls == null || inputStream == null) {
            return;
        }
        checkIfValid();
        checkHasPrimaryKey(cls);
        Scanner scanner = null;
        Scanner scanner2 = null;
        try {
            try {
                Scanner fullStringScanner = getFullStringScanner(inputStream);
                JSONArray jSONArray = new JSONArray(fullStringScanner.next());
                int i = 0;
                while (true) {
                    scanner2 = fullStringScanner;
                    scanner = fullStringScanner;
                    if (i >= jSONArray.length()) {
                        break;
                    }
                    this.configuration.getSchemaMediator().createOrUpdateUsingJsonObject(cls, this, jSONArray.getJSONObject(i), true);
                    i++;
                }
                if (fullStringScanner == null) {
                    return;
                }
                fullStringScanner.close();
            } catch (JSONException e) {
                Scanner scanner3 = scanner;
                Scanner scanner4 = scanner;
                throw new RealmException("Failed to read JSON", e);
            }
        } catch (Throwable th) {
            if (scanner2 != null) {
                scanner2.close();
            }
            throw th;
        }
    }

    public <E extends RealmModel> void createOrUpdateAllFromJson(Class<E> cls, String str) {
        if (cls == null || str == null || str.length() == 0) {
            return;
        }
        checkIfValid();
        checkHasPrimaryKey(cls);
        try {
            createOrUpdateAllFromJson(cls, new JSONArray(str));
        } catch (JSONException e) {
            throw new RealmException("Could not create JSON array from string", e);
        }
    }

    public <E extends RealmModel> void createOrUpdateAllFromJson(Class<E> cls, JSONArray jSONArray) {
        if (cls == null || jSONArray == null) {
            return;
        }
        checkIfValid();
        checkHasPrimaryKey(cls);
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                this.configuration.getSchemaMediator().createOrUpdateUsingJsonObject(cls, this, jSONArray.getJSONObject(i), true);
            } catch (JSONException e) {
                throw new RealmException("Could not map JSON", e);
            }
        }
    }

    public <E extends RealmModel> E createOrUpdateObjectFromJson(Class<E> cls, InputStream inputStream) {
        Scanner scanner = null;
        Scanner scanner2 = null;
        if (cls == null || inputStream == null) {
            return null;
        }
        checkIfValid();
        checkHasPrimaryKey(cls);
        try {
            try {
                Scanner fullStringScanner = getFullStringScanner(inputStream);
                scanner2 = fullStringScanner;
                scanner = fullStringScanner;
                E e = (E) createOrUpdateObjectFromJson(cls, new JSONObject(fullStringScanner.next()));
                if (fullStringScanner != null) {
                    fullStringScanner.close();
                }
                return e;
            } catch (JSONException e2) {
                Scanner scanner3 = scanner;
                scanner2 = scanner;
                throw new RealmException("Failed to read JSON", e2);
            }
        } catch (Throwable th) {
            if (scanner2 != null) {
                scanner2.close();
            }
            throw th;
        }
    }

    public <E extends RealmModel> E createOrUpdateObjectFromJson(Class<E> cls, String str) {
        if (cls == null || str == null || str.length() == 0) {
            return null;
        }
        checkIfValid();
        checkHasPrimaryKey(cls);
        try {
            return (E) createOrUpdateObjectFromJson(cls, new JSONObject(str));
        } catch (JSONException e) {
            throw new RealmException("Could not create Json object from string", e);
        }
    }

    public <E extends RealmModel> E createOrUpdateObjectFromJson(Class<E> cls, JSONObject jSONObject) {
        if (cls == null || jSONObject == null) {
            return null;
        }
        checkIfValid();
        checkHasPrimaryKey(cls);
        try {
            return (E) this.configuration.getSchemaMediator().createOrUpdateUsingJsonObject(cls, this, jSONObject, true);
        } catch (JSONException e) {
            throw new RealmException("Could not map JSON", e);
        }
    }

    public void delete(Class<? extends RealmModel> cls) {
        checkIfValid();
        this.schema.getTable(cls).clear();
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
            } catch (Throwable th) {
                if (isInTransaction()) {
                    cancelTransaction();
                } else {
                    RealmLog.warn("Could not cancel transaction, not currently in a transaction.", new Object[0]);
                }
                throw th;
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
            return new RealmAsyncTaskImpl(asyncTaskExecutor.submitTransaction(new RunnableC23801(getConfiguration(), transaction, canDeliverNotification, onSuccess, this.sharedRealm.realmNotifier, onError)), asyncTaskExecutor);
        }
        throw new IllegalArgumentException("Transaction should not be null");
    }

    @Override // io.realm.BaseRealm
    public Realm freeze() {
        return (Realm) RealmCache.createRealmOrGetFromCache(this.configuration, Realm.class, this.sharedRealm.getVersionID());
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

    public Table getTable(Class<? extends RealmModel> cls) {
        return this.schema.getTable(cls);
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ long getVersion() {
        return super.getVersion();
    }

    public void insert(RealmModel realmModel) {
        checkIfValidAndInTransaction();
        if (realmModel != null) {
            this.configuration.getSchemaMediator().insert(this, realmModel, new HashMap());
            return;
        }
        throw new IllegalArgumentException("Null object cannot be inserted into Realm.");
    }

    public void insert(Collection<? extends RealmModel> collection) {
        checkIfValidAndInTransaction();
        if (collection != null) {
            if (collection.isEmpty()) {
                return;
            }
            this.configuration.getSchemaMediator().insert(this, collection);
            return;
        }
        throw new IllegalArgumentException("Null objects cannot be inserted into Realm.");
    }

    public void insertOrUpdate(RealmModel realmModel) {
        checkIfValidAndInTransaction();
        if (realmModel != null) {
            this.configuration.getSchemaMediator().insertOrUpdate(this, realmModel, new HashMap());
            return;
        }
        throw new IllegalArgumentException("Null object cannot be inserted into Realm.");
    }

    public void insertOrUpdate(Collection<? extends RealmModel> collection) {
        checkIfValidAndInTransaction();
        if (collection != null) {
            if (collection.isEmpty()) {
                return;
            }
            this.configuration.getSchemaMediator().insertOrUpdate(this, collection);
            return;
        }
        throw new IllegalArgumentException("Null objects cannot be inserted into Realm.");
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
        for (RealmObjectSchema realmObjectSchema : this.schema.getAll()) {
            if (!realmObjectSchema.getClassName().startsWith("__") && realmObjectSchema.getTable().size() > 0) {
                return false;
            }
        }
        return true;
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

    public void removeChangeListener(RealmChangeListener<Realm> realmChangeListener) {
        removeListener(realmChangeListener);
    }

    @Override // io.realm.BaseRealm
    public /* bridge */ /* synthetic */ void setAutoRefresh(boolean z) {
        super.setAutoRefresh(z);
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

    public <E extends RealmModel> RealmQuery<E> where(Class<E> cls) {
        checkIfValid();
        return RealmQuery.createQuery(this, cls);
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
