package io.realm;

import android.content.Context;
import io.realm.Realm;
import io.realm.annotations.RealmModule;
import io.realm.coroutines.FlowFactory;
import io.realm.coroutines.RealmFlowFactory;
import io.realm.exceptions.RealmException;
import io.realm.internal.OsRealmConfig;
import io.realm.internal.RealmCore;
import io.realm.internal.RealmProxyMediator;
import io.realm.internal.Util;
import io.realm.internal.modules.CompositeMediator;
import io.realm.internal.modules.FilterableMediator;
import io.realm.p023rx.RealmObservableFactory;
import io.realm.p023rx.RxObservableFactory;
import java.io.File;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import kotlin.jvm.internal.LongCompanionObject;
/* loaded from: classes2-dex2jar.jar:io/realm/RealmConfiguration.class */
public class RealmConfiguration {
    private static final Object DEFAULT_MODULE;
    protected static final RealmProxyMediator DEFAULT_MODULE_MEDIATOR;
    public static final String DEFAULT_REALM_NAME = "default.realm";
    private final boolean allowQueriesOnUiThread;
    private final boolean allowWritesOnUiThread;
    private final String assetFilePath;
    private final String canonicalPath;
    private final CompactOnLaunchCallback compactOnLaunch;
    private final boolean deleteRealmIfMigrationNeeded;
    private final OsRealmConfig.Durability durability;
    private final FlowFactory flowFactory;
    private final Realm.Transaction initialDataTransaction;
    private final boolean isRecoveryConfiguration;
    private final byte[] key;
    private final long maxNumberOfActiveVersions;
    private final RealmMigration migration;
    private final boolean readOnly;
    private final File realmDirectory;
    private final String realmFileName;
    private final RxObservableFactory rxObservableFactory;
    private final RealmProxyMediator schemaMediator;
    private final long schemaVersion;

    /* loaded from: classes2-dex2jar.jar:io/realm/RealmConfiguration$Builder.class */
    public static class Builder {
        private boolean allowQueriesOnUiThread;
        private boolean allowWritesOnUiThread;
        private String assetFilePath;
        private CompactOnLaunchCallback compactOnLaunch;
        private HashSet<Class<? extends RealmModel>> debugSchema;
        private boolean deleteRealmIfMigrationNeeded;
        private File directory;
        private OsRealmConfig.Durability durability;
        private String fileName;
        @Nullable
        private FlowFactory flowFactory;
        private Realm.Transaction initialDataTransaction;
        private byte[] key;
        private long maxNumberOfActiveVersions;
        private RealmMigration migration;
        private HashSet<Object> modules;
        private boolean readOnly;
        @Nullable
        private RxObservableFactory rxFactory;
        private long schemaVersion;

        public Builder() {
            this(BaseRealm.applicationContext);
        }

        public Builder(Context context) {
            this.modules = new HashSet<>();
            this.debugSchema = new HashSet<>();
            this.maxNumberOfActiveVersions = LongCompanionObject.MAX_VALUE;
            if (context != null) {
                RealmCore.loadLibrary(context);
                initializeBuilder(context);
                return;
            }
            throw new IllegalStateException("Call `Realm.init(Context)` before creating a RealmConfiguration");
        }

        private void checkModule(Object obj) {
            if (obj.getClass().isAnnotationPresent(RealmModule.class)) {
                return;
            }
            throw new IllegalArgumentException(obj.getClass().getCanonicalName() + " is not a RealmModule. Add @RealmModule to the class definition.");
        }

        private void initializeBuilder(Context context) {
            this.directory = context.getFilesDir();
            this.fileName = "default.realm";
            this.key = null;
            this.schemaVersion = 0L;
            this.migration = null;
            this.deleteRealmIfMigrationNeeded = false;
            this.durability = OsRealmConfig.Durability.FULL;
            this.readOnly = false;
            this.compactOnLaunch = null;
            if (RealmConfiguration.DEFAULT_MODULE != null) {
                this.modules.add(RealmConfiguration.DEFAULT_MODULE);
            }
            this.allowWritesOnUiThread = false;
            this.allowQueriesOnUiThread = true;
        }

