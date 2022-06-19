package androidx.room;

import android.app.ActivityManager;
import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Looper;
import android.util.Log;
import androidx.p010a.p011a.p012a.C0098a;
import androidx.room.p080a.AbstractC2715a;
import androidx.sqlite.p082db.AbstractC2792b;
import androidx.sqlite.p082db.AbstractC2794d;
import androidx.sqlite.p082db.AbstractC2795e;
import androidx.sqlite.p082db.SupportSQLiteOpenHelper;
import androidx.sqlite.p082db.p083a.C2789c;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantReadWriteLock;
/* renamed from: androidx.room.h */
/* loaded from: classes-dex2jar.jar:androidx/room/h.class */
public abstract class AbstractC2748h {
    @Deprecated

    /* renamed from: a */
    public volatile AbstractC2792b f10415a;

    /* renamed from: b */
    Executor f10416b;

    /* renamed from: c */
    Executor f10417c;

    /* renamed from: d */
    SupportSQLiteOpenHelper f10418d;

    /* renamed from: f */
    boolean f10420f;
    @Deprecated

    /* renamed from: g */
    public List<AbstractC2750b> f10421g;

    /* renamed from: i */
    private boolean f10423i;

    /* renamed from: h */
    final ReentrantReadWriteLock f10422h = new ReentrantReadWriteLock();

    /* renamed from: j */
    private final ThreadLocal<Integer> f10424j = new ThreadLocal<>();

    /* renamed from: k */
    private final Map<String, Object> f10425k = new ConcurrentHashMap();

    /* renamed from: e */
    public final C2733e f10419e = mo39487a();

    /* renamed from: androidx.room.h$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/h$a.class */
    public static final class C2749a<T extends AbstractC2748h> {

        /* renamed from: a */
        public ArrayList<AbstractC2750b> f10426a;

        /* renamed from: b */
        public Executor f10427b;

        /* renamed from: c */
        public SupportSQLiteOpenHelper.AbstractC2782b f10428c;

        /* renamed from: d */
        public boolean f10429d;

        /* renamed from: f */
        public boolean f10431f;

        /* renamed from: g */
        private final Class<T> f10432g;

        /* renamed from: h */
        private final String f10433h;

        /* renamed from: i */
        private final Context f10434i;

        /* renamed from: j */
        private Executor f10435j;

        /* renamed from: l */
        private boolean f10437l;

        /* renamed from: n */
        private Set<Integer> f10439n;

        /* renamed from: o */
        private Set<Integer> f10440o;

        /* renamed from: p */
        private String f10441p;

        /* renamed from: q */
        private File f10442q;

        /* renamed from: k */
        private EnumC2751c f10436k = EnumC2751c.AUTOMATIC;

        /* renamed from: e */
        public boolean f10430e = true;

        /* renamed from: m */
        private final C2752d f10438m = new C2752d();

        public C2749a(Context context, Class<T> cls, String str) {
            this.f10434i = context;
            this.f10432g = cls;
            this.f10433h = str;
        }

        /* renamed from: a */
        public final C2749a<T> m39954a(AbstractC2715a... abstractC2715aArr) {
            if (this.f10440o == null) {
                this.f10440o = new HashSet();
            }
            for (int i = 0; i <= 0; i++) {
                AbstractC2715a abstractC2715a = abstractC2715aArr[0];
                this.f10440o.add(Integer.valueOf(abstractC2715a.f10333a));
                this.f10440o.add(Integer.valueOf(abstractC2715a.f10334b));
            }
            this.f10438m.m39952a(abstractC2715aArr);
            return this;
        }

