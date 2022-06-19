package p193o8;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import ba.AbstractC0762k;
import ba.C0748b;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import org.greenrobot.eventbus.ThreadMode;
import p086f.AbstractC2635a;
import p086f.ActivityC2651j;
import p149k8.C3402r;
import p149k8.C3405u;
import p160l8.C3540w;
/* renamed from: o8.r */
/* loaded from: classes2-dex2jar.jar:o8/r.class */
public class C3965r extends Fragment {

    /* renamed from: a */
    public Unbinder f12468a;

    /* renamed from: b */
    public int f12469b = 0;

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(2131492959, viewGroup, false);
        this.f12468a = ButterKnife.m7385a(this, inflate);
        this.f12469b = getArguments().getInt("no");
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f12468a.mo3937a();
    }

    @AbstractC0762k(threadMode = ThreadMode.MAIN)
    public void onMessageEventPreferences(C3402r c3402r) {
        C3540w c3540w = new C3540w(getContext());
        c3540w.f11704c = this.f12469b;
        int i = c3402r.f11445a;
        if (i == 1) {
            c3540w.m2206l(8, true);
        } else if (i == 2) {
            c3540w.m2206l(12, true);
        }
        onResume();
    }

    @AbstractC0762k(threadMode = ThreadMode.MAIN)
    public void onMessageEventSimIconColorChanged(C3405u c3405u) {
        onResume();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        C3540w c3540w = new C3540w(getContext());
        c3540w.f11704c = this.f12469b;
        c3540w.m2203o(requireView());
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        if (!C0748b.m7409b().m7405f(this)) {
            C0748b.m7409b().m7400k(this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        if (C0748b.m7409b().m7405f(this)) {
            C0748b.m7409b().m7398m(this);
        }
        super.onStop();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        String string = getString(2131820775, String.valueOf(getArguments().getInt("no")));
        requireActivity().setTitle(string);
        AbstractC2635a m3365s = ((ActivityC2651j) requireActivity()).m3365s();
        if (m3365s != null) {
            m3365s.mo3265q(string);
        }
    }
}
