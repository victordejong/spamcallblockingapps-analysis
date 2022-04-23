package com.google.android.play.core.tasks;

import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/tasks/k.class */
public final class k<ResultT> implements n<ResultT> {

    /* renamed from: a  reason: collision with root package name */
    final Object f31567a = new Object();

    /* renamed from: b  reason: collision with root package name */
    final b f31568b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f31569c;

    public k(Executor executor, b bVar) {
        this.f31569c = executor;
        this.f31568b = bVar;
    }

    @Override // com.google.android.play.core.tasks.n
    public final void a(d<ResultT> dVar) {
        if (!dVar.b()) {
            synchronized (this.f31567a) {
                if (this.f31568b != null) {
                    this.f31569c.execute(new i(this, dVar));
                }
            }
        }
    }
}
