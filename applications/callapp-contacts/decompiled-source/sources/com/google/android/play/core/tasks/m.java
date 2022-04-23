package com.google.android.play.core.tasks;

import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/tasks/m.class */
public final class m<ResultT> implements n<ResultT> {

    /* renamed from: a  reason: collision with root package name */
    final Object f31572a = new Object();

    /* renamed from: b  reason: collision with root package name */
    final c<? super ResultT> f31573b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f31574c;

    public m(Executor executor, c<? super ResultT> cVar) {
        this.f31574c = executor;
        this.f31573b = cVar;
    }

    @Override // com.google.android.play.core.tasks.n
    public final void a(d<ResultT> dVar) {
        if (dVar.b()) {
            synchronized (this.f31572a) {
                if (this.f31573b != null) {
                    this.f31574c.execute(new l(this, dVar));
                }
            }
        }
    }
}
