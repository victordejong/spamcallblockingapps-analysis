package io.realm;

import android.os.SystemClock;
import io.realm.BaseRealm;
import io.realm.exceptions.RealmFileException;
import io.realm.internal.ObjectServerFacade;
import io.realm.internal.OsObjectStore;
import io.realm.internal.RealmNotifier;
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
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
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
    private final AtomicBoolean isLeaked = new AtomicBoolean(false);
    private final EnumMap<RealmCacheType, RefAndCount> refAndCountMap = new EnumMap<>(RealmCacheType.class);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/RealmCache$Callback.class */
    public interface Callback {
        void onResult(int i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/RealmCache$Callback0.class */
    public interface Callback0 {
        void onCall();
    }

    /* JADX INFO: Access modifiers changed from: private */
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

        /* JADX WARN: Not initialized variable reg: 7, insn: 0x00c5: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r7 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:54:0x00c5 */
        /* JADX WARN: Removed duplicated region for block: B:57:0x00cd  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 211
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.realm.RealmCache.CreateRealmRunnable.run():void");
        }

        public void setFuture(Future future) {
            this.future = future;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:io/realm/RealmCache$RealmCacheType.class */
    public enum RealmCacheType {
        TYPED_REALM,
        DYNAMIC_REALM;

        static RealmCacheType valueOf(Class<? extends BaseRealm> cls) {
            if (cls == Realm.class) {
                return TYPED_REALM;
            }
            if (cls == DynamicRealm.class) {
                return DYNAMIC_REALM;
            }
            throw new IllegalArgumentException(RealmCache.WRONG_REALM_CLASS_MESSAGE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:io/realm/RealmCache$RefAndCount.class */
    public static class RefAndCount {
        private int globalCount;
        private final ThreadLocal<Integer> localCount;
        private final ThreadLocal<BaseRealm> localRealm;

        private RefAndCount() {
            this.localRealm = new ThreadLocal<>();
            this.localCount = new ThreadLocal<>();
            this.globalCount = 0;
        }

        static /* synthetic */ int access$808(RefAndCount refAndCount) {
            int i = refAndCount.globalCount;
            refAndCount.globalCount = i + 1;
            return i;
        }

        static /* synthetic */ int access$810(RefAndCount refAndCount) {
            int i = refAndCount.globalCount;
            refAndCount.globalCount = i - 1;
            return i;
        }
    }

    private RealmCache(String str) {
        this.realmPath = str;
        for (RealmCacheType realmCacheType : RealmCacheType.values()) {
            this.refAndCountMap.put((EnumMap<RealmCacheType, RefAndCount>) realmCacheType, (RealmCacheType) new RefAndCount());
        }
    }

    private static void copyAssetFileIfNeeded(final RealmConfiguration realmConfiguration) {
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

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Not initialized variable reg: 9, insn: 0x0141: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r9 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:65:0x0141 */
    public static void copyFileIfNeeded(String str, File file) {
        FileOutputStream fileOutputStream;
        InputStream inputStream;
        Throwable th;
        IOException e;
        FileOutputStream fileOutputStream2;
        if (!file.exists()) {
            try {
                try {
                    inputStream = BaseRealm.applicationContext.getAssets().open(str);
                } catch (Throwable th2) {
                    th = th2;
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
                fileOutputStream2 = new FileOutputStream(file);
                try {
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int read = inputStream.read(bArr);
                        if (read <= -1) {
                            break;
                        }
                        fileOutputStream2.write(bArr, 0, read);
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
                    IOException e5 = e3;
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                            e5 = e3;
                        } catch (IOException e6) {
                            e5 = e6;
                            e5 = e3;
                            if (e3 == null) {
                            }
                        }
                    }
                    if (e5 != null) {
                        throw new RealmFileException(RealmFileException.Kind.ACCESS_ERROR, e5);
                    }
                } catch (IOException e7) {
                    e = e7;
                    RealmFileException.Kind kind = RealmFileException.Kind.ACCESS_ERROR;
                    StringBuilder sb = new StringBuilder();
                    sb.append("Could not resolve the path to the asset file: ");
                    sb.append(str);
                    throw new RealmFileException(kind, sb.toString(), e);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E extends BaseRealm> E createRealmOrGetFromCache(RealmConfiguration realmConfiguration, Class<E> cls) {
        return (E) getCache(realmConfiguration.getPath(), true).doCreateRealmOrGetFromCache(realmConfiguration, cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends BaseRealm> RealmAsyncTask createRealmOrGetFromCacheAsync(RealmConfiguration realmConfiguration, BaseRealm.InstanceCallback<T> instanceCallback, Class<T> cls) {
        return getCache(realmConfiguration.getPath(), true).doCreateRealmOrGetFromCacheAsync(realmConfiguration, instanceCallback, cls);
    }

    private static void deleteRealmFileOnDisk(RealmConfiguration realmConfiguration) {
        int i = 5;
        boolean z = false;
        while (i > 0 && !z) {
            try {
                z = BaseRealm.deleteRealm(realmConfiguration);
            } catch (IllegalStateException e) {
                int i2 = i - 1;
                RealmLog.warn("Sync server still holds a reference to the Realm. It cannot be deleted. Retrying " + i2 + " more times", new Object[0]);
                i = i2;
                if (i2 > 0) {
                    SystemClock.sleep(15L);
                    i = i2;
                }
            }
        }
        if (!z) {
            RealmLog.error("Failed to delete the underlying Realm file: " + realmConfiguration.getPath(), new Object[0]);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0093 A[Catch: all -> 0x0132, TRY_ENTER, TryCatch #1 {, blocks: (B:4:0x0002, B:9:0x0021, B:11:0x002e, B:31:0x0093, B:33:0x0099, B:38:0x00a8, B:40:0x00ad, B:42:0x00af, B:44:0x00b4, B:49:0x00c4, B:52:0x00dc, B:54:0x00e2, B:55:0x00fc, B:56:0x0107, B:58:0x0109), top: B:66:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private <E extends io.realm.BaseRealm> E doCreateRealmOrGetFromCache(io.realm.RealmConfiguration r5, java.lang.Class<E> r6) {
        /*
            Method dump skipped, instructions count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.RealmCache.doCreateRealmOrGetFromCache(io.realm.RealmConfiguration, java.lang.Class):io.realm.BaseRealm");
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

    /* JADX INFO: Access modifiers changed from: package-private */
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

    /* JADX INFO: Access modifiers changed from: package-private */
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

    private static void synchronizeInitialSubscriptionsIfNeeded(Realm realm, boolean z) {
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
            if (!Arrays.equals(this.configuration.getEncryptionKey(), realmConfiguration.getEncryptionKey())) {
                throw new IllegalArgumentException(DIFFERENT_KEY_MESSAGE);
            }
            RealmMigration migration = realmConfiguration.getMigration();
            RealmMigration migration2 = this.configuration.getMigration();
            if (migration2 == null || migration == null || !migration2.getClass().equals(migration.getClass()) || migration.equals(migration2)) {
                throw new IllegalArgumentException("Configurations cannot be different if used to open the same file. \nCached configuration: \n" + this.configuration + "\n\nNew configuration: \n" + realmConfiguration);
            }
            throw new IllegalArgumentException("Configurations cannot be different if used to open the same file. The most likely cause is that equals() and hashCode() are not overridden in the migration class: " + realmConfiguration.getMigration().getClass().getCanonicalName());
        }
    }

    public RealmConfiguration getConfiguration() {
        return this.configuration;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void invokeWithLock(Callback0 callback0) {
        synchronized (this) {
            callback0.onCall();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void leak() {
        if (!this.isLeaked.getAndSet(true)) {
            leakedCaches.add(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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
                if (refAndCount.globalCount < 0) {
                    throw new IllegalStateException("Global reference counter of Realm" + path + " got corrupted.");
                }
                baseRealm.doClose();
                if (getTotalGlobalRefCount() == 0) {
                    this.configuration = null;
                    ObjectServerFacade.getFacade(baseRealm.getConfiguration().isSyncConfiguration()).realmClosed(baseRealm.getConfiguration());
                }
            } else {
                refAndCount.localCount.set(valueOf);
            }
        }
    }
}
