package androidx.work.impl.utils.p010j;

import java.util.concurrent.Executor;
/* renamed from: androidx.work.impl.utils.j.b$a */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/j/b$a.class */
class b$a implements Executor {

    /* renamed from: b */
    final /* synthetic */ b f3154b;

    b$a(b bVar) {
        this.f3154b = bVar;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f3154b.d(runnable);
    }
}
