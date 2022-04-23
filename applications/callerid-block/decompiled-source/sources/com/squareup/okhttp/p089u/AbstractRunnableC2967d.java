package com.squareup.okhttp.p089u;
/* renamed from: com.squareup.okhttp.u.d */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/u/d.class */
public abstract class AbstractRunnableC2967d implements Runnable {

    /* renamed from: b */
    protected final String f12499b;

    public AbstractRunnableC2967d(String str, Object... objArr) {
        this.f12499b = String.format(str, objArr);
    }

    /* renamed from: a */
    protected abstract void mo684a();

    @Override // java.lang.Runnable
    public final void run() {
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName(this.f12499b);
        try {
            mo684a();
            Thread.currentThread().setName(name);
        } catch (Throwable th) {
            Thread.currentThread().setName(name);
            throw th;
        }
    }
}
