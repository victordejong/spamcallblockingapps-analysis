package p160l8;

import android.os.Build;
import android.view.View;
import android.widget.ImageView;
import ba.C0748b;
import com.mglab.scm.visual.C2107c;
import com.mglab.scm.visual.FragmentBlackList;
import p066d0.C2134a;
import p085ea.C2632a;
import p149k8.C3391g;
import p171m8.C3670d;
import p171m8.C3673g;
/* renamed from: l8.q */
/* loaded from: classes2-dex2jar.jar:l8/q.class */
public final /* synthetic */ class View$OnClickListenerC3534q implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f11686a;

    /* renamed from: b */
    public final /* synthetic */ Object f11687b;

    public /* synthetic */ View$OnClickListenerC3534q(Object obj, int i) {
        this.f11686a = i;
        this.f11687b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f11686a) {
            case 0:
                ((ImageView) this.f11687b).callOnClick();
                return;
            case 1:
                C3670d c3670d = (C3670d) this.f11687b;
                int i = C3673g.f12024a;
                C0748b.m7409b().m7404g(new C3391g(c3670d));
                return;
            case 2:
                FragmentBlackList fragmentBlackList = (FragmentBlackList) this.f11687b;
                fragmentBlackList.f7383d.m4832a(true);
                if (C2134a.m3846a(fragmentBlackList.requireContext(), "android.permission.READ_CONTACTS") == 0) {
                    new C2107c(fragmentBlackList.getContext(), fragmentBlackList.getView()).m3925g(2);
                    return;
                } else if (Build.VERSION.SDK_INT < 23) {
                    return;
                } else {
                    C2632a.m3382a(fragmentBlackList.getActivity(), new String[]{"android.permission.READ_CONTACTS"}, fragmentBlackList.f7384e);
                    return;
                }
            default:
                C2107c.m3930b((C2107c) this.f11687b, view);
                return;
        }
    }
}
