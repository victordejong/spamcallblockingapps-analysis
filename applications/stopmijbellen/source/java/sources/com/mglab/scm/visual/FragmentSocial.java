package com.mglab.scm.visual;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.cardview.widget.CardView;
import androidx.fragment.app.Fragment;
import ba.AbstractC0762k;
import ba.C0748b;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import org.greenrobot.eventbus.ThreadMode;
import p066d0.C2134a;
import p086f.AbstractC2635a;
import p086f.ActivityC2651j;
import p095f8.C2779g;
import p095f8.C2780h;
import p106g8.C2914d;
import p117h8.C3036l;
import p117h8.C3037m;
import p149k8.C3391g;
import p149k8.C3404t;
import p170m7.C3661g;
import p171m8.C3675i;
import p233s6.C4316k;
import p277w7.C4749e;
import p277w7.C4766p;
import p278w8.C4790q;
import p278w8.C4791r;
import p293y2.C4994k;
@SuppressLint({"NonConstantResourceId"})
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentSocial.class */
public class FragmentSocial extends Fragment {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: b */
    public static C3675i f7596b;

    /* renamed from: a */
    public Unbinder f7597a;
    @BindView
    public View frameSocial;

    @OnClick
    public void onActionButtonClick() {
        f7596b.m1895e();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i;
        Context context;
        View inflate = layoutInflater.inflate(2131492960, viewGroup, false);
        this.f7597a = ButterKnife.m7385a(this, inflate);
        C3675i c3675i = new C3675i(getContext(), inflate);
        f7596b = c3675i;
        String string = getArguments().getString("number");
        boolean z = getArguments().getBoolean("openFeedback");
        c3675i.f12030c = string;
        c3675i.f12043p = z;
        c3675i.m1897c();
        CardView cardView = (CardView) this.frameSocial.findViewById(2131296450);
        if (C2780h.m3081H(getContext())) {
            context = requireContext();
            i = 2131099721;
        } else {
            context = requireContext();
            i = 2131099720;
        }
        cardView.setCardBackgroundColor(C2134a.m3845b(context, i));
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        if (C2779g.m3090y() && C2780h.m3074O(getContext())) {
            String str = f7596b.m1896d() == null ? "" : f7596b.m1896d().f12009d;
            if (!str.isEmpty()) {
                new C4791r(new C4790q(C3036l.class).m460a(C3037m.f10306z.m239a(str), C3037m.f10285A.m239a(Boolean.TRUE)), C3037m.f10288h.m236e(f7596b.f12030c)).mo458i();
                String str2 = f7596b.f12030c;
            }
            C2779g.m3129D(getContext());
        }
        super.onDestroyView();
        this.f7597a.mo3937a();
    }

    @AbstractC0762k(threadMode = ThreadMode.MAIN)
    public void onMessageEventEditFeedback(C3391g c3391g) {
        onActionButtonClick();
    }

    @OnClick
    public void onRetryButton() {
        C3675i c3675i = f7596b;
        c3675i.f12042o.setVisibility(8);
        c3675i.f12037j.setVisibility(8);
        c3675i.f12039l.setVisibility(8);
        c3675i.f12038k.setVisibility(0);
        String m3131B = C2779g.m3131B(16);
        C4316k c4316k = new C4316k();
        c4316k.f13470a.put("initserver", c4316k.m1109e(""));
        c4316k.toString();
        C2914d.m2853c(m3131B, "body", c4316k.toString()).toString();
        C4766p c4766p = (C4766p) C4749e.m498b(C3675i.f12027r);
        c4766p.m492j(C2780h.m3087B(C3675i.f12027r) + "app_preinit.php");
        c4766p.mo11f("deviceid", C2779g.m3104k(C3675i.f12027r));
        c4766p.mo11f("appvc", String.valueOf(382));
        c4766p.mo11f("tcc", C2780h.m3042k(C3675i.f12027r));
        c4766p.mo11f("data", m3131B);
        c4766p.mo11f("commandid", String.valueOf(C2780h.m3046i(C3675i.f12027r)));
        c4766p.mo11f("ispro", C2779g.m3090y() ? "1" : "0");
        c4766p.mo14b(C2914d.m2853c(m3131B, "body", c4316k.toString()));
        ((C3661g) c4766p.mo10d()).m1919k(new C4994k(c3675i, m3131B, 3));
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
        requireActivity().setTitle(2131820609);
        AbstractC2635a m3365s = ((ActivityC2651j) requireActivity()).m3365s();
        if (m3365s != null) {
            m3365s.mo3266p(2131820609);
        }
        C0748b.m7409b().m7404g(new C3404t());
    }
}
