package androidx.room;

import android.app.ActivityManager;
import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Looper;
import androidx.p002a.p003a.p004a.C0030a;
import androidx.p042i.p043a.AbstractC0778b;
import androidx.p042i.p043a.AbstractC0779c;
import androidx.p042i.p043a.AbstractC0785e;
import androidx.p042i.p043a.AbstractC0786f;
import androidx.p042i.p043a.p044a.C0775c;
import androidx.room.p049a.AbstractC1030a;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
/* renamed from: androidx.room.j */
/* loaded from: classes-dex2jar.jar:androidx/room/j.class */
public abstract class AbstractC1063j {
    @Deprecated

    /* renamed from: a */
    protected volatile AbstractC0778b f3321a;

    /* renamed from: b */
    boolean f3322b;
    @Deprecated

    /* renamed from: c */
    protected List<AbstractC1065b> f3323c;

    /* renamed from: d */
    private Executor f3324d;

    /* renamed from: e */
    private Executor f3325e;

    /* renamed from: f */
    private AbstractC0779c f3326f;

    /* renamed from: h */
    private boolean f3328h;

    /* renamed from: i */
    private final ReentrantReadWriteLock f3329i = new ReentrantReadWriteLock();

    /* renamed from: j */
    private final ThreadLocal<Integer> f3330j = new ThreadLocal<>();

    /* renamed from: k */
    private final Map<String, Object> f3331k = new ConcurrentHashMap();

    /* renamed from: g */
    private final C1049g f3327g = mo1518c();

    /* renamed from: androidx.room.j$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/j$a.class */
    public static class C1064a<T extends AbstractC1063j> {

        /* renamed from: a */
        private final Class<T> f3332a;

        /* renamed from: b */
        private final String f3333b;

        /* renamed from: c */
        private final Context f3334c;

        /* renamed from: d */
        private ArrayList<AbstractC1065b> f3335d;

        /* renamed from: e */
        private Executor f3336e;

        /* renamed from: f */
        private Executor f3337f;

        /* renamed from: g */
        private AbstractC0779c.AbstractC0783c f3338g;

        /* renamed from: h */
        private boolean f3339h;

        /* renamed from: j */
        private boolean f3341j;

        /* renamed from: l */
        private boolean f3343l;

        /* renamed from: n */
        private Set<Integer> f3345n;

        /* renamed from: o */
        private Set<Integer> f3346o;

        /* renamed from: p */
        private String f3347p;

        /* renamed from: q */
        private File f3348q;

        /* renamed from: i */
        private EnumC1066c f3340i = EnumC1066c.AUTOMATIC;

        /* renamed from: k */
        private boolean f3342k = true;

        /* renamed from: m */
        private final C1067d f3344m = new C1067d();

        public C1064a(Context context, Class<T> cls, String str) {
            this.f3334c = context;
            this.f3332a = cls;
            this.f3333b = str;
        }

        /* renamed from: a */
        public T m4434a() {
            Executor executor;
            if (this.f3334c != null) {
                if (this.f3332a == null) {
                    throw new IllegalArgumentException("Must provide an abstract class that extends RoomDatabase");
                }
                if (this.f3336e == null && this.f3337f == null) {
                    Executor m8020b = C0030a.m8020b();
                    this.f3337f = m8020b;
                    this.f3336e = m8020b;
                } else {
                    Executor executor2 = this.f3336e;
                    if (executor2 != null && this.f3337f == null) {
                        this.f3337f = executor2;
                    } else if (this.f3336e == null && (executor = this.f3337f) != null) {
                        this.f3336e = executor;
                    }
                }
                Set<Integer> set = this.f3346o;
                if (set != null && this.f3345n != null) {
                    for (Integer num : set) {
                        if (this.f3345n.contains(num)) {
                            throw new IllegalArgumentException("Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: " + num);
                        }
                    }
                }
                if (this.f3338g == null) {
                    this.f3338g = new C0775c();
                }
                if (this.f3347p != null || this.f3348q != null) {
                    if (this.f3333b == null) {
                        throw new IllegalArgumentException("Cannot create from asset or file for an in-memory database.");
                    }
                    if (this.f3347p != null && this.f3348q != null) {
                        throw new IllegalArgumentException("Both createFromAsset() and createFromFile() was called on this Builder but the database can only be created using one of the two configurations.");
                    }
                    this.f3338g = new C1074o(this.f3347p, this.f3348q, this.f3338g);
                }
                Context context = this.f3334c;
                C1029a c1029a = new C1029a(context, this.f3333b, this.f3338g, this.f3344m, this.f3335d, this.f3339h, this.f3340i.m4429a(context), this.f3336e, this.f3337f, this.f3341j, this.f3342k, this.f3343l, this.f3345n, this.f3347p, this.f3348q);
                T t = (T) C1062i.m4451a(this.f3332a, "_Impl");
                t.m4446a(c1029a);
                return t;
            }
            throw new IllegalArgumentException("Cannot provide null context for the database.");
        }
    }

    /* renamed from: androidx.room.j$b */
    /* loaded from: classes-dex2jar.jar:androidx/room/j$b.class */
    public static abstract class AbstractC1065b {
        /* renamed from: a */
        public void m4433a(AbstractC0778b abstractC0778b) {
        }

        /* renamed from: b */
        public void m4432b(AbstractC0778b abstractC0778b) {
        }

        /* renamed from: c */
        public void m4431c(AbstractC0778b abstractC0778b) {
        }
    }

