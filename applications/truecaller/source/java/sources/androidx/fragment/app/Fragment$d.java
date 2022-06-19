package androidx.fragment.app;

import android.view.View;
import p1727n3.p1859r.p1860a.AbstractC26955r;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$d.class */
public class Fragment$d extends AbstractC26955r {

    /* renamed from: a */
    public final /* synthetic */ Fragment f790a;

    public Fragment$d(Fragment fragment) {
        this.f790a = fragment;
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26955r
    /* renamed from: b */
    public View mo1072b(int i) {
        View view = this.f790a.mView;
        if (view != null) {
            return view.findViewById(i);
        }
        StringBuilder m8728C = C22128a.m8728C("Fragment ");
        m8728C.append(this.f790a);
        m8728C.append(" does not have a view");
        throw new IllegalStateException(m8728C.toString());
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26955r
    /* renamed from: c */
    public boolean mo1071c() {
        return this.f790a.mView != null;
    }
}
