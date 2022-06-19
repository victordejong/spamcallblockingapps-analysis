package p1727n3.p1874y.p1908e;

import android.view.View;
/* renamed from: n3.y.e.k$l */
/* loaded from: classes-dex2jar.jar:n3/y/e/k$l.class */
public class k$l implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ k f77548a;

    public k$l(k kVar) {
        this.f77548a = kVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        k kVar = this.f77548a;
        if (kVar.d == null) {
            return;
        }
        kVar.removeCallbacks(kVar.N0);
        k kVar2 = this.f77548a;
        kVar2.removeCallbacks(kVar2.O0);
        k kVar3 = this.f77548a;
        kVar3.k = 2;
        k$v k_v = kVar3.r0;
        k_v.f77559a = kVar3.v0;
        k_v.f77560b = kVar3.l + 1;
        kVar3.d(k_v);
    }
}
