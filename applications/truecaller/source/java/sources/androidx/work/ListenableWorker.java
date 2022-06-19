package androidx.work;

import android.content.Context;
import android.net.Network;
import android.net.Uri;
import androidx.annotation.Keep;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;
import n3.m0.c0.t.w.c;
import p1727n3.p1834m0.AbstractC26677b0;
import p1727n3.p1834m0.AbstractC26853v;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.C26833i;
import p1727n3.p1834m0.p1835c0.p1845t.C26801s;
import p1727n3.p1834m0.p1835c0.p1845t.C26804u;
import p1727n3.p1834m0.p1835c0.p1845t.RunnableC26803t;
import p1727n3.p1834m0.p1835c0.p1845t.p1847x.AbstractC26821a;
import p1727n3.p1834m0.p1835c0.p1845t.p1847x.C26822b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:androidx/work/ListenableWorker.class */
public abstract class ListenableWorker {
    private Context mAppContext;
    private boolean mRunInForeground;
    private volatile boolean mStopped;
    private boolean mUsed;
    private WorkerParameters mWorkerParams;

    /* renamed from: androidx.work.ListenableWorker$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/ListenableWorker$a.class */
    public static abstract class AbstractC0414a {

        /* renamed from: androidx.work.ListenableWorker$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/work/ListenableWorker$a$a.class */
        public static final class C0415a extends AbstractC0414a {

            /* renamed from: a */
            public final C26829f f1553a;

            public C0415a() {
                this.f1553a = C26829f.f75077c;
            }

            public C0415a(C26829f c26829f) {
                this.f1553a = c26829f;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && C0415a.class == obj.getClass()) {
                    return this.f1553a.equals(((C0415a) obj).f1553a);
                }
                return false;
            }

            public int hashCode() {
                return this.f1553a.hashCode() + (C0415a.class.getName().hashCode() * 31);
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("Failure {mOutputData=");
                m8728C.append(this.f1553a);
                m8728C.append('}');
                return m8728C.toString();
            }
        }

        /* renamed from: androidx.work.ListenableWorker$a$b */
        /* loaded from: classes-dex2jar.jar:androidx/work/ListenableWorker$a$b.class */
        public static final class C0416b extends AbstractC0414a {
            public boolean equals(Object obj) {
                boolean z = true;
                if (this == obj) {
                    return true;
                }
                if (obj == null || C0416b.class != obj.getClass()) {
                    z = false;
                }
                return z;
            }

            public int hashCode() {
                return C0416b.class.getName().hashCode();
            }

            public String toString() {
                return "Retry";
            }
        }

        /* renamed from: androidx.work.ListenableWorker$a$c */
        /* loaded from: classes-dex2jar.jar:androidx/work/ListenableWorker$a$c.class */
        public static final class C0417c extends AbstractC0414a {

            /* renamed from: a */
            public final C26829f f1554a;

            public C0417c() {
                this.f1554a = C26829f.f75077c;
            }

            public C0417c(C26829f c26829f) {
                this.f1554a = c26829f;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && C0417c.class == obj.getClass()) {
                    return this.f1554a.equals(((C0417c) obj).f1554a);
                }
                return false;
            }

            public int hashCode() {
                return this.f1554a.hashCode() + (C0417c.class.getName().hashCode() * 31);
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("Success {mOutputData=");
                m8728C.append(this.f1554a);
                m8728C.append('}');
                return m8728C.toString();
            }
        }
    }

    @Keep
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
        return this.mWorkerParams.f1561f;
    }

    public ListenableFuture<C26833i> getForegroundInfoAsync() {
        c cVar = new c();
        cVar.j(new IllegalStateException("Expedited WorkRequests require a ListenableWorker to provide an implementation for `getForegroundInfoAsync()`"));
        return cVar;
    }

    public final UUID getId() {
        return this.mWorkerParams.f1556a;
    }

    public final C26829f getInputData() {
        return this.mWorkerParams.f1557b;
    }

    public final Network getNetwork() {
        return this.mWorkerParams.f1559d.f1568c;
    }

    public final int getRunAttemptCount() {
        return this.mWorkerParams.f1560e;
    }

    public final Set<String> getTags() {
        return this.mWorkerParams.f1558c;
    }

    public AbstractC26821a getTaskExecutor() {
        return this.mWorkerParams.f1562g;
    }

    public final List<String> getTriggeredContentAuthorities() {
        return this.mWorkerParams.f1559d.f1566a;
    }

    public final List<Uri> getTriggeredContentUris() {
        return this.mWorkerParams.f1559d.f1567b;
    }

    public AbstractC26677b0 getWorkerFactory() {
        return this.mWorkerParams.f1563h;
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

    public final ListenableFuture<Void> setForegroundAsync(C26833i c26833i) {
        this.mRunInForeground = true;
        return ((C26801s) this.mWorkerParams.f1565j).m1325a(getApplicationContext(), getId(), c26833i);
    }

    public ListenableFuture<Void> setProgressAsync(C26829f c26829f) {
        AbstractC26853v abstractC26853v = this.mWorkerParams.f1564i;
        getApplicationContext();
        UUID id = getId();
        C26804u c26804u = (C26804u) abstractC26853v;
        Objects.requireNonNull(c26804u);
        c cVar = new c();
        AbstractC26821a abstractC26821a = c26804u.f75012b;
        ((C26822b) abstractC26821a).f75051a.execute(new RunnableC26803t(c26804u, id, c26829f, cVar));
        return cVar;
    }

    public void setRunInForeground(boolean z) {
        this.mRunInForeground = z;
    }

    public final void setUsed() {
        this.mUsed = true;
    }

    public abstract ListenableFuture<AbstractC0414a> startWork();

    public final void stop() {
        this.mStopped = true;
        onStopped();
    }
}
