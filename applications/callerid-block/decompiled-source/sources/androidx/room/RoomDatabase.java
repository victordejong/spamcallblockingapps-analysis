package androidx.room;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.os.Looper;
import android.util.Log;
import androidx.core.app.C0240b;
import androidx.room.p004n.AbstractC0460a;
import d.e.h;
import d.r.a.b;
import d.r.a.c;
import d.r.a.e;
import d.r.a.f;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
/* loaded from: classes-dex2jar.jar:androidx/room/RoomDatabase.class */
public abstract class RoomDatabase {
    @Deprecated

    /* renamed from: a */
    protected volatile b f2423a;

    /* renamed from: b */
    private Executor f2424b;

    /* renamed from: c */
    private c f2425c;

    /* renamed from: e */
    private boolean f2427e;

    /* renamed from: f */
    boolean f2428f;
    @Deprecated

    /* renamed from: g */
    protected List<AbstractC0440b> f2429g;

    /* renamed from: h */
    private final ReentrantReadWriteLock f2430h = new ReentrantReadWriteLock();

    /* renamed from: i */
    private final ThreadLocal<Integer> f2431i = new ThreadLocal<>();

    /* renamed from: d */
    private final C0446f f2426d = m12317e();

    /* loaded from: classes-dex2jar.jar:androidx/room/RoomDatabase$JournalMode.class */
    public enum JournalMode {
        AUTOMATIC,
        TRUNCATE,
        WRITE_AHEAD_LOGGING;

        @SuppressLint({"NewApi"})
        JournalMode resolve(Context context) {
            ActivityManager activityManager;
            return this != AUTOMATIC ? this : (Build.VERSION.SDK_INT < 16 || (activityManager = (ActivityManager) context.getSystemService("activity")) == null || C0240b.m13665a(activityManager)) ? TRUNCATE : WRITE_AHEAD_LOGGING;
        }
    }

    /* renamed from: androidx.room.RoomDatabase$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/RoomDatabase$a.class */
    public static class C0439a<T extends RoomDatabase> {

        /* renamed from: a */
        private final Class<T> f2436a;

        /* renamed from: b */
        private final String f2437b;

        /* renamed from: c */
        private final Context f2438c;

        /* renamed from: d */
        private ArrayList<AbstractC0440b> f2439d;

        /* renamed from: e */
        private Executor f2440e;

        /* renamed from: f */
        private Executor f2441f;

        /* renamed from: g */
        private c.c f2442g;

        /* renamed from: h */
        private boolean f2443h;

        /* renamed from: j */
        private boolean f2445j;

        /* renamed from: l */
        private boolean f2447l;

        /* renamed from: n */
        private Set<Integer> f2449n;

        /* renamed from: o */
        private Set<Integer> f2450o;

        /* renamed from: i */
        private JournalMode f2444i = JournalMode.AUTOMATIC;

        /* renamed from: k */
        private boolean f2446k = true;

        /* renamed from: m */
        private final C0441c f2448m = new C0441c();

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0439a(Context context, Class<T> cls, String str) {
            this.f2438c = context;
            this.f2436a = cls;
            this.f2437b = str;
        }

        /* renamed from: a */
        public C0439a<T> m12304a(AbstractC0440b bVar) {
            if (this.f2439d == null) {
                this.f2439d = new ArrayList<>();
            }
            this.f2439d.add(bVar);
            return this;
        }

        /* renamed from: b */
        public C0439a<T> m12303b(AbstractC0460a... aVarArr) {
            if (this.f2450o == null) {
                this.f2450o = new HashSet();
            }
            for (AbstractC0460a aVar : aVarArr) {
                this.f2450o.add(Integer.valueOf(aVar.f2513a));
                this.f2450o.add(Integer.valueOf(aVar.f2514b));
            }
            this.f2448m.m12295b(aVarArr);
            return this;
        }

        /* renamed from: c */
        public C0439a<T> m12302c() {
            this.f2443h = true;
            return this;
        }

        /* JADX WARN: Code restructure failed: missing block: B:20:0x004c, code lost:
            if (r17 != null) goto L_0x0027;
         */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0072  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00b4  */
        @android.annotation.SuppressLint({"RestrictedApi"})
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public T m12301d() {
            /*
                Method dump skipped, instructions count: 305
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.RoomDatabase.C0439a.m12301d():androidx.room.RoomDatabase");
        }

        /* renamed from: e */
        public C0439a<T> m12300e() {
            this.f2446k = false;
            this.f2447l = true;
            return this;
        }

        /* renamed from: f */
        public C0439a<T> m12299f(Executor executor) {
            this.f2440e = executor;
            return this;
        }
    }

