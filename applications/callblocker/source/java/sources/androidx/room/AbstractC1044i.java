package androidx.room;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Looper;
import android.util.Log;
import androidx.p003a.p004a.p005a.C0061a;
import androidx.p042i.p043a.AbstractC0749b;
import androidx.p042i.p043a.AbstractC0750c;
import androidx.p042i.p043a.AbstractC0756e;
import androidx.p042i.p043a.AbstractC0757f;
import androidx.p042i.p043a.p044a.C0746c;
import androidx.room.p049a.AbstractC1011a;
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
/* renamed from: androidx.room.i */
/* loaded from: classes-dex2jar.jar:androidx/room/i.class */
public abstract class AbstractC1044i {
    @Deprecated

    /* renamed from: a */
    protected volatile AbstractC0749b f3531a;

    /* renamed from: b */
    boolean f3532b;
    @Deprecated

    /* renamed from: c */
    protected List<AbstractC1046b> f3533c;

    /* renamed from: d */
    private Executor f3534d;

    /* renamed from: e */
    private Executor f3535e;

    /* renamed from: f */
    private AbstractC0750c f3536f;

    /* renamed from: h */
    private boolean f3538h;

    /* renamed from: i */
    private final ReentrantReadWriteLock f3539i = new ReentrantReadWriteLock();

    /* renamed from: j */
    private final ThreadLocal<Integer> f3540j = new ThreadLocal<>();

    /* renamed from: k */
    private final Map<String, Object> f3541k = new ConcurrentHashMap();

    /* renamed from: g */
    private final C1030f f3537g = mo17893c();

    /* renamed from: androidx.room.i$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/i$a.class */
    public static class C1045a<T extends AbstractC1044i> {

        /* renamed from: a */
        private final Class<T> f3542a;

        /* renamed from: b */
        private final String f3543b;

        /* renamed from: c */
        private final Context f3544c;

        /* renamed from: d */
        private ArrayList<AbstractC1046b> f3545d;

        /* renamed from: e */
        private Executor f3546e;

        /* renamed from: f */
        private Executor f3547f;

        /* renamed from: g */
        private AbstractC0750c.AbstractC0754c f3548g;

        /* renamed from: h */
        private boolean f3549h;

        /* renamed from: j */
        private boolean f3551j;

        /* renamed from: l */
        private boolean f3553l;

        /* renamed from: n */
        private Set<Integer> f3555n;

        /* renamed from: o */
        private Set<Integer> f3556o;

        /* renamed from: p */
        private String f3557p;

        /* renamed from: q */
        private File f3558q;

        /* renamed from: i */
        private EnumC1047c f3550i = EnumC1047c.AUTOMATIC;

        /* renamed from: k */
        private boolean f3552k = true;

        /* renamed from: m */
        private final C1048d f3554m = new C1048d();

        public C1045a(Context context, Class<T> cls, String str) {
            this.f3544c = context;
            this.f3542a = cls;
            this.f3543b = str;
        }

        /* renamed from: a */
        public C1045a<T> m18285a() {
            this.f3549h = true;
            return this;
        }

        /* renamed from: a */
        public C1045a<T> m18284a(AbstractC0750c.AbstractC0754c abstractC0754c) {
            this.f3548g = abstractC0754c;
            return this;
        }

        /* renamed from: a */
        public C1045a<T> m18283a(AbstractC1046b abstractC1046b) {
            if (this.f3545d == null) {
                this.f3545d = new ArrayList<>();
            }
            this.f3545d.add(abstractC1046b);
            return this;
        }

        /* renamed from: a */
        public C1045a<T> m18282a(Executor executor) {
            this.f3546e = executor;
            return this;
        }

        /* renamed from: a */
        public C1045a<T> m18281a(AbstractC1011a... abstractC1011aArr) {
            if (this.f3556o == null) {
                this.f3556o = new HashSet();
            }
            for (AbstractC1011a abstractC1011a : abstractC1011aArr) {
                this.f3556o.add(Integer.valueOf(abstractC1011a.f3451a));
                this.f3556o.add(Integer.valueOf(abstractC1011a.f3452b));
            }
            this.f3554m.m18271a(abstractC1011aArr);
            return this;
        }

