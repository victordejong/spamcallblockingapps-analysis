package androidx.work;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Network;
import android.net.Uri;
import androidx.annotation.Keep;
import androidx.work.impl.utils.p010j.AbstractC0607a;
import e.c.b.a.a.a;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/work/ListenableWorker.class */
public abstract class ListenableWorker {

    /* renamed from: b */
    private Context f2919b;

    /* renamed from: c */
    private WorkerParameters f2920c;

    /* renamed from: d */
    private volatile boolean f2921d;

    /* renamed from: e */
    private boolean f2922e;

    /* renamed from: androidx.work.ListenableWorker$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/ListenableWorker$a.class */
    public static abstract class AbstractC0543a {
        AbstractC0543a() {
        }

        /* renamed from: a */
        public static AbstractC0543a m11809a() {
            return new a();
        }

        /* renamed from: b */
        public static AbstractC0543a m11808b() {
            return new b();
        }

        /* renamed from: c */
        public static AbstractC0543a m11807c() {
            return new c();
        }

        /* renamed from: d */
        public static AbstractC0543a m11806d(C0552d dVar) {
            return new c(dVar);
        }
    }

    @Keep
    @SuppressLint({"BanKeepAnnotation"})
    public ListenableWorker(Context context, WorkerParameters workerParameters) {
        if (context == null) {
            throw new IllegalArgumentException("Application Context is null");
        } else if (workerParameters != null) {
            this.f2919b = context;
            this.f2920c = workerParameters;
        } else {
            throw new IllegalArgumentException("WorkerParameters is null");
        }
    }

    public final Context getApplicationContext() {
        return this.f2919b;
    }

    public Executor getBackgroundExecutor() {
        return this.f2920c.m11805a();
    }

    public final UUID getId() {
        return this.f2920c.m11804b();
    }

    public final C0552d getInputData() {
        return this.f2920c.m11803c();
    }

    public final Network getNetwork() {
        return this.f2920c.m11802d();
    }

    public final int getRunAttemptCount() {
        return this.f2920c.m11801e();
    }

    public final Set<String> getTags() {
        return this.f2920c.m11800f();
    }

    public AbstractC0607a getTaskExecutor() {
        return this.f2920c.m11799g();
    }

    public final List<String> getTriggeredContentAuthorities() {
        return this.f2920c.m11798h();
    }

    public final List<Uri> getTriggeredContentUris() {
        return this.f2920c.m11797i();
    }

    public AbstractC0612m getWorkerFactory() {
        return this.f2920c.m11796j();
    }

    public final boolean isStopped() {
        return this.f2921d;
    }

    public final boolean isUsed() {
        return this.f2922e;
    }

    public void onStopped() {
    }

    public final void setUsed() {
        this.f2922e = true;
    }

    public abstract a<AbstractC0543a> startWork();

    public final void stop() {
        this.f2921d = true;
        onStopped();
    }
}
