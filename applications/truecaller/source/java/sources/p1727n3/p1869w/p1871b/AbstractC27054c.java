package p1727n3.p1869w.p1871b;

import android.os.Binder;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import java.util.Objects;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.w.b.c */
/* loaded from: classes-dex2jar.jar:n3/w/b/c.class */
public abstract class AbstractC27054c<Params, Progress, Result> {

    /* renamed from: f */
    public static final ThreadFactory f75602f;

    /* renamed from: g */
    public static final BlockingQueue<Runnable> f75603g;

    /* renamed from: h */
    public static final Executor f75604h;

    /* renamed from: i */
    public static HandlerC27059e f75605i;

    /* renamed from: a */
    public final AbstractCallableC27061g<Params, Result> f75606a;

    /* renamed from: b */
    public final FutureTask<Result> f75607b;

    /* renamed from: c */
    public volatile EnumC27060f f75608c = EnumC27060f.PENDING;

    /* renamed from: d */
    public final AtomicBoolean f75609d = new AtomicBoolean();

    /* renamed from: e */
    public final AtomicBoolean f75610e = new AtomicBoolean();

    /* renamed from: n3.w.b.c$a */
    /* loaded from: classes-dex2jar.jar:n3/w/b/c$a.class */
    public static final class ThreadFactoryC27055a implements ThreadFactory {

        /* renamed from: a */
        public final AtomicInteger f75611a = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            StringBuilder m8728C = C22128a.m8728C("ModernAsyncTask #");
            m8728C.append(this.f75611a.getAndIncrement());
            return new Thread(runnable, m8728C.toString());
        }
    }

    /* renamed from: n3.w.b.c$b */
    /* loaded from: classes-dex2jar.jar:n3/w/b/c$b.class */
    public class C27056b extends AbstractCallableC27061g<Params, Result> {
        public C27056b() {
            AbstractC27054c.this = r4;
        }

        @Override // java.util.concurrent.Callable
        public Result call() throws Exception {
            AbstractC27054c.this.f75610e.set(true);
            Result result = null;
            try {
                Process.setThreadPriority(10);
                Result result2 = (Result) AbstractC27054c.this.mo973a(this.f75620a);
                result = result2;
                Binder.flushPendingCommands();
                AbstractC27054c.this.m970d(result2);
                return result2;
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        }
    }

    /* renamed from: n3.w.b.c$c */
    /* loaded from: classes-dex2jar.jar:n3/w/b/c$c.class */
    public class C27057c extends FutureTask<Result> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C27057c(Callable callable) {
            super(callable);
            AbstractC27054c.this = r4;
        }

        @Override // java.util.concurrent.FutureTask
        public void done() {
            try {
                Result result = get();
                AbstractC27054c abstractC27054c = AbstractC27054c.this;
                if (abstractC27054c.f75610e.get()) {
                    return;
                }
                abstractC27054c.m970d(result);
            } catch (InterruptedException e) {
            } catch (CancellationException e2) {
                AbstractC27054c abstractC27054c2 = AbstractC27054c.this;
                if (abstractC27054c2.f75610e.get()) {
                    return;
                }
                abstractC27054c2.m970d(null);
            } catch (ExecutionException e3) {
                throw new RuntimeException("An error occurred while executing doInBackground()", e3.getCause());
            } catch (Throwable th) {
                throw new RuntimeException("An error occurred while executing doInBackground()", th);
            }
        }
    }

    /* renamed from: n3.w.b.c$d */
    /* loaded from: classes-dex2jar.jar:n3/w/b/c$d.class */
    public static class C27058d<Data> {

        /* renamed from: a */
        public final AbstractC27054c f75614a;

        /* renamed from: b */
        public final Data[] f75615b;

        public C27058d(AbstractC27054c abstractC27054c, Data... dataArr) {
            this.f75614a = abstractC27054c;
            this.f75615b = dataArr;
        }
    }

    /* renamed from: n3.w.b.c$e */
    /* loaded from: classes-dex2jar.jar:n3/w/b/c$e.class */
    public static class HandlerC27059e extends Handler {
        public HandlerC27059e() {
            super(Looper.getMainLooper());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            C27058d c27058d = (C27058d) message.obj;
            int i = message.what;
            if (i != 1) {
                if (i != 2) {
                    return;
                }
                Objects.requireNonNull(c27058d.f75614a);
                return;
            }
            AbstractC27054c abstractC27054c = c27058d.f75614a;
            Object obj = c27058d.f75615b[0];
            if (abstractC27054c.f75609d.get()) {
                abstractC27054c.mo972b(obj);
            } else {
                abstractC27054c.mo971c(obj);
            }
            abstractC27054c.f75608c = EnumC27060f.FINISHED;
        }
    }

    /* renamed from: n3.w.b.c$f */
    /* loaded from: classes-dex2jar.jar:n3/w/b/c$f.class */
    public enum EnumC27060f {
        PENDING,
        RUNNING,
        FINISHED
    }

    /* renamed from: n3.w.b.c$g */
    /* loaded from: classes-dex2jar.jar:n3/w/b/c$g.class */
    public static abstract class AbstractCallableC27061g<Params, Result> implements Callable<Result> {

        /* renamed from: a */
        public Params[] f75620a;
    }

    static {
        ThreadFactoryC27055a threadFactoryC27055a = new ThreadFactoryC27055a();
        f75602f = threadFactoryC27055a;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue(10);
        f75603g = linkedBlockingQueue;
        f75604h = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, linkedBlockingQueue, threadFactoryC27055a);
    }

    public AbstractC27054c() {
        C27056b c27056b = new C27056b();
        this.f75606a = c27056b;
        this.f75607b = new C27057c(c27056b);
    }

    /* renamed from: a */
    public abstract Result mo973a(Params... paramsArr);

    /* renamed from: b */
    public void mo972b(Result result) {
    }

    /* renamed from: c */
    public void mo971c(Result result) {
    }

    /* renamed from: d */
    public Result m970d(Result result) {
        HandlerC27059e handlerC27059e;
        synchronized (AbstractC27054c.class) {
            try {
                if (f75605i == null) {
                    f75605i = new HandlerC27059e();
                }
                handlerC27059e = f75605i;
            } catch (Throwable th) {
                throw th;
            }
        }
        handlerC27059e.obtainMessage(1, new C27058d(this, result)).sendToTarget();
        return result;
    }
}
