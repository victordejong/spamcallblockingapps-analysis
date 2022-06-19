package p160l8;

import android.view.View;
import android.widget.ImageView;
import com.mglab.scm.visual.C2107c;
import com.mglab.scm.visual.FragmentBlackList;
import com.mglab.scm.visual.FragmentWhiteList;
/* renamed from: l8.p */
/* loaded from: classes2-dex2jar.jar:l8/p.class */
public final /* synthetic */ class View$OnClickListenerC3533p implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f11684a;

    /* renamed from: b */
    public final /* synthetic */ Object f11685b;

    public /* synthetic */ View$OnClickListenerC3533p(Object obj, int i) {
        this.f11684a = i;
        this.f11685b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f11684a) {
            case 0:
                ((ImageView) this.f11685b).callOnClick();
                return;
            case 1:
                FragmentBlackList fragmentBlackList = (FragmentBlackList) this.f11685b;
                fragmentBlackList.f7383d.m4832a(true);
                new C2107c(fragmentBlackList.getContext(), fragmentBlackList.getView()).m3924h(2);
                return;
            case 2:
                FragmentWhiteList fragmentWhiteList = (FragmentWhiteList) this.f11685b;
                fragmentWhiteList.f7632e.m4832a(true);
                new C2107c(fragmentWhiteList.getContext(), fragmentWhiteList.getView()).m3926f(1);
                return;
            default:
                C2107c.m3929c((C2107c) this.f11685b, view);
                return;
        }
    }
}
