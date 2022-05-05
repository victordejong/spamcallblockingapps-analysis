package io.realm;

import android.os.SystemClock;
import io.realm.BaseRealm;
import io.realm.exceptions.RealmFileException;
import io.realm.internal.ObjectServerFacade;
import io.realm.internal.OsObjectStore;
import io.realm.internal.OsSharedRealm;
import io.realm.internal.RealmNotifier;
import io.realm.internal.Table;
import io.realm.internal.Util;
import io.realm.internal.android.AndroidCapabilities;
import io.realm.internal.android.AndroidRealmNotifier;
import io.realm.internal.async.RealmAsyncTaskImpl;
import io.realm.log.RealmLog;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3-dex2jar.jar:io/realm/RealmCache.class */
public final class RealmCache {
    public static final String ASYNC_CALLBACK_NULL_MSG = "The callback cannot be null.";
    public static final String ASYNC_NOT_ALLOWED_MSG = "Realm instances cannot be loaded asynchronously on a non-looper thread.";
    public static final String DIFFERENT_KEY_MESSAGE = "Wrong key used to decrypt Realm.";
    public static final String WRONG_REALM_CLASS_MESSAGE = "The type of Realm class must be Realm or DynamicRealm.";
    public static final List<WeakReference<RealmCache>> cachesList = new ArrayList();
    public static final Collection<RealmCache> leakedCaches = new ConcurrentLinkedQueue();
    public RealmConfiguration configuration;
    public final String realmPath;
    public final AtomicBoolean isLeaked = new AtomicBoolean(false);
    public final EnumMap<RealmCacheType, RefAndCount> refAndCountMap = new EnumMap<>(RealmCacheType.class);

    /* loaded from: classes3-dex2jar.jar:io/realm/RealmCache$Callback.class */
    public interface Callback {
        void onResult(int i);
    }

    /* loaded from: classes3-dex2jar.jar:io/realm/RealmCache$Callback0.class */
    public interface Callback0 {
        void onCall();
    }

    /* loaded from: classes3-dex2jar.jar:io/realm/RealmCache$CreateRealmRunnable.class */
    public static class CreateRealmRunnable<T extends BaseRealm> implements Runnable {
        public final BaseRealm.InstanceCallback<T> callback;
        public final CountDownLatch canReleaseBackgroundInstanceLatch = new CountDownLatch(1);
        public final RealmConfiguration configuration;
        public Future future;
        public final RealmNotifier notifier;
        public final Class<T> realmClass;

        public CreateRealmRunnable(RealmNotifier realmNotifier, RealmConfiguration realmConfiguration, BaseRealm.InstanceCallback<T> instanceCallback, Class<T> cls) {
            this.configuration = realmConfiguration;
            this.realmClass = cls;
            this.callback = instanceCallback;
            this.notifier = realmNotifier;
        }

