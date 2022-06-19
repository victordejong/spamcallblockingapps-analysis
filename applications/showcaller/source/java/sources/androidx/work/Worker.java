package androidx.work;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import androidx.work.ListenableWorker;
import androidx.work.impl.utils.futures.C1382a;
import com.google.common.util.concurrent.AbstractFutureC8832a;
/* loaded from: classes-dex2jar.jar:androidx/work/Worker.class */
public abstract class Worker extends ListenableWorker {

    /* renamed from: i */
    C1382a<ListenableWorker.AbstractC1224a> f5235i;

    /* renamed from: androidx.work.Worker$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/Worker$a.class */
    class RunnableC1228a implements Runnable {
        RunnableC1228a() {
            Worker.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Worker.this.f5235i.mo30187q(Worker.this.doWork());
            } catch (Throwable th) {
                Worker.this.f5235i.mo30186r(th);
            }
        }
    }

    @Keep
    @SuppressLint({"BanKeepAnnotation"})
    public Worker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    public abstract ListenableWorker.AbstractC1224a doWork();

    @Override // androidx.work.ListenableWorker
    public final AbstractFutureC8832a<ListenableWorker.AbstractC1224a> startWork() {
        this.f5235i = C1382a.m30184u();
        getBackgroundExecutor().execute(new RunnableC1228a());
        return this.f5235i;
    }
}
