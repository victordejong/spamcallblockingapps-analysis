package p1727n3.p1734b.p1735a;

import android.view.View;
import p1727n3.p1807k.p1821i.AbstractC26609n;
import p1727n3.p1807k.p1821i.C26568d0;
import p1727n3.p1807k.p1821i.C26614s;
/* renamed from: n3.b.a.l */
/* loaded from: classes-dex2jar.jar:n3/b/a/l.class */
public class C25421l implements AbstractC26609n {

    /* renamed from: a */
    public final /* synthetic */ LayoutInflater$Factory2C25408k f70944a;

    public C25421l(LayoutInflater$Factory2C25408k layoutInflater$Factory2C25408k) {
        this.f70944a = layoutInflater$Factory2C25408k;
    }

    @Override // p1727n3.p1807k.p1821i.AbstractC26609n
    /* renamed from: b */
    public C26568d0 mo1532b(View view, C26568d0 c26568d0) {
        int m1661f = c26568d0.m1661f();
        int m3623b0 = this.f70944a.m3623b0(c26568d0, null);
        C26568d0 c26568d02 = c26568d0;
        if (m1661f != m3623b0) {
            c26568d02 = c26568d0.m1658i(c26568d0.m1663d(), m3623b0, c26568d0.m1662e(), c26568d0.m1664c());
        }
        return C26614s.m1570k(view, c26568d02);
    }
}
