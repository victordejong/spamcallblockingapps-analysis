package com.bytedance.sdk.p127a.p129b.p130a;
/* renamed from: com.bytedance.sdk.a.b.a.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/b.class */
public abstract class AbstractRunnableC4005b implements Runnable {

    /* renamed from: b */
    protected final String f14525b;

    public AbstractRunnableC4005b(String str, Object... objArr) {
        this.f14525b = C4015c.m36903a(str, objArr);
    }

    /* renamed from: b */
    protected abstract void mo36342b();

    @Override // java.lang.Runnable
    public final void run() {
        String name = Thread.currentThread().getName();
        Thread currentThread = Thread.currentThread();
        currentThread.setName("tt_pangle_thread_" + this.f14525b);
        try {
            mo36342b();
            Thread.currentThread().setName(name);
        } catch (Throwable th) {
            Thread.currentThread().setName(name);
            throw th;
        }
    }
}