        public final Builder addModule(Object obj) {
            if (obj != null) {
                checkModule(obj);
                this.modules.add(obj);
            }
            return this;
        }

        public Builder allowQueriesOnUiThread(boolean z) {
            this.allowQueriesOnUiThread = z;
            return this;
        }

        public Builder allowWritesOnUiThread(boolean z) {
            this.allowWritesOnUiThread = z;
            return this;
        }

        public Builder assetFile(String str) {
            if (!Util.isEmptyString(str)) {
                if (this.durability == OsRealmConfig.Durability.MEM_ONLY) {
                    throw new RealmException("Realm can not use in-memory configuration if asset file is present.");
                }
                if (this.deleteRealmIfMigrationNeeded) {
                    throw new IllegalStateException("Realm cannot use an asset file when previously configured to clear its schema in migration by calling deleteRealmIfMigrationNeeded().");
                }
                this.assetFilePath = str;
                return this;
            }
            throw new IllegalArgumentException("A non-empty asset file path must be provided");
        }

        public RealmConfiguration build() {
            if (this.readOnly) {
                if (this.initialDataTransaction != null) {
                    throw new IllegalStateException("This Realm is marked as read-only. Read-only Realms cannot use initialData(Realm.Transaction).");
                }
                if (this.assetFilePath == null) {
                    throw new IllegalStateException("Only Realms provided using 'assetFile(path)' can be marked read-only. No such Realm was provided.");
                }
                if (this.deleteRealmIfMigrationNeeded) {
                    throw new IllegalStateException("'deleteRealmIfMigrationNeeded()' and read-only Realms cannot be combined");
                }
                if (this.compactOnLaunch != null) {
                    throw new IllegalStateException("'compactOnLaunch()' and read-only Realms cannot be combined");
                }
            }
            if (this.rxFactory == null && Util.isRxJavaAvailable()) {
                this.rxFactory = new RealmObservableFactory(true);
            }
            if (this.flowFactory == null && Util.isCoroutinesAvailable()) {
                this.flowFactory = new RealmFlowFactory(true);
            }
            return new RealmConfiguration(new File(this.directory, this.fileName), this.assetFilePath, this.key, this.schemaVersion, this.migration, this.deleteRealmIfMigrationNeeded, this.durability, RealmConfiguration.createSchemaMediator(this.modules, this.debugSchema), this.rxFactory, this.flowFactory, this.initialDataTransaction, this.readOnly, this.compactOnLaunch, false, this.maxNumberOfActiveVersions, this.allowWritesOnUiThread, this.allowQueriesOnUiThread);
        }

        public Builder compactOnLaunch() {
            return compactOnLaunch(new DefaultCompactOnLaunchCallback());
        }

        public Builder compactOnLaunch(CompactOnLaunchCallback compactOnLaunchCallback) {
            if (compactOnLaunchCallback != null) {
                this.compactOnLaunch = compactOnLaunchCallback;
                return this;
            }
            throw new IllegalArgumentException("A non-null compactOnLaunch must be provided");
        }

        public Builder deleteRealmIfMigrationNeeded() {
            String str = this.assetFilePath;
            if (str == null || str.length() == 0) {
                this.deleteRealmIfMigrationNeeded = true;
                return this;
            }
            throw new IllegalStateException("Realm cannot clear its schema when previously configured to use an asset file by calling assetFile().");
        }

        public Builder directory(File file) {
            if (file != null) {
                if (file.isFile()) {
                    throw new IllegalArgumentException("'dir' is a file, not a directory: " + file.getAbsolutePath() + ".");
                } else if (!file.exists() && !file.mkdirs()) {
                    throw new IllegalArgumentException("Could not create the specified directory: " + file.getAbsolutePath() + ".");
                } else if (file.canWrite()) {
                    this.directory = file;
                    return this;
                } else {
                    throw new IllegalArgumentException("Realm directory is not writable: " + file.getAbsolutePath() + ".");
                }
            }
            throw new IllegalArgumentException("Non-null 'dir' required.");
        }

