package androidx.loader.content;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.p004os.OperationCanceledException;
import androidx.core.util.TimeUtils;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/loader/content/AsyncTaskLoader.class */
public abstract class AsyncTaskLoader<D> extends Loader<D> {

    /* renamed from: j */
    private final Executor f4131j;

    /* renamed from: k */
    volatile AsyncTaskLoader<D>.LoadTask f4132k;

    /* renamed from: l */
    volatile AsyncTaskLoader<D>.LoadTask f4133l;

    /* renamed from: m */
    long f4134m;

    /* renamed from: n */
    long f4135n;

    /* renamed from: o */
    Handler f4136o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/loader/content/AsyncTaskLoader$LoadTask.class */
    public final class LoadTask extends ModernAsyncTask<Void, Void, D> implements Runnable {

        /* renamed from: o */
        private final CountDownLatch f4137o = new CountDownLatch(1);

        /* renamed from: p */
        boolean f4138p;

        LoadTask() {
        }

        @Override // androidx.loader.content.ModernAsyncTask
        /* renamed from: h */
        protected void mo18062h(D d) {
            try {
                AsyncTaskLoader.this.m18108B(this, d);
            } finally {
                this.f4137o.countDown();
            }
        }

        @Override // androidx.loader.content.ModernAsyncTask
        /* renamed from: i */
        protected void mo18061i(D d) {
            try {
                AsyncTaskLoader.this.m18107C(this, d);
            } finally {
                this.f4137o.countDown();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: n */
        public D mo18068b(Void... voidArr) {
            try {
                return (D) AsyncTaskLoader.this.m18104H();
            } catch (OperationCanceledException e) {
                if (m18064f()) {
                    return null;
                }
                throw e;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f4138p = false;
            AsyncTaskLoader.this.m18106D();
        }
    }

    public AsyncTaskLoader(@NonNull Context context) {
        this(context, ModernAsyncTask.f4160m);
    }

    private AsyncTaskLoader(@NonNull Context context, @NonNull Executor executor) {
        super(context);
        this.f4135n = -10000L;
        this.f4131j = executor;
    }

    /* renamed from: A */
    public void mo18102A() {
    }

    /* renamed from: B */
    void m18108B(AsyncTaskLoader<D>.LoadTask loadTask, D d) {
        mo18101G(d);
        if (this.f4133l == loadTask) {
            m18076v();
            this.f4135n = SystemClock.uptimeMillis();
            this.f4133l = null;
            m18093e();
            m18106D();
        }
    }

    /* renamed from: C */
    void m18107C(AsyncTaskLoader<D>.LoadTask loadTask, D d) {
        if (this.f4132k != loadTask) {
            m18108B(loadTask, d);
        } else if (m18088j()) {
            mo18101G(d);
        } else {
            m18095c();
            this.f4135n = SystemClock.uptimeMillis();
            this.f4132k = null;
            mo18092f(d);
        }
    }

    /* renamed from: D */
    void m18106D() {
        if (this.f4133l == null && this.f4132k != null) {
            if (this.f4132k.f4138p) {
                this.f4132k.f4138p = false;
                this.f4136o.removeCallbacks(this.f4132k);
            }
            if (this.f4134m <= 0 || SystemClock.uptimeMillis() >= this.f4135n + this.f4134m) {
                this.f4132k.m18067c(this.f4131j, null);
                return;
            }
            this.f4132k.f4138p = true;
            this.f4136o.postAtTime(this.f4132k, this.f4135n + this.f4134m);
        }
    }

    /* renamed from: E */
    public boolean m18105E() {
        return this.f4133l != null;
    }

    @Nullable
    /* renamed from: F */
    public abstract D mo7800F();

    /* renamed from: G */
    public void mo18101G(@Nullable D d) {
    }

    @Nullable
    /* renamed from: H */
    protected D m18104H() {
        return mo7800F();
    }

    @Override // androidx.loader.content.Loader
    @Deprecated
    /* renamed from: g */
    public void mo18091g(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.mo18091g(str, fileDescriptor, printWriter, strArr);
        if (this.f4132k != null) {
            printWriter.print(str);
            printWriter.print("mTask=");
            printWriter.print(this.f4132k);
            printWriter.print(" waiting=");
            printWriter.println(this.f4132k.f4138p);
        }
        if (this.f4133l != null) {
            printWriter.print(str);
            printWriter.print("mCancellingTask=");
            printWriter.print(this.f4133l);
            printWriter.print(" waiting=");
            printWriter.println(this.f4133l.f4138p);
        }
        if (this.f4134m != 0) {
            printWriter.print(str);
            printWriter.print("mUpdateThrottle=");
            TimeUtils.m19333c(this.f4134m, printWriter);
            printWriter.print(" mLastLoadCompleteTime=");
            TimeUtils.m19334b(this.f4135n, SystemClock.uptimeMillis(), printWriter);
            printWriter.println();
        }
    }

    @Override // androidx.loader.content.Loader
    /* renamed from: n */
    protected boolean mo18084n() {
        if (this.f4132k == null) {
            return false;
        }
        if (!this.f4152e) {
            this.f4155h = true;
        }
        if (this.f4133l != null) {
            if (this.f4132k.f4138p) {
                this.f4132k.f4138p = false;
                this.f4136o.removeCallbacks(this.f4132k);
            }
            this.f4132k = null;
            return false;
        } else if (this.f4132k.f4138p) {
            this.f4132k.f4138p = false;
            this.f4136o.removeCallbacks(this.f4132k);
            this.f4132k = null;
            return false;
        } else {
            boolean a = this.f4132k.m18069a(false);
            if (a) {
                this.f4133l = this.f4132k;
                mo18102A();
            }
            this.f4132k = null;
            return a;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.loader.content.Loader
    /* renamed from: p */
    public void mo18082p() {
        super.mo18082p();
        m18096b();
        this.f4132k = new LoadTask();
        m18106D();
    }
}
