package androidx.work;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.impl.utils.a.c;
import com.google.common.util.concurrent.a;
/* loaded from: classes-dex2jar.jar:androidx/work/Worker.class */
public abstract class Worker extends ListenableWorker {
    c<ListenableWorker.a> mFuture;

    public Worker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    public abstract ListenableWorker.a doWork();

    @Override // androidx.work.ListenableWorker
    public final a<ListenableWorker.a> startWork() {
        this.mFuture = c.a();
        getBackgroundExecutor().execute(new Runnable() { // from class: androidx.work.Worker.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    Worker.this.mFuture.a((c<ListenableWorker.a>) Worker.this.doWork());
                } catch (Throwable th) {
                    Worker.this.mFuture.a(th);
                }
            }
        });
        return this.mFuture;
    }
}
