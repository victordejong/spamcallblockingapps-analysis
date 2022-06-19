package p1727n3.p1807k.p1817f;

import android.os.Handler;
import p1727n3.p1807k.p1817f.C26527j;
/* renamed from: n3.k.f.c */
/* loaded from: classes-dex2jar.jar:n3/k/f/c.class */
public class C26519c {

    /* renamed from: a */
    public final C26531m f74312a;

    /* renamed from: b */
    public final Handler f74313b;

    public C26519c(C26531m c26531m, Handler handler) {
        this.f74312a = c26531m;
        this.f74313b = handler;
    }

    /* renamed from: a */
    public void m1715a(C26527j.C26528a c26528a) {
        int i = c26528a.f74335b;
        if (!(i == 0)) {
            this.f74313b.post(new RunnableC26518b(this, this.f74312a, i));
            return;
        }
        this.f74313b.post(new RunnableC26517a(this, this.f74312a, c26528a.f74334a));
    }
}
