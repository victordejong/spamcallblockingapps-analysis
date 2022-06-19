package p1727n3.p1874y.p1908e;

import android.view.View;
import androidx.media2.common.SessionPlayer;
/* renamed from: n3.y.e.k$j */
/* loaded from: classes-dex2jar.jar:n3/y/e/k$j.class */
public class k$j implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ k f77546a;

    public k$j(k kVar) {
        this.f77546a = kVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        k kVar = this.f77546a;
        if (kVar.d == null) {
            return;
        }
        kVar.o();
        SessionPlayer sessionPlayer = this.f77546a.d.f77580a;
        if (sessionPlayer == null) {
            return;
        }
        sessionPlayer.mo42812B0();
    }
}
