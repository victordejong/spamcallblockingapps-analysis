package p1727n3.p1874y.p1908e;

import android.view.View;
import androidx.media2.common.SessionPlayer;
/* renamed from: n3.y.e.k$k */
/* loaded from: classes-dex2jar.jar:n3/y/e/k$k.class */
public class k$k implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ k f77547a;

    public k$k(k kVar) {
        this.f77547a = kVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        k kVar = this.f77547a;
        if (kVar.d == null) {
            return;
        }
        kVar.o();
        SessionPlayer sessionPlayer = this.f77547a.d.f77580a;
        if (sessionPlayer == null) {
            return;
        }
        sessionPlayer.mo42810D0();
    }
}
