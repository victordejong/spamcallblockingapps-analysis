package androidx.room;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Looper;
import android.util.Log;
import androidx.room.p011p.AbstractC1030a;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p020b.p029b.p030a.p031a.C1468a;
import p020b.p070r.p071a.AbstractC1772b;
import p020b.p070r.p071a.AbstractC1773c;
import p020b.p070r.p071a.AbstractC1779e;
import p020b.p070r.p071a.AbstractC1780f;
import p020b.p070r.p071a.p072g.C1787c;
/* loaded from: classes-dex2jar.jar:androidx/room/RoomDatabase.class */
public abstract class RoomDatabase {
    @Deprecated

    /* renamed from: a */
    protected volatile AbstractC1772b f4404a;

    /* renamed from: b */
    private Executor f4405b;

    /* renamed from: c */
    private Executor f4406c;

    /* renamed from: d */
    private AbstractC1773c f4407d;

    /* renamed from: f */
    private boolean f4409f;

    /* renamed from: g */
    boolean f4410g;
    @Deprecated

    /* renamed from: h */
    protected List<AbstractC0995b> f4411h;

    /* renamed from: i */
    private final ReentrantReadWriteLock f4412i = new ReentrantReadWriteLock();

    /* renamed from: j */
    private final ThreadLocal<Integer> f4413j = new ThreadLocal<>();

    /* renamed from: k */
    private final Map<String, Object> f4414k = new ConcurrentHashMap();

    /* renamed from: e */
    private final C1006f f4408e = mo30514e();

    /* loaded from: classes-dex2jar.jar:androidx/room/RoomDatabase$JournalMode.class */
    public enum JournalMode {
        AUTOMATIC,
        TRUNCATE,
        WRITE_AHEAD_LOGGING;

        /* renamed from: a */
        private static boolean m31279a(ActivityManager activityManager) {
            if (Build.VERSION.SDK_INT >= 19) {
                return activityManager.isLowRamDevice();
            }
            return false;
        }

        @SuppressLint({"NewApi"})
        JournalMode resolve(Context context) {
            ActivityManager activityManager;
            return this != AUTOMATIC ? this : (Build.VERSION.SDK_INT < 16 || (activityManager = (ActivityManager) context.getSystemService("activity")) == null || m31279a(activityManager)) ? TRUNCATE : WRITE_AHEAD_LOGGING;
        }
    }

    /* renamed from: androidx.room.RoomDatabase$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/RoomDatabase$a.class */
    public static class C0994a<T extends RoomDatabase> {

        /* renamed from: a */
        private final Class<T> f4419a;

        /* renamed from: b */
        private final String f4420b;

        /* renamed from: c */
        private final Context f4421c;

        /* renamed from: d */
        private ArrayList<AbstractC0995b> f4422d;

        /* renamed from: e */
        private Executor f4423e;

        /* renamed from: f */
        private Executor f4424f;

        /* renamed from: g */
        private AbstractC1773c.AbstractC1777c f4425g;

        /* renamed from: h */
        private boolean f4426h;

        /* renamed from: j */
        private boolean f4428j;

        /* renamed from: l */
        private boolean f4430l;

        /* renamed from: n */
        private Set<Integer> f4432n;

        /* renamed from: o */
        private Set<Integer> f4433o;

        /* renamed from: p */
        private String f4434p;

        /* renamed from: q */
        private File f4435q;

        /* renamed from: i */
        private JournalMode f4427i = JournalMode.AUTOMATIC;

        /* renamed from: k */
        private boolean f4429k = true;

        /* renamed from: m */
        private final C0996c f4431m = new C0996c();

        public C0994a(Context context, Class<T> cls, String str) {
            this.f4421c = context;
            this.f4419a = cls;
            this.f4420b = str;
        }

        /* renamed from: a */
        public C0994a<T> m31278a(AbstractC0995b abstractC0995b) {
            if (this.f4422d == null) {
                this.f4422d = new ArrayList<>();
            }
            this.f4422d.add(abstractC0995b);
            return this;
        }

        /* renamed from: b */
        public C0994a<T> m31277b(AbstractC1030a... abstractC1030aArr) {
            if (this.f4433o == null) {
                this.f4433o = new HashSet();
            }
            for (AbstractC1030a abstractC1030a : abstractC1030aArr) {
                this.f4433o.add(Integer.valueOf(abstractC1030a.f4535a));
                this.f4433o.add(Integer.valueOf(abstractC1030a.f4536b));
            }
            this.f4431m.m31268b(abstractC1030aArr);
            return this;
        }

