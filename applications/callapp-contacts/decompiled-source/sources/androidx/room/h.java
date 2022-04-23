package androidx.room;

import android.app.ActivityManager;
import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Looper;
import android.util.Log;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.e;
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
/* loaded from: classes-dex2jar.jar:androidx/room/h.class */
public abstract class h {
    @Deprecated

    /* renamed from: a  reason: collision with root package name */
    public volatile androidx.sqlite.db.b f5571a;

    /* renamed from: b  reason: collision with root package name */
    Executor f5572b;

    /* renamed from: c  reason: collision with root package name */
    Executor f5573c;

    /* renamed from: d  reason: collision with root package name */
    SupportSQLiteOpenHelper f5574d;
    boolean f;
    @Deprecated
    public List<b> g;
    private boolean i;
    final ReentrantReadWriteLock h = new ReentrantReadWriteLock();
    private final ThreadLocal<Integer> j = new ThreadLocal<>();
    private final Map<String, Object> k = new ConcurrentHashMap();
    public final e e = a();

    /* loaded from: classes-dex2jar.jar:androidx/room/h$a.class */
    public static final class a<T extends h> {

        /* renamed from: a  reason: collision with root package name */
        public ArrayList<b> f5575a;

        /* renamed from: b  reason: collision with root package name */
        public Executor f5576b;

        /* renamed from: c  reason: collision with root package name */
        public SupportSQLiteOpenHelper.b f5577c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f5578d;
        public boolean f;
        private final Class<T> g;
        private final String h;
        private final Context i;
        private Executor j;
        private boolean l;
        private Set<Integer> n;
        private Set<Integer> o;
        private String p;
        private File q;
        private c k = c.AUTOMATIC;
        public boolean e = true;
        private final d m = new d();

        public a(Context context, Class<T> cls, String str) {
            this.i = context;
            this.g = cls;
            this.h = str;
        }

        public final a<T> a(androidx.room.a.a... aVarArr) {
            if (this.o == null) {
                this.o = new HashSet();
            }
            for (int i = 0; i <= 0; i++) {
                androidx.room.a.a aVar = aVarArr[0];
                this.o.add(Integer.valueOf(aVar.f5513a));
                this.o.add(Integer.valueOf(aVar.f5514b));
            }
            this.m.a(aVarArr);
            return this;
        }

