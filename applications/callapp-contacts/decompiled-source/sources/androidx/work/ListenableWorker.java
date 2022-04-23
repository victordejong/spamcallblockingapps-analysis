package androidx.work;

import android.content.Context;
import android.net.Network;
import android.net.Uri;
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

    /* loaded from: classes-dex2jar.jar:androidx/work/ListenableWorker$a.class */
    public static abstract class a {

        /* renamed from: androidx.work.ListenableWorker$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:androidx/work/ListenableWorker$a$a.class */
        public static final class C0121a extends a {

            /* renamed from: a  reason: collision with root package name */
            public final d f5955a;

            public C0121a() {
                this(d.f5976a);
            }

            public C0121a(d dVar) {
                this.f5955a = dVar;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj == null || getClass() != obj.getClass()) {
                    return false;
                }
                return this.f5955a.equals(((C0121a) obj).f5955a);
            }

            public final int hashCode() {
                return 28070863 + this.f5955a.hashCode();
            }

            public final String toString() {
                return "Failure {mOutputData=" + this.f5955a + '}';
            }
        }

        /* loaded from: classes-dex2jar.jar:androidx/work/ListenableWorker$a$b.class */
        public static final class b extends a {
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

        /* loaded from: classes-dex2jar.jar:androidx/work/ListenableWorker$a$c.class */
        public static final class c extends a {

            /* renamed from: a  reason: collision with root package name */
            public final d f5956a;

            public c() {
                this(d.f5976a);
            }

            public c(d dVar) {
                this.f5956a = dVar;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj == null || getClass() != obj.getClass()) {
                    return false;
                }
                return this.f5956a.equals(((c) obj).f5956a);
            }

            public final int hashCode() {
                return 28070925 + this.f5956a.hashCode();
            }

            public final String toString() {
                return "Success {mOutputData=" + this.f5956a + '}';
            }
        }

        a() {
        }

        public static a a() {
            return new c();
        }

        public static a b() {
            return new C0121a();
        }
    }

    public ListenableWorker(Context context, WorkerParameters workerParameters) {
        if (context == null) {
            throw new IllegalArgumentException("Application Context is null");
        } else if (workerParameters != null) {
            this.mAppContext = context;
            this.mWorkerParams = workerParameters;
        } else {
            throw new IllegalArgumentException("WorkerParameters is null");
        }
    }

    public final Context getApplicationContext() {
        return this.mAppContext;
    }

    public Executor getBackgroundExecutor() {
        return this.mWorkerParams.f;
    }

    public final UUID getId() {
        return this.mWorkerParams.f5958a;
    }

    public final d getInputData() {
        return this.mWorkerParams.f5959b;
    }

    public final Network getNetwork() {
        return this.mWorkerParams.f5961d.f5964c;
    }

    public final int getRunAttemptCount() {
        return this.mWorkerParams.e;
    }

    public final Set<String> getTags() {
        return this.mWorkerParams.f5960c;
    }

    public androidx.work.impl.utils.b.a getTaskExecutor() {
        return this.mWorkerParams.g;
    }

    public final List<String> getTriggeredContentAuthorities() {
        return this.mWorkerParams.f5961d.f5962a;
    }

    public final List<Uri> getTriggeredContentUris() {
        return this.mWorkerParams.f5961d.f5963b;
    }

    public w getWorkerFactory() {
        return this.mWorkerParams.h;
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

    public final com.google.common.util.concurrent.a<Void> setForegroundAsync(f fVar) {
        this.mRunInForeground = true;
        return this.mWorkerParams.j.a(getApplicationContext(), getId(), fVar);
    }

    public final com.google.common.util.concurrent.a<Void> setProgressAsync(d dVar) {
        p pVar = this.mWorkerParams.i;
        getApplicationContext();
        return pVar.a(getId(), dVar);
    }

    public final void setUsed() {
        this.mUsed = true;
    }

    public abstract com.google.common.util.concurrent.a<a> startWork();

    public final void stop() {
        this.mStopped = true;
        onStopped();
    }
}
