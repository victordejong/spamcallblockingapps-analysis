package p1727n3.p1807k.p1817f;

import p1727n3.p1807k.p1809b.p1811d.C26488h;
import p1727n3.p1807k.p1812c.C26496d;
/* renamed from: n3.k.f.b */
/* loaded from: classes-dex2jar.jar:n3/k/f/b.class */
public class RunnableC26518b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C26531m f74310a;

    /* renamed from: b */
    public final /* synthetic */ int f74311b;

    public RunnableC26518b(C26519c c26519c, C26531m c26531m, int i) {
        this.f74310a = c26531m;
        this.f74311b = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        C26531m c26531m = this.f74310a;
        int i = this.f74311b;
        C26488h.AbstractC26489a abstractC26489a = ((C26496d.C26497a) c26531m).f74285a;
        if (abstractC26489a != null) {
            abstractC26489a.mo1760d(i);
        }
    }
}