    /* renamed from: androidx.room.RoomDatabase$b */
    /* loaded from: classes-dex2jar.jar:androidx/room/RoomDatabase$b.class */
    public static abstract class AbstractC0440b {
        /* renamed from: a */
        public void m12298a(b bVar) {
        }

        /* renamed from: b */
        public void m12297b(b bVar) {
        }
    }

    /* renamed from: androidx.room.RoomDatabase$c */
    /* loaded from: classes-dex2jar.jar:androidx/room/RoomDatabase$c.class */
    public static class C0441c {

        /* renamed from: a */
        private h<h<AbstractC0460a>> f2451a = new h<>();

        /* renamed from: a */
        private void m12296a(AbstractC0460a aVar) {
            int i = aVar.f2513a;
            int i2 = aVar.f2514b;
            h hVar = (h) this.f2451a.f(i);
            h hVar2 = hVar;
            if (hVar == null) {
                hVar2 = new h();
                this.f2451a.k(i, hVar2);
            }
            AbstractC0460a aVar2 = (AbstractC0460a) hVar2.f(i2);
            if (aVar2 != null) {
                Log.w("ROOM", "Overriding migration " + aVar2 + " with " + aVar);
            }
            hVar2.b(i2, aVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:15:0x003d  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x003b A[SYNTHETIC] */
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.util.List<androidx.room.p004n.AbstractC0460a> m12293d(java.util.List<androidx.room.p004n.AbstractC0460a> r5, boolean r6, int r7, int r8) {
            /*
                Method dump skipped, instructions count: 202
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.RoomDatabase.C0441c.m12293d(java.util.List, boolean, int, int):java.util.List");
        }

        /* renamed from: b */
        public void m12295b(AbstractC0460a... aVarArr) {
            for (AbstractC0460a aVar : aVarArr) {
                m12296a(aVar);
            }
        }

        /* renamed from: c */
        public List<AbstractC0460a> m12294c(int i, int i2) {
            if (i == i2) {
                return Collections.emptyList();
            }
            return m12293d(new ArrayList(), i2 > i, i, i2);
        }
    }

    public RoomDatabase() {
        new ConcurrentHashMap();
    }

    /* renamed from: n */
    private static boolean m12308n() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    /* renamed from: a */
    public void m12321a() {
        if (!this.f2427e && m12308n()) {
            throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    /* renamed from: b */
    public void m12320b() {
        if (!m12311k() && this.f2431i.get() != null) {
            throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.");
        }
    }

    @Deprecated
    /* renamed from: c */
    public void m12319c() {
        m12321a();
        b b = this.f2425c.b();
        this.f2426d.m12275m(b);
        b.i();
    }

    /* renamed from: d */
    public f m12318d(String str) {
        m12321a();
        m12320b();
        return this.f2425c.b().s(str);
    }

    /* renamed from: e */
    protected abstract C0446f m12317e();

    /* renamed from: f */
    protected abstract c m12316f(C0442a aVar);

    @Deprecated
    /* renamed from: g */
    public void m12315g() {
        this.f2425c.b().h();
        if (!m12311k()) {
            this.f2426d.m12282f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public Lock m12314h() {
        return this.f2430h.readLock();
    }

    /* renamed from: i */
    public c m12313i() {
        return this.f2425c;
    }

    /* renamed from: j */
    public Executor m12312j() {
        return this.f2424b;
    }

    /* renamed from: k */
    public boolean m12311k() {
        return this.f2425c.b().A();
    }

    /* renamed from: l */
    public void m12310l(C0442a aVar) {
        c f = m12316f(aVar);
        this.f2425c = f;
        boolean z = false;
        z = false;
        if (Build.VERSION.SDK_INT >= 16) {
            if (aVar.f2458g == JournalMode.WRITE_AHEAD_LOGGING) {
                z = true;
            }
            f.a(z);
        }
        this.f2429g = aVar.f2456e;
        this.f2424b = aVar.f2459h;
        new ExecutorC0458m(aVar.f2460i);
        this.f2427e = aVar.f2457f;
        this.f2428f = z;
        if (aVar.f2461j) {
            this.f2426d.m12279i(aVar.f2453b, aVar.f2454c);
        }
    }

    /* renamed from: m */
    protected void m12309m(b bVar) {
        this.f2426d.m12284d(bVar);
    }

    /* renamed from: o */
    public boolean m12307o() {
        b bVar = this.f2423a;
        return bVar != null && bVar.isOpen();
    }

    /* renamed from: p */
    public Cursor m12306p(e eVar) {
        m12321a();
        m12320b();
        return this.f2425c.b().v(eVar);
    }

    @Deprecated
    /* renamed from: q */
    public void m12305q() {
        this.f2425c.b().I();
    }
}
