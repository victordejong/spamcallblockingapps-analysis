package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/z.class */
public final class z<TResult> implements ac<TResult> {

    /* renamed from: a  reason: collision with root package name */
    final Object f30048a = new Object();

    /* renamed from: b  reason: collision with root package name */
    f<? super TResult> f30049b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f30050c;

    public z(Executor executor, f<? super TResult> fVar) {
        this.f30050c = executor;
        this.f30049b = fVar;
    }

    @Override // com.google.android.gms.tasks.ac
    public final void a(h<TResult> hVar) {
        if (hVar.b()) {
            synchronized (this.f30048a) {
                if (this.f30049b != null) {
                    this.f30050c.execute(new y(this, hVar));
                }
            }
        }
    }
}
