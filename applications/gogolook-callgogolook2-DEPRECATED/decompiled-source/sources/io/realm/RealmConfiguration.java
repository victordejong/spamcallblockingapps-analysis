package io.realm;

import android.content.Context;
import androidx.media2.session.MediaSessionImplBase;
import io.realm.Realm;
import io.realm.annotations.RealmModule;
import io.realm.exceptions.RealmException;
import io.realm.exceptions.RealmFileException;
import io.realm.internal.OsRealmConfig;
import io.realm.internal.RealmCore;
import io.realm.internal.RealmProxyMediator;
import io.realm.internal.Util;
import io.realm.internal.modules.CompositeMediator;
import io.realm.internal.modules.FilterableMediator;
import io.realm.p458rx.RealmObservableFactory;
import io.realm.p458rx.RxObservableFactory;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import javax.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:io/realm/RealmConfiguration.class */
public class RealmConfiguration {
    public static final Object DEFAULT_MODULE = Realm.getDefaultModule();
    public static final RealmProxyMediator DEFAULT_MODULE_MEDIATOR;
    public static final String DEFAULT_REALM_NAME = "default.realm";
    public static final int KEY_LENGTH = 64;
    public static Boolean rxJavaAvailable;
    public final String assetFilePath;
    public final String canonicalPath;
    public final CompactOnLaunchCallback compactOnLaunch;
    public final boolean deleteRealmIfMigrationNeeded;
    public final OsRealmConfig.Durability durability;
    public final Realm.Transaction initialDataTransaction;
    public final boolean isRecoveryConfiguration;
    public final byte[] key;
    public final RealmMigration migration;
    public final boolean readOnly;
    public final File realmDirectory;
    public final String realmFileName;
    public final RxObservableFactory rxObservableFactory;
    public final RealmProxyMediator schemaMediator;
    public final long schemaVersion;

    /* loaded from: classes3-dex2jar.jar:io/realm/RealmConfiguration$Builder.class */
    public static class Builder {
        public String assetFilePath;
        public CompactOnLaunchCallback compactOnLaunch;
        public HashSet<Class<? extends RealmModel>> debugSchema;
        public boolean deleteRealmIfMigrationNeeded;
        public File directory;
        public OsRealmConfig.Durability durability;
        public String fileName;
        public Realm.Transaction initialDataTransaction;
        public byte[] key;
        public RealmMigration migration;
        public HashSet<Object> modules;
        public boolean readOnly;
        public RxObservableFactory rxFactory;
        public long schemaVersion;

        public Builder() {
            this(BaseRealm.applicationContext);
        }

        public Builder(Context context) {
            this.modules = new HashSet<>();
            this.debugSchema = new HashSet<>();
            if (context != null) {
                RealmCore.loadLibrary(context);
                initializeBuilder(context);
                return;
            }
            throw new IllegalStateException("Call `Realm.init(Context)` before creating a RealmConfiguration");
        }

        private void checkModule(Object obj) {
            if (!obj.getClass().isAnnotationPresent(RealmModule.class)) {
                throw new IllegalArgumentException(obj.getClass().getCanonicalName() + " is not a RealmModule. Add @RealmModule to the class definition.");
            }
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
        }

        public final Builder addModule(Object obj) {
            if (obj != null) {
                checkModule(obj);
                this.modules.add(obj);
            }
            return this;
        }

        public Builder assetFile(String str) {
            if (Util.isEmptyString(str)) {
                throw new IllegalArgumentException("A non-empty asset file path must be provided");
            } else if (this.durability == OsRealmConfig.Durability.MEM_ONLY) {
                throw new RealmException("Realm can not use in-memory configuration if asset file is present.");
            } else if (!this.deleteRealmIfMigrationNeeded) {
                this.assetFilePath = str;
                return this;
            } else {
                throw new IllegalStateException("Realm cannot use an asset file when previously configured to clear its schema in migration by calling deleteRealmIfMigrationNeeded().");
            }
        }

