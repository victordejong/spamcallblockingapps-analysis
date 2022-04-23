package com.google.android.play.core.internal;

import com.google.android.play.core.tasks.p;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/i.class */
public abstract class i implements Runnable {
    final p<?> g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i() {
        this.g = null;
    }

    public i(p<?> pVar) {
        this.g = pVar;
    }

    protected abstract void a();

    public final void a(Exception exc) {
        p<?> pVar = this.g;
        if (pVar != null) {
            pVar.b(exc);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            a();
        } catch (Exception e) {
            a(e);
        }
    }
}
