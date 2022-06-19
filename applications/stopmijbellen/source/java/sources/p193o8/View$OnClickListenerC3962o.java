package p193o8;

import android.view.View;
import androidx.fragment.app.Fragment;
import com.mglab.scm.visual.C2107c;
import com.mglab.scm.visual.FragmentBlackList;
import com.mglab.scm.visual.FragmentWhiteList;
/* renamed from: o8.o */
/* loaded from: classes2-dex2jar.jar:o8/o.class */
public final /* synthetic */ class View$OnClickListenerC3962o implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f12461a;

    /* renamed from: b */
    public final /* synthetic */ Object f12462b;

    public /* synthetic */ View$OnClickListenerC3962o(Fragment fragment, int i) {
        this.f12461a = i;
        this.f12462b = fragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f12461a) {
            case 0:
                FragmentBlackList fragmentBlackList = (FragmentBlackList) this.f12462b;
                fragmentBlackList.f7383d.m4832a(true);
                new C2107c(fragmentBlackList.getContext(), fragmentBlackList.getView()).m3926f(2);
                return;
            default:
                FragmentWhiteList fragmentWhiteList = (FragmentWhiteList) this.f12462b;
                fragmentWhiteList.f7632e.m4832a(true);
                new C2107c(fragmentWhiteList.getContext(), fragmentWhiteList.getView()).m3927e(1, true, "", "");
                return;
        }
    }
}
