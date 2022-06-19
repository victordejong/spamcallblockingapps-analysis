package io.fabric.sdk.android.services.concurrency;

import io.fabric.sdk.android.services.concurrency.AbstractC1517a;
import java.util.Collection;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
/* renamed from: io.fabric.sdk.android.services.concurrency.f */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/concurrency/f.class */
public abstract class AbstractC1537f<Params, Progress, Result> extends AbstractC1517a<Params, Progress, Result> implements AbstractC1533b<AbstractC1546l>, AbstractC1542i, AbstractC1546l {

    /* renamed from: a */
    private final C1543j f4191a = new C1543j();

    /* renamed from: io.fabric.sdk.android.services.concurrency.f$a */
    /* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/concurrency/f$a.class */
    public static class ExecutorC1538a<Result> implements Executor {

        /* renamed from: a */
        private final Executor f4192a;

        /* renamed from: b */
        private final AbstractC1537f f4193b;

        public ExecutorC1538a(Executor executor, AbstractC1537f abstractC1537f) {
            this.f4192a = executor;
            this.f4193b = abstractC1537f;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f4192a.execute(new C1541h<Result>(runnable, null) { // from class: io.fabric.sdk.android.services.concurrency.f.a.1
                @Override // io.fabric.sdk.android.services.concurrency.C1541h
                /* renamed from: a */
                public AbstractC1533b mo3345a() {
                    return ExecutorC1538a.this.f4193b;
                }
            });
        }
    }

    /* renamed from: a */
    public void addDependency(AbstractC1546l abstractC1546l) {
        if (m3375b() == AbstractC1517a.EnumC1526d.PENDING) {
            ((AbstractC1533b) ((AbstractC1542i) m3347e())).addDependency(abstractC1546l);
            return;
        }
        throw new IllegalStateException("Must not add Dependency after task is running");
    }

    /* renamed from: a */
    public final void m3348a(ExecutorService executorService, Params... paramsArr) {
        super.m3378a(new ExecutorC1538a(executorService, this), paramsArr);
    }

    @Override // io.fabric.sdk.android.services.concurrency.AbstractC1533b
    public boolean areDependenciesMet() {
        return ((AbstractC1533b) ((AbstractC1542i) m3347e())).areDependenciesMet();
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return EnumC1536e.m3350a(this, obj);
    }

    /* renamed from: e */
    public AbstractC1533b m3347e() {
        return this.f4191a;
    }

    @Override // io.fabric.sdk.android.services.concurrency.AbstractC1533b
    public Collection<AbstractC1546l> getDependencies() {
        return ((AbstractC1533b) ((AbstractC1542i) m3347e())).getDependencies();
    }

    public EnumC1536e getPriority() {
        return ((AbstractC1542i) m3347e()).getPriority();
    }

    @Override // io.fabric.sdk.android.services.concurrency.AbstractC1546l
    public boolean isFinished() {
        return ((AbstractC1546l) ((AbstractC1542i) m3347e())).isFinished();
    }

    @Override // io.fabric.sdk.android.services.concurrency.AbstractC1546l
    public void setError(Throwable th) {
        ((AbstractC1546l) ((AbstractC1542i) m3347e())).setError(th);
    }

    @Override // io.fabric.sdk.android.services.concurrency.AbstractC1546l
    public void setFinished(boolean z) {
        ((AbstractC1546l) ((AbstractC1542i) m3347e())).setFinished(z);
    }
}
