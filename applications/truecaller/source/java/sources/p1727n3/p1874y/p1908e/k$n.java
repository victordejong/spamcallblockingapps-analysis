package p1727n3.p1874y.p1908e;

import android.view.View;
import java.util.Objects;
/* renamed from: n3.y.e.k$n */
/* loaded from: classes-dex2jar.jar:n3/y/e/k$n.class */
public class k$n implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ k f77550a;

    public k$n(k kVar) {
        this.f77550a = kVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        k kVar = this.f77550a;
        if (kVar.d == null) {
            return;
        }
        kVar.o();
        Objects.requireNonNull(this.f77550a);
        this.f77550a.I0.start();
    }
}
