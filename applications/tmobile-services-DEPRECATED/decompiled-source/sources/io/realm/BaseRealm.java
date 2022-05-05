package io.realm;

import android.content.Context;
import io.realm.Realm;
import io.realm.RealmCache;
import io.realm.exceptions.RealmException;
import io.realm.internal.CheckedRow;
import io.realm.internal.ColumnInfo;
import io.realm.internal.InvalidRow;
import io.realm.internal.OsObjectStore;
import io.realm.internal.OsRealmConfig;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.OsSharedRealm;
import io.realm.internal.Row;
import io.realm.internal.Table;
import io.realm.internal.UncheckedRow;
import io.realm.internal.Util;
import io.realm.internal.async.RealmThreadPoolExecutor;
import io.realm.log.RealmLog;
import java.io.Closeable;
import java.io.File;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:io/realm/BaseRealm.class */
public abstract class BaseRealm implements Closeable {

    /* renamed from: m */
    static volatile Context f19803m;

    /* renamed from: n */
    public static final ThreadLocalRealmObjectContext f19804n = new ThreadLocalRealmObjectContext();

    /* renamed from: f */
    final boolean f19805f;

    /* renamed from: g */
    final long f19806g;

    /* renamed from: h */
    protected final RealmConfiguration f19807h;

    /* renamed from: i */
    private RealmCache f19808i;

    /* renamed from: j */
    public OsSharedRealm f19809j;

    /* renamed from: k */
    private boolean f19810k;

    /* renamed from: l */
    private OsSharedRealm.SchemaChangedCallback f19811l;

    /* renamed from: io.realm.BaseRealm$3 */
    /* loaded from: classes2-dex2jar.jar:io/realm/BaseRealm$3.class */
    class C21323 implements RealmCache.Callback0 {
    }

    /* renamed from: io.realm.BaseRealm$5 */
    /* loaded from: classes2-dex2jar.jar:io/realm/BaseRealm$5.class */
    class C21345 implements RealmCache.Callback {

        /* renamed from: a */
        final /* synthetic */ RealmConfiguration f19817a;

        /* renamed from: b */
        final /* synthetic */ AtomicBoolean f19818b;

        /* renamed from: c */
        final /* synthetic */ RealmMigration f19819c;

