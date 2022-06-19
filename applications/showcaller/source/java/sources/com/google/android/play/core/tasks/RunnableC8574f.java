package com.google.android.play.core.tasks;
/* renamed from: com.google.android.play.core.tasks.f */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/tasks/f.class */
final class RunnableC8574f implements Runnable {

    /* renamed from: d */
    final /* synthetic */ AbstractC8571c f38169d;

    /* renamed from: e */
    final /* synthetic */ C8575g f38170e;

    public RunnableC8574f(C8575g c8575g, AbstractC8571c abstractC8571c) {
        this.f38170e = c8575g;
        this.f38169d = abstractC8571c;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        AbstractC8569a abstractC8569a;
        AbstractC8569a abstractC8569a2;
        obj = this.f38170e.f38172b;
        synchronized (obj) {
            abstractC8569a = this.f38170e.f38173c;
            if (abstractC8569a != null) {
                abstractC8569a2 = this.f38170e.f38173c;
                abstractC8569a2.mo3297a(this.f38169d.mo3308c());
            }
        }
    }
}
