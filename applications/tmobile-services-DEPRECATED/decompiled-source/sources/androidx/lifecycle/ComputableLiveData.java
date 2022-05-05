package androidx.lifecycle;

import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.arch.core.executor.ArchTaskExecutor;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/ComputableLiveData.class */
public abstract class ComputableLiveData<T> {

    /* renamed from: a */
    final Executor f3971a;

    /* renamed from: b */
    final LiveData<T> f3972b;

    /* renamed from: c */
    final AtomicBoolean f3973c;

    /* renamed from: d */
    final AtomicBoolean f3974d;
    @VisibleForTesting

    /* renamed from: e */
    final Runnable f3975e;

    /* renamed from: androidx.lifecycle.ComputableLiveData$3 */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/ComputableLiveData$3.class */
    class RunnableC03673 implements Runnable {

        /* renamed from: f */
        final /* synthetic */ ComputableLiveData f3978f;

        @Override // java.lang.Runnable
        @MainThread
        public void run() {
            boolean g = this.f3978f.f3972b.m18200g();
            if (this.f3978f.f3973c.compareAndSet(false, true) && g) {
                ComputableLiveData computableLiveData = this.f3978f;
                computableLiveData.f3971a.execute(computableLiveData.f3975e);
            }
        }
    }

    public ComputableLiveData() {
        this(ArchTaskExecutor.m21146d());
    }

    public ComputableLiveData(@NonNull Executor executor) {
        this.f3973c = new AtomicBoolean(true);
        this.f3974d = new AtomicBoolean(false);
        this.f3975e = new Runnable() { // from class: androidx.lifecycle.ComputableLiveData.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            @WorkerThread
            public void run() {
                do {
                    boolean z = false;
                    if (ComputableLiveData.this.f3974d.compareAndSet(false, true)) {
                        Object obj = null;
                        z = false;
                        while (ComputableLiveData.this.f3973c.compareAndSet(true, false)) {
                            try {
                                obj = ComputableLiveData.this.m18255a();
                                z = true;
                            } finally {
                                ComputableLiveData.this.f3974d.set(false);
                            }
                        }
                        if (z) {
                            ComputableLiveData.this.f3972b.mo18188l(obj);
                        }
                    }
                    if (!z) {
                        return;
                    }
                } while (ComputableLiveData.this.f3973c.get());
            }
        };
        this.f3971a = executor;
        this.f3972b = new LiveData<T>() { // from class: androidx.lifecycle.ComputableLiveData.1
            @Override // androidx.lifecycle.LiveData
            /* renamed from: j */
            protected void mo6383j() {
                ComputableLiveData computableLiveData = ComputableLiveData.this;
                computableLiveData.f3971a.execute(computableLiveData.f3975e);
            }
        };
    }

    @WorkerThread
    /* renamed from: a */
    protected abstract T m18255a();
}
