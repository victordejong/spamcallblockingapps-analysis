package androidx.p049h.p051b;

import android.os.Binder;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.util.Log;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.h.b.d */
/* loaded from: classes-dex2jar.jar:androidx/h/b/d.class */
public abstract class AbstractC1173d<Result> {

    /* renamed from: a */
    private static Handler f4582a;

    /* renamed from: b */
    private volatile int f4583b = EnumC1178a.f4592a;

    /* renamed from: d */
    final AtomicBoolean f4585d = new AtomicBoolean();

    /* renamed from: e */
    final AtomicBoolean f4586e = new AtomicBoolean();

    /* renamed from: c */
    final FutureTask<Result> f4584c = new FutureTask<Result>(new Callable<Result>() { // from class: androidx.h.b.d.1
        @Override // java.util.concurrent.Callable
        public final Result call() {
            AbstractC1173d.this.f4586e.set(true);
            Result result = null;
            try {
                Process.setThreadPriority(10);
                Result result2 = (Result) AbstractC1173d.this.mo43421a();
                result = result2;
                Binder.flushPendingCommands();
                AbstractC1173d.this.m43415d(result2);
                return result2;
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        }
    }) { // from class: androidx.h.b.d.2
        @Override // java.util.concurrent.FutureTask
        protected final void done() {
            try {
                AbstractC1173d.this.m43416c(get());
            } catch (InterruptedException e) {
                Log.w("AsyncTask", e);
            } catch (CancellationException e2) {
                AbstractC1173d.this.m43416c(null);
            } catch (ExecutionException e3) {
                throw new RuntimeException("An error occurred while executing doInBackground()", e3.getCause());
            } catch (Throwable th) {
                throw new RuntimeException("An error occurred while executing doInBackground()", th);
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.h.b.d$4 */
    /* loaded from: classes-dex2jar.jar:androidx/h/b/d$4.class */
    public static final /* synthetic */ class C11774 {

        /* renamed from: a */
        static final /* synthetic */ int[] f4591a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x001e -> B:11:0x0013). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC1178a.m43413a().length];
            f4591a = iArr;
            try {
                iArr[EnumC1178a.f4593b - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4591a[EnumC1178a.f4594c - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: androidx.h.b.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/h/b/d$a.class */
    public static final class EnumC1178a extends Enum<EnumC1178a> {

        /* renamed from: a */
        public static final int f4592a = 1;

        /* renamed from: b */
        public static final int f4593b = 2;

        /* renamed from: c */
        public static final int f4594c = 3;

        /* renamed from: d */
        private static final /* synthetic */ int[] f4595d = {1, 2, 3};

        private EnumC1178a(String str, int i) {
            super(str, i);
        }

        /* renamed from: a */
        public static int[] m43413a() {
            return (int[]) f4595d.clone();
        }
    }

    /* renamed from: b */
    private static Handler m43418b() {
        Handler handler;
        synchronized (AbstractC1173d.class) {
            try {
                if (f4582a == null) {
                    f4582a = new Handler(Looper.getMainLooper());
                }
                handler = f4582a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler;
    }

    /* renamed from: a */
    protected abstract Result mo43421a();

    /* renamed from: a */
    protected void mo43420a(Result result) {
    }

    /* renamed from: a */
    public final void m43419a(Executor executor) {
        if (this.f4583b == EnumC1178a.f4592a) {
            this.f4583b = EnumC1178a.f4593b;
            executor.execute(this.f4584c);
            return;
        }
        int i = C11774.f4591a[this.f4583b - 1];
        if (i == 1) {
            throw new IllegalStateException("Cannot execute task: the task is already running.");
        }
        if (i == 2) {
            throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
        }
        throw new IllegalStateException("We should never reach this state");
    }

    /* renamed from: b */
    protected void mo43417b(Result result) {
    }

    /* renamed from: c */
    final void m43416c(Result result) {
        if (!this.f4586e.get()) {
            m43415d(result);
        }
    }

    /* renamed from: d */
    final void m43415d(final Result result) {
        m43418b().post(new Runnable() { // from class: androidx.h.b.d.3
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC1173d.this.m43414e(result);
            }
        });
    }

    /* renamed from: e */
    final void m43414e(Result result) {
        if (this.f4585d.get()) {
            mo43417b(result);
        } else {
            mo43420a((AbstractC1173d<Result>) result);
        }
        this.f4583b = EnumC1178a.f4594c;
    }
}
