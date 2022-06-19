package androidx.work;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Network;
import android.net.Uri;
import android.support.p012v4.media.C0082b;
import androidx.annotation.Keep;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;
import p003a2.AbstractC0008a;
import p003a2.C0009b;
import p186o1.AbstractC3835l;
import p186o1.AbstractC3841q;
import p186o1.C3820d;
import p292y1.C4971o;
import p292y1.C4974q;
import p292y1.RunnableC4973p;
import p302z1.C5035c;
/* loaded from: classes-dex2jar.jar:androidx/work/ListenableWorker.class */
public abstract class ListenableWorker {
    private Context mAppContext;
    private boolean mRunInForeground;
    private volatile boolean mStopped;
    private boolean mUsed;
    private WorkerParameters mWorkerParams;

    /* renamed from: androidx.work.ListenableWorker$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/ListenableWorker$a.class */
    public static abstract class AbstractC0671a {

        /* renamed from: androidx.work.ListenableWorker$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/work/ListenableWorker$a$a.class */
        public static final class C0672a extends AbstractC0671a {

            /* renamed from: a */
            public final C0680b f2614a = C0680b.f2639b;

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && C0672a.class == obj.getClass()) {
                    return this.f2614a.equals(((C0672a) obj).f2614a);
                }
                return false;
            }

            public int hashCode() {
                return this.f2614a.hashCode() + (C0672a.class.getName().hashCode() * 31);
            }

            public String toString() {
                StringBuilder m8752j = C0082b.m8752j("Failure {mOutputData=");
                m8752j.append(this.f2614a);
                m8752j.append('}');
                return m8752j.toString();
            }
        }

        /* renamed from: androidx.work.ListenableWorker$a$b */
        /* loaded from: classes-dex2jar.jar:androidx/work/ListenableWorker$a$b.class */
        public static final class C0673b extends AbstractC0671a {
            public boolean equals(Object obj) {
                boolean z = true;
                if (this == obj) {
                    return true;
                }
                if (obj == null || C0673b.class != obj.getClass()) {
                    z = false;
                }
                return z;
            }

            public int hashCode() {
                return C0673b.class.getName().hashCode();
            }

            public String toString() {
                return "Retry";
            }
        }

        /* renamed from: androidx.work.ListenableWorker$a$c */
        /* loaded from: classes-dex2jar.jar:androidx/work/ListenableWorker$a$c.class */
        public static final class C0674c extends AbstractC0671a {

            /* renamed from: a */
            public final C0680b f2615a;

            public C0674c() {
                this.f2615a = C0680b.f2639b;
            }

            public C0674c(C0680b c0680b) {
                this.f2615a = c0680b;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && C0674c.class == obj.getClass()) {
                    return this.f2615a.equals(((C0674c) obj).f2615a);
                }
                return false;
            }

            public int hashCode() {
                return this.f2615a.hashCode() + (C0674c.class.getName().hashCode() * 31);
            }

            public String toString() {
                StringBuilder m8752j = C0082b.m8752j("Success {mOutputData=");
                m8752j.append(this.f2615a);
                m8752j.append('}');
                return m8752j.toString();
            }
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
        return this.mWorkerParams.f2623f;
    }

    public ListenableFuture<C3820d> getForegroundInfoAsync() {
        C5035c c5035c = new C5035c();
        c5035c.m116l(new IllegalStateException("Expedited WorkRequests require a ListenableWorker to provide an implementation for `getForegroundInfoAsync()`"));
        return c5035c;
    }

    public final UUID getId() {
        return this.mWorkerParams.f2618a;
    }

    public final C0680b getInputData() {
        return this.mWorkerParams.f2619b;
    }

    public final Network getNetwork() {
        return this.mWorkerParams.f2621d.f2630c;
    }

    public final int getRunAttemptCount() {
        return this.mWorkerParams.f2622e;
    }

    public final Set<String> getTags() {
        return this.mWorkerParams.f2620c;
    }

    public AbstractC0008a getTaskExecutor() {
        return this.mWorkerParams.f2624g;
    }

    public final List<String> getTriggeredContentAuthorities() {
        return this.mWorkerParams.f2621d.f2628a;
    }

    public final List<Uri> getTriggeredContentUris() {
        return this.mWorkerParams.f2621d.f2629b;
    }

    public AbstractC3841q getWorkerFactory() {
        return this.mWorkerParams.f2625h;
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

    public final ListenableFuture<Void> setForegroundAsync(C3820d c3820d) {
        this.mRunInForeground = true;
        return ((C4971o) this.mWorkerParams.f2627j).m170a(getApplicationContext(), getId(), c3820d);
    }

    public ListenableFuture<Void> setProgressAsync(C0680b c0680b) {
        AbstractC3835l abstractC3835l = this.mWorkerParams.f2626i;
        getApplicationContext();
        UUID id = getId();
        C4974q c4974q = (C4974q) abstractC3835l;
        Objects.requireNonNull(c4974q);
        C5035c c5035c = new C5035c();
        AbstractC0008a abstractC0008a = c4974q.f15169b;
        ((C0009b) abstractC0008a).f8a.execute(new RunnableC4973p(c4974q, id, c0680b, c5035c));
        return c5035c;
    }

    public void setRunInForeground(boolean z) {
        this.mRunInForeground = z;
    }

    public final void setUsed() {
        this.mUsed = true;
    }

    public abstract ListenableFuture<AbstractC0671a> startWork();

    public final void stop() {
        this.mStopped = true;
        onStopped();
    }
}
