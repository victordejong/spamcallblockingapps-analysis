package p1727n3.p1734b.p1735a;

import android.view.View;
import p1727n3.p1807k.p1821i.C26614s;
import p1727n3.p1807k.p1821i.C26625z;
/* renamed from: n3.b.a.n */
/* loaded from: classes-dex2jar.jar:n3/b/a/n.class */
public class RunnableC25423n implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ LayoutInflater$Factory2C25408k f70946a;

    public RunnableC25423n(LayoutInflater$Factory2C25408k layoutInflater$Factory2C25408k) {
        this.f70946a = layoutInflater$Factory2C25408k;
    }

    @Override // java.lang.Runnable
    public void run() {
        LayoutInflater$Factory2C25408k layoutInflater$Factory2C25408k = this.f70946a;
        layoutInflater$Factory2C25408k.f70901p.showAtLocation(layoutInflater$Factory2C25408k.f70900o, 55, 0, 0);
        this.f70946a.m3639L();
        if (!this.f70946a.m3625Z()) {
            this.f70946a.f70900o.setAlpha(1.0f);
            this.f70946a.f70900o.setVisibility(0);
            return;
        }
        this.f70946a.f70900o.setAlpha(0.0f);
        LayoutInflater$Factory2C25408k layoutInflater$Factory2C25408k2 = this.f70946a;
        C26625z m1579b = C26614s.m1579b(layoutInflater$Factory2C25408k2.f70900o);
        m1579b.m1551a(1.0f);
        layoutInflater$Factory2C25408k2.f70903r = m1579b;
        C26625z c26625z = this.f70946a.f70903r;
        a aVar = new a(this);
        View view = c26625z.f74523a.get();
        if (view == null) {
            return;
        }
        c26625z.m1547e(view, aVar);
    }
}
