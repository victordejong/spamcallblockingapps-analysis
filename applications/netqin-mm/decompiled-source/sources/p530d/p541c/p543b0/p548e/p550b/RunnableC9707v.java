package p530d.p541c.p543b0.p548e.p550b;
/* renamed from: d.c.b0.e.b.v */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/b/v.class */
public final class RunnableC9707v implements Runnable {

    /* renamed from: a */
    public final AbstractC9706u f36792a;

    /* renamed from: b */
    public final long f36793b;

    public RunnableC9707v(long j, AbstractC9706u uVar) {
        this.f36793b = j;
        this.f36792a = uVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f36792a.onTimeout(this.f36793b);
    }
}
