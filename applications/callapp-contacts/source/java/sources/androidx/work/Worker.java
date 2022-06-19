package androidx.work;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.impl.utils.p089a.C3117c;
import com.google.common.util.concurrent.AbstractFutureC15579a;
/* loaded from: classes-dex2jar.jar:androidx/work/Worker.class */
public abstract class Worker extends ListenableWorker {
    C3117c<ListenableWorker.AbstractC2980a> mFuture;

    public Worker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    public abstract ListenableWorker.AbstractC2980a doWork();

    @Override // androidx.work.ListenableWorker
    public final AbstractFutureC15579a<ListenableWorker.AbstractC2980a> startWork() {
        this.mFuture = C3117c.m39313a();
        getBackgroundExecutor().execute(new Runnable() { // from class: androidx.work.Worker.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    Worker.this.mFuture.mo39311a((C3117c<ListenableWorker.AbstractC2980a>) Worker.this.doWork());
                } catch (Throwable th) {
                    Worker.this.mFuture.mo39310a(th);
                }
            }
        });
        return this.mFuture;
    }
}
