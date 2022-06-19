package p193e.p194a.p1164r.p1169b0;

import android.view.View;
import s1.z.c.l;
/* renamed from: e.a.r.b0.d$e */
/* loaded from: classes16-dex2jar.jar:e/a/r/b0/d$e.class */
public final class d$e implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ d f54776a;

    public d$e(d dVar) {
        this.f54776a = dVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        i iVar = this.f54776a.i;
        if (iVar == null) {
            l.l("presenter");
            throw null;
        }
        iVar.e.mo28432c();
        iVar.b.putBoolean("ppolicy_accepted", true);
        iVar.b.putBoolean("ppolicy_analytics", true);
        h hVar = (h) iVar.f57683a;
        if (hVar == null) {
            return;
        }
        hVar.K0();
    }
}
