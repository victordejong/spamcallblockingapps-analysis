package p193e.p194a.p1129p5.p1137x0;

import androidx.fragment.app.Fragment;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import p1727n3.p1806j0.AbstractC26410a;
import p1727n3.p1868v.AbstractC26992b0;
import s1.z.b.l;
/* renamed from: e.a.p5.x0.a */
/* loaded from: classes15-dex2jar.jar:e/a/p5/x0/a.class */
public final class C19350a<F extends Fragment, T extends AbstractC26410a> extends ViewBindingProperty<F, T> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19350a(l<? super F, ? extends T> lVar) {
        super(lVar);
        s1.z.c.l.e(lVar, "viewBinder");
    }

    @Override // com.truecaller.utils.viewbinding.ViewBindingProperty
    /* renamed from: a */
    public AbstractC26992b0 mo13419a(Object obj) {
        Fragment fragment = (Fragment) obj;
        s1.z.c.l.e(fragment, "thisRef");
        AbstractC26992b0 viewLifecycleOwner = fragment.getViewLifecycleOwner();
        s1.z.c.l.d(viewLifecycleOwner, "thisRef.viewLifecycleOwner");
        return viewLifecycleOwner;
    }
}
