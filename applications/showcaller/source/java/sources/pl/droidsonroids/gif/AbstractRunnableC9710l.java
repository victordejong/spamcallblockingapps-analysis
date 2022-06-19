package pl.droidsonroids.gif;

import java.lang.Thread;
/* renamed from: pl.droidsonroids.gif.l */
/* loaded from: classes2-dex2jar.jar:pl/droidsonroids/gif/l.class */
public abstract class AbstractRunnableC9710l implements Runnable {

    /* renamed from: d */
    final C9692c f40979d;

    public AbstractRunnableC9710l(C9692c c9692c) {
        this.f40979d = c9692c;
    }

    /* renamed from: a */
    abstract void mo39a();

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (this.f40979d.m58f()) {
                return;
            }
            mo39a();
        } catch (Throwable th) {
            Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
            if (defaultUncaughtExceptionHandler != null) {
                defaultUncaughtExceptionHandler.uncaughtException(Thread.currentThread(), th);
            }
            throw th;
        }
    }
}
