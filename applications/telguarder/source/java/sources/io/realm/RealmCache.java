package io.realm;

import io.realm.BaseRealm;
import io.realm.exceptions.RealmFileException;
import io.realm.internal.ObjectServerFacade;
import io.realm.internal.OsObjectStore;
import io.realm.internal.OsRealmConfig;
import io.realm.internal.OsSharedRealm;
import io.realm.internal.RealmNotifier;
import io.realm.internal.Util;
import io.realm.internal.android.AndroidCapabilities;
import io.realm.internal.android.AndroidRealmNotifier;
import io.realm.internal.async.RealmAsyncTaskImpl;
import io.realm.internal.util.Pair;
import io.realm.log.RealmLog;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:io/realm/RealmCache.class */
public final class RealmCache {
    private static final String ASYNC_CALLBACK_NULL_MSG = "The callback cannot be null.";
    private static final String ASYNC_NOT_ALLOWED_MSG = "Realm instances cannot be loaded asynchronously on a non-looper thread.";
    private static final String DIFFERENT_KEY_MESSAGE = "Wrong key used to decrypt Realm.";
    private static final String WRONG_REALM_CLASS_MESSAGE = "The type of Realm class must be Realm or DynamicRealm.";
    private static final List<WeakReference<RealmCache>> cachesList = new ArrayList();
    private static final Collection<RealmCache> leakedCaches = new ConcurrentLinkedQueue();
    private RealmConfiguration configuration;
    private final String realmPath;
    private final Map<Pair<RealmCacheType, OsSharedRealm.VersionID>, ReferenceCounter> refAndCountMap = new HashMap();
    private final AtomicBoolean isLeaked = new AtomicBoolean(false);

    /* loaded from: classes2-dex2jar.jar:io/realm/RealmCache$Callback.class */
    public interface Callback {
        void onResult(int i);
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/RealmCache$Callback0.class */
    public interface Callback0 {
        void onCall();
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/RealmCache$CreateRealmRunnable.class */
    public static class CreateRealmRunnable<T extends BaseRealm> implements Runnable {
        private final BaseRealm.InstanceCallback<T> callback;
        private final CountDownLatch canReleaseBackgroundInstanceLatch = new CountDownLatch(1);
        private final RealmConfiguration configuration;
        private Future future;
        private final RealmNotifier notifier;
        private final Class<T> realmClass;

        CreateRealmRunnable(RealmNotifier realmNotifier, RealmConfiguration realmConfiguration, BaseRealm.InstanceCallback<T> instanceCallback, Class<T> cls) {
            this.configuration = realmConfiguration;
            this.realmClass = cls;
            this.callback = instanceCallback;
            this.notifier = realmNotifier;
        }

