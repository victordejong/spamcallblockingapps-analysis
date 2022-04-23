package androidx.h.b;

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
/* loaded from: classes-dex2jar.jar:androidx/h/b/d.class */
abstract class d<Result> {

    /* renamed from: a  reason: collision with root package name */
    private static Handler f2431a;

    /* renamed from: b  reason: collision with root package name */
    private volatile int f2432b = a.f2440a;

    /* renamed from: d  reason: collision with root package name */
    final AtomicBoolean f2434d = new AtomicBoolean();
    final AtomicBoolean e = new AtomicBoolean();

    /* renamed from: c  reason: collision with root package name */
    final FutureTask<Result> f2433c = new FutureTask<Result>(new Callable<Result>() { // from class: androidx.h.b.d.1
        @Override // java.util.concurrent.Callable
        public final Result call() {
            d.this.e.set(true);
            Result result = null;
            try {
                Process.setThreadPriority(10);
                Result result2 = (Result) d.this.a();
                result = result2;
                Binder.flushPendingCommands();
                return result2;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
    }) { // from class: androidx.h.b.d.2
        @Override // java.util.concurrent.FutureTask
        protected final void done() {
            try {
                d.this.c(get());
            } catch (InterruptedException e) {
                Log.w("AsyncTask", e);
            } catch (CancellationException e2) {
                d.this.c(null);
            } catch (ExecutionException e3) {
                throw new RuntimeException("An error occurred while executing doInBackground()", e3.getCause());
            } catch (Throwable th) {
                throw new RuntimeException("An error occurred while executing doInBackground()", th);
            }
        }
    };

    /* renamed from: androidx.h.b.d$4  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:androidx/h/b/d$4.class */
    static final /* synthetic */ class AnonymousClass4 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2439a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x001e -> B:11:0x0013). Please submit an issue!!! */
        static {
            int[] iArr = new int[a.a().length];
            f2439a = iArr;
            try {
                iArr[a.f2441b - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2439a[a.f2442c - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes-dex2jar.jar:androidx/h/b/d$a.class */
    public static final class a extends Enum<a> {

        /* renamed from: a  reason: collision with root package name */
        public static final int f2440a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f2441b = 2;

        /* renamed from: c  reason: collision with root package name */
        public static final int f2442c = 3;

        /* renamed from: d  reason: collision with root package name */
        private static final /* synthetic */ int[] f2443d = {1, 2, 3};

        private a(String str, int i) {
        }

        public static int[] a() {
            return (int[]) f2443d.clone();
        }
    }

    private static Handler b() {
        Handler handler;
        synchronized (d.class) {
            try {
                if (f2431a == null) {
                    f2431a = new Handler(Looper.getMainLooper());
                }
                handler = f2431a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler;
    }

    protected abstract Result a();

    protected void a(Result result) {
    }

    public final void a(Executor executor) {
        if (this.f2432b != a.f2440a) {
            int i = AnonymousClass4.f2439a[this.f2432b - 1];
            if (i == 1) {
                throw new IllegalStateException("Cannot execute task: the task is already running.");
            } else if (i != 2) {
                throw new IllegalStateException("We should never reach this state");
            } else {
                throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
            }
        } else {
            this.f2432b = a.f2441b;
            executor.execute(this.f2433c);
        }
    }

    protected void b(Result result) {
    }

    final void c(Result result) {
        if (!this.e.get()) {
            d(result);
        }
    }

    final void d(final Result result) {
        b().post(new Runnable() { // from class: androidx.h.b.d.3
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public final void run() {
                d.this.e(result);
            }
        });
    }

    final void e(Result result) {
        if (this.f2434d.get()) {
            b(result);
        } else {
            a((d<Result>) result);
        }
        this.f2432b = a.f2442c;
    }
}
