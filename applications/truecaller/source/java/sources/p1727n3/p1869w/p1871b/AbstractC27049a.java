package p1727n3.p1869w.p1871b;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import p1727n3.p1807k.p1820h.C26557h;
import p1727n3.p1869w.p1871b.AbstractC27054c;
/* renamed from: n3.w.b.a */
/* loaded from: classes-dex2jar.jar:n3/w/b/a.class */
public abstract class AbstractC27049a<D> extends C27051b<D> {
    public static final boolean DEBUG = false;
    public static final String TAG = "AsyncTaskLoader";
    public volatile AbstractC27049a<D>.RunnableC27050a mCancellingTask;
    private final Executor mExecutor;
    public Handler mHandler;
    public long mLastLoadCompleteTime;
    public volatile AbstractC27049a<D>.RunnableC27050a mTask;
    public long mUpdateThrottle;

    /* renamed from: n3.w.b.a$a */
    /* loaded from: classes-dex2jar.jar:n3/w/b/a$a.class */
    public final class RunnableC27050a extends AbstractC27054c<Void, Void, D> implements Runnable {

        /* renamed from: j */
        public final CountDownLatch f75599j = new CountDownLatch(1);

        /* renamed from: k */
        public boolean f75600k;

        public RunnableC27050a() {
            AbstractC27049a.this = r6;
        }

        @Override // p1727n3.p1869w.p1871b.AbstractC27054c
        /* renamed from: a */
        public Object mo973a(Void[] voidArr) {
            return AbstractC27049a.this.onLoadInBackground();
        }

        @Override // p1727n3.p1869w.p1871b.AbstractC27054c
        /* renamed from: b */
        public void mo972b(D d) {
            try {
                AbstractC27049a.this.dispatchOnCancelled(this, d);
            } finally {
                this.f75599j.countDown();
            }
        }

        @Override // p1727n3.p1869w.p1871b.AbstractC27054c
        /* renamed from: c */
        public void mo971c(D d) {
            try {
                AbstractC27049a.this.dispatchOnLoadComplete(this, d);
            } finally {
                this.f75599j.countDown();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f75600k = false;
            AbstractC27049a.this.executePendingTask();
        }
    }

    public AbstractC27049a(Context context) {
        this(context, AbstractC27054c.f75604h);
    }

    private AbstractC27049a(Context context, Executor executor) {
        super(context);
        this.mLastLoadCompleteTime = -10000L;
        this.mExecutor = executor;
    }

    public void cancelLoadInBackground() {
    }

    public void dispatchOnCancelled(AbstractC27049a<D>.RunnableC27050a runnableC27050a, D d) {
        onCanceled(d);
        if (this.mCancellingTask == runnableC27050a) {
            rollbackContentChanged();
            this.mLastLoadCompleteTime = SystemClock.uptimeMillis();
            this.mCancellingTask = null;
            deliverCancellation();
            executePendingTask();
        }
    }

    public void dispatchOnLoadComplete(AbstractC27049a<D>.RunnableC27050a runnableC27050a, D d) {
        if (this.mTask != runnableC27050a) {
            dispatchOnCancelled(runnableC27050a, d);
        } else if (isAbandoned()) {
            onCanceled(d);
        } else {
            commitContentChanged();
            this.mLastLoadCompleteTime = SystemClock.uptimeMillis();
            this.mTask = null;
            deliverResult(d);
        }
    }

