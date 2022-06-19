package p193e.p1512i.p1516b.p1522i2;

import java.util.List;
/* renamed from: e.i.b.i2.b */
/* loaded from: classes-dex2jar.jar:e/i/b/i2/b.class */
public class RunnableC22960b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C22963d f63663a;

    /* renamed from: b */
    public final /* synthetic */ List f63664b;

    /* renamed from: c */
    public final /* synthetic */ C22961c f63665c;

    public RunnableC22960b(C22961c c22961c, C22963d c22963d, List list) {
        this.f63665c = c22961c;
        this.f63663a = c22963d;
        this.f63664b = list;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f63663a.run();
        } finally {
            this.f63665c.m7613a(this.f63664b);
        }
    }
}
