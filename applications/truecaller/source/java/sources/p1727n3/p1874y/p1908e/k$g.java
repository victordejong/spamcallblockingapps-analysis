package p1727n3.p1874y.p1908e;

import android.view.View;
import androidx.media2.common.SessionPlayer;
/* renamed from: n3.y.e.k$g */
/* loaded from: classes-dex2jar.jar:n3/y/e/k$g.class */
public class k$g implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ k f77543a;

    public k$g(k kVar) {
        this.f77543a = kVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        k kVar = this.f77543a;
        if (kVar.d == null) {
            return;
        }
        kVar.o();
        k kVar2 = this.f77543a;
        kVar2.e();
        if (kVar2.d.m133m()) {
            SessionPlayer sessionPlayer = kVar2.d.f77580a;
            if (sessionPlayer != null) {
                sessionPlayer.mo42795S();
            }
            kVar2.u(1);
            return;
        }
        if (kVar2.w) {
            kVar2.d.m132n(0L);
        }
        SessionPlayer sessionPlayer2 = kVar2.d.f77580a;
        if (sessionPlayer2 != null) {
            sessionPlayer2.mo42793W();
        }
        kVar2.u(0);
    }
}