        /* renamed from: c */
        public C0994a<T> m31276c() {
            this.f4426h = true;
            return this;
        }

        @SuppressLint({"RestrictedApi"})
        /* renamed from: d */
        public T m31275d() {
            Executor executor;
            if (this.f4421c != null) {
                if (this.f4419a == null) {
                    throw new IllegalArgumentException("Must provide an abstract class that extends RoomDatabase");
                }
                Executor executor2 = this.f4423e;
                if (executor2 == null && this.f4424f == null) {
                    Executor m29994d = C1468a.m29994d();
                    this.f4424f = m29994d;
                    this.f4423e = m29994d;
                } else if (executor2 != null && this.f4424f == null) {
                    this.f4424f = executor2;
                } else if (executor2 == null && (executor = this.f4424f) != null) {
                    this.f4423e = executor;
                }
                Set<Integer> set = this.f4433o;
                if (set != null && this.f4432n != null) {
                    for (Integer num : set) {
                        if (this.f4432n.contains(num)) {
                            throw new IllegalArgumentException("Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: " + num);
                        }
                    }
                }
                if (this.f4425g == null) {
                    this.f4425g = new C1787c();
                }
                String str = this.f4434p;
                if (str != null || this.f4435q != null) {
                    if (this.f4420b == null) {
                        throw new IllegalArgumentException("Cannot create from asset or file for an in-memory database.");
                    }
                    if (str != null && this.f4435q != null) {
                        throw new IllegalArgumentException("Both createFromAsset() and createFromFile() was called on this Builder but the database can only be created using one of the two configurations.");
                    }
                    this.f4425g = new C1026m(str, this.f4435q, this.f4425g);
                }
                Context context = this.f4421c;
                C0997a c0997a = new C0997a(context, this.f4420b, this.f4425g, this.f4431m, this.f4422d, this.f4426h, this.f4427i.resolve(context), this.f4423e, this.f4424f, this.f4428j, this.f4429k, this.f4430l, this.f4432n, this.f4434p, this.f4435q);
                T t = (T) C1019h.m31234b(this.f4419a, "_Impl");
                t.m31286l(c0997a);
                return t;
            }
            throw new IllegalArgumentException("Cannot provide null context for the database.");
        }

        /* renamed from: e */
        public C0994a<T> m31274e() {
            this.f4429k = false;
            this.f4430l = true;
            return this;
        }

        /* renamed from: f */
        public C0994a<T> m31273f(AbstractC1773c.AbstractC1777c abstractC1777c) {
            this.f4425g = abstractC1777c;
            return this;
        }

        /* renamed from: g */
        public C0994a<T> m31272g(Executor executor) {
            this.f4423e = executor;
            return this;
        }
    }

    /* renamed from: androidx.room.RoomDatabase$b */
    /* loaded from: classes-dex2jar.jar:androidx/room/RoomDatabase$b.class */
    public static abstract class AbstractC0995b {
        /* renamed from: a */
        public void m31271a(AbstractC1772b abstractC1772b) {
        }

        /* renamed from: b */
        public void m31270b(AbstractC1772b abstractC1772b) {
        }

        /* renamed from: c */
        public void mo30529c(AbstractC1772b abstractC1772b) {
        }
    }

    /* renamed from: androidx.room.RoomDatabase$c */
    /* loaded from: classes-dex2jar.jar:androidx/room/RoomDatabase$c.class */
    public static class C0996c {

        /* renamed from: a */
        private HashMap<Integer, TreeMap<Integer, AbstractC1030a>> f4436a = new HashMap<>();

        /* renamed from: a */
        private void m31269a(AbstractC1030a abstractC1030a) {
            int i = abstractC1030a.f4535a;
            int i2 = abstractC1030a.f4536b;
            TreeMap<Integer, AbstractC1030a> treeMap = this.f4436a.get(Integer.valueOf(i));
            TreeMap<Integer, AbstractC1030a> treeMap2 = treeMap;
            if (treeMap == null) {
                treeMap2 = new TreeMap<>();
                this.f4436a.put(Integer.valueOf(i), treeMap2);
            }
            AbstractC1030a abstractC1030a2 = treeMap2.get(Integer.valueOf(i2));
            if (abstractC1030a2 != null) {
                Log.w("ROOM", "Overriding migration " + abstractC1030a2 + " with " + abstractC1030a);
            }
            treeMap2.put(Integer.valueOf(i2), abstractC1030a);
        }

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
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.util.List<androidx.room.p011p.AbstractC1030a> m31266d(java.util.List<androidx.room.p011p.AbstractC1030a> r5, boolean r6, int r7, int r8) {
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
                java.util.HashMap<java.lang.Integer, java.util.TreeMap<java.lang.Integer, androidx.room.p.a>> r0 = r0.f4436a
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
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.RoomDatabase.C0996c.m31266d(java.util.List, boolean, int, int):java.util.List");
        }

