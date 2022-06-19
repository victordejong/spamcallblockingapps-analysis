package androidx.work;

import android.content.Context;
import androidx.annotation.Keep;
import androidx.work.ListenableWorker;
import com.google.common.util.concurrent.ListenableFuture;
import n3.m0.c0.t.w.c;
/* loaded from: classes-dex2jar.jar:androidx/work/Worker.class */
public abstract class Worker extends ListenableWorker {
    public c<ListenableWorker.AbstractC0414a> mFuture;

    /* renamed from: androidx.work.Worker$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/Worker$a.class */
    public class RunnableC0419a implements Runnable {
        public RunnableC0419a() {
            Worker.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Worker.this.mFuture.i(Worker.this.doWork());
            } catch (Throwable th) {
                Worker.this.mFuture.j(th);
            }
        }
    }

    @Keep
    public Worker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    public abstract ListenableWorker.AbstractC0414a doWork();

    @Override // androidx.work.ListenableWorker
    public final ListenableFuture<ListenableWorker.AbstractC0414a> startWork() {
        this.mFuture = new c<>();
        getBackgroundExecutor().execute(new RunnableC0419a());
        return this.mFuture;
    }
}
