package p193e.p1451f.p1452a.p1457n.p1460o;

import java.util.Objects;
import p193e.p1451f.p1452a.p1457n.p1460o.C22294a;
/* renamed from: e.f.a.n.o.b */
/* loaded from: classes-dex2jar.jar:e/f/a/n/o/b.class */
public class RunnableC22299b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C22294a f61959a;

    public RunnableC22299b(C22294a c22294a) {
        this.f61959a = c22294a;
    }

    @Override // java.lang.Runnable
    public void run() {
        C22294a c22294a = this.f61959a;
        Objects.requireNonNull(c22294a);
        while (true) {
            try {
                c22294a.m8348b((C22294a.C22297b) c22294a.f61946d.remove());
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
        }
    }
}
