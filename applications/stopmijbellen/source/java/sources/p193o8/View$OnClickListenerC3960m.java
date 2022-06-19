package p193o8;

import android.os.Build;
import android.view.View;
import androidx.fragment.app.Fragment;
import com.mglab.scm.visual.C2107c;
import com.mglab.scm.visual.FragmentBlackList;
import com.mglab.scm.visual.FragmentWhiteList;
import p066d0.C2134a;
import p085ea.C2632a;
/* renamed from: o8.m */
/* loaded from: classes2-dex2jar.jar:o8/m.class */
public final /* synthetic */ class View$OnClickListenerC3960m implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f12457a;

    /* renamed from: b */
    public final /* synthetic */ Object f12458b;

    public /* synthetic */ View$OnClickListenerC3960m(Fragment fragment, int i) {
        this.f12457a = i;
        this.f12458b = fragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f12457a) {
            case 0:
                FragmentBlackList fragmentBlackList = (FragmentBlackList) this.f12458b;
                fragmentBlackList.f7383d.m4832a(true);
                new C2107c(fragmentBlackList.getContext(), fragmentBlackList.getView()).m3927e(2, true, "", "");
                return;
            default:
                FragmentWhiteList fragmentWhiteList = (FragmentWhiteList) this.f12458b;
                fragmentWhiteList.f7632e.m4832a(true);
                if (C2134a.m3846a(fragmentWhiteList.requireContext(), "android.permission.READ_CONTACTS") == 0) {
                    new C2107c(fragmentWhiteList.getContext(), fragmentWhiteList.getView()).m3925g(1);
                    return;
                } else if (Build.VERSION.SDK_INT < 23) {
                    return;
                } else {
                    C2632a.m3382a(fragmentWhiteList.getActivity(), new String[]{"android.permission.READ_CONTACTS"}, fragmentWhiteList.f7633f);
                    return;
                }
        }
    }
}
