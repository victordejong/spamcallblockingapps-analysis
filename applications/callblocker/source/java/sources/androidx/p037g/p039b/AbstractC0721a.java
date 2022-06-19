package androidx.p037g.p039b;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import androidx.core.p025g.C0528g;
import androidx.core.p028os.OperationCanceledException;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
/* renamed from: androidx.g.b.a */
/* loaded from: classes-dex2jar.jar:androidx/g/b/a.class */
public abstract class AbstractC0721a<D> extends C0723b<D> {

    /* renamed from: a */
    volatile AbstractC0721a<D>.RunnableC0722a f2577a;

    /* renamed from: b */
    volatile AbstractC0721a<D>.RunnableC0722a f2578b;

    /* renamed from: c */
    long f2579c;

    /* renamed from: d */
    long f2580d;

    /* renamed from: e */
    Handler f2581e;

    /* renamed from: o */
    private final Executor f2582o;

    /* renamed from: androidx.g.b.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/g/b/a$a.class */
    public final class RunnableC0722a extends AbstractC0726c<Void, Void, D> implements Runnable {

        /* renamed from: a */
        boolean f2583a;

        /* renamed from: f */
        private final CountDownLatch f2585f = new CountDownLatch(1);

        RunnableC0722a() {
            AbstractC0721a.this = r6;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public D mo19546a(Void... voidArr) {
            D d;
            try {
                d = AbstractC0721a.this.m19576e();
            } catch (OperationCanceledException e) {
                if (!m19542c()) {
                    throw e;
                }
                d = null;
            }
            return d;
        }

        @Override // androidx.p037g.p039b.AbstractC0726c
        /* renamed from: a */
        protected void mo19549a(D d) {
            try {
                AbstractC0721a.this.m19578b(this, d);
            } finally {
                this.f2585f.countDown();
            }
        }

        @Override // androidx.p037g.p039b.AbstractC0726c
        /* renamed from: b */
        protected void mo19544b(D d) {
            try {
                AbstractC0721a.this.m19580a((AbstractC0721a<RunnableC0722a>.RunnableC0722a) this, (RunnableC0722a) d);
            } finally {
                this.f2585f.countDown();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2583a = false;
            AbstractC0721a.this.m19577c();
        }
    }

    public AbstractC0721a(Context context) {
        this(context, AbstractC0726c.f2597c);
    }

    private AbstractC0721a(Context context, Executor executor) {
        super(context);
        this.f2580d = -10000L;
        this.f2582o = executor;
    }

    @Override // androidx.p037g.p039b.C0723b
    /* renamed from: a */
    public void mo19573a() {
        super.mo19573a();
        m19563k();
        this.f2577a = new RunnableC0722a();
        m19577c();
    }

    /* renamed from: a */
    void m19580a(AbstractC0721a<D>.RunnableC0722a runnableC0722a, D d) {
        m19579a((AbstractC0721a<D>) d);
        if (this.f2578b == runnableC0722a) {
            m19554t();
            this.f2580d = SystemClock.uptimeMillis();
            this.f2578b = null;
            m19566g();
            m19577c();
        }
    }

    /* renamed from: a */
    public void m19579a(D d) {
    }

    @Override // androidx.p037g.p039b.C0723b
    @Deprecated
    /* renamed from: a */
    public void mo19570a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.mo19570a(str, fileDescriptor, printWriter, strArr);
        if (this.f2577a != null) {
            printWriter.print(str);
            printWriter.print("mTask=");
            printWriter.print(this.f2577a);
            printWriter.print(" waiting=");
            printWriter.println(this.f2577a.f2583a);
        }
        if (this.f2578b != null) {
            printWriter.print(str);
            printWriter.print("mCancellingTask=");
            printWriter.print(this.f2578b);
            printWriter.print(" waiting=");
            printWriter.println(this.f2578b.f2583a);
        }
        if (this.f2579c != 0) {
            printWriter.print(str);
            printWriter.print("mUpdateThrottle=");
            C0528g.m20638a(this.f2579c, printWriter);
            printWriter.print(" mLastLoadCompleteTime=");
            C0528g.m20639a(this.f2580d, SystemClock.uptimeMillis(), printWriter);
            printWriter.println();
        }
    }

    /* renamed from: b */
    void m19578b(AbstractC0721a<D>.RunnableC0722a runnableC0722a, D d) {
        if (this.f2577a != runnableC0722a) {
            m19580a((AbstractC0721a<AbstractC0721a<D>.RunnableC0722a>.RunnableC0722a) runnableC0722a, (AbstractC0721a<D>.RunnableC0722a) d);
        } else if (m19565h()) {
            m19579a((AbstractC0721a<D>) d);
        } else {
            m19555s();
            this.f2580d = SystemClock.uptimeMillis();
            this.f2577a = null;
            m19568b(d);
        }
    }

    @Override // androidx.p037g.p039b.C0723b
    /* renamed from: b */
    protected boolean mo19569b() {
        boolean z = false;
        if (this.f2577a != null) {
            if (!this.f2590j) {
                this.f2593m = true;
            }
            if (this.f2578b != null) {
                if (this.f2577a.f2583a) {
                    this.f2577a.f2583a = false;
                    this.f2581e.removeCallbacks(this.f2577a);
                }
                this.f2577a = null;
                z = false;
            } else if (this.f2577a.f2583a) {
                this.f2577a.f2583a = false;
                this.f2581e.removeCallbacks(this.f2577a);
                this.f2577a = null;
                z = false;
            } else {
                z = this.f2577a.m19547a(false);
                if (z) {
                    this.f2578b = this.f2577a;
                    m19575f();
                }
                this.f2577a = null;
            }
        }
        return z;
    }

    /* renamed from: c */
    void m19577c() {
        if (this.f2578b != null || this.f2577a == null) {
            return;
        }
        if (this.f2577a.f2583a) {
            this.f2577a.f2583a = false;
            this.f2581e.removeCallbacks(this.f2577a);
        }
        if (this.f2579c <= 0 || SystemClock.uptimeMillis() >= this.f2580d + this.f2579c) {
            this.f2577a.m19548a(this.f2582o, null);
            return;
        }
        this.f2577a.f2583a = true;
        this.f2581e.postAtTime(this.f2577a, this.f2580d + this.f2579c);
    }

    /* renamed from: d */
    public abstract D mo14519d();

    /* renamed from: e */
    protected D m19576e() {
        return mo14519d();
    }

    /* renamed from: f */
    public void m19575f() {
    }
}
