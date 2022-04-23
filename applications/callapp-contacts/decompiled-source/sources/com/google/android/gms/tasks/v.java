package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/v.class */
public final class v<TResult> implements ac<TResult> {

    /* renamed from: a  reason: collision with root package name */
    final Object f30038a = new Object();

    /* renamed from: b  reason: collision with root package name */
    d<TResult> f30039b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f30040c;

    public v(Executor executor, d<TResult> dVar) {
        this.f30040c = executor;
        this.f30039b = dVar;
    }

    @Override // com.google.android.gms.tasks.ac
    public final void a(h<TResult> hVar) {
        synchronized (this.f30038a) {
            if (this.f30039b != null) {
                this.f30040c.execute(new u(this, hVar));
            }
        }
    }
}