        /* JADX WARN: Not initialized variable reg: 8, insn: 0x00cc: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r8 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:51:0x00cc */
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
                        /* JADX WARN: Type inference failed for: r0v24, types: [io.realm.BaseRealm] */
                        @Override // java.lang.Runnable
                        public void run() {
                            Throwable th;
                            if (CreateRealmRunnable.this.future == null || CreateRealmRunnable.this.future.isCancelled()) {
                                CreateRealmRunnable.this.canReleaseBackgroundInstanceLatch.countDown();
                                return;
                            }
                            T t = null;
                            try {
                                ?? createRealmOrGetFromCache2 = RealmCache.createRealmOrGetFromCache(CreateRealmRunnable.this.configuration, CreateRealmRunnable.this.realmClass);
                                CreateRealmRunnable.this.canReleaseBackgroundInstanceLatch.countDown();
                                th = null;
                                t = createRealmOrGetFromCache2;
                            } catch (Throwable th2) {
                                th = th2;
                                CreateRealmRunnable.this.canReleaseBackgroundInstanceLatch.countDown();
                            }
                            if (t != null) {
                                CreateRealmRunnable.this.callback.onSuccess(t);
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
                if (baseRealm == null) {
                    return;
                }
                baseRealm2 = baseRealm;
            } catch (Throwable th2) {
                if (!ObjectServerFacade.getSyncFacadeIfPossible().wasDownloadInterrupted(th2)) {
                    BaseRealm baseRealm3 = baseRealm2;
                    RealmLog.error(th2, "`CreateRealmRunnable` failed.", new Object[0]);
                    BaseRealm baseRealm4 = baseRealm2;
                    BaseRealm baseRealm5 = baseRealm2;
                    BaseRealm baseRealm6 = baseRealm2;
                    BaseRealm baseRealm7 = baseRealm2;
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

    /* loaded from: classes2-dex2jar.jar:io/realm/RealmCache$GlobalReferenceCounter.class */
    public static class GlobalReferenceCounter extends ReferenceCounter {
        private BaseRealm cachedRealm;

        private GlobalReferenceCounter() {
            super();
        }

        @Override // io.realm.RealmCache.ReferenceCounter
        public void clearThreadLocalCache() {
            String path = this.cachedRealm.getPath();
            this.localCount.set(null);
            this.cachedRealm = null;
            if (this.globalCount.decrementAndGet() >= 0) {
                return;
            }
            throw new IllegalStateException("Global reference counter of Realm" + path + " not be negative.");
        }

        @Override // io.realm.RealmCache.ReferenceCounter
        BaseRealm getRealmInstance() {
            return this.cachedRealm;
        }

        @Override // io.realm.RealmCache.ReferenceCounter
        int getThreadLocalCount() {
            return this.globalCount.get();
        }

        @Override // io.realm.RealmCache.ReferenceCounter
        boolean hasInstanceAvailableForThread() {
            return this.cachedRealm != null;
        }

        @Override // io.realm.RealmCache.ReferenceCounter
        void onRealmCreated(BaseRealm baseRealm) {
            this.cachedRealm = baseRealm;
            this.localCount.set(0);
            this.globalCount.incrementAndGet();
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/RealmCache$RealmCacheType.class */
    public enum RealmCacheType {
        TYPED_REALM,
        DYNAMIC_REALM;

        static RealmCacheType valueOf(Class<? extends BaseRealm> cls) {
            if (cls == Realm.class) {
                return TYPED_REALM;
            }
            if (cls != DynamicRealm.class) {
                throw new IllegalArgumentException(RealmCache.WRONG_REALM_CLASS_MESSAGE);
            }
            return DYNAMIC_REALM;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/RealmCache$ReferenceCounter.class */
    public static abstract class ReferenceCounter {
        protected AtomicInteger globalCount;
        protected final ThreadLocal<Integer> localCount;

        private ReferenceCounter() {
            this.localCount = new ThreadLocal<>();
            this.globalCount = new AtomicInteger(0);
        }

        abstract void clearThreadLocalCache();

        public int getGlobalCount() {
            return this.globalCount.get();
        }

        abstract BaseRealm getRealmInstance();

        abstract int getThreadLocalCount();

        abstract boolean hasInstanceAvailableForThread();

        public void incrementThreadCount(int i) {
            Integer num = this.localCount.get();
            ThreadLocal<Integer> threadLocal = this.localCount;
            int i2 = i;
            if (num != null) {
                i2 = i + num.intValue();
            }
            threadLocal.set(Integer.valueOf(i2));
        }

        abstract void onRealmCreated(BaseRealm baseRealm);

        public void setThreadCount(int i) {
            this.localCount.set(Integer.valueOf(i));
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/RealmCache$ThreadConfinedReferenceCounter.class */
    public static class ThreadConfinedReferenceCounter extends ReferenceCounter {
        private final ThreadLocal<BaseRealm> localRealm;

        private ThreadConfinedReferenceCounter() {
            super();
            this.localRealm = new ThreadLocal<>();
        }

        @Override // io.realm.RealmCache.ReferenceCounter
        public void clearThreadLocalCache() {
            String path = this.localRealm.get().getPath();
            this.localCount.set(null);
            this.localRealm.set(null);
            if (this.globalCount.decrementAndGet() >= 0) {
                return;
            }
            throw new IllegalStateException("Global reference counter of Realm" + path + " can not be negative.");
        }

        @Override // io.realm.RealmCache.ReferenceCounter
        public BaseRealm getRealmInstance() {
            return this.localRealm.get();
        }

        @Override // io.realm.RealmCache.ReferenceCounter
        public int getThreadLocalCount() {
            Integer num = this.localCount.get();
            return num != null ? num.intValue() : 0;
        }

        @Override // io.realm.RealmCache.ReferenceCounter
        public boolean hasInstanceAvailableForThread() {
            return this.localRealm.get() != null;
        }

        @Override // io.realm.RealmCache.ReferenceCounter
        public void onRealmCreated(BaseRealm baseRealm) {
            this.localRealm.set(baseRealm);
            this.localCount.set(0);
            this.globalCount.incrementAndGet();
        }
    }

    private RealmCache(String str) {
        this.realmPath = str;
    }

    private static void copyAssetFileIfNeeded(final RealmConfiguration realmConfiguration) {
        File file = realmConfiguration.hasAssetFile() ? new File(realmConfiguration.getRealmDirectory(), realmConfiguration.getRealmFileName()) : null;
        final String syncServerCertificateAssetName = ObjectServerFacade.getFacade(realmConfiguration.isSyncConfiguration()).getSyncServerCertificateAssetName(realmConfiguration);
        final boolean z = !Util.isEmptyString(syncServerCertificateAssetName);
        if (file != null || z) {
            final File file2 = file;
            OsObjectStore.callWithLock(realmConfiguration, new Runnable() { // from class: io.realm.RealmCache.1
                @Override // java.lang.Runnable
                public void run() {
                    if (file2 != null) {
                        RealmCache.copyFileIfNeeded(realmConfiguration.getAssetFilePath(), file2);
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
        InputStream inputStream2;
        IOException e;
        FileOutputStream fileOutputStream2;
        IOException iOException;
        if (file.exists()) {
            return;
        }
        try {
            try {
                inputStream = BaseRealm.applicationContext.getAssets().open(str);
            } catch (Throwable th2) {
                th = th2;
                inputStream = inputStream2;
            }
        } catch (IOException e2) {
            e = e2;
            inputStream = null;
            fileOutputStream2 = null;
        } catch (Throwable th3) {
            th = th3;
            inputStream = null;
            fileOutputStream = null;
        }
        try {
            if (inputStream == null) {
                throw new RealmFileException(RealmFileException.Kind.ACCESS_ERROR, "Invalid input stream to the asset file: " + str);
            }
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
                IOException e3 = null;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                        e3 = null;
                    } catch (IOException e4) {
                        e3 = e4;
                    }
                }
                try {
                    fileOutputStream3.close();
                    iOException = e3;
                } catch (IOException e5) {
                    iOException = e3;
                    if (e3 == null) {
                        iOException = e5;
                    }
                }
                if (iOException != null) {
                    throw new RealmFileException(RealmFileException.Kind.ACCESS_ERROR, iOException);
                }
            } catch (IOException e6) {
                fileOutputStream2 = fileOutputStream3;
                e = e6;
                InputStream inputStream3 = inputStream;
                RealmFileException.Kind kind = RealmFileException.Kind.ACCESS_ERROR;
                InputStream inputStream4 = inputStream;
                InputStream inputStream5 = inputStream;
                StringBuilder sb = new StringBuilder();
                InputStream inputStream6 = inputStream;
                sb.append("Could not resolve the path to the asset file: ");
                InputStream inputStream7 = inputStream;
                sb.append(str);
                InputStream inputStream8 = inputStream;
                RealmFileException realmFileException = new RealmFileException(kind, sb.toString(), e);
                InputStream inputStream9 = inputStream;
                throw realmFileException;
            }
        } catch (IOException e7) {
            e = e7;
            fileOutputStream2 = null;
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream = null;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e8) {
                }
            }
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (IOException e9) {
                }
            }
            throw th;
        }
    }

    private <E extends BaseRealm> void createInstance(Class<E> cls, ReferenceCounter referenceCounter, OsSharedRealm.VersionID versionID) {
        Realm realm;
        if (cls == Realm.class) {
            realm = Realm.createInstance(this, versionID);
        } else if (cls != DynamicRealm.class) {
            throw new IllegalArgumentException(WRONG_REALM_CLASS_MESSAGE);
        } else {
            realm = DynamicRealm.createInstance(this, versionID);
        }
        referenceCounter.onRealmCreated(realm);
    }

    public static <E extends BaseRealm> E createRealmOrGetFromCache(RealmConfiguration realmConfiguration, Class<E> cls) {
        return (E) getCache(realmConfiguration.getPath(), true).doCreateRealmOrGetFromCache(realmConfiguration, cls, OsSharedRealm.VersionID.LIVE);
    }

    public static <E extends BaseRealm> E createRealmOrGetFromCache(RealmConfiguration realmConfiguration, Class<E> cls, OsSharedRealm.VersionID versionID) {
        return (E) getCache(realmConfiguration.getPath(), true).doCreateRealmOrGetFromCache(realmConfiguration, cls, versionID);
    }

    public static <T extends BaseRealm> RealmAsyncTask createRealmOrGetFromCacheAsync(RealmConfiguration realmConfiguration, BaseRealm.InstanceCallback<T> instanceCallback, Class<T> cls) {
        return getCache(realmConfiguration.getPath(), true).doCreateRealmOrGetFromCacheAsync(realmConfiguration, instanceCallback, cls);
    }

    private <E extends BaseRealm> E doCreateRealmOrGetFromCache(RealmConfiguration realmConfiguration, Class<E> cls, OsSharedRealm.VersionID versionID) {
        E e;
        synchronized (this) {
            ReferenceCounter refCounter = getRefCounter(cls, versionID);
            boolean z = getTotalGlobalRefCount() == 0;
            boolean realmExists = realmConfiguration.realmExists();
            if (z) {
                copyAssetFileIfNeeded(realmConfiguration);
                if (realmConfiguration.isSyncConfiguration() && (!realmExists)) {
                    ObjectServerFacade.getSyncFacadeIfPossible().wrapObjectStoreSessionIfRequired(new OsRealmConfig.Builder(realmConfiguration).build());
                    ObjectServerFacade.getSyncFacadeIfPossible().downloadInitialRemoteChanges(realmConfiguration);
                }
                this.configuration = realmConfiguration;
            } else {
                validateConfiguration(realmConfiguration);
            }
            if (!refCounter.hasInstanceAvailableForThread()) {
                createInstance(cls, refCounter, versionID);
            }
            refCounter.incrementThreadCount(1);
            e = (E) refCounter.getRealmInstance();
        }
        return e;
    }

    private <T extends BaseRealm> RealmAsyncTask doCreateRealmOrGetFromCacheAsync(RealmConfiguration realmConfiguration, BaseRealm.InstanceCallback<T> instanceCallback, Class<T> cls) {
        RealmAsyncTaskImpl realmAsyncTaskImpl;
        synchronized (this) {
            AndroidCapabilities androidCapabilities = new AndroidCapabilities();
            androidCapabilities.checkCanDeliverNotification(ASYNC_NOT_ALLOWED_MSG);
            if (instanceCallback == null) {
                throw new IllegalArgumentException(ASYNC_CALLBACK_NULL_MSG);
            }
            CreateRealmRunnable createRealmRunnable = new CreateRealmRunnable(new AndroidRealmNotifier(null, androidCapabilities), realmConfiguration, instanceCallback, cls);
            Future<?> submitTransaction = BaseRealm.asyncTaskExecutor.submitTransaction(createRealmRunnable);
            createRealmRunnable.setFuture(submitTransaction);
            ObjectServerFacade.getSyncFacadeIfPossible().createNativeSyncSession(realmConfiguration);
            realmAsyncTaskImpl = new RealmAsyncTaskImpl(submitTransaction, BaseRealm.asyncTaskExecutor);
        }
        return realmAsyncTaskImpl;
    }

    private void doInvokeWithGlobalRefCount(Callback callback) {
        synchronized (this) {
            callback.onResult(getTotalGlobalRefCount());
        }
    }

    private static RealmCache getCache(String str, boolean z) {
        RealmCache realmCache;
        List<WeakReference<RealmCache>> list = cachesList;
        synchronized (list) {
            Iterator<WeakReference<RealmCache>> it = list.iterator();
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
        int i = 0;
        RealmCache cache = getCache(realmConfiguration.getPath(), false);
        if (cache == null) {
            return 0;
        }
        for (ReferenceCounter referenceCounter : cache.refAndCountMap.values()) {
            i += referenceCounter.getThreadLocalCount();
        }
        return i;
    }

    private <E extends BaseRealm> ReferenceCounter getRefCounter(Class<E> cls, OsSharedRealm.VersionID versionID) {
        Pair<RealmCacheType, OsSharedRealm.VersionID> pair = new Pair<>(RealmCacheType.valueOf(cls), versionID);
        ReferenceCounter referenceCounter = this.refAndCountMap.get(pair);
        ThreadConfinedReferenceCounter threadConfinedReferenceCounter = referenceCounter;
        if (referenceCounter == null) {
            threadConfinedReferenceCounter = versionID.equals(OsSharedRealm.VersionID.LIVE) ? new ThreadConfinedReferenceCounter() : new GlobalReferenceCounter();
            this.refAndCountMap.put(pair, threadConfinedReferenceCounter);
        }
        return threadConfinedReferenceCounter;
    }

    private int getTotalGlobalRefCount() {
        Iterator<ReferenceCounter> it = this.refAndCountMap.values().iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                i = i2 + it.next().getGlobalCount();
            } else {
                return i2;
            }
        }
    }

    private int getTotalLiveRealmGlobalRefCount() {
        int i = 0;
        for (ReferenceCounter referenceCounter : this.refAndCountMap.values()) {
            if (referenceCounter instanceof ThreadConfinedReferenceCounter) {
                i += referenceCounter.getGlobalCount();
            }
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

    private void validateConfiguration(RealmConfiguration realmConfiguration) {
        if (this.configuration.equals(realmConfiguration)) {
            return;
        }
        if (!Arrays.equals(this.configuration.getEncryptionKey(), realmConfiguration.getEncryptionKey())) {
            throw new IllegalArgumentException(DIFFERENT_KEY_MESSAGE);
        }
        RealmMigration migration = realmConfiguration.getMigration();
        RealmMigration migration2 = this.configuration.getMigration();
        if (migration2 != null && migration != null && migration2.getClass().equals(migration.getClass()) && !migration.equals(migration2)) {
            throw new IllegalArgumentException("Configurations cannot be different if used to open the same file. The most likely cause is that equals() and hashCode() are not overridden in the migration class: " + realmConfiguration.getMigration().getClass().getCanonicalName());
        }
        throw new IllegalArgumentException("Configurations cannot be different if used to open the same file. \nCached configuration: \n" + this.configuration + "\n\nNew configuration: \n" + realmConfiguration);
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
        BaseRealm realmInstance;
        synchronized (this) {
            String path = baseRealm.getPath();
            ReferenceCounter refCounter = getRefCounter(baseRealm.getClass(), baseRealm.isFrozen() ? baseRealm.sharedRealm.getVersionID() : OsSharedRealm.VersionID.LIVE);
            int threadLocalCount = refCounter.getThreadLocalCount();
            if (threadLocalCount <= 0) {
                RealmLog.warn("%s has been closed already. refCount is %s", path, Integer.valueOf(threadLocalCount));
                return;
            }
            int i = threadLocalCount - 1;
            if (i == 0) {
                refCounter.clearThreadLocalCache();
                baseRealm.doClose();
                if (getTotalLiveRealmGlobalRefCount() == 0) {
                    this.configuration = null;
                    for (ReferenceCounter referenceCounter : this.refAndCountMap.values()) {
                        if ((referenceCounter instanceof GlobalReferenceCounter) && (realmInstance = referenceCounter.getRealmInstance()) != null) {
                            while (!realmInstance.isClosed()) {
                                realmInstance.close();
                            }
                        }
                    }
                    ObjectServerFacade.getFacade(baseRealm.getConfiguration().isSyncConfiguration()).realmClosed(baseRealm.getConfiguration());
                }
            } else {
                refCounter.setThreadCount(i);
            }
        }
    }
}
