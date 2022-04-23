package androidx.work.impl.utils.b;

import android.os.Handler;
import android.os.Looper;
import androidx.work.impl.utils.g;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/b/b.class */
public final class b implements a {

    /* renamed from: b  reason: collision with root package name */
    private final g f6174b;

    /* renamed from: a  reason: collision with root package name */
    final Handler f6173a = new Handler(Looper.getMainLooper());

    /* renamed from: c  reason: collision with root package name */
    private final Executor f6175c = new Executor() { // from class: androidx.work.impl.utils.b.b.1
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            b.this.f6173a.post(runnable);
        }
    };

    public b(Executor executor) {
        this.f6174b = new g(executor);
    }

    @Override // androidx.work.impl.utils.b.a
    public final Executor a() {
        return this.f6175c;
    }

    @Override // androidx.work.impl.utils.b.a
    public final void a(Runnable runnable) {
        this.f6174b.execute(runnable);
    }

    @Override // androidx.work.impl.utils.b.a
    public final g b() {
        return this.f6174b;
    }
}
