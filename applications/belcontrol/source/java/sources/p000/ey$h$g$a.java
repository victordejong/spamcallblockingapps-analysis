package p000;

import android.view.View;
import ey;
import java.util.List;
import p000.C1324dz;
/* renamed from: ey$h$g$a */
/* loaded from: classes-dex2jar.jar:ey$h$g$a.class */
public class ey$h$g$a implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ ey.h.g f6483a;

    public ey$h$g$a(ey.h.g gVar) {
        this.f6483a = gVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ey.h.g gVar = this.f6483a;
        boolean z = !gVar.h(((ey.f) gVar).a);
        boolean m2318x = ((ey.f) this.f6483a).a.m2318x();
        ey.h.g gVar2 = this.f6483a;
        C1324dz c1324dz = gVar2.o.j.a;
        C1324dz.C1332i c1332i = ((ey.f) gVar2).a;
        if (z) {
            c1324dz.m2408c(c1332i);
        } else {
            c1324dz.m2395p(c1332i);
        }
        this.f6483a.i(z, !m2318x);
        if (m2318x) {
            List<C1324dz.C1332i> m2331k = this.f6483a.o.j.d.m2331k();
            for (C1324dz.C1332i c1332i2 : ((ey.f) this.f6483a).a.m2331k()) {
                if (m2331k.contains(c1332i2) != z) {
                    ey.h.g gVar3 = (ey.f) this.f6483a.o.j.s.get(c1332i2.m2332j());
                    if (gVar3 instanceof ey.h.g) {
                        gVar3.i(z, true);
                    }
                }
            }
        }
        ey.h.g gVar4 = this.f6483a;
        gVar4.o.i(((ey.f) gVar4).a, z);
    }
}