        public Builder encryptionKey(byte[] bArr) {
            if (bArr != null) {
                if (bArr.length != 64) {
                    throw new IllegalArgumentException(String.format(Locale.US, "The provided key must be %s bytes. Yours was: %s", 64, Integer.valueOf(bArr.length)));
                }
                this.key = Arrays.copyOf(bArr, bArr.length);
                return this;
            }
            throw new IllegalArgumentException("A non-null key must be provided");
        }

        public Builder flowFactory(@Nonnull FlowFactory flowFactory) {
            if (flowFactory != null) {
                this.flowFactory = flowFactory;
                return this;
            }
            throw new IllegalArgumentException("The provided Flow factory must not be null.");
        }

        public Builder inMemory() {
            if (Util.isEmptyString(this.assetFilePath)) {
                this.durability = OsRealmConfig.Durability.MEM_ONLY;
                return this;
            }
            throw new RealmException("Realm can not use in-memory configuration if asset file is present.");
        }

        public Builder initialData(Realm.Transaction transaction) {
            this.initialDataTransaction = transaction;
            return this;
        }

        public Builder maxNumberOfActiveVersions(long j) {
            if (j >= 1) {
                this.maxNumberOfActiveVersions = j;
                return this;
            }
            throw new IllegalArgumentException("Only positive numbers above 0 are allowed. Yours was: " + j);
        }

        public Builder migration(RealmMigration realmMigration) {
            if (realmMigration != null) {
                this.migration = realmMigration;
                return this;
            }
            throw new IllegalArgumentException("A non-null migration must be provided");
        }

        public Builder modules(Object obj, Object... objArr) {
            this.modules.clear();
            addModule(obj);
            if (objArr != null) {
                for (Object obj2 : objArr) {
                    addModule(obj2);
                }
            }
            return this;
        }

        public Builder name(String str) {
            if (str == null || str.isEmpty()) {
                throw new IllegalArgumentException("A non-empty filename must be provided");
            }
            this.fileName = str;
            return this;
        }

        public Builder readOnly() {
            this.readOnly = true;
            return this;
        }

        public Builder rxFactory(@Nonnull RxObservableFactory rxObservableFactory) {
            if (rxObservableFactory != null) {
                this.rxFactory = rxObservableFactory;
                return this;
            }
            throw new IllegalArgumentException("The provided Rx Observable factory must not be null.");
        }

        final Builder schema(Class<? extends RealmModel> cls, Class<? extends RealmModel>... clsArr) {
            if (cls != null) {
                this.modules.clear();
                this.modules.add(RealmConfiguration.DEFAULT_MODULE_MEDIATOR);
                this.debugSchema.add(cls);
                if (clsArr != null) {
                    Collections.addAll(this.debugSchema, clsArr);
                }
                return this;
            }
            throw new IllegalArgumentException("A non-null class must be provided");
        }

        public Builder schemaVersion(long j) {
            if (j >= 0) {
                this.schemaVersion = j;
                return this;
            }
            throw new IllegalArgumentException("Realm schema version numbers must be 0 (zero) or higher. Yours was: " + j);
        }
    }

    static {
        Object defaultModule = Realm.getDefaultModule();
        DEFAULT_MODULE = defaultModule;
        if (defaultModule == null) {
            DEFAULT_MODULE_MEDIATOR = null;
            return;
        }
        RealmProxyMediator moduleMediator = getModuleMediator(defaultModule.getClass().getCanonicalName());
        if (!moduleMediator.transformerApplied()) {
            throw new ExceptionInInitializerError("RealmTransformer doesn't seem to be applied. Please update the project configuration to use the Realm Gradle plugin. See https://realm.io/news/android-installation-change/");
        }
        DEFAULT_MODULE_MEDIATOR = moduleMediator;
    }

