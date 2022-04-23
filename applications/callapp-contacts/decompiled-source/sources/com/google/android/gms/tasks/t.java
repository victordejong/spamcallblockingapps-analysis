package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/t.class */
public final class t<TResult> implements ac<TResult> {

    /* renamed from: a  reason: collision with root package name */
    final Object f30033a = new Object();

    /* renamed from: b  reason: collision with root package name */
    c f30034b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f30035c;

    public t(Executor executor, c cVar) {
        this.f30035c = executor;
        this.f30034b = cVar;
    }

    @Override // com.google.android.gms.tasks.ac
    public final void a(h<TResult> hVar) {
        if (hVar.c()) {
            synchronized (this.f30033a) {
                if (this.f30034b != null) {
                    this.f30035c.execute(new s(this));
                }
            }
        }
    }
}
