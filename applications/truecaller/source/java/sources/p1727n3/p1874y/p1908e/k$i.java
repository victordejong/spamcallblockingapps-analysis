package p1727n3.p1874y.p1908e;

import android.view.View;
/* renamed from: n3.y.e.k$i */
/* loaded from: classes-dex2jar.jar:n3/y/e/k$i.class */
public class k$i implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ k f77545a;

    public k$i(k kVar) {
        this.f77545a = kVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        k kVar = this.f77545a;
        if (kVar.d == null) {
            return;
        }
        kVar.o();
        k kVar2 = this.f77545a;
        kVar2.removeCallbacks(kVar2.K0);
        long latestSeekPosition = this.f77545a.getLatestSeekPosition();
        k kVar3 = this.f77545a;
        long j = latestSeekPosition + 30000;
        kVar3.p(Math.min(j, kVar3.q), true);
        k kVar4 = this.f77545a;
        if (j < kVar4.q || kVar4.d.m133m()) {
            return;
        }
        this.f77545a.w(true);
    }
}
