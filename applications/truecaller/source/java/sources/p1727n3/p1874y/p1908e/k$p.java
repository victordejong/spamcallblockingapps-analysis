package p1727n3.p1874y.p1908e;

import android.view.View;
/* renamed from: n3.y.e.k$p */
/* loaded from: classes-dex2jar.jar:n3/y/e/k$p.class */
public class k$p implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ k f77552a;

    public k$p(k kVar) {
        this.f77552a = kVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        k kVar = this.f77552a;
        if (kVar.d == null) {
            return;
        }
        kVar.removeCallbacks(kVar.N0);
        k kVar2 = this.f77552a;
        kVar2.removeCallbacks(kVar2.O0);
        k kVar3 = this.f77552a;
        kVar3.k = 3;
        k$u k_u = kVar3.q0;
        k_u.f77557c = kVar3.t0;
        kVar3.d(k_u);
    }
}