        public final T a() {
            Executor executor;
            if (this.i == null) {
                throw new IllegalArgumentException("Cannot provide null context for the database.");
            } else if (this.g != null) {
                Executor executor2 = this.f5576b;
                if (executor2 == null && this.j == null) {
                    Executor b2 = androidx.a.a.a.a.b();
                    this.j = b2;
                    this.f5576b = b2;
                } else if (executor2 != null && this.j == null) {
                    this.j = executor2;
                } else if (executor2 == null && (executor = this.j) != null) {
                    this.f5576b = executor;
                }
                Set<Integer> set = this.o;
                if (!(set == null || this.n == null)) {
                    for (Integer num : set) {
                        if (this.n.contains(num)) {
                            throw new IllegalArgumentException("Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: ".concat(String.valueOf(num)));
                        }
                    }
                }
                if (this.f5577c == null) {
                    this.f5577c = new androidx.sqlite.db.a.c();
                }
                String str = this.p;
                if (!(str == null && this.q == null)) {
                    if (this.h == null) {
                        throw new IllegalArgumentException("Cannot create from asset or file for an in-memory database.");
                    } else if (str == null || this.q == null) {
                        this.f5577c = new n(str, this.q, this.f5577c);
                    } else {
                        throw new IllegalArgumentException("Both createFromAsset() and createFromFile() was called on this Builder but the database can only be created using one of the two configurations.");
                    }
                }
                Context context = this.i;
                DatabaseConfiguration databaseConfiguration = new DatabaseConfiguration(context, this.h, this.f5577c, this.m, this.f5575a, this.f5578d, this.k.resolve(context), this.f5576b, this.j, this.l, this.e, this.f, this.n, this.p, this.q);
                T t = (T) ((h) g.a(this.g, "_Impl"));
                t.a(databaseConfiguration);
                return t;
            } else {
                throw new IllegalArgumentException("Must provide an abstract class that extends RoomDatabase");
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/room/h$b.class */
    public static abstract class b {
        public void a(androidx.sqlite.db.b bVar) {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/room/h$c.class */
    public enum c {
        AUTOMATIC,
        TRUNCATE,
        WRITE_AHEAD_LOGGING;

        private static boolean isLowRamDevice(ActivityManager activityManager) {
            if (Build.VERSION.SDK_INT >= 19) {
                return activityManager.isLowRamDevice();
            }
            return false;
        }

        final c resolve(Context context) {
            ActivityManager activityManager;
            return this != AUTOMATIC ? this : (Build.VERSION.SDK_INT < 16 || (activityManager = (ActivityManager) context.getSystemService("activity")) == null || isLowRamDevice(activityManager)) ? TRUNCATE : WRITE_AHEAD_LOGGING;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/room/h$d.class */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        private HashMap<Integer, TreeMap<Integer, androidx.room.a.a>> f5579a = new HashMap<>();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0081, code lost:
            if (r0 > r7) goto L_0x0084;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0084, code lost:
            r15 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x009c, code lost:
            if (r0 < r7) goto L_0x0084;
         */
        /* JADX WARN: Removed duplicated region for block: B:11:0x002a  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x0028 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:42:0x00a7 A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.util.List<androidx.room.a.a> a(java.util.List<androidx.room.a.a> r5, boolean r6, int r7, int r8) {
            /*
                r4 = this;
            L_0x0000:
                r0 = r6
                if (r0 == 0) goto L_0x000d
                r0 = r7
                r1 = r8
                if (r0 >= r1) goto L_0x00cc
                goto L_0x0013
            L_0x000d:
                r0 = r7
                r1 = r8
                if (r0 <= r1) goto L_0x00cc
            L_0x0013:
                r0 = r4
                java.util.HashMap<java.lang.Integer, java.util.TreeMap<java.lang.Integer, androidx.room.a.a>> r0 = r0.f5579a
                r1 = r7
                java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
                java.lang.Object r0 = r0.get(r1)
                java.util.TreeMap r0 = (java.util.TreeMap) r0
                r9 = r0
                r0 = r9
                if (r0 != 0) goto L_0x002a
                r0 = 0
                return r0
            L_0x002a:
                r0 = r6
                if (r0 == 0) goto L_0x0038
                r0 = r9
                java.util.NavigableSet r0 = r0.descendingKeySet()
                r10 = r0
                goto L_0x003f
            L_0x0038:
                r0 = r9
                java.util.Set r0 = r0.keySet()
                r10 = r0
            L_0x003f:
                r0 = r10
                java.util.Iterator r0 = r0.iterator()
                r10 = r0
            L_0x0048:
                r0 = r10
                boolean r0 = r0.hasNext()
                r11 = r0
                r0 = 1
                r12 = r0
                r0 = 0
                r13 = r0
                r0 = r11
                if (r0 == 0) goto L_0x00c2
                r0 = r10
                java.lang.Object r0 = r0.next()
                java.lang.Integer r0 = (java.lang.Integer) r0
                int r0 = r0.intValue()
                r14 = r0
                r0 = r6
                if (r0 == 0) goto L_0x008a
                r0 = r13
                r15 = r0
                r0 = r14
                r1 = r8
                if (r0 > r1) goto L_0x00a2
                r0 = r13
                r15 = r0
                r0 = r14
                r1 = r7
                if (r0 <= r1) goto L_0x00a2
            L_0x0084:
                r0 = 1
                r15 = r0
                goto L_0x00a2
            L_0x008a:
                r0 = r13
                r15 = r0
                r0 = r14
                r1 = r8
                if (r0 < r1) goto L_0x00a2
                r0 = r13
                r15 = r0
                r0 = r14
                r1 = r7
                if (r0 >= r1) goto L_0x00a2
                goto L_0x0084
            L_0x00a2:
                r0 = r15
                if (r0 == 0) goto L_0x0048
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
                goto L_0x00c5
            L_0x00c2:
                r0 = 0
                r15 = r0
            L_0x00c5:
                r0 = r15
                if (r0 != 0) goto L_0x0000
                r0 = 0
                return r0
            L_0x00cc:
                r0 = r5
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.h.d.a(java.util.List, boolean, int, int):java.util.List");
        }

        public final void a(androidx.room.a.a... aVarArr) {
            for (androidx.room.a.a aVar : aVarArr) {
                int i = aVar.f5513a;
                int i2 = aVar.f5514b;
                TreeMap<Integer, androidx.room.a.a> treeMap = this.f5579a.get(Integer.valueOf(i));
                TreeMap<Integer, androidx.room.a.a> treeMap2 = treeMap;
                if (treeMap == null) {
                    treeMap2 = new TreeMap<>();
                    this.f5579a.put(Integer.valueOf(i), treeMap2);
                }
                androidx.room.a.a aVar2 = treeMap2.get(Integer.valueOf(i2));
                if (aVar2 != null) {
                    Log.w("ROOM", "Overriding migration " + aVar2 + " with " + aVar);
                }
                treeMap2.put(Integer.valueOf(i2), aVar);
            }
        }
    }

    public final Cursor a(androidx.sqlite.db.d dVar, CancellationSignal cancellationSignal) {
        c();
        d();
        return this.f5574d.b().a(dVar);
    }

    protected abstract e a();

    public final e a(String str) {
        c();
        d();
        return this.f5574d.b().a(str);
    }

    public final void a(DatabaseConfiguration databaseConfiguration) {
        SupportSQLiteOpenHelper b2 = b(databaseConfiguration);
        this.f5574d = b2;
        if (b2 instanceof m) {
            ((m) b2).f5593a = databaseConfiguration;
        }
        boolean z = false;
        z = false;
        if (Build.VERSION.SDK_INT >= 16) {
            if (databaseConfiguration.journalMode == c.WRITE_AHEAD_LOGGING) {
                z = true;
            }
            this.f5574d.a(z);
        }
        this.g = databaseConfiguration.callbacks;
        this.f5572b = databaseConfiguration.queryExecutor;
        this.f5573c = new p(databaseConfiguration.transactionExecutor);
        this.i = databaseConfiguration.allowMainThreadQueries;
        this.f = z;
        if (databaseConfiguration.multiInstanceInvalidation) {
            e eVar = this.e;
            eVar.h = new f(databaseConfiguration.context, databaseConfiguration.name, eVar, eVar.f5545c.f5572b);
        }
    }

    public final void a(androidx.sqlite.db.b bVar) {
        e eVar = this.e;
        synchronized (eVar) {
            if (eVar.e) {
                Log.e("ROOM", "Invalidation tracker is initialized twice :/.");
                return;
            }
            bVar.c("PRAGMA temp_store = MEMORY;");
            bVar.c("PRAGMA recursive_triggers='ON';");
            bVar.c("CREATE TEMP TABLE room_table_modification_log(table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)");
            eVar.a(bVar);
            eVar.f = bVar.a("UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1 ");
            eVar.e = true;
        }
    }

    protected abstract SupportSQLiteOpenHelper b(DatabaseConfiguration databaseConfiguration);

    public final boolean b() {
        androidx.sqlite.db.b bVar = this.f5571a;
        return bVar != null && bVar.e();
    }

    public final void c() {
        if (!this.i) {
            if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
                throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
            }
        }
    }

    public final void d() {
        if (!h() && this.j.get() != null) {
            throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.");
        }
    }

    @Deprecated
    public final void e() {
        c();
        androidx.sqlite.db.b b2 = this.f5574d.b();
        this.e.a(b2);
        b2.a();
    }

    @Deprecated
    public final void f() {
        this.f5574d.b().b();
        if (!h()) {
            e eVar = this.e;
            if (eVar.f5546d.compareAndSet(false, true)) {
                eVar.f5545c.f5572b.execute(eVar.i);
            }
        }
    }

    @Deprecated
    public final void g() {
        this.f5574d.b().c();
    }

    public final boolean h() {
        return this.f5574d.b().d();
    }
}