    protected RealmConfiguration(File file, @Nullable String str, @Nullable byte[] bArr, long j, @Nullable RealmMigration realmMigration, boolean z, OsRealmConfig.Durability durability, RealmProxyMediator realmProxyMediator, @Nullable RxObservableFactory rxObservableFactory, @Nullable FlowFactory flowFactory, @Nullable Realm.Transaction transaction, boolean z2, @Nullable CompactOnLaunchCallback compactOnLaunchCallback, boolean z3, long j2, boolean z4, boolean z5) {
        this.realmDirectory = file.getParentFile();
        this.realmFileName = file.getName();
        this.canonicalPath = file.getAbsolutePath();
        this.assetFilePath = str;
        this.key = bArr;
        this.schemaVersion = j;
        this.migration = realmMigration;
        this.deleteRealmIfMigrationNeeded = z;
        this.durability = durability;
        this.schemaMediator = realmProxyMediator;
        this.rxObservableFactory = rxObservableFactory;
        this.flowFactory = flowFactory;
        this.initialDataTransaction = transaction;
        this.readOnly = z2;
        this.compactOnLaunch = compactOnLaunchCallback;
        this.isRecoveryConfiguration = z3;
        this.maxNumberOfActiveVersions = j2;
        this.allowWritesOnUiThread = z4;
        this.allowQueriesOnUiThread = z5;
    }

    protected static RealmProxyMediator createSchemaMediator(Set<Object> set, Set<Class<? extends RealmModel>> set2) {
        if (set2.size() > 0) {
            return new FilterableMediator(DEFAULT_MODULE_MEDIATOR, set2);
        }
        if (set.size() == 1) {
            return getModuleMediator(set.iterator().next().getClass().getCanonicalName());
        }
        RealmProxyMediator[] realmProxyMediatorArr = new RealmProxyMediator[set.size()];
        int i = 0;
        for (Object obj : set) {
            realmProxyMediatorArr[i] = getModuleMediator(obj.getClass().getCanonicalName());
            i++;
        }
        return new CompositeMediator(realmProxyMediatorArr);
    }

    protected static RealmConfiguration forRecovery(String str, @Nullable byte[] bArr, RealmProxyMediator realmProxyMediator) {
        return new RealmConfiguration(new File(str), null, bArr, 0L, null, false, OsRealmConfig.Durability.FULL, realmProxyMediator, null, null, null, true, null, true, LongCompanionObject.MAX_VALUE, false, true);
    }

