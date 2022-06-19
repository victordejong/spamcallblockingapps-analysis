package androidx.fragment.app;

import androidx.activity.result.ActivityResultRegistry;
import p1727n3.p1728a.p1730e.AbstractC25375c;
import p1727n3.p1746c.p1747a.p1750c.AbstractC25640a;
import p1727n3.p1859r.p1860a.AbstractC26959u;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$e.class */
public class Fragment$e implements AbstractC25640a<Void, ActivityResultRegistry> {

    /* renamed from: a */
    public final /* synthetic */ Fragment f791a;

    public Fragment$e(Fragment fragment) {
        this.f791a = fragment;
    }

    @Override // p1727n3.p1746c.p1747a.p1750c.AbstractC25640a
    public ActivityResultRegistry apply(Void r3) {
        Fragment fragment = this.f791a;
        AbstractC26959u abstractC26959u = fragment.mHost;
        return abstractC26959u instanceof AbstractC25375c ? ((AbstractC25375c) abstractC26959u).getActivityResultRegistry() : fragment.requireActivity().getActivityResultRegistry();
    }
}
