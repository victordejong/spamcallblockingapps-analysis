package androidx.work;
/* loaded from: classes-dex2jar.jar:androidx/work/Worker$a.class */
class Worker$a implements Runnable {

    /* renamed from: b */
    final /* synthetic */ Worker f2936b;

    Worker$a(Worker worker) {
        this.f2936b = worker;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f2936b.f.q(this.f2936b.doWork());
        } catch (Throwable th) {
            this.f2936b.f.r(th);
        }
    }
}