        @Override // io.realm.RealmCache.Callback
        /* renamed from: a */
        public void mo3012a(int i) {
            if (i != 0) {
                throw new IllegalStateException("Cannot migrate a Realm file that is already open: " + this.f19817a.m2987l());
            } else if (!new File(this.f19817a.m2987l()).exists()) {
                this.f19818b.set(true);
            } else {
                OsSchemaInfo osSchemaInfo = new OsSchemaInfo(this.f19817a.m2983p().mo2562d().values());
                OsSharedRealm.MigrationCallback migrationCallback = null;
                RealmMigration realmMigration = this.f19819c;
                if (realmMigration == null) {
                    realmMigration = this.f19817a.m2989j();
                }
                if (realmMigration != null) {
                    migrationCallback = BaseRealm.m3147m(realmMigration);
                }
                OsRealmConfig.Builder builder = new OsRealmConfig.Builder(this.f19817a);
                builder.m2737a(false);
                builder.m2732f(osSchemaInfo);
                builder.m2733e(migrationCallback);
                OsSharedRealm instance = OsSharedRealm.getInstance(builder, OsSharedRealm.VersionID.f20158h);
                if (instance != null) {
                    instance.close();
                }
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/BaseRealm$InstanceCallback.class */
    public static abstract class InstanceCallback<T extends BaseRealm> {
        /* renamed from: a */
        public void mo3040a(Throwable th) {
            throw new RealmException("Exception happens when initializing Realm in the background thread.", th);
        }

        /* renamed from: b */
        public abstract void mo3039b(T t);
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/BaseRealm$RealmObjectContext.class */
    public static final class RealmObjectContext {

        /* renamed from: a */
        private BaseRealm f19821a;

        /* renamed from: b */
        private Row f19822b;

        /* renamed from: c */
        private ColumnInfo f19823c;

        /* renamed from: d */
        private boolean f19824d;

        /* renamed from: e */
        private List<String> f19825e;

        /* renamed from: a */
        public void m3143a() {
            this.f19821a = null;
            this.f19822b = null;
            this.f19823c = null;
            this.f19824d = false;
            this.f19825e = null;
        }

        /* renamed from: b */
        public boolean m3142b() {
            return this.f19824d;
        }

        /* renamed from: c */
        public ColumnInfo m3141c() {
            return this.f19823c;
        }

        /* renamed from: d */
        public List<String> m3140d() {
            return this.f19825e;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: e */
        public BaseRealm m3139e() {
            return this.f19821a;
        }

        /* renamed from: f */
        public Row m3138f() {
            return this.f19822b;
        }

        /* renamed from: g */
        public void m3137g(BaseRealm baseRealm, Row row, ColumnInfo columnInfo, boolean z, List<String> list) {
            this.f19821a = baseRealm;
            this.f19822b = row;
            this.f19823c = columnInfo;
            this.f19824d = z;
            this.f19825e = list;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/BaseRealm$ThreadLocalRealmObjectContext.class */
    static final class ThreadLocalRealmObjectContext extends ThreadLocal<RealmObjectContext> {
        ThreadLocalRealmObjectContext() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public RealmObjectContext initialValue() {
            return new RealmObjectContext();
        }
    }

    static {
        RealmThreadPoolExecutor.m2583c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseRealm(RealmCache realmCache, @Nullable OsSchemaInfo osSchemaInfo, OsSharedRealm.VersionID versionID) {
        this(realmCache.m3021k(), osSchemaInfo, versionID);
        this.f19808i = realmCache;
    }

    BaseRealm(RealmConfiguration realmConfiguration, @Nullable OsSchemaInfo osSchemaInfo, OsSharedRealm.VersionID versionID) {
        this.f19811l = new OsSharedRealm.SchemaChangedCallback() { // from class: io.realm.BaseRealm.1
            @Override // io.realm.internal.OsSharedRealm.SchemaChangedCallback
            public void onSchemaChanged() {
                RealmSchema L = BaseRealm.this.mo3059L();
                if (L != null) {
                    L.m2846o();
                }
            }
        };
        this.f19806g = Thread.currentThread().getId();
        this.f19807h = realmConfiguration;
        OsSharedRealm.InitializationCallback initializationCallback = null;
        this.f19808i = null;
        OsSharedRealm.MigrationCallback m = (osSchemaInfo == null || realmConfiguration.m2989j() == null) ? null : m3147m(realmConfiguration.m2989j());
        final Realm.Transaction h = realmConfiguration.m2991h();
        initializationCallback = h != null ? new OsSharedRealm.InitializationCallback() { // from class: io.realm.BaseRealm.2
            @Override // io.realm.internal.OsSharedRealm.InitializationCallback
            public void onInit(OsSharedRealm osSharedRealm) {
                h.mo3037a(Realm.m3041z0(osSharedRealm));
            }
        } : initializationCallback;
        OsRealmConfig.Builder builder = new OsRealmConfig.Builder(realmConfiguration);
        builder.m2735c(new File(f19803m.getFilesDir(), ".realm.temp"));
        builder.m2737a(true);
        builder.m2733e(m);
        builder.m2732f(osSchemaInfo);
        builder.m2734d(initializationCallback);
        OsSharedRealm instance = OsSharedRealm.getInstance(builder, versionID);
        this.f19809j = instance;
        this.f19805f = instance.isFrozen();
        this.f19810k = true;
        this.f19809j.registerSchemaChangedCallback(this.f19811l);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseRealm(OsSharedRealm osSharedRealm) {
        this.f19811l = new OsSharedRealm.SchemaChangedCallback() { // from class: io.realm.BaseRealm.1
            @Override // io.realm.internal.OsSharedRealm.SchemaChangedCallback
            public void onSchemaChanged() {
                RealmSchema L = BaseRealm.this.mo3059L();
                if (L != null) {
                    L.m2846o();
                }
            }
        };
        this.f19806g = Thread.currentThread().getId();
        this.f19807h = osSharedRealm.getConfiguration();
        this.f19808i = null;
        this.f19809j = osSharedRealm;
        this.f19805f = osSharedRealm.isFrozen();
        this.f19810k = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public static OsSharedRealm.MigrationCallback m3147m(final RealmMigration realmMigration) {
        return new OsSharedRealm.MigrationCallback() { // from class: io.realm.BaseRealm.6
            @Override // io.realm.internal.OsSharedRealm.MigrationCallback
            public void onMigrationNeeded(OsSharedRealm osSharedRealm, long j, long j2) {
                RealmMigration.this.mo2943a(DynamicRealm.m3129i0(osSharedRealm), j, j2);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public static boolean m3145p(final RealmConfiguration realmConfiguration) {
        final AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        if (OsObjectStore.m2745a(realmConfiguration, new Runnable() { // from class: io.realm.BaseRealm.4
            @Override // java.lang.Runnable
            public void run() {
                atomicBoolean.set(Util.m2599a(RealmConfiguration.this.m2987l(), RealmConfiguration.this.m2986m(), RealmConfiguration.this.m2985n()));
            }
        })) {
            return atomicBoolean.get();
        }
        throw new IllegalStateException("It's not allowed to delete the file associated with an open Realm. Remember to close() all the instances of the Realm before deleting its file: " + realmConfiguration.m2987l());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: B */
    public <E extends RealmModel> E m3166B(@Nullable Class<E> cls, @Nullable String str, long j) {
        DynamicRealmObject dynamicRealmObject;
        boolean z = str != null;
        Table l = z ? mo3059L().m2849l(str) : mo3059L().m2850k(cls);
        if (z) {
            dynamicRealmObject = new DynamicRealmObject(this, j != -1 ? l.m2642k(j) : InvalidRow.INSTANCE);
        } else {
            dynamicRealmObject = (E) this.f19807h.m2983p().mo2557k(cls, this, j != -1 ? l.m2630w(j) : InvalidRow.INSTANCE, mo3059L().m2854g(cls), false, Collections.emptyList());
        }
        return dynamicRealmObject;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: I */
    public <E extends RealmModel> E m3165I(@Nullable Class<E> cls, @Nullable String str, UncheckedRow uncheckedRow) {
        return str != null ? new DynamicRealmObject(this, CheckedRow.m2837e(uncheckedRow)) : (E) this.f19807h.m2983p().mo2557k(cls, this, uncheckedRow, mo3059L().m2854g(cls), false, Collections.emptyList());
    }

    /* renamed from: J */
    public RealmConfiguration m3164J() {
        return this.f19807h;
    }

    /* renamed from: K */
    public String m3163K() {
        return this.f19807h.m2987l();
    }

    /* renamed from: L */
    public abstract RealmSchema mo3059L();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: N */
    public OsSharedRealm m3162N() {
        return this.f19809j;
    }

    /* renamed from: V */
    public long m3161V() {
        return OsObjectStore.m2743c(this.f19809j);
    }

    /* renamed from: W */
    public boolean m3160W() {
        OsSharedRealm osSharedRealm = this.f19809j;
        if (osSharedRealm != null && !osSharedRealm.isClosed()) {
            return this.f19805f;
        }
        throw new IllegalStateException("This Realm instance has already been closed, making it unusable.");
    }

    /* renamed from: X */
    public boolean m3159X() {
        m3151h();
        return this.f19809j.isInTransaction();
    }

    /* renamed from: Y */
    public void m3158Y() {
        m3151h();
        if (!m3159X()) {
            this.f19809j.refresh();
            return;
        }
        throw new IllegalStateException("Cannot refresh a Realm instance inside a transaction.");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: Z */
    public <T extends BaseRealm> void m3157Z(RealmChangeListener<T> realmChangeListener) {
        if (realmChangeListener != null) {
            if (isClosed()) {
                RealmLog.m2529g("Calling removeChangeListener on a closed Realm %s, make sure to close all listeners before closing the Realm.", this.f19807h.m2987l());
            }
            this.f19809j.realmNotifier.removeChangeListener(this, realmChangeListener);
            return;
        }
        throw new IllegalArgumentException("Listener should not be null");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public <T extends BaseRealm> void m3155b(RealmChangeListener<T> realmChangeListener) {
        if (realmChangeListener != null) {
            m3151h();
            this.f19809j.capabilities.mo2593b("Listeners cannot be used on current thread.");
            if (!this.f19805f) {
                this.f19809j.realmNotifier.addChangeListener(this, realmChangeListener);
                return;
            }
            throw new IllegalStateException("It is not possible to add a change listener to a frozen Realm since it never changes.");
        }
        throw new IllegalArgumentException("Listener should not be null");
    }

    /* renamed from: b0 */
    public void m3154b0(File file) {
        if (file != null) {
            m3151h();
            this.f19809j.writeCopy(file, null);
            return;
        }
        throw new IllegalArgumentException("The destination argument cannot be null");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f19805f || this.f19806g == Thread.currentThread().getId()) {
            RealmCache realmCache = this.f19808i;
            if (realmCache != null) {
                realmCache.m3015q(this);
            } else {
                m3144q();
            }
        } else {
            throw new IllegalStateException("Realm access from incorrect thread. Realm instance can only be closed on the thread it was created.");
        }
    }

    /* renamed from: d */
    public void m3153d() {
        m3151h();
        this.f19809j.beginTransaction();
    }

    /* renamed from: e */
    public void m3152e() {
        m3151h();
        this.f19809j.cancelTransaction();
    }

    protected void finalize() throws Throwable {
        OsSharedRealm osSharedRealm;
        if (this.f19810k && (osSharedRealm = this.f19809j) != null && !osSharedRealm.isClosed()) {
            RealmLog.m2529g("Remember to call close() on all Realm instances. Realm %s is being finalized without being closed, this can lead to running out of native memory.", this.f19807h.m2987l());
            RealmCache realmCache = this.f19808i;
            if (realmCache != null) {
                realmCache.m3016p();
            }
        }
        super.finalize();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: h */
    public void m3151h() {
        OsSharedRealm osSharedRealm = this.f19809j;
        if (osSharedRealm == null || osSharedRealm.isClosed()) {
            throw new IllegalStateException("This Realm instance has already been closed, making it unusable.");
        } else if (!this.f19805f && this.f19806g != Thread.currentThread().getId()) {
            throw new IllegalStateException("Realm access from incorrect thread. Realm objects can only be accessed on the thread they were created.");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: i */
    public void m3150i() {
        if (!m3159X()) {
            throw new IllegalStateException("Changing Realm data can only be done from inside a transaction.");
        }
    }

    public boolean isClosed() {
        if (this.f19805f || this.f19806g == Thread.currentThread().getId()) {
            OsSharedRealm osSharedRealm = this.f19809j;
            return osSharedRealm == null || osSharedRealm.isClosed();
        }
        throw new IllegalStateException("Realm access from incorrect thread. Realm objects can only be accessed on the thread they were created.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public void m3149k() {
        if (this.f19807h.m2977v()) {
            throw new IllegalArgumentException("You cannot perform changes to a schema. Please update app and restart.");
        }
    }

    /* renamed from: l */
    public void m3148l() {
        m3151h();
        this.f19809j.commitTransaction();
    }

    /* renamed from: o */
    public void m3146o() {
        m3151h();
        if (!this.f19809j.isPartial()) {
            boolean isPartial = this.f19809j.isPartial();
            for (RealmObjectSchema realmObjectSchema : mo3059L().mo2855f()) {
                mo3059L().m2849l(realmObjectSchema.m2934e()).m2649d(isPartial);
            }
            return;
        }
        throw new IllegalStateException("This API is not supported by partially synchronized Realms. Either unsubscribe using 'Realm.unsubscribeAsync()' or delete the objects using a query and 'RealmResults.deleteAllFromRealm()'");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public void m3144q() {
        this.f19808i = null;
        OsSharedRealm osSharedRealm = this.f19809j;
        if (osSharedRealm != null && this.f19810k) {
            osSharedRealm.close();
            this.f19809j = null;
        }
    }

    /* renamed from: t */
    public abstract BaseRealm mo3047t();
}
