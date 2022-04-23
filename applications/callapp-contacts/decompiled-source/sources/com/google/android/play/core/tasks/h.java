package com.google.android.play.core.tasks;

import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/tasks/h.class */
public final class h<ResultT> implements n<ResultT> {

    /* renamed from: a  reason: collision with root package name */
    final Object f31562a = new Object();

    /* renamed from: b  reason: collision with root package name */
    final a<ResultT> f31563b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f31564c;

    public h(Executor executor, a<ResultT> aVar) {
        this.f31564c = executor;
        this.f31563b = aVar;
    }

    @Override // com.google.android.play.core.tasks.n
    public final void a(d<ResultT> dVar) {
        synchronized (this.f31562a) {
            if (this.f31563b != null) {
                this.f31564c.execute(new g(this, dVar));
            }
        }
    }
}
