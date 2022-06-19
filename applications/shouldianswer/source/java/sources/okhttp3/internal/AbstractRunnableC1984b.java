package okhttp3.internal;
/* renamed from: okhttp3.internal.b */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/b.class */
public abstract class AbstractRunnableC1984b implements Runnable {

    /* renamed from: b */
    protected final String f4951b;

    public AbstractRunnableC1984b(String str, Object... objArr) {
        this.f4951b = C1999c.m2342a(str, objArr);
    }

    /* renamed from: c */
    protected abstract void mo1824c();

    @Override // java.lang.Runnable
    public final void run() {
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName(this.f4951b);
        try {
            mo1824c();
            Thread.currentThread().setName(name);
        } catch (Throwable th) {
            Thread.currentThread().setName(name);
            throw th;
        }
    }
}
