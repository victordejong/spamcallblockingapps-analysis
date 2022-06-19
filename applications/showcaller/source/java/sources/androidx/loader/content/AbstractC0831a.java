package androidx.loader.content;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import androidx.core.p008os.OperationCanceledException;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import p020b.p041h.p049k.C1598i;
/* renamed from: androidx.loader.content.a */
/* loaded from: classes-dex2jar.jar:androidx/loader/content/a.class */
public abstract class AbstractC0831a<D> extends C0833b<D> {

    /* renamed from: j */
    private final Executor f3759j;

    /* renamed from: k */
    volatile AbstractC0831a<D>.RunnableC0832a f3760k;

    /* renamed from: l */
    volatile AbstractC0831a<D>.RunnableC0832a f3761l;

    /* renamed from: m */
    long f3762m;

    /* renamed from: n */
    long f3763n;

    /* renamed from: o */
    Handler f3764o;

    /* renamed from: androidx.loader.content.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/loader/content/a$a.class */
    public final class RunnableC0832a extends ModernAsyncTask<Void, Void, D> implements Runnable {

        /* renamed from: n */
        private final CountDownLatch f3765n = new CountDownLatch(1);

        /* renamed from: o */
        boolean f3766o;

        RunnableC0832a() {
            AbstractC0831a.this = r6;
        }

        @Override // androidx.loader.content.ModernAsyncTask
        /* renamed from: h */
        protected void mo32324h(D d) {
            try {
                AbstractC0831a.this.m32328x(this, d);
            } finally {
                this.f3765n.countDown();
            }
        }

        @Override // androidx.loader.content.ModernAsyncTask
        /* renamed from: i */
        protected void mo32323i(D d) {
            try {
                AbstractC0831a.this.m32327y(this, d);
            } finally {
                this.f3765n.countDown();
            }
        }

        /* renamed from: n */
        public D mo32325b(Void... voidArr) {
            try {
                return (D) AbstractC0831a.this.m32330C();
            } catch (OperationCanceledException e) {
                if (!m32337f()) {
                    throw e;
                }
                return null;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f3766o = false;
            AbstractC0831a.this.m32326z();
        }
    }

    public AbstractC0831a(Context context) {
        this(context, ModernAsyncTask.f3740f);
    }

    private AbstractC0831a(Context context, Executor executor) {
        super(context);
        this.f3763n = -10000L;
        this.f3759j = executor;
    }

    /* renamed from: A */
    public abstract D mo17591A();

    /* renamed from: B */
    public void m32331B(D d) {
    }

    /* renamed from: C */
    protected D m32330C() {
        return mo17591A();
    }

    @Override // androidx.loader.content.C0833b
    @Deprecated
    /* renamed from: g */
    public void mo32315g(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.mo32315g(str, fileDescriptor, printWriter, strArr);
        if (this.f3760k != null) {
            printWriter.print(str);
            printWriter.print("mTask=");
            printWriter.print(this.f3760k);
            printWriter.print(" waiting=");
            printWriter.println(this.f3760k.f3766o);
        }
        if (this.f3761l != null) {
            printWriter.print(str);
            printWriter.print("mCancellingTask=");
            printWriter.print(this.f3761l);
            printWriter.print(" waiting=");
            printWriter.println(this.f3761l.f3766o);
        }
        if (this.f3762m != 0) {
            printWriter.print(str);
            printWriter.print("mUpdateThrottle=");
            C1598i.m29655c(this.f3762m, printWriter);
            printWriter.print(" mLastLoadCompleteTime=");
            C1598i.m29656b(this.f3763n, SystemClock.uptimeMillis(), printWriter);
            printWriter.println();
        }
    }

    @Override // androidx.loader.content.C0833b
    /* renamed from: k */
    protected boolean mo32311k() {
        if (this.f3760k != null) {
            if (!this.f3772e) {
                this.f3775h = true;
            }
            if (this.f3761l != null) {
                if (this.f3760k.f3766o) {
                    this.f3760k.f3766o = false;
                    this.f3764o.removeCallbacks(this.f3760k);
                }
                this.f3760k = null;
                return false;
            } else if (this.f3760k.f3766o) {
                this.f3760k.f3766o = false;
                this.f3764o.removeCallbacks(this.f3760k);
                this.f3760k = null;
                return false;
            } else {
                boolean m32341a = this.f3760k.m32341a(false);
                if (m32341a) {
                    this.f3761l = this.f3760k;
                    m32329w();
                }
                this.f3760k = null;
                return m32341a;
            }
        }
        return false;
    }

    @Override // androidx.loader.content.C0833b
    /* renamed from: m */
    public void mo32309m() {
        super.mo32309m();
        m32320b();
        this.f3760k = new RunnableC0832a();
        m32326z();
    }

    /* renamed from: w */
    public void m32329w() {
    }

    /* renamed from: x */
    void m32328x(AbstractC0831a<D>.RunnableC0832a runnableC0832a, D d) {
        m32331B(d);
        if (this.f3761l == runnableC0832a) {
            m32304s();
            this.f3763n = SystemClock.uptimeMillis();
            this.f3761l = null;
            m32317e();
            m32326z();
        }
    }

    /* renamed from: y */
    void m32327y(AbstractC0831a<D>.RunnableC0832a runnableC0832a, D d) {
        if (this.f3760k != runnableC0832a) {
            m32328x(runnableC0832a, d);
        } else if (m32313i()) {
            m32331B(d);
        } else {
            m32319c();
            this.f3763n = SystemClock.uptimeMillis();
            this.f3760k = null;
            m32316f(d);
        }
    }

    /* renamed from: z */
    void m32326z() {
        if (this.f3761l != null || this.f3760k == null) {
            return;
        }
        if (this.f3760k.f3766o) {
            this.f3760k.f3766o = false;
            this.f3764o.removeCallbacks(this.f3760k);
        }
        if (this.f3762m <= 0 || SystemClock.uptimeMillis() >= this.f3763n + this.f3762m) {
            this.f3760k.m32340c(this.f3759j, null);
            return;
        }
        this.f3760k.f3766o = true;
        this.f3764o.postAtTime(this.f3760k, this.f3763n + this.f3762m);
    }
}
