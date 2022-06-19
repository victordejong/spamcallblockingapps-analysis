package p214q9;
/* renamed from: q9.b */
/* loaded from: classes2-dex2jar.jar:q9/b.class */
public abstract class AbstractRunnableC4170b implements Runnable {

    /* renamed from: a */
    public final String f13143a;

    public AbstractRunnableC4170b(String str, Object... objArr) {
        this.f13143a = C4171c.m1324l(str, objArr);
    }

    /* renamed from: b */
    public abstract void mo635b();

    @Override // java.lang.Runnable
    public final void run() {
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName(this.f13143a);
        try {
            mo635b();
            Thread.currentThread().setName(name);
        } catch (Throwable th) {
            Thread.currentThread().setName(name);
            throw th;
        }
    }
}