    private static RealmProxyMediator getModuleMediator(String str) {
        String[] split = str.split("\\.");
        String format = String.format(Locale.US, "io.realm.%s%s", split[split.length - 1], "Mediator");
        try {
            Constructor<?> constructor = Class.forName(format).getDeclaredConstructors()[0];
            constructor.setAccessible(true);
            return (RealmProxyMediator) constructor.newInstance(new Object[0]);
        } catch (ClassNotFoundException e) {
            throw new RealmException("Could not find " + format, e);
        } catch (IllegalAccessException e2) {
            throw new RealmException("Could not create an instance of " + format, e2);
        } catch (InstantiationException e3) {
            throw new RealmException("Could not create an instance of " + format, e3);
        } catch (InvocationTargetException e4) {
            throw new RealmException("Could not create an instance of " + format, e4);
        }
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        RealmConfiguration realmConfiguration = (RealmConfiguration) obj;
        if (this.schemaVersion != realmConfiguration.schemaVersion || this.deleteRealmIfMigrationNeeded != realmConfiguration.deleteRealmIfMigrationNeeded || this.readOnly != realmConfiguration.readOnly || this.isRecoveryConfiguration != realmConfiguration.isRecoveryConfiguration) {
            return false;
        }
        File file = this.realmDirectory;
        if (file != null) {
            if (!file.equals(realmConfiguration.realmDirectory)) {
                return false;
            }
        } else if (realmConfiguration.realmDirectory != null) {
            return false;
        }
        String str = this.realmFileName;
        if (str != null) {
            if (!str.equals(realmConfiguration.realmFileName)) {
                return false;
            }
        } else if (realmConfiguration.realmFileName != null) {
            return false;
        }
        if (!this.canonicalPath.equals(realmConfiguration.canonicalPath)) {
            return false;
        }
        String str2 = this.assetFilePath;
        if (str2 != null) {
            if (!str2.equals(realmConfiguration.assetFilePath)) {
                return false;
            }
        } else if (realmConfiguration.assetFilePath != null) {
            return false;
        }
        if (!Arrays.equals(this.key, realmConfiguration.key)) {
            return false;
        }
        RealmMigration realmMigration = this.migration;
        if (realmMigration != null) {
            if (!realmMigration.equals(realmConfiguration.migration)) {
                return false;
            }
        } else if (realmConfiguration.migration != null) {
            return false;
        }
        if (this.durability != realmConfiguration.durability || !this.schemaMediator.equals(realmConfiguration.schemaMediator)) {
            return false;
        }
        RxObservableFactory rxObservableFactory = this.rxObservableFactory;
        if (rxObservableFactory != null) {
            if (!rxObservableFactory.equals(realmConfiguration.rxObservableFactory)) {
                return false;
            }
        } else if (realmConfiguration.rxObservableFactory != null) {
            return false;
        }
        Realm.Transaction transaction = this.initialDataTransaction;
        if (transaction != null) {
            if (!transaction.equals(realmConfiguration.initialDataTransaction)) {
                return false;
            }
        } else if (realmConfiguration.initialDataTransaction != null) {
            return false;
        }
        CompactOnLaunchCallback compactOnLaunchCallback = this.compactOnLaunch;
        if (compactOnLaunchCallback != null) {
            if (!compactOnLaunchCallback.equals(realmConfiguration.compactOnLaunch)) {
                return false;
            }
        } else if (realmConfiguration.compactOnLaunch != null) {
            return false;
        }
        if (this.maxNumberOfActiveVersions != realmConfiguration.maxNumberOfActiveVersions) {
            z = false;
        }
        return z;
    }

    public String getAssetFilePath() {
        return this.assetFilePath;
    }

    public CompactOnLaunchCallback getCompactOnLaunchCallback() {
        return this.compactOnLaunch;
    }

    public OsRealmConfig.Durability getDurability() {
        return this.durability;
    }

    public byte[] getEncryptionKey() {
        byte[] bArr = this.key;
        return bArr == null ? null : Arrays.copyOf(bArr, bArr.length);
    }

    public FlowFactory getFlowFactory() {
        FlowFactory flowFactory = this.flowFactory;
        if (flowFactory != null) {
            return flowFactory;
        }
        throw new UnsupportedOperationException("The coroutines framework is missing from the classpath. Remember to add it as an implementation dependency. See https://github.com/Kotlin/kotlinx.coroutines#android for more details");
    }

    public Realm.Transaction getInitialDataTransaction() {
        return this.initialDataTransaction;
    }

    public long getMaxNumberOfActiveVersions() {
        return this.maxNumberOfActiveVersions;
    }

    public RealmMigration getMigration() {
        return this.migration;
    }

    public String getPath() {
        return this.canonicalPath;
    }

    public File getRealmDirectory() {
        return this.realmDirectory;
    }

    public String getRealmFileName() {
        return this.realmFileName;
    }

    public Set<Class<? extends RealmModel>> getRealmObjectClasses() {
        return this.schemaMediator.getModelClasses();
    }

    public RxObservableFactory getRxFactory() {
        RxObservableFactory rxObservableFactory = this.rxObservableFactory;
        if (rxObservableFactory != null) {
            return rxObservableFactory;
        }
        throw new UnsupportedOperationException("RxJava seems to be missing from the classpath. Remember to add it as an implementation dependency. See https://realm.io/docs/java/latest/#rxjava for more details.");
    }

    public RealmProxyMediator getSchemaMediator() {
        return this.schemaMediator;
    }

    public long getSchemaVersion() {
        return this.schemaVersion;
    }

