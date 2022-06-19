package p1727n3.p1874y.p1908e;

import android.view.View;
/* renamed from: n3.y.e.k$h */
/* loaded from: classes-dex2jar.jar:n3/y/e/k$h.class */
public class k$h implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ k f77544a;

    public k$h(k kVar) {
        this.f77544a = kVar;
    }

    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        k kVar = this.f77544a;
        if (kVar.d == null) {
            return;
        }
        kVar.o();
        k kVar2 = this.f77544a;
        kVar2.removeCallbacks(kVar2.K0);
        k kVar3 = this.f77544a;
        boolean z = kVar3.w && kVar3.q != 0;
        this.f77544a.p(Math.max((z ? kVar3.q : kVar3.getLatestSeekPosition()) - 10000, 0L), true);
        if (!z) {
            return;
        }
        this.f77544a.w(false);
    }
}