    @Override // p1727n3.p1869w.p1871b.C27051b
    @Deprecated
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        if (this.mTask != null) {
            printWriter.print(str);
            printWriter.print("mTask=");
            printWriter.print(this.mTask);
            printWriter.print(" waiting=");
            printWriter.println(this.mTask.f75600k);
        }
        if (this.mCancellingTask != null) {
            printWriter.print(str);
            printWriter.print("mCancellingTask=");
            printWriter.print(this.mCancellingTask);
            printWriter.print(" waiting=");
            printWriter.println(this.mCancellingTask.f75600k);
        }
        if (this.mUpdateThrottle != 0) {
            printWriter.print(str);
            printWriter.print("mUpdateThrottle=");
            C26557h.m1686b(this.mUpdateThrottle, printWriter, 0);
            printWriter.print(" mLastLoadCompleteTime=");
            long j = this.mLastLoadCompleteTime;
            long uptimeMillis = SystemClock.uptimeMillis();
            if (j == 0) {
                printWriter.print("--");
            } else {
                C26557h.m1686b(j - uptimeMillis, printWriter, 0);
            }
            printWriter.println();
        }
    }

    public void executePendingTask() {
        if (this.mCancellingTask != null || this.mTask == null) {
            return;
        }
        if (this.mTask.f75600k) {
            this.mTask.f75600k = false;
            this.mHandler.removeCallbacks(this.mTask);
        }
        if (this.mUpdateThrottle > 0 && SystemClock.uptimeMillis() < this.mLastLoadCompleteTime + this.mUpdateThrottle) {
            this.mTask.f75600k = true;
            this.mHandler.postAtTime(this.mTask, this.mLastLoadCompleteTime + this.mUpdateThrottle);
            return;
        }
        AbstractC27049a<D>.RunnableC27050a runnableC27050a = this.mTask;
        Executor executor = this.mExecutor;
        if (runnableC27050a.f75608c == AbstractC27054c.EnumC27060f.PENDING) {
            runnableC27050a.f75608c = AbstractC27054c.EnumC27060f.RUNNING;
            runnableC27050a.f75606a.f75620a = null;
            executor.execute(runnableC27050a.f75607b);
            return;
        }
        int ordinal = runnableC27050a.f75608c.ordinal();
        if (ordinal == 1) {
            throw new IllegalStateException("Cannot execute task: the task is already running.");
        }
        if (ordinal == 2) {
            throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
        }
        throw new IllegalStateException("We should never reach this state");
    }

    public boolean isLoadInBackgroundCanceled() {
        return this.mCancellingTask != null;
    }

    public abstract D loadInBackground();

    @Override // p1727n3.p1869w.p1871b.C27051b
    public boolean onCancelLoad() {
        if (this.mTask != null) {
            if (!this.mStarted) {
                this.mContentChanged = true;
            }
            if (this.mCancellingTask != null) {
                if (this.mTask.f75600k) {
                    this.mTask.f75600k = false;
                    this.mHandler.removeCallbacks(this.mTask);
                }
                this.mTask = null;
                return false;
            } else if (this.mTask.f75600k) {
                this.mTask.f75600k = false;
                this.mHandler.removeCallbacks(this.mTask);
                this.mTask = null;
                return false;
            } else {
                AbstractC27049a<D>.RunnableC27050a runnableC27050a = this.mTask;
                runnableC27050a.f75609d.set(true);
                boolean cancel = runnableC27050a.f75607b.cancel(false);
                if (cancel) {
                    this.mCancellingTask = this.mTask;
                    cancelLoadInBackground();
                }
                this.mTask = null;
                return cancel;
            }
        }
        return false;
    }

    public void onCanceled(D d) {
    }

    @Override // p1727n3.p1869w.p1871b.C27051b
    public void onForceLoad() {
        super.onForceLoad();
        cancelLoad();
        this.mTask = new RunnableC27050a();
        executePendingTask();
    }

    public D onLoadInBackground() {
        return loadInBackground();
    }

    public void setUpdateThrottle(long j) {
        this.mUpdateThrottle = j;
        if (j != 0) {
            this.mHandler = new Handler();
        }
    }

    public void waitForLoader() {
        AbstractC27049a<D>.RunnableC27050a runnableC27050a = this.mTask;
        if (runnableC27050a != null) {
            try {
                runnableC27050a.f75599j.await();
            } catch (InterruptedException e) {
            }
        }
    }
}
