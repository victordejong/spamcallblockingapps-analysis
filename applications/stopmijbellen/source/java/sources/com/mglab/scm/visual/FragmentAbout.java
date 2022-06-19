package com.mglab.scm.visual;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import com.rengwuxian.materialedittext.MaterialEditText;
import p066d0.C2134a;
import p078e2.EnumC2524b;
import p078e2.View$OnClickListenerC2530g;
import p086f.AbstractC2635a;
import p086f.ActivityC2651j;
import p095f8.C2779g;
import p095f8.C2780h;
import p303z2.C5050k;
import p303z2.C5054o;
@SuppressLint({"NonConstantResourceId"})
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentAbout.class */
public class FragmentAbout extends Fragment {

    /* renamed from: e */
    public static final /* synthetic */ int f7361e = 0;

    /* renamed from: a */
    public Unbinder f7362a;

    /* renamed from: b */
    public long f7363b;

    /* renamed from: c */
    public int f7364c = 0;

    /* renamed from: d */
    public boolean f7365d = false;
    @BindView
    public TextView versionTV;
    @BindView
    public ImageView vkImage;

    /* renamed from: com.mglab.scm.visual.FragmentAbout$a */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentAbout$a.class */
    public static class C1989a implements TextWatcher {

        /* renamed from: a */
        public final View$OnClickListenerC2530g f7366a;

        /* renamed from: b */
        public final MaterialEditText f7367b;

        public C1989a(View$OnClickListenerC2530g view$OnClickListenerC2530g) {
            this.f7366a = view$OnClickListenerC2530g;
            this.f7367b = (MaterialEditText) view$OnClickListenerC2530g.f8822c.f8864o.findViewById(2131296921);
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            this.f7366a.m3481c(EnumC2524b.POSITIVE).setEnabled(String.valueOf(this.f7367b.getText()).equals("2004"));
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i = 0;
        View inflate = layoutInflater.inflate(2131492950, viewGroup, false);
        this.f7362a = ButterKnife.m7385a(this, inflate);
        this.versionTV.setText(C2779g.m3099p(requireContext()));
        ImageView imageView = this.vkImage;
        if (!C2780h.m3075N(getContext()).toUpperCase().equals("RU")) {
            i = 8;
        }
        imageView.setVisibility(i);
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f7362a.mo3937a();
    }

    @OnClick
    public void onFbImageClick() {
        String string = getString(2131820766);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(string));
        startActivity(intent);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        requireActivity().setTitle(2131820573);
        AbstractC2635a m3365s = ((ActivityC2651j) requireActivity()).m3365s();
        if (m3365s != null) {
            m3365s.mo3266p(2131820573);
        }
    }

    @OnClick
    public void onVkImageClick() {
        String string = getString(2131821070);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(string));
        startActivity(intent);
    }

    @OnClick
    public void openDev() {
        if (this.f7363b + 2000 > System.currentTimeMillis()) {
            int i = this.f7364c + 1;
            this.f7364c = i;
            if (i >= 10 && !this.f7365d) {
                this.f7365d = true;
                View$OnClickListenerC2530g.C2531a c2531a = new View$OnClickListenerC2530g.C2531a(requireContext());
                c2531a.f8851b = "Dev code entry";
                c2531a.m3463l(2131099739);
                c2531a.m3474a(C2780h.m3081H(requireContext()) ? 2131099793 : 2131099742);
                c2531a.f8840E = C2779g.m3125H(C2134a.C2136b.m3841b(requireContext(), 2131230991), C2134a.m3845b(requireContext(), 2131099739));
                c2531a.m3469f(C2780h.m3081H(getContext()) ? 2131099739 : 2131099699);
                c2531a.m3472c(2131099739);
                c2531a.f8874y = false;
                c2531a.f8875z = false;
                c2531a.m3471d(2131492946, false);
                c2531a.m3466i(2131820943);
                c2531a.f8870u = new C5050k(this, 6);
                c2531a.f8871v = C5054o.f15347f;
                View$OnClickListenerC2530g m3465j = c2531a.m3468g(2131820654).m3465j();
                View view = m3465j.f8822c.f8864o;
                m3465j.m3481c(EnumC2524b.POSITIVE).setEnabled(false);
                ((MaterialEditText) view.findViewById(2131296921)).addTextChangedListener(new C1989a(m3465j));
            }
        } else {
            this.f7364c = 0;
            this.f7365d = false;
        }
        this.f7363b = System.currentTimeMillis();
    }

    @OnClick
    public void sendEmailClick() {
        C2107c.m3916p(getContext());
    }

    @OnClick
    public void translationClick() {
        C2107c.m3915q(getContext());
    }
}