        /* JADX WARN: Not initialized variable reg: 8, insn: 0x00cb: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r8 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:51:0x00cb */
        @Override // java.lang.Runnable
        public void run() {
            AutoCloseable autoCloseable;
            BaseRealm createRealmOrGetFromCache;
            BaseRealm baseRealm = null;
            BaseRealm baseRealm2 = null;
            try {
                try {
                    createRealmOrGetFromCache = RealmCache.createRealmOrGetFromCache(this.configuration, this.realmClass);
                    if (!this.notifier.post(new Runnable() { // from class: io.realm.RealmCache.CreateRealmRunnable.1
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // java.lang.Runnable
                        public void run() {
                            Throwable th;
                            if (CreateRealmRunnable.this.future == null || CreateRealmRunnable.this.future.isCancelled()) {
                                CreateRealmRunnable.this.canReleaseBackgroundInstanceLatch.countDown();
                                return;
                            }
                            BaseRealm baseRealm3 = null;
                            try {
                                baseRealm3 = RealmCache.createRealmOrGetFromCache(CreateRealmRunnable.this.configuration, CreateRealmRunnable.this.realmClass);
                                CreateRealmRunnable.this.canReleaseBackgroundInstanceLatch.countDown();
                                th = null;
                            } catch (Throwable th2) {
                                th = th2;
                                CreateRealmRunnable.this.canReleaseBackgroundInstanceLatch.countDown();
                            }
                            if (baseRealm3 != null) {
                                CreateRealmRunnable.this.callback.onSuccess(baseRealm3);
                            } else {
                                CreateRealmRunnable.this.callback.onError(th);
                            }
                        }
                    })) {
                        this.canReleaseBackgroundInstanceLatch.countDown();
                    }
                    if (!this.canReleaseBackgroundInstanceLatch.await(2L, TimeUnit.SECONDS)) {
                        baseRealm2 = createRealmOrGetFromCache;
                        baseRealm = createRealmOrGetFromCache;
                        RealmLog.warn("Timeout for creating Realm instance in foreground thread in `CreateRealmRunnable` ", new Object[0]);
                    }
                } catch (Throwable th) {
                    if (autoCloseable != null) {
                        autoCloseable.close();
                    }
                    throw th;
                }
            } catch (InterruptedException e) {
                RealmLog.warn(e, "`CreateRealmRunnable` has been interrupted.", new Object[0]);
                if (baseRealm != null) {
                    baseRealm2 = baseRealm;
                } else {
                    return;
                }
            } catch (Throwable th2) {
                if (!ObjectServerFacade.getSyncFacadeIfPossible().wasDownloadInterrupted(th2)) {
                    RealmLog.error(th2, "`CreateRealmRunnable` failed.", new Object[0]);
                    this.notifier.post(new Runnable() { // from class: io.realm.RealmCache.CreateRealmRunnable.2
                        @Override // java.lang.Runnable
                        public void run() {
                            CreateRealmRunnable.this.callback.onError(th2);
                        }
                    });
                }
                if (baseRealm2 == null) {
                    return;
                }
            }
            if (createRealmOrGetFromCache != null) {
                baseRealm2 = createRealmOrGetFromCache;
                baseRealm2.close();
            }
        }

        public void setFuture(Future future) {
            this.future = future;
        }
    }

    /* loaded from: classes3-dex2jar.jar:io/realm/RealmCache$RealmCacheType.class */
    public enum RealmCacheType {
        TYPED_REALM,
        DYNAMIC_REALM;

        public static RealmCacheType valueOf(Class<? extends BaseRealm> cls) {
            if (cls == Realm.class) {
                return TYPED_REALM;
            }
            if (cls == DynamicRealm.class) {
                return DYNAMIC_REALM;
            }
            throw new IllegalArgumentException(RealmCache.WRONG_REALM_CLASS_MESSAGE);
        }
    }

    /* loaded from: classes3-dex2jar.jar:io/realm/RealmCache$RefAndCount.class */
    public static class RefAndCount {
        public int globalCount;
        public final ThreadLocal<Integer> localCount;
        public final ThreadLocal<BaseRealm> localRealm;

        public RefAndCount() {
            this.localRealm = new ThreadLocal<>();
            this.localCount = new ThreadLocal<>();
            this.globalCount = 0;
        }

        public static /* synthetic */ int access$808(RefAndCount refAndCount) {
            int i = refAndCount.globalCount;
            refAndCount.globalCount = i + 1;
            return i;
        }

        public static /* synthetic */ int access$810(RefAndCount refAndCount) {
            int i = refAndCount.globalCount;
            refAndCount.globalCount = i - 1;
            return i;
        }
    }

    public RealmCache(String str) {
        this.realmPath = str;
        for (RealmCacheType realmCacheType : RealmCacheType.values()) {
            this.refAndCountMap.put((EnumMap<RealmCacheType, RefAndCount>) realmCacheType, (RealmCacheType) new RefAndCount());
        }
    }

    public static void copyAssetFileIfNeeded(final RealmConfiguration realmConfiguration) {
        final File file = realmConfiguration.hasAssetFile() ? new File(realmConfiguration.getRealmDirectory(), realmConfiguration.getRealmFileName()) : null;
        final String syncServerCertificateAssetName = ObjectServerFacade.getFacade(realmConfiguration.isSyncConfiguration()).getSyncServerCertificateAssetName(realmConfiguration);
        final boolean z = !Util.isEmptyString(syncServerCertificateAssetName);
        if (file != null || z) {
            OsObjectStore.callWithLock(realmConfiguration, new Runnable() { // from class: io.realm.RealmCache.1
                @Override // java.lang.Runnable
                public void run() {
                    if (file != null) {
                        RealmCache.copyFileIfNeeded(realmConfiguration.getAssetFilePath(), file);
                    }
                    if (z) {
                        RealmCache.copyFileIfNeeded(syncServerCertificateAssetName, new File(ObjectServerFacade.getFacade(realmConfiguration.isSyncConfiguration()).getSyncServerCertificateFilePath(realmConfiguration)));
                    }
                }
            });
        }
    }

