package p193o8;

import android.view.View;
import androidx.fragment.app.Fragment;
import com.mglab.scm.visual.C2107c;
import com.mglab.scm.visual.FragmentBlackList;
import com.mglab.scm.visual.FragmentWhiteList;
/* renamed from: o8.n */
/* loaded from: classes2-dex2jar.jar:o8/n.class */
public final /* synthetic */ class View$OnClickListenerC3961n implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f12459a;

    /* renamed from: b */
    public final /* synthetic */ Object f12460b;

    public /* synthetic */ View$OnClickListenerC3961n(Fragment fragment, int i) {
        this.f12459a = i;
        this.f12460b = fragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f12459a) {
            case 0:
                FragmentBlackList fragmentBlackList = (FragmentBlackList) this.f12460b;
                fragmentBlackList.f7383d.m4832a(true);
                new C2107c(fragmentBlackList.getContext(), fragmentBlackList.getView()).m3927e(2, false, "", "");
                return;
            default:
                FragmentWhiteList fragmentWhiteList = (FragmentWhiteList) this.f12460b;
                fragmentWhiteList.f7632e.m4832a(true);
                new C2107c(fragmentWhiteList.getContext(), fragmentWhiteList.getView()).m3924h(1);
                return;
        }
    }
}
