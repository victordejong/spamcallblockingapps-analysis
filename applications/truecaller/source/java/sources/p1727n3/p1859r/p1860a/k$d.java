package p1727n3.p1859r.p1860a;

import android.view.View;
import androidx.fragment.app.FragmentManager;
import p1727n3.p1868v.AbstractC26992b0;
import p1727n3.p1868v.AbstractC27012l0;
/* renamed from: n3.r.a.k$d */
/* loaded from: classes-dex2jar.jar:n3/r/a/k$d.class */
public class k$d implements AbstractC27012l0<AbstractC26992b0> {

    /* renamed from: a */
    public final /* synthetic */ k f75368a;

    public k$d(k kVar) {
        this.f75368a = kVar;
    }

    @Override // p1727n3.p1868v.AbstractC27012l0
    public void onChanged(AbstractC26992b0 abstractC26992b0) {
        if (abstractC26992b0 == null || !k.access$200(this.f75368a)) {
            return;
        }
        View requireView = this.f75368a.requireView();
        if (requireView.getParent() != null) {
            throw new IllegalStateException("DialogFragment can not be attached to a container view");
        }
        if (k.access$000(this.f75368a) == null) {
            return;
        }
        if (FragmentManager.m42933T(3)) {
            String str = "DialogFragment " + this + " setting the content view on " + k.access$000(this.f75368a);
        }
        k.access$000(this.f75368a).setContentView(requireView);
    }
}
