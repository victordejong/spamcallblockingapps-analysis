package androidx.work;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Network;
import android.net.Uri;
import androidx.annotation.Keep;
import androidx.work.impl.utils.futures.C1382a;
import androidx.work.impl.utils.p019o.AbstractC1399a;
import com.google.common.util.concurrent.AbstractFutureC8832a;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/work/ListenableWorker.class */
public abstract class ListenableWorker {

    /* renamed from: d */
    private Context f5210d;

    /* renamed from: e */
    private WorkerParameters f5211e;

    /* renamed from: f */
    private volatile boolean f5212f;

    /* renamed from: g */
    private boolean f5213g;

    /* renamed from: h */
    private boolean f5214h;

    /* renamed from: androidx.work.ListenableWorker$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/ListenableWorker$a.class */
    public static abstract class AbstractC1224a {

        /* renamed from: androidx.work.ListenableWorker$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/work/ListenableWorker$a$a.class */
        public static final class C1225a extends AbstractC1224a {

            /* renamed from: a */
            private final C1238d f5215a;

            public C1225a() {
                this(C1238d.f5297b);
            }

            public C1225a(C1238d c1238d) {
                this.f5215a = c1238d;
            }

            /* renamed from: e */
            public C1238d m30614e() {
                return this.f5215a;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && C1225a.class == obj.getClass()) {
                    return this.f5215a.equals(((C1225a) obj).f5215a);
                }
                return false;
            }

            public int hashCode() {
                return (C1225a.class.getName().hashCode() * 31) + this.f5215a.hashCode();
            }

            public String toString() {
                return "Failure {mOutputData=" + this.f5215a + '}';
            }
        }

        /* renamed from: androidx.work.ListenableWorker$a$b */
        /* loaded from: classes-dex2jar.jar:androidx/work/ListenableWorker$a$b.class */
        public static final class C1226b extends AbstractC1224a {
            public boolean equals(Object obj) {
                boolean z = true;
                if (this == obj) {
                    return true;
                }
                if (obj == null || C1226b.class != obj.getClass()) {
                    z = false;
                }
                return z;
            }

            public int hashCode() {
                return C1226b.class.getName().hashCode();
            }

            public String toString() {
                return "Retry";
            }
        }

        /* renamed from: androidx.work.ListenableWorker$a$c */
        /* loaded from: classes-dex2jar.jar:androidx/work/ListenableWorker$a$c.class */
        public static final class C1227c extends AbstractC1224a {

            /* renamed from: a */
            private final C1238d f5216a;

            public C1227c() {
                this(C1238d.f5297b);
            }

            public C1227c(C1238d c1238d) {
                this.f5216a = c1238d;
            }

            /* renamed from: e */
            public C1238d m30613e() {
                return this.f5216a;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && C1227c.class == obj.getClass()) {
                    return this.f5216a.equals(((C1227c) obj).f5216a);
                }
                return false;
            }

            public int hashCode() {
                return (C1227c.class.getName().hashCode() * 31) + this.f5216a.hashCode();
            }

            public String toString() {
                return "Success {mOutputData=" + this.f5216a + '}';
            }
        }

        AbstractC1224a() {
        }

        /* renamed from: a */
        public static AbstractC1224a m30618a() {
            return new C1225a();
        }

        /* renamed from: b */
        public static AbstractC1224a m30617b() {
            return new C1226b();
        }

        /* renamed from: c */
        public static AbstractC1224a m30616c() {
            return new C1227c();
        }

        /* renamed from: d */
        public static AbstractC1224a m30615d(C1238d c1238d) {
            return new C1227c(c1238d);
        }
    }

    @Keep
    @SuppressLint({"BanKeepAnnotation"})
    public ListenableWorker(Context context, WorkerParameters workerParameters) {
        if (context != null) {
            if (workerParameters == null) {
                throw new IllegalArgumentException("WorkerParameters is null");
            }
            this.f5210d = context;
            this.f5211e = workerParameters;
            return;
        }
        throw new IllegalArgumentException("Application Context is null");
    }

    public final Context getApplicationContext() {
        return this.f5210d;
    }

    public Executor getBackgroundExecutor() {
        return this.f5211e.m30609a();
    }

    public AbstractFutureC8832a<C1240e> getForegroundInfoAsync() {
        C1382a m30184u = C1382a.m30184u();
        m30184u.mo30186r(new IllegalStateException("Expedited WorkRequests require a ListenableWorker to provide an implementation for `getForegroundInfoAsync()`"));
        return m30184u;
    }

    public final UUID getId() {
        return this.f5211e.m30607c();
    }

    public final C1238d getInputData() {
        return this.f5211e.m30606d();
    }

    public final Network getNetwork() {
        return this.f5211e.m30605e();
    }

    public final int getRunAttemptCount() {
        return this.f5211e.m30603g();
    }

    public final Set<String> getTags() {
        return this.f5211e.m30602h();
    }

    public AbstractC1399a getTaskExecutor() {
        return this.f5211e.m30601i();
    }

    public final List<String> getTriggeredContentAuthorities() {
        return this.f5211e.m30600j();
    }

    public final List<Uri> getTriggeredContentUris() {
        return this.f5211e.m30599k();
    }

    public AbstractC1421s getWorkerFactory() {
        return this.f5211e.m30598l();
    }

    public boolean isRunInForeground() {
        return this.f5214h;
    }

    public final boolean isStopped() {
        return this.f5212f;
    }

    public final boolean isUsed() {
        return this.f5213g;
    }

    public void onStopped() {
    }

    public final AbstractFutureC8832a<Void> setForegroundAsync(C1240e c1240e) {
        this.f5214h = true;
        return this.f5211e.m30608b().mo30178a(getApplicationContext(), getId(), c1240e);
    }

    public AbstractFutureC8832a<Void> setProgressAsync(C1238d c1238d) {
        return this.f5211e.m30604f().mo30149a(getApplicationContext(), getId(), c1238d);
    }

    public void setRunInForeground(boolean z) {
        this.f5214h = z;
    }

    public final void setUsed() {
        this.f5213g = true;
    }

    public abstract AbstractFutureC8832a<AbstractC1224a> startWork();

    public final void stop() {
        this.f5212f = true;
        onStopped();
    }
}
