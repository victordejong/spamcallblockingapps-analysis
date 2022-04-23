package p081h.p203i.p325c.p367v;
/* renamed from: h.i.c.v.f */
/* loaded from: classes2-dex2jar.jar:h/i/c/v/f.class */
public final /* synthetic */ class RunnableC9937f implements Runnable {

    /* renamed from: a */
    public final C9938g f22480a;

    /* renamed from: b */
    public final boolean f22481b;

    public RunnableC9937f(C9938g gVar, boolean z) {
        this.f22480a = gVar;
        this.f22481b = z;
    }

    /* renamed from: a */
    public static Runnable m13925a(C9938g gVar, boolean z) {
        return new RunnableC9937f(gVar, z);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f22480a.m13913b(this.f22481b);
    }
}
