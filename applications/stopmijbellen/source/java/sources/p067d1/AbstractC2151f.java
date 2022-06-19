package p067d1;

import android.content.Context;
import android.database.Cursor;
import android.os.CancellationSignal;
import android.os.Looper;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p077e1.AbstractC2520a;
import p099g1.AbstractC2795a;
import p099g1.AbstractC2796b;
import p099g1.AbstractC2801d;
import p110h1.C2993a;
import p110h1.C2995b;
import p110h1.C3001f;
/* renamed from: d1.f */
/* loaded from: classes-dex2jar.jar:d1/f.class */
public abstract class AbstractC2151f {
    @Deprecated

    /* renamed from: a */
    public volatile AbstractC2795a f7866a;

    /* renamed from: b */
    public Executor f7867b;

    /* renamed from: c */
    public AbstractC2796b f7868c;

    /* renamed from: e */
    public boolean f7870e;

    /* renamed from: f */
    public boolean f7871f;
    @Deprecated

    /* renamed from: g */
    public List<AbstractC2153b> f7872g;

    /* renamed from: h */
    public final ReentrantReadWriteLock f7873h = new ReentrantReadWriteLock();

    /* renamed from: i */
    public final ThreadLocal<Integer> f7874i = new ThreadLocal<>();

    /* renamed from: d */
    public final C2146e f7869d = mo3817e();

    /* renamed from: d1.f$a */
    /* loaded from: classes-dex2jar.jar:d1/f$a.class */
    public static class C2152a<T extends AbstractC2151f> {

        /* renamed from: a */
        public final Class<T> f7875a;

        /* renamed from: b */
        public final String f7876b;

        /* renamed from: c */
        public final Context f7877c;

        /* renamed from: d */
        public ArrayList<AbstractC2153b> f7878d;

        /* renamed from: e */
        public Executor f7879e;

        /* renamed from: f */
        public Executor f7880f;

        /* renamed from: g */
        public AbstractC2796b.AbstractC2799c f7881g;

        /* renamed from: h */
        public boolean f7882h;

        /* renamed from: j */
        public boolean f7884j;

        /* renamed from: l */
        public Set<Integer> f7886l;

        /* renamed from: i */
        public boolean f7883i = true;

        /* renamed from: k */
        public final C2154c f7885k = new C2154c();

        public C2152a(Context context, Class<T> cls, String str) {
            this.f7877c = context;
            this.f7875a = cls;
            this.f7876b = str;
        }

        /* renamed from: a */
        public C2152a<T> m3810a(AbstractC2520a... abstractC2520aArr) {
            if (this.f7886l == null) {
                this.f7886l = new HashSet();
            }
            for (AbstractC2520a abstractC2520a : abstractC2520aArr) {
                this.f7886l.add(Integer.valueOf(abstractC2520a.f8800a));
                this.f7886l.add(Integer.valueOf(abstractC2520a.f8801b));
            }
            C2154c c2154c = this.f7885k;
            Objects.requireNonNull(c2154c);
            for (AbstractC2520a abstractC2520a2 : abstractC2520aArr) {
                int i = abstractC2520a2.f8800a;
                int i2 = abstractC2520a2.f8801b;
                TreeMap<Integer, AbstractC2520a> treeMap = c2154c.f7887a.get(Integer.valueOf(i));
                TreeMap<Integer, AbstractC2520a> treeMap2 = treeMap;
                if (treeMap == null) {
                    treeMap2 = new TreeMap<>();
                    c2154c.f7887a.put(Integer.valueOf(i), treeMap2);
                }
                AbstractC2520a abstractC2520a3 = treeMap2.get(Integer.valueOf(i2));
                if (abstractC2520a3 != null) {
                    Log.w("ROOM", "Overriding migration " + abstractC2520a3 + " with " + abstractC2520a2);
                }
                treeMap2.put(Integer.valueOf(i2), abstractC2520a2);
            }
            return this;
        }
    }

    /* renamed from: d1.f$b */
    /* loaded from: classes-dex2jar.jar:d1/f$b.class */
    public static abstract class AbstractC2153b {
        /* renamed from: a */
        public void mo1538a(AbstractC2795a abstractC2795a) {
        }
    }

    /* renamed from: d1.f$c */
    /* loaded from: classes-dex2jar.jar:d1/f$c.class */
    public static class C2154c {

        /* renamed from: a */
        public HashMap<Integer, TreeMap<Integer, AbstractC2520a>> f7887a = new HashMap<>();
    }

    public AbstractC2151f() {
        new ConcurrentHashMap();
    }

    /* renamed from: a */
    public void m3821a() {
        if (this.f7870e) {
            return;
        }
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    /* renamed from: b */
    public void m3820b() {
        if (m3814h() || this.f7874i.get() == null) {
            return;
        }
        throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.");
    }

    @Deprecated
    /* renamed from: c */
    public void m3819c() {
        m3821a();
        AbstractC2795a mo2773T = this.f7868c.mo2773T();
        this.f7869d.m3825d(mo2773T);
        ((C2993a) mo2773T).f10085a.beginTransaction();
    }

    /* renamed from: d */
    public C3001f m3818d(String str) {
        m3821a();
        m3820b();
        return new C3001f(((C2993a) this.f7868c.mo2773T()).f10085a.compileStatement(str));
    }

    /* renamed from: e */
    public abstract C2146e mo3817e();

    /* renamed from: f */
    public abstract AbstractC2796b mo3816f(C2140a c2140a);

    @Deprecated
    /* renamed from: g */
    public void m3815g() {
        ((C2993a) this.f7868c.mo2773T()).f10085a.endTransaction();
        if (!m3814h()) {
            C2146e c2146e = this.f7869d;
            if (!c2146e.f7850e.compareAndSet(false, true)) {
                return;
            }
            c2146e.f7849d.f7867b.execute(c2146e.f7855j);
        }
    }

    /* renamed from: h */
    public boolean m3814h() {
        return ((C2993a) this.f7868c.mo2773T()).f10085a.inTransaction();
    }

    /* renamed from: i */
    public boolean m3813i() {
        AbstractC2795a abstractC2795a = this.f7866a;
        return abstractC2795a != null && ((C2993a) abstractC2795a).f10085a.isOpen();
    }

    /* renamed from: j */
    public Cursor m3812j(AbstractC2801d abstractC2801d, CancellationSignal cancellationSignal) {
        m3821a();
        m3820b();
        if (cancellationSignal != null) {
            C2993a c2993a = (C2993a) this.f7868c.mo2773T();
            return c2993a.f10085a.rawQueryWithFactory(new C2995b(c2993a, abstractC2801d), abstractC2801d.mo2998k(), C2993a.f10084b, null, cancellationSignal);
        }
        return ((C2993a) this.f7868c.mo2773T()).m2775k(abstractC2801d);
    }

    @Deprecated
    /* renamed from: k */
    public void m3811k() {
        ((C2993a) this.f7868c.mo2773T()).f10085a.setTransactionSuccessful();
    }
}