        /* renamed from: a */
        public final T m39955a() {
            Executor executor;
            if (this.f10434i != null) {
                if (this.f10432g == null) {
                    throw new IllegalArgumentException("Must provide an abstract class that extends RoomDatabase");
                }
                Executor executor2 = this.f10427b;
                if (executor2 == null && this.f10435j == null) {
                    Executor m46410b = C0098a.m46410b();
                    this.f10435j = m46410b;
                    this.f10427b = m46410b;
                } else if (executor2 != null && this.f10435j == null) {
                    this.f10435j = executor2;
                } else if (executor2 == null && (executor = this.f10435j) != null) {
                    this.f10427b = executor;
                }
                Set<Integer> set = this.f10440o;
                if (set != null && this.f10439n != null) {
                    for (Integer num : set) {
                        if (this.f10439n.contains(num)) {
                            throw new IllegalArgumentException("Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: ".concat(String.valueOf(num)));
                        }
                    }
                }
                if (this.f10428c == null) {
                    this.f10428c = new C2789c();
                }
                String str = this.f10441p;
                if (str != null || this.f10442q != null) {
                    if (this.f10433h == null) {
                        throw new IllegalArgumentException("Cannot create from asset or file for an in-memory database.");
                    }
                    if (str != null && this.f10442q != null) {
                        throw new IllegalArgumentException("Both createFromAsset() and createFromFile() was called on this Builder but the database can only be created using one of the two configurations.");
                    }
                    this.f10428c = new C2763n(str, this.f10442q, this.f10428c);
                }
                Context context = this.f10434i;
                DatabaseConfiguration databaseConfiguration = new DatabaseConfiguration(context, this.f10433h, this.f10428c, this.f10438m, this.f10426a, this.f10429d, this.f10436k.resolve(context), this.f10427b, this.f10435j, this.f10437l, this.f10430e, this.f10431f, this.f10439n, this.f10441p, this.f10442q);
                T t = (T) C2747g.m39967a(this.f10432g, "_Impl");
                t.m39966a(databaseConfiguration);
                return t;
            }
            throw new IllegalArgumentException("Cannot provide null context for the database.");
        }
    }

    /* renamed from: androidx.room.h$b */
    /* loaded from: classes-dex2jar.jar:androidx/room/h$b.class */
    public static abstract class AbstractC2750b {
        /* renamed from: a */
        public void mo39488a(AbstractC2792b abstractC2792b) {
        }
    }

    /* renamed from: androidx.room.h$c */
    /* loaded from: classes-dex2jar.jar:androidx/room/h$c.class */
    public enum EnumC2751c {
        AUTOMATIC,
        TRUNCATE,
        WRITE_AHEAD_LOGGING;

        private static boolean isLowRamDevice(ActivityManager activityManager) {
            if (Build.VERSION.SDK_INT >= 19) {
                return activityManager.isLowRamDevice();
            }
            return false;
        }

        final EnumC2751c resolve(Context context) {
            ActivityManager activityManager;
            return this != AUTOMATIC ? this : (Build.VERSION.SDK_INT < 16 || (activityManager = (ActivityManager) context.getSystemService("activity")) == null || isLowRamDevice(activityManager)) ? TRUNCATE : WRITE_AHEAD_LOGGING;
        }
    }

    /* renamed from: androidx.room.h$d */
    /* loaded from: classes-dex2jar.jar:androidx/room/h$d.class */
    public static final class C2752d {

        /* renamed from: a */
        private HashMap<Integer, TreeMap<Integer, AbstractC2715a>> f10443a = new HashMap<>();

