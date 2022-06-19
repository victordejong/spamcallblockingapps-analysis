package p193e.p1432d.p1443e;
/* renamed from: e.d.e.c */
/* loaded from: classes-dex2jar.jar:e/d/e/c.class */
public class RunnableC22171c implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AbstractC22184o f61604a;

    /* renamed from: b */
    public final /* synthetic */ C22172d f61605b;

    public RunnableC22171c(C22172d c22172d, AbstractC22184o abstractC22184o) {
        this.f61605b = c22172d;
        this.f61604a = abstractC22184o;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f61605b.f61608b.put(this.f61604a);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
    }
}
