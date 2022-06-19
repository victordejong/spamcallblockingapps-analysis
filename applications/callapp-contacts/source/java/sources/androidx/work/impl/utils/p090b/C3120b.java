package androidx.work.impl.utils.p090b;

import android.os.Handler;
import android.os.Looper;
import androidx.work.impl.utils.ExecutorC3126g;
import java.util.concurrent.Executor;
/* renamed from: androidx.work.impl.utils.b.b */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/b/b.class */
public final class C3120b implements AbstractC3119a {

    /* renamed from: b */
    private final ExecutorC3126g f11447b;

    /* renamed from: a */
    final Handler f11446a = new Handler(Looper.getMainLooper());

    /* renamed from: c */
    private final Executor f11448c = new Executor() { // from class: androidx.work.impl.utils.b.b.1
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            C3120b.this.f11446a.post(runnable);
        }
    };

    public C3120b(Executor executor) {
        this.f11447b = new ExecutorC3126g(executor);
    }

    @Override // androidx.work.impl.utils.p090b.AbstractC3119a
    /* renamed from: a */
    public final Executor mo39303a() {
        return this.f11448c;
    }

    @Override // androidx.work.impl.utils.p090b.AbstractC3119a
    /* renamed from: a */
    public final void mo39302a(Runnable runnable) {
        this.f11447b.execute(runnable);
    }

    @Override // androidx.work.impl.utils.p090b.AbstractC3119a
    /* renamed from: b */
    public final ExecutorC3126g mo39301b() {
        return this.f11447b;
    }
}