        /* renamed from: b */
        public void m31268b(AbstractC1030a... abstractC1030aArr) {
            for (AbstractC1030a abstractC1030a : abstractC1030aArr) {
                m31269a(abstractC1030a);
            }
        }

        /* renamed from: c */
        public List<AbstractC1030a> m31267c(int i, int i2) {
            if (i == i2) {
                return Collections.emptyList();
            }
            return m31266d(new ArrayList(), i2 > i, i, i2);
        }
    }

    /* renamed from: n */
    private static boolean m31284n() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    /* renamed from: a */
    public void m31295a() {
        if (!this.f4409f && m31284n()) {
            throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    /* renamed from: b */
    public void m31294b() {
        if (m31287k() || this.f4413j.get() == null) {
            return;
        }
        throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.");
    }

    @Deprecated
    /* renamed from: c */
    public void m31293c() {
        m31295a();
        AbstractC1772b mo28907K = this.f4407d.mo28907K();
        this.f4408e.m31246m(mo28907K);
        mo28907K.mo28912h();
    }

    /* renamed from: d */
    public AbstractC1780f m31292d(String str) {
        m31295a();
        m31294b();
        return this.f4407d.mo28907K().mo28909s(str);
    }

    /* renamed from: e */
    protected abstract C1006f mo30514e();

    /* renamed from: f */
    protected abstract AbstractC1773c mo30513f(C0997a c0997a);

    @Deprecated
    /* renamed from: g */
    public void m31291g() {
        this.f4407d.mo28907K().mo28916O();
        if (!m31287k()) {
            this.f4408e.m31253f();
        }
    }

    /* renamed from: h */
    public Lock m31290h() {
        return this.f4412i.readLock();
    }

    /* renamed from: i */
    public AbstractC1773c m31289i() {
        return this.f4407d;
    }

    /* renamed from: j */
    public Executor m31288j() {
        return this.f4405b;
    }

    /* renamed from: k */
    public boolean m31287k() {
        return this.f4407d.mo28907K().mo28914V();
    }

    /* renamed from: l */
    public void m31286l(C0997a c0997a) {
        AbstractC1773c mo30513f = mo30513f(c0997a);
        this.f4407d = mo30513f;
        if (mo30513f instanceof C1025l) {
            ((C1025l) mo30513f).m31221e(c0997a);
        }
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 16) {
            z = false;
            if (c0997a.f4443g == JournalMode.WRITE_AHEAD_LOGGING) {
                z = true;
            }
            this.f4407d.setWriteAheadLoggingEnabled(z);
        }
        this.f4411h = c0997a.f4441e;
        this.f4405b = c0997a.f4444h;
        this.f4406c = new ExecutorC1028o(c0997a.f4445i);
        this.f4409f = c0997a.f4442f;
        this.f4410g = z;
        if (c0997a.f4446j) {
            this.f4408e.m31250i(c0997a.f4438b, c0997a.f4439c);
        }
    }

    /* renamed from: m */
    public void m31285m(AbstractC1772b abstractC1772b) {
        this.f4408e.m31255d(abstractC1772b);
    }

    /* renamed from: o */
    public boolean m31283o() {
        AbstractC1772b abstractC1772b = this.f4404a;
        return abstractC1772b != null && abstractC1772b.isOpen();
    }

    /* renamed from: p */
    public Cursor m31282p(AbstractC1779e abstractC1779e) {
        return m31281q(abstractC1779e, null);
    }

    /* renamed from: q */
    public Cursor m31281q(AbstractC1779e abstractC1779e, CancellationSignal cancellationSignal) {
        m31295a();
        m31294b();
        return (cancellationSignal == null || Build.VERSION.SDK_INT < 16) ? this.f4407d.mo28907K().mo28915S(abstractC1779e) : this.f4407d.mo28907K().mo28908x(abstractC1779e, cancellationSignal);
    }

    @Deprecated
    /* renamed from: r */
    public void m31280r() {
        this.f4407d.mo28907K().mo28919G();
    }
}
