package androidx.p049h.p051b;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.SystemClock;
import android.text.format.DateUtils;
import androidx.core.p037os.OperationCanceledException;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* renamed from: androidx.h.b.a */
/* loaded from: classes-dex2jar.jar:androidx/h/b/a.class */
public abstract class AbstractC1167a<D> extends C1170c<D> {

    /* renamed from: a */
    volatile AbstractC1167a<D>.RunnableC1168a f4557a;

    /* renamed from: b */
    long f4558b = -10000;

    /* renamed from: c */
    private Executor f4559c;

    /* renamed from: d */
    private volatile AbstractC1167a<D>.RunnableC1168a f4560d;

    /* renamed from: e */
    private long f4561e;

    /* renamed from: f */
    private Handler f4562f;

    /* renamed from: androidx.h.b.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/h/b/a$a.class */
    public final class RunnableC1168a extends AbstractC1173d<D> implements Runnable {

        /* renamed from: a */
        boolean f4563a;

        RunnableC1168a() {
            AbstractC1167a.this = r4;
        }

        @Override // androidx.p049h.p051b.AbstractC1173d
        /* renamed from: a */
        protected final D mo43421a() {
            try {
                return (D) AbstractC1167a.this.mo19543d();
            } catch (OperationCanceledException e) {
                if (!this.f4585d.get()) {
                    throw e;
                }
                return null;
            }
        }

        @Override // androidx.p049h.p051b.AbstractC1173d
        /* renamed from: a */
        protected final void mo43420a(D d) {
            AbstractC1167a abstractC1167a = AbstractC1167a.this;
            if (abstractC1167a.f4557a != this) {
                abstractC1167a.m43448a(this, d);
            } else if (abstractC1167a.f4579i) {
                abstractC1167a.mo43444a((AbstractC1167a) d);
            } else {
                abstractC1167a.f4580j = false;
                abstractC1167a.f4558b = SystemClock.uptimeMillis();
                abstractC1167a.f4557a = null;
                abstractC1167a.mo43437b(d);
            }
        }

        @Override // androidx.p049h.p051b.AbstractC1173d
        /* renamed from: b */
        protected final void mo43417b(D d) {
            AbstractC1167a.this.m43448a(this, d);
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f4563a = false;
            AbstractC1167a.this.m43447c();
        }
    }

    public AbstractC1167a(Context context) {
        super(context);
    }

    @Override // androidx.p049h.p051b.C1170c
    /* renamed from: a */
    public final void mo43441a() {
        super.mo43441a();
        m43429n();
        this.f4557a = new RunnableC1168a();
        m43447c();
    }

    /* renamed from: a */
    final void m43448a(AbstractC1167a<D>.RunnableC1168a runnableC1168a, D d) {
        mo43444a((AbstractC1167a<D>) d);
        if (this.f4560d == runnableC1168a) {
            m43424s();
            this.f4558b = SystemClock.uptimeMillis();
            this.f4560d = null;
            m43447c();
        }
    }

    /* renamed from: a */
    public void mo43444a(D d) {
    }

    @Override // androidx.p049h.p051b.C1170c
    @Deprecated
    /* renamed from: a */
    public void mo43439a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String str2;
        super.mo43439a(str, fileDescriptor, printWriter, strArr);
        if (this.f4557a != null) {
            printWriter.print(str);
            printWriter.print("mTask=");
            printWriter.print(this.f4557a);
            printWriter.print(" waiting=");
            printWriter.println(this.f4557a.f4563a);
        }
        if (this.f4560d != null) {
            printWriter.print(str);
            printWriter.print("mCancellingTask=");
            printWriter.print(this.f4560d);
            printWriter.print(" waiting=");
            printWriter.println(this.f4560d.f4563a);
        }
        if (this.f4561e != 0) {
            printWriter.print(str);
            printWriter.print("mUpdateThrottle=");
            printWriter.print(DateUtils.formatElapsedTime(TimeUnit.MILLISECONDS.toSeconds(this.f4561e)));
            printWriter.print(" mLastLoadCompleteTime=");
            if (this.f4558b == -10000) {
                str2 = "--";
            } else {
                str2 = VerificationLanguage.REGION_PREFIX + DateUtils.formatElapsedTime(TimeUnit.MILLISECONDS.toSeconds(SystemClock.uptimeMillis() - this.f4558b));
            }
            printWriter.print(str2);
            printWriter.println();
        }
    }

    @Override // androidx.p049h.p051b.C1170c
    /* renamed from: b */
    protected final boolean mo43438b() {
        if (this.f4557a != null) {
            if (!m43432k()) {
                m43423t();
            }
            if (this.f4560d != null) {
                if (this.f4557a.f4563a) {
                    this.f4557a.f4563a = false;
                    this.f4562f.removeCallbacks(this.f4557a);
                }
                this.f4557a = null;
                return false;
            } else if (this.f4557a.f4563a) {
                this.f4557a.f4563a = false;
                this.f4562f.removeCallbacks(this.f4557a);
                this.f4557a = null;
                return false;
            } else {
                AbstractC1167a<D>.RunnableC1168a runnableC1168a = this.f4557a;
                runnableC1168a.f4585d.set(true);
                boolean cancel = runnableC1168a.f4584c.cancel(false);
                if (cancel) {
                    this.f4560d = this.f4557a;
                    mo43443e();
                }
                this.f4557a = null;
                return cancel;
            }
        }
        return false;
    }

    /* renamed from: c */
    final void m43447c() {
        if (this.f4560d != null || this.f4557a == null) {
            return;
        }
        if (this.f4557a.f4563a) {
            this.f4557a.f4563a = false;
            this.f4562f.removeCallbacks(this.f4557a);
        }
        if (this.f4561e > 0 && SystemClock.uptimeMillis() < this.f4558b + this.f4561e) {
            this.f4557a.f4563a = true;
            this.f4562f.postAtTime(this.f4557a, this.f4558b + this.f4561e);
            return;
        }
        if (this.f4559c == null) {
            this.f4559c = AsyncTask.THREAD_POOL_EXECUTOR;
        }
        this.f4557a.m43419a(this.f4559c);
    }

    /* renamed from: d */
    public abstract D mo19543d();

    /* renamed from: e */
    public void mo43443e() {
    }

    /* renamed from: f */
    public final boolean m43446f() {
        return this.f4560d != null;
    }
}