        /* JADX WARN: Code restructure failed: missing block: B:23:0x0081, code lost:
            if (r0 > r7) goto L24;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0084, code lost:
            r15 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x009c, code lost:
            if (r0 < r7) goto L24;
         */
        /* JADX WARN: Removed duplicated region for block: B:11:0x002a  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x0028 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:42:0x00a7 A[SYNTHETIC] */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.util.List<androidx.room.p080a.AbstractC2715a> m39953a(java.util.List<androidx.room.p080a.AbstractC2715a> r5, boolean r6, int r7, int r8) {
            /*
                r4 = this;
            L0:
                r0 = r6
                if (r0 == 0) goto Ld
                r0 = r7
                r1 = r8
                if (r0 >= r1) goto Lcc
                goto L13
            Ld:
                r0 = r7
                r1 = r8
                if (r0 <= r1) goto Lcc
            L13:
                r0 = r4
                java.util.HashMap<java.lang.Integer, java.util.TreeMap<java.lang.Integer, androidx.room.a.a>> r0 = r0.f10443a
                r1 = r7
                java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
                java.lang.Object r0 = r0.get(r1)
                java.util.TreeMap r0 = (java.util.TreeMap) r0
                r9 = r0
                r0 = r9
                if (r0 != 0) goto L2a
                r0 = 0
                return r0
            L2a:
                r0 = r6
                if (r0 == 0) goto L38
                r0 = r9
                java.util.NavigableSet r0 = r0.descendingKeySet()
                r10 = r0
                goto L3f
            L38:
                r0 = r9
                java.util.Set r0 = r0.keySet()
                r10 = r0
            L3f:
                r0 = r10
                java.util.Iterator r0 = r0.iterator()
                r10 = r0
            L48:
                r0 = r10
                boolean r0 = r0.hasNext()
                r11 = r0
                r0 = 1
                r12 = r0
                r0 = 0
                r13 = r0
                r0 = r11
                if (r0 == 0) goto Lc2
                r0 = r10
                java.lang.Object r0 = r0.next()
                java.lang.Integer r0 = (java.lang.Integer) r0
                int r0 = r0.intValue()
                r14 = r0
                r0 = r6
                if (r0 == 0) goto L8a
                r0 = r13
                r15 = r0
                r0 = r14
                r1 = r8
                if (r0 > r1) goto La2
                r0 = r13
                r15 = r0
                r0 = r14
                r1 = r7
                if (r0 <= r1) goto La2
            L84:
                r0 = 1
                r15 = r0
                goto La2
            L8a:
                r0 = r13
                r15 = r0
                r0 = r14
                r1 = r8
                if (r0 < r1) goto La2
                r0 = r13
                r15 = r0
                r0 = r14
                r1 = r7
                if (r0 >= r1) goto La2
                goto L84
            La2:
                r0 = r15
                if (r0 == 0) goto L48
                r0 = r5
                r1 = r9
                r2 = r14
                java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
                java.lang.Object r1 = r1.get(r2)
                boolean r0 = r0.add(r1)
                r0 = r14
                r7 = r0
                r0 = r12
                r15 = r0
                goto Lc5
            Lc2:
                r0 = 0
                r15 = r0
            Lc5:
                r0 = r15
                if (r0 != 0) goto L0
                r0 = 0
                return r0
            Lcc:
                r0 = r5
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.AbstractC2748h.C2752d.m39953a(java.util.List, boolean, int, int):java.util.List");
        }

        /* renamed from: a */
        public final void m39952a(AbstractC2715a... abstractC2715aArr) {
            for (AbstractC2715a abstractC2715a : abstractC2715aArr) {
                int i = abstractC2715a.f10333a;
                int i2 = abstractC2715a.f10334b;
                TreeMap<Integer, AbstractC2715a> treeMap = this.f10443a.get(Integer.valueOf(i));
                TreeMap<Integer, AbstractC2715a> treeMap2 = treeMap;
                if (treeMap == null) {
                    treeMap2 = new TreeMap<>();
                    this.f10443a.put(Integer.valueOf(i), treeMap2);
                }
                AbstractC2715a abstractC2715a2 = treeMap2.get(Integer.valueOf(i2));
                if (abstractC2715a2 != null) {
                    Log.w("ROOM", "Overriding migration " + abstractC2715a2 + " with " + abstractC2715a);
                }
                treeMap2.put(Integer.valueOf(i2), abstractC2715a);
            }
        }
    }

