package androidx.h.b;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.SystemClock;
import android.text.format.DateUtils;
import androidx.core.os.OperationCanceledException;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:androidx/h/b/a.class */
public abstract class a<D> extends c<D> {

    /* renamed from: a  reason: collision with root package name */
    volatile a<D>.RunnableC0067a f2418a;

    /* renamed from: b  reason: collision with root package name */
    long f2419b = -10000;

    /* renamed from: c  reason: collision with root package name */
    private Executor f2420c;

    /* renamed from: d  reason: collision with root package name */
    private volatile a<D>.RunnableC0067a f2421d;
    private long e;
    private Handler f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.h.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/h/b/a$a.class */
    public final class RunnableC0067a extends d<D> implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        boolean f2422a;

        RunnableC0067a() {
        }

        @Override // androidx.h.b.d
        protected final D a() {
            try {
                return (D) a.this.d();
            } catch (OperationCanceledException e) {
                if (this.f2434d.get()) {
                    return null;
                }
                throw e;
            }
        }

        @Override // androidx.h.b.d
        protected final void a(D d2) {
            a aVar = a.this;
            if (aVar.f2418a != this) {
                aVar.a(this, d2);
            } else if (aVar.i) {
                aVar.a((a) d2);
            } else {
                aVar.j = false;
                aVar.f2419b = SystemClock.uptimeMillis();
                aVar.f2418a = null;
                aVar.b(d2);
            }
        }

        @Override // androidx.h.b.d
        protected final void b(D d2) {
            a.this.a(this, d2);
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f2422a = false;
            a.this.c();
        }
    }

    public a(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.h.b.c
    public final void a() {
        super.a();
        n();
        this.f2418a = new RunnableC0067a();
        c();
    }

    final void a(a<D>.RunnableC0067a aVar, D d2) {
        a((a<D>) d2);
        if (this.f2421d == aVar) {
            s();
            this.f2419b = SystemClock.uptimeMillis();
            this.f2421d = null;
            c();
        }
    }

    public void a(D d2) {
    }

    @Override // androidx.h.b.c
    @Deprecated
    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String str2;
        super.a(str, fileDescriptor, printWriter, strArr);
        if (this.f2418a != null) {
            printWriter.print(str);
            printWriter.print("mTask=");
            printWriter.print(this.f2418a);
            printWriter.print(" waiting=");
            printWriter.println(this.f2418a.f2422a);
        }
        if (this.f2421d != null) {
            printWriter.print(str);
            printWriter.print("mCancellingTask=");
            printWriter.print(this.f2421d);
            printWriter.print(" waiting=");
            printWriter.println(this.f2421d.f2422a);
        }
        if (this.e != 0) {
            printWriter.print(str);
            printWriter.print("mUpdateThrottle=");
            printWriter.print(DateUtils.formatElapsedTime(TimeUnit.MILLISECONDS.toSeconds(this.e)));
            printWriter.print(" mLastLoadCompleteTime=");
            if (this.f2419b == -10000) {
                str2 = "--";
            } else {
                str2 = VerificationLanguage.REGION_PREFIX + DateUtils.formatElapsedTime(TimeUnit.MILLISECONDS.toSeconds(SystemClock.uptimeMillis() - this.f2419b));
            }
            printWriter.print(str2);
            printWriter.println();
        }
    }

    @Override // androidx.h.b.c
    protected final boolean b() {
        if (this.f2418a == null) {
            return false;
        }
        if (!k()) {
            t();
        }
        if (this.f2421d != null) {
            if (this.f2418a.f2422a) {
                this.f2418a.f2422a = false;
                this.f.removeCallbacks(this.f2418a);
            }
            this.f2418a = null;
            return false;
        } else if (this.f2418a.f2422a) {
            this.f2418a.f2422a = false;
            this.f.removeCallbacks(this.f2418a);
            this.f2418a = null;
            return false;
        } else {
            a<D>.RunnableC0067a aVar = this.f2418a;
            aVar.f2434d.set(true);
            boolean cancel = aVar.f2433c.cancel(false);
            if (cancel) {
                this.f2421d = this.f2418a;
                e();
            }
            this.f2418a = null;
            return cancel;
        }
    }

    final void c() {
        if (this.f2421d == null && this.f2418a != null) {
            if (this.f2418a.f2422a) {
                this.f2418a.f2422a = false;
                this.f.removeCallbacks(this.f2418a);
            }
            if (this.e <= 0 || SystemClock.uptimeMillis() >= this.f2419b + this.e) {
                if (this.f2420c == null) {
                    this.f2420c = AsyncTask.THREAD_POOL_EXECUTOR;
                }
                this.f2418a.a(this.f2420c);
                return;
            }
            this.f2418a.f2422a = true;
            this.f.postAtTime(this.f2418a, this.f2419b + this.e);
        }
    }

    public abstract D d();

    public void e() {
    }

    public final boolean f() {
        return this.f2421d != null;
    }
}
