package io.realm;

import android.content.Context;
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
import io.realm.internal.OsResults;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.OsSharedRealm;
import io.realm.internal.RealmCore;
import io.realm.internal.RealmNotifier;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.RealmProxyMediator;
import io.realm.internal.Table;
import io.realm.internal.TableQuery;
import io.realm.internal.Util;
import io.realm.log.RealmLog;
import java.io.File;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/Realm.class */
public class Realm extends BaseRealm {

    /* renamed from: p */
    private static final Object f19853p = new Object();

    /* renamed from: q */
    private static RealmConfiguration f19854q;

    /* renamed from: o */
    private final RealmSchema f19855o;

    /* renamed from: io.realm.Realm$1 */
    /* loaded from: classes2-dex2jar.jar:io/realm/Realm$1.class */
    class RunnableC21401 implements Runnable {

        /* renamed from: f */
        final /* synthetic */ RealmConfiguration f19856f;

        /* renamed from: g */
        final /* synthetic */ Transaction f19857g;

        /* renamed from: h */
        final /* synthetic */ boolean f19858h;

        /* renamed from: i */
        final /* synthetic */ Transaction.OnSuccess f19859i;

        /* renamed from: j */
        final /* synthetic */ RealmNotifier f19860j;

        /* renamed from: k */
        final /* synthetic */ Transaction.OnError f19861k;

        /* renamed from: l */
        final /* synthetic */ Realm f19862l;

