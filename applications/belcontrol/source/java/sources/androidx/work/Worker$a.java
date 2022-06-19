package androidx.work;
/* loaded from: classes-dex2jar.jar:androidx/work/Worker$a.class */
public class Worker$a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Worker f1656a;

    public Worker$a(Worker worker) {
        this.f1656a = worker;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f1656a.mFuture.o(this.f1656a.doWork());
        } catch (Throwable th) {
            this.f1656a.mFuture.p(th);
        }
    }
}
