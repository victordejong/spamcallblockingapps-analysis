package p1727n3.p1874y.p1908e;

import android.view.View;
import java.util.Objects;
/* renamed from: n3.y.e.k$o */
/* loaded from: classes-dex2jar.jar:n3/y/e/k$o.class */
public class k$o implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ k f77551a;

    public k$o(k kVar) {
        this.f77551a = kVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        k kVar = this.f77551a;
        if (kVar.d == null) {
            return;
        }
        kVar.o();
        Objects.requireNonNull(this.f77551a);
        this.f77551a.J0.start();
    }
}
