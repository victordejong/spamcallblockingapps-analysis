package com.bytedance.sdk.a.b.a;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/b.class */
public abstract class b implements Runnable {

    /* renamed from: b  reason: collision with root package name */
    protected final String f7854b;

    public b(String str, Object... objArr) {
        this.f7854b = c.a(str, objArr);
    }

    protected abstract void b();

    @Override // java.lang.Runnable
    public final void run() {
        String name = Thread.currentThread().getName();
        Thread currentThread = Thread.currentThread();
        currentThread.setName("tt_pangle_thread_" + this.f7854b);
        try {
            b();
            Thread.currentThread().setName(name);
        } catch (Throwable th) {
            Thread.currentThread().setName(name);
            throw th;
        }
    }
}
