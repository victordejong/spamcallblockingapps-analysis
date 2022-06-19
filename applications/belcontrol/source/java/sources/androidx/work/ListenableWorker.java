package androidx.work;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Network;
import android.net.Uri;
import androidx.annotation.Keep;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/work/ListenableWorker.class */
public abstract class ListenableWorker {
    private Context mAppContext;
    private volatile boolean mStopped;
    private boolean mUsed;
    private WorkerParameters mWorkerParams;

    /* renamed from: androidx.work.ListenableWorker$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/ListenableWorker$a.class */
    public static abstract class AbstractC0217a {
        /* renamed from: a */
        public static AbstractC0217a m5897a() {
            return new a();
        }

        /* renamed from: b */
        public static AbstractC0217a m5896b() {
            return new b();
        }

        /* renamed from: c */
        public static AbstractC0217a m5895c() {
            return new c();
        }

        /* renamed from: d */
        public static AbstractC0217a m5894d(u40 u40Var) {
            return new c(u40Var);
        }
    }

    @Keep
    @SuppressLint({"BanKeepAnnotation"})
    public ListenableWorker(Context context, WorkerParameters workerParameters) {
        if (context != null) {
            if (workerParameters == null) {
                throw new IllegalArgumentException("WorkerParameters is null");
            }
            this.mAppContext = context;
            this.mWorkerParams = workerParameters;
            return;
        }
        throw new IllegalArgumentException("Application Context is null");
    }

    public final Context getApplicationContext() {
        return this.mAppContext;
    }

    public Executor getBackgroundExecutor() {
        return this.mWorkerParams.m5893a();
    }

    public final UUID getId() {
        return this.mWorkerParams.m5892b();
    }

    public final u40 getInputData() {
        return this.mWorkerParams.m5891c();
    }

    public final Network getNetwork() {
        return this.mWorkerParams.m5890d();
    }

    public final int getRunAttemptCount() {
        return this.mWorkerParams.m5889e();
    }

    public final Set<String> getTags() {
        return this.mWorkerParams.m5888f();
    }

    public v70 getTaskExecutor() {
        return this.mWorkerParams.m5887g();
    }

    public final List<String> getTriggeredContentAuthorities() {
        return this.mWorkerParams.m5886h();
    }

    public final List<Uri> getTriggeredContentUris() {
        return this.mWorkerParams.m5885i();
    }

    public g50 getWorkerFactory() {
        return this.mWorkerParams.m5884j();
    }

    public final boolean isStopped() {
        return this.mStopped;
    }

    public final boolean isUsed() {
        return this.mUsed;
    }

    public void onStopped() {
    }

    public final void setUsed() {
        this.mUsed = true;
    }

    public abstract ListenableFuture<AbstractC0217a> startWork();

    public final void stop() {
        this.mStopped = true;
        onStopped();
    }
}
