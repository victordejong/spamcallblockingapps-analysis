package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.x */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/x.class */
public final class C14201x<TResult> implements AbstractC14171ac<TResult> {

    /* renamed from: a */
    final Object f52175a = new Object();

    /* renamed from: b */
    AbstractC14182e f52176b;

    /* renamed from: c */
    private final Executor f52177c;

    public C14201x(Executor executor, AbstractC14182e abstractC14182e) {
        this.f52177c = executor;
        this.f52176b = abstractC14182e;
    }

    @Override // com.google.android.gms.tasks.AbstractC14171ac
    /* renamed from: a */
    public final void mo11453a(AbstractC14185h<TResult> abstractC14185h) {
        if (abstractC14185h.mo11478b() || abstractC14185h.mo11476c()) {
            return;
        }
        synchronized (this.f52175a) {
            if (this.f52176b == null) {
                return;
            }
            this.f52177c.execute(new RunnableC14200w(this, abstractC14185h));
        }
    }
}