    /* renamed from: androidx.room.j$c */
    /* loaded from: classes-dex2jar.jar:androidx/room/j$c.class */
    public enum EnumC1066c {
        AUTOMATIC,
        TRUNCATE,
        WRITE_AHEAD_LOGGING;

        /* renamed from: a */
        private static boolean m4430a(ActivityManager activityManager) {
            if (Build.VERSION.SDK_INT >= 19) {
                return activityManager.isLowRamDevice();
            }
            return false;
        }

        /* renamed from: a */
        EnumC1066c m4429a(Context context) {
            ActivityManager activityManager;
            return this != AUTOMATIC ? this : (Build.VERSION.SDK_INT < 16 || (activityManager = (ActivityManager) context.getSystemService("activity")) == null || m4430a(activityManager)) ? TRUNCATE : WRITE_AHEAD_LOGGING;
        }
    }

    /* renamed from: androidx.room.j$d */
    /* loaded from: classes-dex2jar.jar:androidx/room/j$d.class */
    public static class C1067d {

        /* renamed from: a */
        private HashMap<Integer, TreeMap<Integer, AbstractC1030a>> f3353a = new HashMap<>();

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
        private java.util.List<androidx.room.p049a.AbstractC1030a> m4427a(java.util.List<androidx.room.p049a.AbstractC1030a> r5, boolean r6, int r7, int r8) {
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
                java.util.HashMap<java.lang.Integer, java.util.TreeMap<java.lang.Integer, androidx.room.a.a>> r0 = r0.f3353a
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
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.AbstractC1063j.C1067d.m4427a(java.util.List, boolean, int, int):java.util.List");
        }

        /* renamed from: a */
        public List<AbstractC1030a> m4428a(int i, int i2) {
            if (i == i2) {
                return Collections.emptyList();
            }
            return m4427a(new ArrayList(), i2 > i, i, i2);
        }
    }

    /* renamed from: l */
    private static boolean m4435l() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    /* renamed from: a */
    public Cursor m4448a(AbstractC0785e abstractC0785e) {
        return m4447a(abstractC0785e, null);
    }

    /* renamed from: a */
    public Cursor m4447a(AbstractC0785e abstractC0785e, CancellationSignal cancellationSignal) {
        m4442e();
        m4441f();
        return (cancellationSignal == null || Build.VERSION.SDK_INT < 16) ? this.f3326f.mo4399b().mo5371a(abstractC0785e) : this.f3326f.mo4399b().mo5370a(abstractC0785e, cancellationSignal);
    }

    /* renamed from: a */
    public AbstractC0786f m4445a(String str) {
        m4442e();
        m4441f();
        return this.f3326f.mo4399b().mo5369a(str);
    }

    /* renamed from: a */
    public Lock m4450a() {
        return this.f3329i.readLock();
    }

    /* renamed from: a */
    public void m4449a(AbstractC0778b abstractC0778b) {
        this.f3327g.m4473a(abstractC0778b);
    }

    /* renamed from: a */
    public void m4446a(C1029a c1029a) {
        this.f3326f = mo1521b(c1029a);
        AbstractC0779c abstractC0779c = this.f3326f;
        if (abstractC0779c instanceof C1073n) {
            ((C1073n) abstractC0779c).m4402a(c1029a);
        }
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 16) {
            z = false;
            if (c1029a.f3235g == EnumC1066c.WRITE_AHEAD_LOGGING) {
                z = true;
            }
            this.f3326f.mo4400a(z);
        }
        this.f3323c = c1029a.f3233e;
        this.f3324d = c1029a.f3236h;
        this.f3325e = new ExecutorC1076q(c1029a.f3237i);
        this.f3328h = c1029a.f3234f;
        this.f3322b = z;
        if (c1029a.f3238j) {
            this.f3327g.m4474a(c1029a.f3230b, c1029a.f3231c);
        }
    }

    /* renamed from: b */
    public AbstractC0779c m4444b() {
        return this.f3326f;
    }

    /* renamed from: b */
    protected abstract AbstractC0779c mo1521b(C1029a c1029a);

    /* renamed from: c */
    protected abstract C1049g mo1518c();

    /* renamed from: d */
    public boolean m4443d() {
        AbstractC0778b abstractC0778b = this.f3321a;
        return abstractC0778b != null && abstractC0778b.mo5363e();
    }

    /* renamed from: e */
    public void m4442e() {
        if (!this.f3328h && m4435l()) {
            throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    /* renamed from: f */
    public void m4441f() {
        if (m4436k() || this.f3330j.get() == null) {
            return;
        }
        throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.");
    }

    @Deprecated
    /* renamed from: g */
    public void m4440g() {
        m4442e();
        AbstractC0778b mo4399b = this.f3326f.mo4399b();
        this.f3327g.m4467b(mo4399b);
        mo4399b.mo5372a();
    }

    @Deprecated
    /* renamed from: h */
    public void m4439h() {
        this.f3326f.mo4399b().mo5368b();
        if (!m4436k()) {
            this.f3327g.m4468b();
        }
    }

    /* renamed from: i */
    public Executor m4438i() {
        return this.f3324d;
    }

    @Deprecated
    /* renamed from: j */
    public void m4437j() {
        this.f3326f.mo4399b().mo5366c();
    }

    /* renamed from: k */
    public boolean m4436k() {
        return this.f3326f.mo4399b().mo5364d();
    }
}