        /* renamed from: b */
        public C1045a<T> m18280b() {
            this.f3552k = false;
            this.f3553l = true;
            return this;
        }

        @SuppressLint({"RestrictedApi"})
        /* renamed from: c */
        public T m18279c() {
            if (this.f3544c == null) {
                throw new IllegalArgumentException("Cannot provide null context for the database.");
            }
            if (this.f3542a == null) {
                throw new IllegalArgumentException("Must provide an abstract class that extends RoomDatabase");
            }
            if (this.f3546e == null && this.f3547f == null) {
                Executor m22312b = C0061a.m22312b();
                this.f3547f = m22312b;
                this.f3546e = m22312b;
            } else if (this.f3546e != null && this.f3547f == null) {
                this.f3547f = this.f3546e;
            } else if (this.f3546e == null && this.f3547f != null) {
                this.f3546e = this.f3547f;
            }
            if (this.f3556o != null && this.f3555n != null) {
                for (Integer num : this.f3556o) {
                    if (this.f3555n.contains(num)) {
                        throw new IllegalArgumentException("Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: " + num);
                    }
                }
            }
            if (this.f3548g == null) {
                this.f3548g = new C0746c();
            }
            if (this.f3557p != null || this.f3558q != null) {
                if (this.f3543b == null) {
                    throw new IllegalArgumentException("Cannot create from asset or file for an in-memory database.");
                }
                if (this.f3557p != null && this.f3558q != null) {
                    throw new IllegalArgumentException("Both createFromAsset() and createFromFile() was called on this Builder but the database can only be created using one of the two configurations.");
                }
                this.f3548g = new C1055n(this.f3557p, this.f3558q, this.f3548g);
            }
            C1010a c1010a = new C1010a(this.f3544c, this.f3543b, this.f3548g, this.f3554m, this.f3545d, this.f3549h, this.f3550i.m18275a(this.f3544c), this.f3546e, this.f3547f, this.f3551j, this.f3552k, this.f3553l, this.f3555n, this.f3557p, this.f3558q);
            T t = (T) C1043h.m18302a(this.f3542a, "_Impl");
            t.m18297a(c1010a);
            return t;
        }
    }

    /* renamed from: androidx.room.i$b */
    /* loaded from: classes-dex2jar.jar:androidx/room/i$b.class */
    public static abstract class AbstractC1046b {
        /* renamed from: a */
        public void m18278a(AbstractC0749b abstractC0749b) {
        }

        /* renamed from: b */
        public void mo17899b(AbstractC0749b abstractC0749b) {
        }

        /* renamed from: c */
        public void m18277c(AbstractC0749b abstractC0749b) {
        }
    }

    /* renamed from: androidx.room.i$c */
    /* loaded from: classes-dex2jar.jar:androidx/room/i$c.class */
    public enum EnumC1047c {
        AUTOMATIC,
        TRUNCATE,
        WRITE_AHEAD_LOGGING;

        /* renamed from: a */
        private static boolean m18276a(ActivityManager activityManager) {
            return Build.VERSION.SDK_INT >= 19 ? activityManager.isLowRamDevice() : false;
        }

        @SuppressLint({"NewApi"})
        /* renamed from: a */
        EnumC1047c m18275a(Context context) {
            ActivityManager activityManager;
            return this != AUTOMATIC ? this : (Build.VERSION.SDK_INT < 16 || (activityManager = (ActivityManager) context.getSystemService("activity")) == null || m18276a(activityManager)) ? TRUNCATE : WRITE_AHEAD_LOGGING;
        }
    }

    /* renamed from: androidx.room.i$d */
    /* loaded from: classes-dex2jar.jar:androidx/room/i$d.class */
    public static class C1048d {

        /* renamed from: a */
        private HashMap<Integer, TreeMap<Integer, AbstractC1011a>> f3563a = new HashMap<>();

