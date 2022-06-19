package p1727n3.p1807k.p1817f;

import android.graphics.Typeface;
import p1727n3.p1807k.p1809b.p1811d.C26488h;
import p1727n3.p1807k.p1812c.C26496d;
/* renamed from: n3.k.f.a */
/* loaded from: classes-dex2jar.jar:n3/k/f/a.class */
public class RunnableC26517a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C26531m f74308a;

    /* renamed from: b */
    public final /* synthetic */ Typeface f74309b;

    public RunnableC26517a(C26519c c26519c, C26531m c26531m, Typeface typeface) {
        this.f74308a = c26531m;
        this.f74309b = typeface;
    }

    @Override // java.lang.Runnable
    public void run() {
        C26531m c26531m = this.f74308a;
        Typeface typeface = this.f74309b;
        C26488h.AbstractC26489a abstractC26489a = ((C26496d.C26497a) c26531m).f74285a;
        if (abstractC26489a != null) {
            abstractC26489a.mo1759e(typeface);
        }
    }
}
