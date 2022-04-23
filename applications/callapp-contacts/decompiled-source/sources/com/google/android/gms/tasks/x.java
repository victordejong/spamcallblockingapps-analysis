package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/x.class */
public final class x<TResult> implements ac<TResult> {

    /* renamed from: a  reason: collision with root package name */
    final Object f30043a = new Object();

    /* renamed from: b  reason: collision with root package name */
    e f30044b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f30045c;

    public x(Executor executor, e eVar) {
        this.f30045c = executor;
        this.f30044b = eVar;
    }

    @Override // com.google.android.gms.tasks.ac
    public final void a(h<TResult> hVar) {
        if (!hVar.b() && !hVar.c()) {
            synchronized (this.f30043a) {
                if (this.f30044b != null) {
                    this.f30045c.execute(new w(this, hVar));
                }
            }
        }
    }
}
