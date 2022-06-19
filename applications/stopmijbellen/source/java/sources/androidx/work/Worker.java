package androidx.work;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import androidx.work.ListenableWorker;
import com.google.common.util.concurrent.ListenableFuture;
import p302z1.C5035c;
/* loaded from: classes-dex2jar.jar:androidx/work/Worker.class */
public abstract class Worker extends ListenableWorker {
    public C5035c<ListenableWorker.AbstractC0671a> mFuture;

    /* renamed from: androidx.work.Worker$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/Worker$a.class */
    public class RunnableC0675a implements Runnable {
        public RunnableC0675a() {
            Worker.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Worker.this.mFuture.m117k(Worker.this.doWork());
            } catch (Throwable th) {
                Worker.this.mFuture.m116l(th);
            }
        }
    }

    @Keep
    @SuppressLint({"BanKeepAnnotation"})
    public Worker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    public abstract ListenableWorker.AbstractC0671a doWork();

    @Override // androidx.work.ListenableWorker
    public final ListenableFuture<ListenableWorker.AbstractC0671a> startWork() {
        this.mFuture = new C5035c<>();
        getBackgroundExecutor().execute(new RunnableC0675a());
        return this.mFuture;
    }
}
