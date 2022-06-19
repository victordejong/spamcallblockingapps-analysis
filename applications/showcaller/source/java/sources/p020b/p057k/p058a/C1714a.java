package p020b.p057k.p058a;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.Choreographer;
import java.util.ArrayList;
import p020b.p036e.C1502g;
/* renamed from: b.k.a.a */
/* loaded from: classes-dex2jar.jar:b/k/a/a.class */
public class C1714a {

    /* renamed from: a */
    public static final ThreadLocal<C1714a> f6421a = new ThreadLocal<>();

    /* renamed from: e */
    private AbstractC1717c f6425e;

    /* renamed from: b */
    private final C1502g<AbstractC1716b, Long> f6422b = new C1502g<>();

    /* renamed from: c */
    final ArrayList<AbstractC1716b> f6423c = new ArrayList<>();

    /* renamed from: d */
    private final C1715a f6424d = new C1715a();

    /* renamed from: f */
    long f6426f = 0;

    /* renamed from: g */
    private boolean f6427g = false;

    /* renamed from: b.k.a.a$a */
    /* loaded from: classes-dex2jar.jar:b/k/a/a$a.class */
    public class C1715a {
        C1715a() {
            C1714a.this = r4;
        }

        /* renamed from: a */
        void m29084a() {
            C1714a.this.f6426f = SystemClock.uptimeMillis();
            C1714a c1714a = C1714a.this;
            c1714a.m29089c(c1714a.f6426f);
            if (C1714a.this.f6423c.size() > 0) {
                C1714a.this.m29087e().mo29083a();
            }
        }
    }

    /* renamed from: b.k.a.a$b */
    /* loaded from: classes-dex2jar.jar:b/k/a/a$b.class */
    public interface AbstractC1716b {
        /* renamed from: a */
        boolean mo29082a(long j);
    }

    /* renamed from: b.k.a.a$c */
    /* loaded from: classes-dex2jar.jar:b/k/a/a$c.class */
    public static abstract class AbstractC1717c {

        /* renamed from: a */
        final C1715a f6429a;

        AbstractC1717c(C1715a c1715a) {
            this.f6429a = c1715a;
        }

        /* renamed from: a */
        abstract void mo29083a();
    }

    /* renamed from: b.k.a.a$d */
    /* loaded from: classes-dex2jar.jar:b/k/a/a$d.class */
    public static class C1718d extends AbstractC1717c {

        /* renamed from: d */
        long f6432d = -1;

        /* renamed from: b */
        private final Runnable f6430b = new RunnableC1719a();

        /* renamed from: c */
        private final Handler f6431c = new Handler(Looper.myLooper());

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: b.k.a.a$d$a */
        /* loaded from: classes-dex2jar.jar:b/k/a/a$d$a.class */
        public class RunnableC1719a implements Runnable {
            RunnableC1719a() {
                C1718d.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                C1718d.this.f6432d = SystemClock.uptimeMillis();
                C1718d.this.f6429a.m29084a();
            }
        }

        C1718d(C1715a c1715a) {
            super(c1715a);
        }

        @Override // p020b.p057k.p058a.C1714a.AbstractC1717c
        /* renamed from: a */
        void mo29083a() {
            this.f6431c.postDelayed(this.f6430b, Math.max(10 - (SystemClock.uptimeMillis() - this.f6432d), 0L));
        }
    }

    /* renamed from: b.k.a.a$e */
    /* loaded from: classes-dex2jar.jar:b/k/a/a$e.class */
    public static class C1720e extends AbstractC1717c {

        /* renamed from: b */
        private final Choreographer f6434b = Choreographer.getInstance();

        /* renamed from: c */
        private final Choreographer.FrameCallback f6435c = new Choreographer$FrameCallbackC1721a();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: b.k.a.a$e$a */
        /* loaded from: classes-dex2jar.jar:b/k/a/a$e$a.class */
        public class Choreographer$FrameCallbackC1721a implements Choreographer.FrameCallback {
            Choreographer$FrameCallbackC1721a() {
                C1720e.this = r4;
            }

            @Override // android.view.Choreographer.FrameCallback
            public void doFrame(long j) {
                C1720e.this.f6429a.m29084a();
            }
        }

        C1720e(C1715a c1715a) {
            super(c1715a);
        }

        @Override // p020b.p057k.p058a.C1714a.AbstractC1717c
        /* renamed from: a */
        void mo29083a() {
            this.f6434b.postFrameCallback(this.f6435c);
        }
    }

    C1714a() {
    }

    /* renamed from: b */
    private void m29090b() {
        if (this.f6427g) {
            for (int size = this.f6423c.size() - 1; size >= 0; size--) {
                if (this.f6423c.get(size) == null) {
                    this.f6423c.remove(size);
                }
            }
            this.f6427g = false;
        }
    }

    /* renamed from: d */
    public static C1714a m29088d() {
        ThreadLocal<C1714a> threadLocal = f6421a;
        if (threadLocal.get() == null) {
            threadLocal.set(new C1714a());
        }
        return threadLocal.get();
    }

    /* renamed from: f */
    private boolean m29086f(AbstractC1716b abstractC1716b, long j) {
        Long l = this.f6422b.get(abstractC1716b);
        if (l == null) {
            return true;
        }
        if (l.longValue() >= j) {
            return false;
        }
        this.f6422b.remove(abstractC1716b);
        return true;
    }

    /* renamed from: a */
    public void m29091a(AbstractC1716b abstractC1716b, long j) {
        if (this.f6423c.size() == 0) {
            m29087e().mo29083a();
        }
        if (!this.f6423c.contains(abstractC1716b)) {
            this.f6423c.add(abstractC1716b);
        }
        if (j > 0) {
            this.f6422b.put(abstractC1716b, Long.valueOf(SystemClock.uptimeMillis() + j));
        }
    }

    /* renamed from: c */
    void m29089c(long j) {
        long uptimeMillis = SystemClock.uptimeMillis();
        for (int i = 0; i < this.f6423c.size(); i++) {
            AbstractC1716b abstractC1716b = this.f6423c.get(i);
            if (abstractC1716b != null && m29086f(abstractC1716b, uptimeMillis)) {
                abstractC1716b.mo29082a(j);
            }
        }
        m29090b();
    }

    /* renamed from: e */
    AbstractC1717c m29087e() {
        if (this.f6425e == null) {
            if (Build.VERSION.SDK_INT >= 16) {
                this.f6425e = new C1720e(this.f6424d);
            } else {
                this.f6425e = new C1718d(this.f6424d);
            }
        }
        return this.f6425e;
    }

    /* renamed from: g */
    public void m29085g(AbstractC1716b abstractC1716b) {
        this.f6422b.remove(abstractC1716b);
        int indexOf = this.f6423c.indexOf(abstractC1716b);
        if (indexOf >= 0) {
            this.f6423c.set(indexOf, null);
            this.f6427g = true;
        }
    }
}
