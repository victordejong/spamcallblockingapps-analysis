package androidx.work.impl.utils.p019o;

import android.os.Handler;
import android.os.Looper;
import androidx.work.impl.utils.ExecutorC1383g;
import java.util.concurrent.Executor;
/* renamed from: androidx.work.impl.utils.o.b */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/o/b.class */
public class C1400b implements AbstractC1399a {

    /* renamed from: a */
    private final ExecutorC1383g f5728a;

    /* renamed from: b */
    private final Handler f5729b = new Handler(Looper.getMainLooper());

    /* renamed from: c */
    private final Executor f5730c = new ExecutorC1401a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.utils.o.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/o/b$a.class */
    public class ExecutorC1401a implements Executor {
        ExecutorC1401a() {
            C1400b.this = r4;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            C1400b.this.m30170d(runnable);
        }
    }

    public C1400b(Executor executor) {
        this.f5728a = new ExecutorC1383g(executor);
    }

    @Override // androidx.work.impl.utils.p019o.AbstractC1399a
    /* renamed from: a */
    public Executor mo30173a() {
        return this.f5730c;
    }

    @Override // androidx.work.impl.utils.p019o.AbstractC1399a
    /* renamed from: b */
    public void mo30172b(Runnable runnable) {
        this.f5728a.execute(runnable);
    }

    @Override // androidx.work.impl.utils.p019o.AbstractC1399a
    /* renamed from: c */
    public ExecutorC1383g mo30171c() {
        return this.f5728a;
    }

    /* renamed from: d */
    public void m30170d(Runnable runnable) {
        this.f5729b.post(runnable);
    }
}
