package okhttp3.internal;
/* renamed from: okhttp3.internal.b */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/b.class */
public abstract class AbstractRunnableC5434b implements Runnable {

    /* renamed from: b */
    protected final String f22725b;

    public AbstractRunnableC5434b(String str, Object... objArr) {
        this.f22725b = C5449c.m662a(str, objArr);
    }

    /* renamed from: c */
    protected abstract void mo144c();

    @Override // java.lang.Runnable
    public final void run() {
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName(this.f22725b);
        try {
            mo144c();
            Thread.currentThread().setName(name);
        } catch (Throwable th) {
            Thread.currentThread().setName(name);
            throw th;
        }
    }
}
