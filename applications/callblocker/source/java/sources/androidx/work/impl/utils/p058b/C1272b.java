package androidx.work.impl.utils.p058b;

import android.os.Handler;
import android.os.Looper;
import androidx.work.impl.utils.ExecutorC1277f;
import java.util.concurrent.Executor;
/* renamed from: androidx.work.impl.utils.b.b */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/b/b.class */
public class C1272b implements AbstractC1271a {

    /* renamed from: a */
    private final ExecutorC1277f f4282a;

    /* renamed from: b */
    private final Handler f4283b = new Handler(Looper.getMainLooper());

    /* renamed from: c */
    private final Executor f4284c = new Executor() { // from class: androidx.work.impl.utils.b.b.1
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            C1272b.this.m17575b(runnable);
        }
    };

    public C1272b(Executor executor) {
        this.f4282a = new ExecutorC1277f(executor);
    }

    @Override // androidx.work.impl.utils.p058b.AbstractC1271a
    /* renamed from: a */
    public Executor mo17578a() {
        return this.f4284c;
    }

    @Override // androidx.work.impl.utils.p058b.AbstractC1271a
    /* renamed from: a */
    public void mo17577a(Runnable runnable) {
        this.f4282a.execute(runnable);
    }

    @Override // androidx.work.impl.utils.p058b.AbstractC1271a
    /* renamed from: b */
    public ExecutorC1277f mo17576b() {
        return this.f4282a;
    }

    /* renamed from: b */
    public void m17575b(Runnable runnable) {
        this.f4283b.post(runnable);
    }
}
