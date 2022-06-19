package p193e.p194a.p1268u;

import android.view.View;
import s1.z.c.l;
/* renamed from: e.a.u.g$c */
/* loaded from: classes16-dex2jar.jar:e/a/u/g$c.class */
public final class g$c implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ g f57657a;

    public g$c(g gVar) {
        this.f57657a = gVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        g gVar = this.f57657a;
        e eVar = gVar.a;
        if (eVar == null) {
            l.l("presenter");
            throw null;
        }
        View TA = gVar.TA();
        l.d(TA, "shareImage");
        eVar.Yb(TA);
    }
}
