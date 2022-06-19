package androidx.work;

import android.content.Context;
import android.net.Network;
import android.net.Uri;
import androidx.work.impl.utils.p090b.AbstractC3119a;
import com.google.common.util.concurrent.AbstractFutureC15579a;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/work/ListenableWorker.class */
public abstract class ListenableWorker {
    private Context mAppContext;
    private boolean mRunInForeground;
    private volatile boolean mStopped;
    private boolean mUsed;
    private WorkerParameters mWorkerParams;

    /* renamed from: androidx.work.ListenableWorker$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/ListenableWorker$a.class */
    public static abstract class AbstractC2980a {

        /* renamed from: androidx.work.ListenableWorker$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/work/ListenableWorker$a$a.class */
        public static final class C2981a extends AbstractC2980a {

            /* renamed from: a */
            public final C2992d f11113a;

            public C2981a() {
                this(C2992d.f11149a);
            }

            public C2981a(C2992d c2992d) {
                this.f11113a = c2992d;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    return this.f11113a.equals(((C2981a) obj).f11113a);
                }
                return false;
            }

            public final int hashCode() {
                return 28070863 + this.f11113a.hashCode();
            }

            public final String toString() {
                return "Failure {mOutputData=" + this.f11113a + '}';
            }
        }

        /* renamed from: androidx.work.ListenableWorker$a$b */
        /* loaded from: classes-dex2jar.jar:androidx/work/ListenableWorker$a$b.class */
        public static final class C2982b extends AbstractC2980a {
            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass();
            }

            public final int hashCode() {
                return 1386378834;
            }

            public final String toString() {
                return "Retry";
            }
        }

        /* renamed from: androidx.work.ListenableWorker$a$c */
        /* loaded from: classes-dex2jar.jar:androidx/work/ListenableWorker$a$c.class */
        public static final class C2983c extends AbstractC2980a {

            /* renamed from: a */
            public final C2992d f11114a;

            public C2983c() {
                this(C2992d.f11149a);
            }

            public C2983c(C2992d c2992d) {
                this.f11114a = c2992d;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    return this.f11114a.equals(((C2983c) obj).f11114a);
                }
                return false;
            }

            public final int hashCode() {
                return 28070925 + this.f11114a.hashCode();
            }

            public final String toString() {
                return "Success {mOutputData=" + this.f11114a + '}';
            }
        }

        AbstractC2980a() {
        }

        /* renamed from: a */
        public static AbstractC2980a m39519a() {
            return new C2983c();
        }

        /* renamed from: b */
        public static AbstractC2980a m39518b() {
            return new C2981a();
        }
    }

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
        return this.mWorkerParams.f11121f;
    }

    public final UUID getId() {
        return this.mWorkerParams.f11116a;
    }

    public final C2992d getInputData() {
        return this.mWorkerParams.f11117b;
    }

    public final Network getNetwork() {
        return this.mWorkerParams.f11119d.f11128c;
    }

    public final int getRunAttemptCount() {
        return this.mWorkerParams.f11120e;
    }

    public final Set<String> getTags() {
        return this.mWorkerParams.f11118c;
    }

    public AbstractC3119a getTaskExecutor() {
        return this.mWorkerParams.f11122g;
    }

    public final List<String> getTriggeredContentAuthorities() {
        return this.mWorkerParams.f11119d.f11126a;
    }

    public final List<Uri> getTriggeredContentUris() {
        return this.mWorkerParams.f11119d.f11127b;
    }

    public AbstractC3168w getWorkerFactory() {
        return this.mWorkerParams.f11123h;
    }

    public boolean isRunInForeground() {
        return this.mRunInForeground;
    }

    public final boolean isStopped() {
        return this.mStopped;
    }

    public final boolean isUsed() {
        return this.mUsed;
    }

    public void onStopped() {
    }

    public final AbstractFutureC15579a<Void> setForegroundAsync(C2995f c2995f) {
        this.mRunInForeground = true;
        return this.mWorkerParams.f11125j.mo39286a(getApplicationContext(), getId(), c2995f);
    }

    public final AbstractFutureC15579a<Void> setProgressAsync(C2992d c2992d) {
        AbstractC3158p abstractC3158p = this.mWorkerParams.f11124i;
        getApplicationContext();
        return abstractC3158p.mo39271a(getId(), c2992d);
    }

    public final void setUsed() {
        this.mUsed = true;
    }

    public abstract AbstractFutureC15579a<AbstractC2980a> startWork();

    public final void stop() {
        this.mStopped = true;
        onStopped();
    }
}