    /* JADX WARN: Not initialized variable reg: 10, insn: 0x0147: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r10 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:64:0x0147 */
    public static void copyFileIfNeeded(String str, File file) {
        FileOutputStream fileOutputStream;
        InputStream inputStream;
        Throwable th;
        IOException e;
        FileOutputStream fileOutputStream2;
        IOException e2;
        if (!file.exists()) {
            try {
                try {
                    inputStream = BaseRealm.applicationContext.getAssets().open(str);
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e3) {
                e = e3;
                inputStream = null;
                fileOutputStream2 = null;
            } catch (Throwable th3) {
                th = th3;
                inputStream = null;
                fileOutputStream = null;
            }
            try {
                if (inputStream != null) {
                    FileOutputStream fileOutputStream3 = new FileOutputStream(file);
                    try {
                        byte[] bArr = new byte[4096];
                        while (true) {
                            int read = inputStream.read(bArr);
                            if (read <= -1) {
                                break;
                            }
                            fileOutputStream3.write(bArr, 0, read);
                        }
                        IOException e4 = null;
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                                e4 = null;
                            } catch (IOException e5) {
                                e4 = e5;
                            }
                        }
                        try {
                            fileOutputStream3.close();
                            e2 = e4;
                        } catch (IOException e6) {
                            e2 = e6;
                            e2 = e4;
                            if (e4 == null) {
                            }
                        }
                        if (e2 != null) {
                            throw new RealmFileException(RealmFileException.Kind.ACCESS_ERROR, e2);
                        }
                    } catch (IOException e7) {
                        e = e7;
                        fileOutputStream2 = fileOutputStream3;
                        RealmFileException.Kind kind = RealmFileException.Kind.ACCESS_ERROR;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Could not resolve the path to the asset file: ");
                        sb.append(str);
                        throw new RealmFileException(kind, sb.toString(), e);
                    }
                } else {
                    throw new RealmFileException(RealmFileException.Kind.ACCESS_ERROR, "Invalid input stream to the asset file: " + str);
                }
            } catch (IOException e8) {
                e = e8;
                fileOutputStream2 = null;
            } catch (Throwable th4) {
                th = th4;
                fileOutputStream = null;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e9) {
                    }
                }
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e10) {
                    }
                }
                throw th;
            }
        }
    }

    public static <E extends BaseRealm> E createRealmOrGetFromCache(RealmConfiguration realmConfiguration, Class<E> cls) {
        return (E) getCache(realmConfiguration.getPath(), true).doCreateRealmOrGetFromCache(realmConfiguration, cls);
    }

    public static <T extends BaseRealm> RealmAsyncTask createRealmOrGetFromCacheAsync(RealmConfiguration realmConfiguration, BaseRealm.InstanceCallback<T> instanceCallback, Class<T> cls) {
        return getCache(realmConfiguration.getPath(), true).doCreateRealmOrGetFromCacheAsync(realmConfiguration, instanceCallback, cls);
    }

    public static void deleteRealmFileOnDisk(RealmConfiguration realmConfiguration) {
        int i = 5;
        boolean z = false;
        while (i > 0 && !z) {
            try {
                z = BaseRealm.deleteRealm(realmConfiguration);
            } catch (IllegalStateException e) {
                int i2 = i - 1;
                RealmLog.warn("Sync server still holds a reference to the Realm. It cannot be deleted. Retrying " + i2 + " more times", new Object[0]);
                i = i2;
                z = z;
                if (i2 > 0) {
                    SystemClock.sleep(15L);
                    i = i2;
                    z = z;
                }
            }
        }
        if (!z) {
            RealmLog.error("Failed to delete the underlying Realm file: " + realmConfiguration.getPath(), new Object[0]);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <E extends BaseRealm> E doCreateRealmOrGetFromCache(RealmConfiguration realmConfiguration, Class<E> cls) {
        E e;
        DynamicRealm dynamicRealm;
        OsSharedRealm osSharedRealm;
        synchronized (this) {
            RefAndCount refAndCount = this.refAndCountMap.get(RealmCacheType.valueOf(cls));
            boolean z = getTotalGlobalRefCount() == 0;
            boolean z2 = !realmConfiguration.realmExists();
            if (z) {
                copyAssetFileIfNeeded(realmConfiguration);
                AutoCloseable autoCloseable = null;
                try {
                    if (realmConfiguration.isSyncConfiguration()) {
                        osSharedRealm = null;
                        if (z2) {
                            osSharedRealm = OsSharedRealm.getInstance(realmConfiguration);
                            ObjectServerFacade.getSyncFacadeIfPossible().downloadInitialRemoteChanges(realmConfiguration);
                        }
                    } else {
                        osSharedRealm = null;
                        if (!z2) {
                            OsSharedRealm instance = OsSharedRealm.getInstance(realmConfiguration);
                            Table.migratePrimaryKeyTableIfNeeded(instance);
                            osSharedRealm = instance;
                        }
                    }
                    if (osSharedRealm != null) {
                        osSharedRealm.close();
                    }
                    this.configuration = realmConfiguration;
                } catch (Throwable th) {
                    if (0 != 0) {
                        autoCloseable.close();
                    }
                    throw th;
                }
            } else {
                validateConfiguration(realmConfiguration);
            }
            if (refAndCount.localRealm.get() == null) {
                if (cls == Realm.class) {
                    Realm createInstance = Realm.createInstance(this);
                    synchronizeInitialSubscriptionsIfNeeded(createInstance, z2);
                    dynamicRealm = createInstance;
                } else if (cls == DynamicRealm.class) {
                    dynamicRealm = DynamicRealm.createInstance(this);
                } else {
                    throw new IllegalArgumentException(WRONG_REALM_CLASS_MESSAGE);
                }
                refAndCount.localRealm.set(dynamicRealm);
                refAndCount.localCount.set(0);
                RefAndCount.access$808(refAndCount);
            }
            refAndCount.localCount.set(Integer.valueOf(((Integer) refAndCount.localCount.get()).intValue() + 1));
            e = (E) ((BaseRealm) refAndCount.localRealm.get());
        }
        return e;
    }

    private <T extends BaseRealm> RealmAsyncTask doCreateRealmOrGetFromCacheAsync(RealmConfiguration realmConfiguration, BaseRealm.InstanceCallback<T> instanceCallback, Class<T> cls) {
        RealmAsyncTaskImpl realmAsyncTaskImpl;
        synchronized (this) {
            AndroidCapabilities androidCapabilities = new AndroidCapabilities();
            androidCapabilities.checkCanDeliverNotification(ASYNC_NOT_ALLOWED_MSG);
            if (instanceCallback != null) {
                CreateRealmRunnable createRealmRunnable = new CreateRealmRunnable(new AndroidRealmNotifier(null, androidCapabilities), realmConfiguration, instanceCallback, cls);
                Future<?> submitTransaction = BaseRealm.asyncTaskExecutor.submitTransaction(createRealmRunnable);
                createRealmRunnable.setFuture(submitTransaction);
                realmAsyncTaskImpl = new RealmAsyncTaskImpl(submitTransaction, BaseRealm.asyncTaskExecutor);
            } else {
                throw new IllegalArgumentException(ASYNC_CALLBACK_NULL_MSG);
            }
        }
        return realmAsyncTaskImpl;
    }

    private void doInvokeWithGlobalRefCount(Callback callback) {
        synchronized (this) {
            callback.onResult(getTotalGlobalRefCount());
        }
    }

    public static RealmCache getCache(String str, boolean z) {
        RealmCache realmCache;
        synchronized (cachesList) {
            Iterator<WeakReference<RealmCache>> it = cachesList.iterator();
            RealmCache realmCache2 = null;
            while (it.hasNext()) {
                RealmCache realmCache3 = it.next().get();
                if (realmCache3 == null) {
                    it.remove();
                } else if (realmCache3.realmPath.equals(str)) {
                    realmCache2 = realmCache3;
                }
            }
            realmCache = realmCache2;
            if (realmCache2 == null) {
                realmCache = realmCache2;
                if (z) {
                    realmCache = new RealmCache(str);
                    cachesList.add(new WeakReference<>(realmCache));
                }
            }
        }
        return realmCache;
    }

    public static int getLocalThreadCount(RealmConfiguration realmConfiguration) {
        RealmCache cache = getCache(realmConfiguration.getPath(), false);
        if (cache == null) {
            return 0;
        }
        int i = 0;
        for (RefAndCount refAndCount : cache.refAndCountMap.values()) {
            Integer num = (Integer) refAndCount.localCount.get();
            i += num != null ? num.intValue() : 0;
        }
        return i;
    }

    private int getTotalGlobalRefCount() {
        int i = 0;
        for (RefAndCount refAndCount : this.refAndCountMap.values()) {
            i += refAndCount.globalCount;
        }
        return i;
    }

    public static void invokeWithGlobalRefCount(RealmConfiguration realmConfiguration, Callback callback) {
        synchronized (cachesList) {
            RealmCache cache = getCache(realmConfiguration.getPath(), false);
            if (cache == null) {
                callback.onResult(0);
            } else {
                cache.doInvokeWithGlobalRefCount(callback);
            }
        }
    }

    public static void synchronizeInitialSubscriptionsIfNeeded(Realm realm, boolean z) {
        if (z) {
            try {
                ObjectServerFacade.getSyncFacadeIfPossible().downloadInitialSubscriptions(realm);
            } catch (Throwable th) {
                realm.close();
                deleteRealmFileOnDisk(realm.getConfiguration());
            }
        }
    }

    private void validateConfiguration(RealmConfiguration realmConfiguration) {
        if (!this.configuration.equals(realmConfiguration)) {
            if (Arrays.equals(this.configuration.getEncryptionKey(), realmConfiguration.getEncryptionKey())) {
                RealmMigration migration = realmConfiguration.getMigration();
                RealmMigration migration2 = this.configuration.getMigration();
                if (migration2 == null || migration == null || !migration2.getClass().equals(migration.getClass()) || migration.equals(migration2)) {
                    throw new IllegalArgumentException("Configurations cannot be different if used to open the same file. \nCached configuration: \n" + this.configuration + "\n\nNew configuration: \n" + realmConfiguration);
                }
                throw new IllegalArgumentException("Configurations cannot be different if used to open the same file. The most likely cause is that equals() and hashCode() are not overridden in the migration class: " + realmConfiguration.getMigration().getClass().getCanonicalName());
            }
            throw new IllegalArgumentException(DIFFERENT_KEY_MESSAGE);
        }
    }

    public RealmConfiguration getConfiguration() {
        return this.configuration;
    }

    public void invokeWithLock(Callback0 callback0) {
        synchronized (this) {
            callback0.onCall();
        }
    }

    public void leak() {
        if (!this.isLeaked.getAndSet(true)) {
            leakedCaches.add(this);
        }
    }

    public void release(BaseRealm baseRealm) {
        synchronized (this) {
            String path = baseRealm.getPath();
            RefAndCount refAndCount = this.refAndCountMap.get(RealmCacheType.valueOf((Class<? extends BaseRealm>) baseRealm.getClass()));
            Integer num = (Integer) refAndCount.localCount.get();
            Integer num2 = num;
            if (num == null) {
                num2 = 0;
            }
            if (num2.intValue() <= 0) {
                RealmLog.warn("%s has been closed already. refCount is %s", path, num2);
                return;
            }
            Integer valueOf = Integer.valueOf(num2.intValue() - 1);
            if (valueOf.intValue() == 0) {
                refAndCount.localCount.set(null);
                refAndCount.localRealm.set(null);
                RefAndCount.access$810(refAndCount);
                if (refAndCount.globalCount >= 0) {
                    baseRealm.doClose();
                    if (getTotalGlobalRefCount() == 0) {
                        this.configuration = null;
                        ObjectServerFacade.getFacade(baseRealm.getConfiguration().isSyncConfiguration()).realmClosed(baseRealm.getConfiguration());
                    }
                } else {
                    throw new IllegalStateException("Global reference counter of Realm" + path + " got corrupted.");
                }
            } else {
                refAndCount.localCount.set(valueOf);
            }
        }
    }
}
