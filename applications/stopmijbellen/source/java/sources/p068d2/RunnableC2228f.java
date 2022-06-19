package p068d2;
/* renamed from: d2.f */
/* loaded from: classes-dex2jar.jar:d2/f.class */
public class RunnableC2228f implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C2357l f8059a;

    public RunnableC2228f(C2357l c2357l) {
        this.f8059a = c2357l;
    }

    @Override // java.lang.Runnable
    public void run() {
        C2168b.m3790h();
        C2267f4 c2267f4 = new C2267f4();
        C2227e4.m3745h(c2267f4, "options", this.f8059a.f8370d);
        new C2410t0("Options.set_options", 1, c2267f4).m3586b();
    }
}