    /* renamed from: a */
    public final Cursor m39964a(AbstractC2794d abstractC2794d, CancellationSignal cancellationSignal) {
        m39961c();
        m39960d();
        return this.f10418d.mo39906b().mo39900a(abstractC2794d);
    }

    /* renamed from: a */
    protected abstract C2733e mo39487a();

    /* renamed from: a */
    public final AbstractC2795e m39963a(String str) {
        m39961c();
        m39960d();
        return this.f10418d.mo39906b().mo39899a(str);
    }

    /* renamed from: a */
    public final void m39966a(DatabaseConfiguration databaseConfiguration) {
        SupportSQLiteOpenHelper mo39484b = mo39484b(databaseConfiguration);
        this.f10418d = mo39484b;
        if (mo39484b instanceof C2762m) {
            ((C2762m) mo39484b).f10473a = databaseConfiguration;
        }
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 16) {
            z = false;
            if (databaseConfiguration.journalMode == EnumC2751c.WRITE_AHEAD_LOGGING) {
                z = true;
            }
            this.f10418d.mo39907a(z);
        }
        this.f10421g = databaseConfiguration.callbacks;
        this.f10416b = databaseConfiguration.queryExecutor;
        this.f10417c = new ExecutorC2765p(databaseConfiguration.transactionExecutor);
        this.f10423i = databaseConfiguration.allowMainThreadQueries;
        this.f10420f = z;
        if (databaseConfiguration.multiInstanceInvalidation) {
            C2733e c2733e = this.f10419e;
            c2733e.f10376h = new C2739f(databaseConfiguration.context, databaseConfiguration.name, c2733e, c2733e.f10371c.f10416b);
        }
    }

    /* renamed from: a */
    public final void m39965a(AbstractC2792b abstractC2792b) {
        C2733e c2733e = this.f10419e;
        synchronized (c2733e) {
            if (c2733e.f10373e) {
                Log.e("ROOM", "Invalidation tracker is initialized twice :/.");
                return;
            }
            abstractC2792b.mo39894c("PRAGMA temp_store = MEMORY;");
            abstractC2792b.mo39894c("PRAGMA recursive_triggers='ON';");
            abstractC2792b.mo39894c("CREATE TEMP TABLE room_table_modification_log(table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)");
            c2733e.m39979a(abstractC2792b);
            c2733e.f10374f = abstractC2792b.mo39899a("UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1 ");
            c2733e.f10373e = true;
        }
    }

    /* renamed from: b */
    protected abstract SupportSQLiteOpenHelper mo39484b(DatabaseConfiguration databaseConfiguration);

    /* renamed from: b */
    public final boolean m39962b() {
        AbstractC2792b abstractC2792b = this.f10415a;
        return abstractC2792b != null && abstractC2792b.mo39892e();
    }

    /* renamed from: c */
    public final void m39961c() {
        if (this.f10423i) {
            return;
        }
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    /* renamed from: d */
    public final void m39960d() {
        if (m39956h() || this.f10424j.get() == null) {
            return;
        }
        throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.");
    }

    @Deprecated
    /* renamed from: e */
    public final void m39959e() {
        m39961c();
        AbstractC2792b mo39906b = this.f10418d.mo39906b();
        this.f10419e.m39979a(mo39906b);
        mo39906b.mo39901a();
    }

    @Deprecated
    /* renamed from: f */
    public final void m39958f() {
        this.f10418d.mo39906b().mo39897b();
        if (!m39956h()) {
            C2733e c2733e = this.f10419e;
            if (!c2733e.f10372d.compareAndSet(false, true)) {
                return;
            }
            c2733e.f10371c.f10416b.execute(c2733e.f10377i);
        }
    }

    @Deprecated
    /* renamed from: g */
    public final void m39957g() {
        this.f10418d.mo39906b().mo39895c();
    }

    /* renamed from: h */
    public final boolean m39956h() {
        return this.f10418d.mo39906b().mo39893d();
    }
}
