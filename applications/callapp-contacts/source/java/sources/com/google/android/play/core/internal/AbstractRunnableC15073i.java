package com.google.android.play.core.internal;

import com.google.android.play.core.tasks.C15192p;
/* renamed from: com.google.android.play.core.internal.i */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/i.class */
public abstract class AbstractRunnableC15073i implements Runnable {

    /* renamed from: g */
    final C15192p<?> f54778g;

    public AbstractRunnableC15073i() {
        this.f54778g = null;
    }

    public AbstractRunnableC15073i(C15192p<?> c15192p) {
        this.f54778g = c15192p;
    }

    /* renamed from: a */
    protected abstract void mo9371a();

    /* renamed from: a */
    public final void m9506a(Exception exc) {
        C15192p<?> c15192p = this.f54778g;
        if (c15192p != null) {
            c15192p.m9322b(exc);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            mo9371a();
        } catch (Exception e) {
            m9506a(e);
        }
    }
}