        /* JADX WARN: Removed duplicated region for block: B:13:0x003a  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x0027 A[SYNTHETIC] */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.util.List<androidx.room.p049a.AbstractC1011a> m18272a(java.util.List<androidx.room.p049a.AbstractC1011a> r5, boolean r6, int r7, int r8) {
            /*
                r4 = this;
                r0 = r7
                r9 = r0
            L3:
                r0 = r6
                if (r0 == 0) goto L2d
                r0 = r5
                r10 = r0
                r0 = r9
                r1 = r8
                if (r0 >= r1) goto L2a
            L11:
                r0 = r4
                java.util.HashMap<java.lang.Integer, java.util.TreeMap<java.lang.Integer, androidx.room.a.a>> r0 = r0.f3563a
                r1 = r9
                java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
                java.lang.Object r0 = r0.get(r1)
                java.util.TreeMap r0 = (java.util.TreeMap) r0
                r11 = r0
                r0 = r11
                if (r0 != 0) goto L3a
                r0 = 0
                r10 = r0
            L2a:
                r0 = r10
                return r0
            L2d:
                r0 = r5
                r10 = r0
                r0 = r9
                r1 = r8
                if (r0 <= r1) goto L2a
                goto L11
            L3a:
                r0 = r6
                if (r0 == 0) goto La1
                r0 = r11
                java.util.NavigableSet r0 = r0.descendingKeySet()
                r10 = r0
            L45:
                r0 = r10
                java.util.Iterator r0 = r0.iterator()
                r10 = r0
            L4e:
                r0 = r10
                boolean r0 = r0.hasNext()
                if (r0 == 0) goto Lce
                r0 = r10
                java.lang.Object r0 = r0.next()
                java.lang.Integer r0 = (java.lang.Integer) r0
                int r0 = r0.intValue()
                r12 = r0
                r0 = r6
                if (r0 == 0) goto Lb0
                r0 = r12
                r1 = r8
                if (r0 > r1) goto Lab
                r0 = r12
                r1 = r9
                if (r0 <= r1) goto Lab
                r0 = 1
                r7 = r0
            L7b:
                r0 = r7
                if (r0 == 0) goto L4e
                r0 = r5
                r1 = r11
                r2 = r12
                java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
                java.lang.Object r1 = r1.get(r2)
                boolean r0 = r0.add(r1)
                r0 = 1
                r9 = r0
                r0 = r12
                r7 = r0
            L96:
                r0 = r9
                if (r0 != 0) goto Lc8
                r0 = 0
                r10 = r0
                goto L2a
            La1:
                r0 = r11
                java.util.Set r0 = r0.keySet()
                r10 = r0
                goto L45
            Lab:
                r0 = 0
                r7 = r0
                goto L7b
            Lb0:
                r0 = r12
                r1 = r8
                if (r0 < r1) goto Lc3
                r0 = r12
                r1 = r9
                if (r0 >= r1) goto Lc3
                r0 = 1
                r7 = r0
                goto L7b
            Lc3:
                r0 = 0
                r7 = r0
                goto L7b
            Lc8:
                r0 = r7
                r9 = r0
                goto L3
            Lce:
                r0 = 0
                r12 = r0
                r0 = r9
                r7 = r0
                r0 = r12
                r9 = r0
                goto L96
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.AbstractC1044i.C1048d.m18272a(java.util.List, boolean, int, int):java.util.List");
        }

        /* renamed from: a */
        private void m18273a(AbstractC1011a abstractC1011a) {
            int i = abstractC1011a.f3451a;
            int i2 = abstractC1011a.f3452b;
            TreeMap<Integer, AbstractC1011a> treeMap = this.f3563a.get(Integer.valueOf(i));
            if (treeMap == null) {
                treeMap = new TreeMap<>();
                this.f3563a.put(Integer.valueOf(i), treeMap);
            }
            AbstractC1011a abstractC1011a2 = treeMap.get(Integer.valueOf(i2));
            if (abstractC1011a2 != null) {
                Log.w("ROOM", "Overriding migration " + abstractC1011a2 + " with " + abstractC1011a);
            }
            treeMap.put(Integer.valueOf(i2), abstractC1011a);
        }

        /* renamed from: a */
        public List<AbstractC1011a> m18274a(int i, int i2) {
            List<AbstractC1011a> m18272a;
            if (i == i2) {
                m18272a = Collections.emptyList();
            } else {
                m18272a = m18272a(new ArrayList(), i2 > i, i, i2);
            }
            return m18272a;
        }

        /* renamed from: a */
        public void m18271a(AbstractC1011a... abstractC1011aArr) {
            for (AbstractC1011a abstractC1011a : abstractC1011aArr) {
                m18273a(abstractC1011a);
            }
        }
    }

