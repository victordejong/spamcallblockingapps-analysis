package com.b.a.a;
/* loaded from: classes-dex2jar.jar:com/b/a/a/c.class */
public abstract class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    protected final String f3285a;

    public c(String str, Object... objArr) {
        this.f3285a = String.format(str, objArr);
    }

    public abstract void a();

    @Override // java.lang.Runnable
    public final void run() {
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName(this.f3285a);
        try {
            a();
            Thread.currentThread().setName(name);
        } catch (Throwable th) {
            Thread.currentThread().setName(name);
            throw th;
        }
    }
}