    public boolean hasAssetFile() {
        return !Util.isEmptyString(this.assetFilePath);
    }

    public int hashCode() {
        File file = this.realmDirectory;
        int i = 0;
        int hashCode = file != null ? file.hashCode() : 0;
        String str = this.realmFileName;
        int hashCode2 = str != null ? str.hashCode() : 0;
        int hashCode3 = this.canonicalPath.hashCode();
        String str2 = this.assetFilePath;
        int hashCode4 = str2 != null ? str2.hashCode() : 0;
        int hashCode5 = Arrays.hashCode(this.key);
        long j = this.schemaVersion;
        int i2 = (int) (j ^ (j >>> 32));
        RealmMigration realmMigration = this.migration;
        int hashCode6 = realmMigration != null ? realmMigration.hashCode() : 0;
        boolean z = this.deleteRealmIfMigrationNeeded;
        int hashCode7 = this.durability.hashCode();
        int hashCode8 = this.schemaMediator.hashCode();
        RxObservableFactory rxObservableFactory = this.rxObservableFactory;
        int hashCode9 = rxObservableFactory != null ? rxObservableFactory.hashCode() : 0;
        Realm.Transaction transaction = this.initialDataTransaction;
        int hashCode10 = transaction != null ? transaction.hashCode() : 0;
        boolean z2 = this.readOnly;
        CompactOnLaunchCallback compactOnLaunchCallback = this.compactOnLaunch;
        if (compactOnLaunchCallback != null) {
            i = compactOnLaunchCallback.hashCode();
        }
        boolean z3 = this.isRecoveryConfiguration;
        long j2 = this.maxNumberOfActiveVersions;
        return (((((((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i2) * 31) + hashCode6) * 31) + (z ? 1 : 0)) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + (z2 ? 1 : 0)) * 31) + i) * 31) + (z3 ? 1 : 0)) * 31) + ((int) (j2 ^ (j2 >>> 32)));
    }

    public boolean isAllowQueriesOnUiThread() {
        return this.allowQueriesOnUiThread;
    }

    public boolean isAllowWritesOnUiThread() {
        return this.allowWritesOnUiThread;
    }

    public boolean isReadOnly() {
        return this.readOnly;
    }

    public boolean isRecoveryConfiguration() {
        return this.isRecoveryConfiguration;
    }

    public boolean isSyncConfiguration() {
        return false;
    }

    public boolean realmExists() {
        return new File(this.canonicalPath).exists();
    }

    public boolean shouldDeleteRealmIfMigrationNeeded() {
        return this.deleteRealmIfMigrationNeeded;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("realmDirectory: ");
        File file = this.realmDirectory;
        sb.append(file != null ? file.toString() : "");
        sb.append("\n");
        sb.append("realmFileName : ");
        sb.append(this.realmFileName);
        sb.append("\n");
        sb.append("canonicalPath: ");
        sb.append(this.canonicalPath);
        sb.append("\n");
        sb.append("key: ");
        sb.append("[length: ");
        sb.append(this.key == null ? 0 : 64);
        sb.append("]");
        sb.append("\n");
        sb.append("schemaVersion: ");
        sb.append(Long.toString(this.schemaVersion));
        sb.append("\n");
        sb.append("migration: ");
        sb.append(this.migration);
        sb.append("\n");
        sb.append("deleteRealmIfMigrationNeeded: ");
        sb.append(this.deleteRealmIfMigrationNeeded);
        sb.append("\n");
        sb.append("durability: ");
        sb.append(this.durability);
        sb.append("\n");
        sb.append("schemaMediator: ");
        sb.append(this.schemaMediator);
        sb.append("\n");
        sb.append("readOnly: ");
        sb.append(this.readOnly);
        sb.append("\n");
        sb.append("compactOnLaunch: ");
        sb.append(this.compactOnLaunch);
        sb.append("\n");
        sb.append("maxNumberOfActiveVersions: ");
        sb.append(this.maxNumberOfActiveVersions);
        return sb.toString();
    }
}
