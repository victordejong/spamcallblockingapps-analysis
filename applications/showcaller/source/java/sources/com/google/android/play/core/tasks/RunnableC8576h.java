package com.google.android.play.core.tasks;
/* renamed from: com.google.android.play.core.tasks.h */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/tasks/h.class */
final class RunnableC8576h implements Runnable {

    /* renamed from: d */
    final /* synthetic */ AbstractC8571c f38174d;

    /* renamed from: e */
    final /* synthetic */ C8577i f38175e;

    public RunnableC8576h(C8577i c8577i, AbstractC8571c abstractC8571c) {
        this.f38175e = c8577i;
        this.f38174d = abstractC8571c;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        AbstractC8570b abstractC8570b;
        AbstractC8570b abstractC8570b2;
        obj = this.f38175e.f38177b;
        synchronized (obj) {
            abstractC8570b = this.f38175e.f38178c;
            if (abstractC8570b != null) {
                abstractC8570b2 = this.f38175e.f38178c;
                abstractC8570b2.onSuccess(this.f38174d.mo3307d());
            }
        }
    }
}
