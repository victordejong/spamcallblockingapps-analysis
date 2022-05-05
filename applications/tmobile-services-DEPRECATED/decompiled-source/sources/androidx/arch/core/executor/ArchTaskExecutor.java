package androidx.arch.core.executor;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.util.concurrent.Executor;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/arch/core/executor/ArchTaskExecutor.class */
public class ArchTaskExecutor extends TaskExecutor {

    /* renamed from: c */
    private static volatile ArchTaskExecutor f1459c;
    @NonNull

    /* renamed from: d */
    private static final Executor f1460d = new Executor() { // from class: androidx.arch.core.executor.ArchTaskExecutor.2
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            ArchTaskExecutor.m21145e().mo21143a(runnable);
        }
    };
    @NonNull

    /* renamed from: a */
    private TaskExecutor f1461a;
    @NonNull

    /* renamed from: b */
    private TaskExecutor f1462b;

    /* renamed from: androidx.arch.core.executor.ArchTaskExecutor$1 */
    /* loaded from: classes-dex2jar.jar:androidx/arch/core/executor/ArchTaskExecutor$1.class */
    static final class ExecutorC01381 implements Executor {
        ExecutorC01381() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            ArchTaskExecutor.m21145e().mo21141c(runnable);
        }
    }

    private ArchTaskExecutor() {
        DefaultTaskExecutor defaultTaskExecutor = new DefaultTaskExecutor();
        this.f1462b = defaultTaskExecutor;
        this.f1461a = defaultTaskExecutor;
    }

    @NonNull
    /* renamed from: d */
    public static Executor m21146d() {
        return f1460d;
    }

    @NonNull
    /* renamed from: e */
    public static ArchTaskExecutor m21145e() {
        if (f1459c != null) {
            return f1459c;
        }
        synchronized (ArchTaskExecutor.class) {
            try {
                if (f1459c == null) {
                    f1459c = new ArchTaskExecutor();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f1459c;
    }

    @Override // androidx.arch.core.executor.TaskExecutor
    /* renamed from: a */
    public void mo21143a(Runnable runnable) {
        this.f1461a.mo21143a(runnable);
    }

    @Override // androidx.arch.core.executor.TaskExecutor
    /* renamed from: b */
    public boolean mo21142b() {
        return this.f1461a.mo21142b();
    }

    @Override // androidx.arch.core.executor.TaskExecutor
    /* renamed from: c */
    public void mo21141c(Runnable runnable) {
        this.f1461a.mo21141c(runnable);
    }
}