        public RealmConfiguration build() {
            if (this.readOnly) {
                if (this.initialDataTransaction != null) {
                    throw new IllegalStateException("This Realm is marked as read-only. Read-only Realms cannot use initialData(Realm.Transaction).");
                } else if (this.assetFilePath == null) {
                    throw new IllegalStateException("Only Realms provided using 'assetFile(path)' can be marked read-only. No such Realm was provided.");
                } else if (this.deleteRealmIfMigrationNeeded) {
                    throw new IllegalStateException("'deleteRealmIfMigrationNeeded()' and read-only Realms cannot be combined");
                } else if (this.compactOnLaunch != null) {
                    throw new IllegalStateException("'compactOnLaunch()' and read-only Realms cannot be combined");
                }
            }
            if (this.rxFactory == null && RealmConfiguration.isRxJavaAvailable()) {
                this.rxFactory = new RealmObservableFactory();
            }
            File file = this.directory;
            String str = this.fileName;
            return new RealmConfiguration(file, str, RealmConfiguration.getCanonicalPath(new File(file, str)), this.assetFilePath, this.key, this.schemaVersion, this.migration, this.deleteRealmIfMigrationNeeded, this.durability, RealmConfiguration.createSchemaMediator(this.modules, this.debugSchema), this.rxFactory, this.initialDataTransaction, this.readOnly, this.compactOnLaunch, false);
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
            if (file == null) {
                throw new IllegalArgumentException("Non-null 'dir' required.");
            } else if (file.isFile()) {
                throw new IllegalArgumentException("'dir' is a file, not a directory: " + file.getAbsolutePath() + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
            } else if (!file.exists() && !file.mkdirs()) {
                throw new IllegalArgumentException("Could not create the specified directory: " + file.getAbsolutePath() + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
            } else if (file.canWrite()) {
                this.directory = file;
                return this;
            } else {
                throw new IllegalArgumentException("Realm directory is not writable: " + file.getAbsolutePath() + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
            }
        }

        public Builder encryptionKey(byte[] bArr) {
            if (bArr == null) {
                throw new IllegalArgumentException("A non-null key must be provided");
            } else if (bArr.length == 64) {
                this.key = Arrays.copyOf(bArr, bArr.length);
                return this;
            } else {
                throw new IllegalArgumentException(String.format(Locale.US, "The provided key must be %s bytes. Yours was: %s", 64, Integer.valueOf(bArr.length)));
            }
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

        public Builder rxFactory(RxObservableFactory rxObservableFactory) {
            this.rxFactory = rxObservableFactory;
            return this;
        }

        public final Builder schema(Class<? extends RealmModel> cls, Class<? extends RealmModel>... clsArr) {
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
        Object obj = DEFAULT_MODULE;
        if (obj != null) {
            RealmProxyMediator moduleMediator = getModuleMediator(obj.getClass().getCanonicalName());
            if (moduleMediator.transformerApplied()) {
                DEFAULT_MODULE_MEDIATOR = moduleMediator;
                return;
            }
            throw new ExceptionInInitializerError("RealmTransformer doesn't seem to be applied. Please update the project configuration to use the Realm Gradle plugin. See https://realm.io/news/android-installation-change/");
        }
        DEFAULT_MODULE_MEDIATOR = null;
    }

    public RealmConfiguration(@Nullable File file, @Nullable String str, String str2, @Nullable String str3, @Nullable byte[] bArr, long j, @Nullable RealmMigration realmMigration, boolean z, OsRealmConfig.Durability durability, RealmProxyMediator realmProxyMediator, @Nullable RxObservableFactory rxObservableFactory, @Nullable Realm.Transaction transaction, boolean z2, @Nullable CompactOnLaunchCallback compactOnLaunchCallback, boolean z3) {
        this.realmDirectory = file;
        this.realmFileName = str;
        this.canonicalPath = str2;
        this.assetFilePath = str3;
        this.key = bArr;
        this.schemaVersion = j;
        this.migration = realmMigration;
        this.deleteRealmIfMigrationNeeded = z;
        this.durability = durability;
        this.schemaMediator = realmProxyMediator;
        this.rxObservableFactory = rxObservableFactory;
        this.initialDataTransaction = transaction;
        this.readOnly = z2;
        this.compactOnLaunch = compactOnLaunchCallback;
        this.isRecoveryConfiguration = z3;
    }

    public static RealmProxyMediator createSchemaMediator(Set<Object> set, Set<Class<? extends RealmModel>> set2) {
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

    public static String getCanonicalPath(File file) {
        try {
            return file.getCanonicalPath();
        } catch (IOException e) {
            RealmFileException.Kind kind = RealmFileException.Kind.ACCESS_ERROR;
            throw new RealmFileException(kind, "Could not resolve the canonical path to the Realm file: " + file.getAbsolutePath(), e);
        }
    }

    public static RealmProxyMediator getModuleMediator(String str) {
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

    public static boolean isRxJavaAvailable() {
        boolean booleanValue;
        synchronized (RealmConfiguration.class) {
            try {
                if (rxJavaAvailable == null) {
                    try {
                        Class.forName("io.reactivex.Flowable");
                        rxJavaAvailable = true;
                    } catch (ClassNotFoundException e) {
                        rxJavaAvailable = false;
                    }
                }
                booleanValue = rxJavaAvailable.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
        return booleanValue;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || RealmConfiguration.class != obj.getClass()) {
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
        CompactOnLaunchCallback compactOnLaunchCallback2 = realmConfiguration.compactOnLaunch;
        if (compactOnLaunchCallback != null) {
            z = compactOnLaunchCallback.equals(compactOnLaunchCallback2);
        } else if (compactOnLaunchCallback2 != null) {
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

    public Realm.Transaction getInitialDataTransaction() {
        return this.initialDataTransaction;
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
        throw new UnsupportedOperationException("RxJava seems to be missing from the classpath. Remember to add it as a compile dependency. See https://realm.io/docs/java/latest/#rxjava for more details.");
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
        return (((((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i2) * 31) + hashCode6) * 31) + (z ? 1 : 0)) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + (z2 ? 1 : 0)) * 31) + i) * 31) + (this.isRecoveryConfiguration ? 1 : 0);
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
        return sb.toString();
    }
}