    /* renamed from: l */
    private static boolean m18286l() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    /* renamed from: a */
    public Cursor m18299a(AbstractC0756e abstractC0756e) {
        return m18298a(abstractC0756e, null);
    }

    /* renamed from: a */
    public Cursor m18298a(AbstractC0756e abstractC0756e, CancellationSignal cancellationSignal) {
        m18293e();
        m18292f();
        return (cancellationSignal == null || Build.VERSION.SDK_INT < 16) ? this.f3536f.mo18243b().mo19524a(abstractC0756e) : this.f3536f.mo18243b().mo19523a(abstractC0756e, cancellationSignal);
    }

    /* renamed from: a */
    public AbstractC0757f m18296a(String str) {
        m18293e();
        m18292f();
        return this.f3536f.mo18243b().mo19522a(str);
    }

    /* renamed from: a */
    public Lock m18301a() {
        return this.f3539i.readLock();
    }

    /* renamed from: a */
    public void m18300a(AbstractC0749b abstractC0749b) {
        this.f3537g.m18325a(abstractC0749b);
    }

    /* renamed from: a */
    public void m18297a(C1010a c1010a) {
        boolean z;
        this.f3536f = mo17896b(c1010a);
        if (this.f3536f instanceof C1054m) {
            ((C1054m) this.f3536f).m18246a(c1010a);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            z = c1010a.f3442g == EnumC1047c.WRITE_AHEAD_LOGGING;
            this.f3536f.mo18244a(z);
        } else {
            z = false;
        }
        this.f3533c = c1010a.f3440e;
        this.f3534d = c1010a.f3443h;
        this.f3535e = new ExecutorC1057p(c1010a.f3444i);
        this.f3538h = c1010a.f3441f;
        this.f3532b = z;
        if (c1010a.f3445j) {
            this.f3537g.m18326a(c1010a.f3437b, c1010a.f3438c);
        }
    }

    /* renamed from: b */
    public AbstractC0750c m18295b() {
        return this.f3536f;
    }

    /* renamed from: b */
    protected abstract AbstractC0750c mo17896b(C1010a c1010a);

    /* renamed from: c */
    protected abstract C1030f mo17893c();

    /* renamed from: d */
    public boolean m18294d() {
        AbstractC0749b abstractC0749b = this.f3531a;
        return abstractC0749b != null && abstractC0749b.mo19515e();
    }

    /* renamed from: e */
    public void m18293e() {
        if (!this.f3538h && m18286l()) {
            throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    /* renamed from: f */
    public void m18292f() {
        if (m18287k() || this.f3540j.get() == null) {
            return;
        }
        throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.");
    }

    @Deprecated
    /* renamed from: g */
    public void m18291g() {
        m18293e();
        AbstractC0749b mo18243b = this.f3536f.mo18243b();
        this.f3537g.m18319b(mo18243b);
        mo18243b.mo19525a();
    }

    @Deprecated
    /* renamed from: h */
    public void m18290h() {
        this.f3536f.mo18243b().mo19520b();
        if (!m18287k()) {
            this.f3537g.m18320b();
        }
    }

    /* renamed from: i */
    public Executor m18289i() {
        return this.f3534d;
    }

    @Deprecated
    /* renamed from: j */
    public void m18288j() {
        this.f3536f.mo18243b().mo19518c();
    }

    /* renamed from: k */
    public boolean m18287k() {
        return this.f3536f.mo18243b().mo19516d();
    }
}