        @Override // java.lang.Runnable
        public void run() {
            final OsSharedRealm.VersionID versionID;
            if (!Thread.currentThread().isInterrupted()) {
                Realm I0 = Realm.m3062I0(this.f19856f);
                I0.m3153d();
                final Throwable th = null;
                try {
                    this.f19857g.mo3037a(I0);
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        if (I0.m3159X()) {
                            I0.m3152e();
                        }
                        I0.close();
                        versionID = null;
                    } finally {
                    }
                }
                if (Thread.currentThread().isInterrupted()) {
                    try {
                        if (I0.m3159X()) {
                            I0.m3152e();
                        }
                    } finally {
                    }
                } else {
                    I0.m3148l();
                    versionID = I0.f19809j.getVersionID();
                    try {
                        if (I0.m3159X()) {
                            I0.m3152e();
                        }
                        if (this.f19858h) {
                            if (versionID != null && this.f19859i != null) {
                                this.f19860j.post(new Runnable() { // from class: io.realm.Realm.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        if (RunnableC21401.this.f19862l.isClosed()) {
                                            RunnableC21401.this.f19859i.onSuccess();
                                        } else if (RunnableC21401.this.f19862l.f19809j.getVersionID().compareTo(versionID) < 0) {
                                            RunnableC21401.this.f19862l.f19809j.realmNotifier.addTransactionCallback(new Runnable() { // from class: io.realm.Realm.1.1.1
                                                @Override // java.lang.Runnable
                                                public void run() {
                                                    RunnableC21401.this.f19859i.onSuccess();
                                                }
                                            });
                                        } else {
                                            RunnableC21401.this.f19859i.onSuccess();
                                        }
                                    }
                                });
                            } else if (th != null) {
                                this.f19860j.post(new Runnable() { // from class: io.realm.Realm.1.2
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        Transaction.OnError onError = RunnableC21401.this.f19861k;
                                        if (onError != null) {
                                            onError.onError(th);
                                            return;
                                        }
                                        throw new RealmException("Async transaction failed", th);
                                    }
                                });
                            }
                        } else if (th != null) {
                            throw new RealmException("Async transaction failed", th);
                        }
                    } finally {
                    }
                }
            }
        }
    }

    /* renamed from: io.realm.Realm$2 */
    /* loaded from: classes2-dex2jar.jar:io/realm/Realm$2.class */
    class C21442 implements Transaction {

        /* renamed from: a */
        final /* synthetic */ String f19868a;

        @Override // io.realm.Realm.Transaction
        /* renamed from: a */
        public void mo3037a(Realm realm) {
            Table table = realm.f19809j.getTable("class___ResultSets");
            TableQuery Q = table.m2653Q();
            Q.m2620g(new long[]{table.m2638o("name")}, new long[]{0}, this.f19868a);
            OsResults g = OsResults.m2725g(realm.f19809j, Q);
            long v = g.m2710v();
            if (v != 0) {
                if (v > 1) {
                    RealmLog.m2529g("Multiple subscriptions named '" + this.f19868a + "' exists. This should not be possible. They will all be deleted", new Object[0]);
                }
                g.m2727e();
                return;
            }
            throw new IllegalArgumentException("No active subscription named '" + this.f19868a + "' exists.");
        }
    }

    /* renamed from: io.realm.Realm$3 */
    /* loaded from: classes2-dex2jar.jar:io/realm/Realm$3.class */
    class C21453 implements Transaction.OnSuccess {

        /* renamed from: a */
        final /* synthetic */ UnsubscribeCallback f19869a;

        /* renamed from: b */
        final /* synthetic */ String f19870b;

        @Override // io.realm.Realm.Transaction.OnSuccess
        public void onSuccess() {
            this.f19869a.m3035b(this.f19870b);
        }
    }

    /* renamed from: io.realm.Realm$4 */
    /* loaded from: classes2-dex2jar.jar:io/realm/Realm$4.class */
    class C21464 implements Transaction.OnError {

        /* renamed from: a */
        final /* synthetic */ UnsubscribeCallback f19871a;

        /* renamed from: b */
        final /* synthetic */ String f19872b;

        @Override // io.realm.Realm.Transaction.OnError
        public void onError(Throwable th) {
            this.f19871a.m3036a(this.f19872b, th);
        }
    }

    /* renamed from: io.realm.Realm$5 */
    /* loaded from: classes2-dex2jar.jar:io/realm/Realm$5.class */
    class C21475 implements RealmCache.Callback {

        /* renamed from: a */
        final /* synthetic */ AtomicInteger f19873a;

        @Override // io.realm.RealmCache.Callback
        /* renamed from: a */
        public void mo3012a(int i) {
            this.f19873a.set(i);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/Realm$Callback.class */
    public static abstract class Callback extends BaseRealm.InstanceCallback<Realm> {
        @Override // io.realm.BaseRealm.InstanceCallback
        /* renamed from: a */
        public void mo3040a(Throwable th) {
            super.mo3040a(th);
            throw null;
        }

        /* renamed from: c */
        public abstract void mo3039b(Realm realm);
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/Realm$Transaction.class */
    public interface Transaction {

        /* loaded from: classes2-dex2jar.jar:io/realm/Realm$Transaction$Callback.class */
        public static class Callback {
        }

        /* loaded from: classes2-dex2jar.jar:io/realm/Realm$Transaction$OnError.class */
        public interface OnError {
            void onError(Throwable th);
        }

        /* loaded from: classes2-dex2jar.jar:io/realm/Realm$Transaction$OnSuccess.class */
        public interface OnSuccess {
            void onSuccess();
        }

        /* renamed from: a */
        void mo3037a(Realm realm);
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/Realm$UnsubscribeCallback.class */
    public interface UnsubscribeCallback {
        /* renamed from: a */
        void m3036a(String str, Throwable th);

        /* renamed from: b */
        void m3035b(String str);
    }

    private Realm(RealmCache realmCache, OsSharedRealm.VersionID versionID) {
        super(realmCache, m3043x0(realmCache.m3021k().m2983p()), versionID);
        this.f19855o = new ImmutableRealmSchema(this, new ColumnIndices(this.f19807h.m2983p(), this.f19809j.getSchemaInfo()));
        if (this.f19807h.m2980s()) {
            RealmProxyMediator p = this.f19807h.m2983p();
            for (Class<? extends RealmModel> cls : p.mo2561f()) {
                String v = Table.m2631v(p.m2682g(cls));
                if (!this.f19809j.hasTable(v)) {
                    this.f19809j.close();
                    throw new RealmMigrationNeededException(this.f19807h.m2987l(), String.format(Locale.US, "Cannot open the read only Realm. '%s' is missing.", Table.m2640m(v)));
                }
            }
        }
    }

    private Realm(OsSharedRealm osSharedRealm) {
        super(osSharedRealm);
        this.f19855o = new ImmutableRealmSchema(this, new ColumnIndices(this.f19807h.m2983p(), osSharedRealm.getSchemaInfo()));
    }

    @Nullable
    /* renamed from: F0 */
    public static RealmConfiguration m3065F0() {
        RealmConfiguration realmConfiguration;
        synchronized (f19853p) {
            realmConfiguration = f19854q;
        }
        return realmConfiguration;
    }

    /* renamed from: G0 */
    public static Realm m3064G0() {
        RealmConfiguration F0 = m3065F0();
        if (F0 != null) {
            return (Realm) RealmCache.m3027e(F0, Realm.class);
        }
        if (BaseRealm.f19803m == null) {
            throw new IllegalStateException("Call `Realm.init(Context)` before calling this method.");
        }
        throw new IllegalStateException("Set default configuration by using `Realm.setDefaultConfiguration(RealmConfiguration)`.");
    }

    @Nullable
    /* renamed from: H0 */
    public static Object m3063H0() {
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

    /* renamed from: I0 */
    public static Realm m3062I0(RealmConfiguration realmConfiguration) {
        if (realmConfiguration != null) {
            return (Realm) RealmCache.m3027e(realmConfiguration, Realm.class);
        }
        throw new IllegalArgumentException("A non-null RealmConfiguration must be provided");
    }

    /* renamed from: K0 */
    public static void m3060K0(Context context) {
        synchronized (Realm.class) {
            try {
                m3058L0(context, "");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: L0 */
    private static void m3058L0(Context context, String str) {
        if (BaseRealm.f19803m != null) {
            return;
        }
        if (context != null) {
            m3051e0(context);
            RealmCore.m2688a(context);
            m3054P0(new RealmConfiguration.Builder(context).m2974a());
            ObjectServerFacade.m2817e().m2814h(context, str);
            if (context.getApplicationContext() != null) {
                BaseRealm.f19803m = context.getApplicationContext();
            } else {
                BaseRealm.f19803m = context;
            }
            OsSharedRealm.initialize(new File(context.getFilesDir(), ".realm.temp"));
            return;
        }
        throw new IllegalArgumentException("Non-null context required.");
    }

    /* renamed from: P0 */
    public static void m3054P0(RealmConfiguration realmConfiguration) {
        if (realmConfiguration != null) {
            synchronized (f19853p) {
                f19854q = realmConfiguration;
            }
            return;
        }
        throw new IllegalArgumentException("A non-null RealmConfiguration must be provided");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: e0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m3051e0(android.content.Context r6) {
        /*
            r0 = r6
            java.io.File r0 = r0.getFilesDir()
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x001a
            r0 = r7
            boolean r0 = r0.exists()
            if (r0 == 0) goto L_0x0011
            return
        L_0x0011:
            r0 = r7
            boolean r0 = r0.mkdirs()     // Catch: SecurityException -> 0x0019
            goto L_0x001a
        L_0x0019:
            r8 = move-exception
        L_0x001a:
            r0 = r7
            if (r0 == 0) goto L_0x0025
            r0 = r7
            boolean r0 = r0.exists()
            if (r0 != 0) goto L_0x0081
        L_0x0025:
            r0 = 0
            r9 = r0
            r0 = -1
            r11 = r0
        L_0x002a:
            r0 = r6
            java.io.File r0 = r0.getFilesDir()
            if (r0 == 0) goto L_0x003b
            r0 = r6
            java.io.File r0 = r0.getFilesDir()
            boolean r0 = r0.exists()
            if (r0 != 0) goto L_0x0081
        L_0x003b:
            int r11 = r11 + 1
            r0 = r11
            r1 = 4
            int r0 = java.lang.Math.min(r0, r1)
            r12 = r0
            r0 = 5
            long[] r0 = new long[r0]
            r1 = r0
            r2 = 0
            r3 = 1
            r1[r2] = r3
            r1 = r0
            r2 = 1
            r3 = 2
            r1[r2] = r3
            r1 = r0
            r2 = 2
            r3 = 5
            r1[r2] = r3
            r1 = r0
            r2 = 3
            r3 = 10
            r1[r2] = r3
            r1 = r0
            r2 = 4
            r3 = 16
            r1[r2] = r3
            r1 = r12
            r0 = r0[r1]
            r13 = r0
            r0 = r13
            android.os.SystemClock.sleep(r0)
            r0 = r9
            r1 = r13
            long r0 = r0 + r1
            r13 = r0
            r0 = r13
            r9 = r0
            r0 = r13
            r1 = 200(0xc8, double:9.9E-322)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x002a
        L_0x0081:
            r0 = r6
            java.io.File r0 = r0.getFilesDir()
            if (r0 == 0) goto L_0x0093
            r0 = r6
            java.io.File r0 = r0.getFilesDir()
            boolean r0 = r0.exists()
            if (r0 == 0) goto L_0x0093
            return
        L_0x0093:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "Context.getFilesDir() returns "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r6
            java.io.File r1 = r1.getFilesDir()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            java.lang.String r1 = " which is not an existing directory. See https://issuetracker.google.com/issues/36918154"
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            r2 = r8
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.Realm.m3051e0(android.content.Context):void");
    }

    /* renamed from: i0 */
    private void m3050i0(Class<? extends RealmModel> cls) {
        if (this.f19809j.getSchemaInfo().m2701b(this.f19807h.m2983p().m2682g(cls)).m2749c() == null) {
            throw new IllegalArgumentException("A RealmObject with no @PrimaryKey cannot be updated: " + cls.toString());
        }
    }

    /* renamed from: j0 */
    private <E extends RealmModel> void m3049j0(E e) {
        if (e == null) {
            throw new IllegalArgumentException("Null objects cannot be copied into Realm.");
        }
    }

    /* renamed from: o0 */
    private <E extends RealmModel> E m3048o0(E e, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        m3151h();
        if (m3159X()) {
            try {
                return (E) this.f19807h.m2983p().mo2564b(this, e, z, map, set);
            } catch (IllegalStateException e2) {
                if (e2.getMessage().startsWith("Attempting to create an object of type")) {
                    throw new RealmPrimaryKeyConstraintException(e2.getMessage());
                }
                throw e2;
            }
        } else {
            throw new IllegalStateException("`copyOrUpdate` can only be called inside a write transaction.");
        }
    }

    /* renamed from: x0 */
    private static OsSchemaInfo m3043x0(RealmProxyMediator realmProxyMediator) {
        return new OsSchemaInfo(realmProxyMediator.mo2562d().values());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: y0 */
    public static Realm m3042y0(RealmCache realmCache, OsSharedRealm.VersionID versionID) {
        return new Realm(realmCache, versionID);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: z0 */
    public static Realm m3041z0(OsSharedRealm osSharedRealm) {
        return new Realm(osSharedRealm);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: A0 */
    public <E extends RealmModel> E m3070A0(Class<E> cls, @Nullable Object obj, boolean z, List<String> list) {
        return (E) this.f19807h.m2983p().mo2557k(cls, this, OsObject.createWithPrimaryKey(this.f19855o.m2850k(cls), obj), this.f19855o.m2854g(cls), z, list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: B0 */
    public <E extends RealmModel> E m3069B0(Class<E> cls, boolean z, List<String> list) {
        Table k = this.f19855o.m2850k(cls);
        if (OsObjectStore.m2744b(this.f19809j, this.f19807h.m2983p().m2682g(cls)) == null) {
            return (E) this.f19807h.m2983p().mo2557k(cls, this, OsObject.create(k), this.f19855o.m2854g(cls), z, list);
        }
        throw new RealmException(String.format(Locale.US, "'%s' has a primary key, use 'createObject(Class<E>, Object)' instead.", k.m2641l()));
    }

    /* renamed from: C0 */
    public void m3068C0(Class<? extends RealmModel> cls) {
        m3151h();
        if (!this.f19809j.isPartial()) {
            this.f19855o.m2850k(cls).m2649d(this.f19809j.isPartial());
            return;
        }
        throw new IllegalStateException("This API is not supported by partially synchronized Realms. Either unsubscribe using 'Realm.unsubscribeAsync()' or delete the objects using a query and 'RealmResults.deleteAllFromRealm()'");
    }

    /* renamed from: D0 */
    public void m3067D0(Transaction transaction) {
        if (transaction != null) {
            m3153d();
            try {
                transaction.mo3037a(this);
                m3148l();
            } catch (Throwable th) {
                if (m3159X()) {
                    m3152e();
                } else {
                    RealmLog.m2529g("Could not cancel transaction, not currently in a transaction.", new Object[0]);
                }
                throw th;
            }
        } else {
            throw new IllegalArgumentException("Transaction should not be null");
        }
    }

    /* renamed from: E0 */
    public Realm mo3047t() {
        return (Realm) RealmCache.m3026f(this.f19807h, Realm.class, this.f19809j.getVersionID());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: J0 */
    public Table m3061J0(Class<? extends RealmModel> cls) {
        return this.f19855o.m2850k(cls);
    }

    @Override // io.realm.BaseRealm
    /* renamed from: L */
    public RealmSchema mo3059L() {
        return this.f19855o;
    }

    /* renamed from: M0 */
    public void m3057M0(RealmModel realmModel) {
        m3150i();
        if (realmModel != null) {
            this.f19807h.m2983p().mo2559i(this, realmModel, new HashMap());
            return;
        }
        throw new IllegalArgumentException("Null object cannot be inserted into Realm.");
    }

    /* renamed from: N0 */
    public void m3056N0(RealmModel realmModel) {
        m3150i();
        if (realmModel != null) {
            this.f19807h.m2983p().mo2558j(this, realmModel, new HashMap());
            return;
        }
        throw new IllegalArgumentException("Null object cannot be inserted into Realm.");
    }

    /* renamed from: O0 */
    public void m3055O0(RealmChangeListener<Realm> realmChangeListener) {
        m3157Z(realmChangeListener);
    }

    /* renamed from: Q0 */
    public <E extends RealmModel> RealmQuery<E> m3053Q0(Class<E> cls) {
        m3151h();
        return RealmQuery.m2894h(this, cls);
    }

    /* renamed from: d0 */
    public void m3052d0(RealmChangeListener<Realm> realmChangeListener) {
        m3155b(realmChangeListener);
    }

    /* renamed from: u0 */
    public <E extends RealmModel> E m3046u0(E e, ImportFlag... importFlagArr) {
        m3049j0(e);
        return (E) m3048o0(e, false, new HashMap(), Util.m2595e(importFlagArr));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: v0 */
    public <E extends RealmModel> E m3045v0(E e, ImportFlag... importFlagArr) {
        m3049j0(e);
        m3050i0(e.getClass());
        return (E) m3048o0(e, true, new HashMap(), Util.m2595e(importFlagArr));
    }

    /* renamed from: w0 */
    public <E extends RealmModel> List<E> m3044w0(Iterable<E> iterable, ImportFlag... importFlagArr) {
        if (iterable == null) {
            return new ArrayList(0);
        }
        ArrayList arrayList = iterable instanceof Collection ? new ArrayList(((Collection) iterable).size()) : new ArrayList();
        HashMap hashMap = new HashMap();
        Set<ImportFlag> e = Util.m2595e(importFlagArr);
        for (E e2 : iterable) {
            m3049j0(e2);
            arrayList.add(m3048o0(e2, true, hashMap, e));
        }
        return arrayList;
    }
}
