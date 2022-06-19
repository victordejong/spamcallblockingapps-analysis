package com.mglab.scm.visual;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import androidx.fragment.app.Fragment;
import ba.C0748b;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import p086f.AbstractC2635a;
import p086f.ActivityC2651j;
import p095f8.C2780h;
import p149k8.C3384b;
@SuppressLint({"NonConstantResourceId"})
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentLanguage.class */
public class FragmentLanguage extends Fragment {

    /* renamed from: a */
    public Unbinder f7477a;
    @BindView
    public CheckBox brCheckBox;
    @BindView
    public CheckBox caCheckBox;
    @BindView
    public CheckBox daCheckBox;
    @BindView
    public CheckBox deATCheckBox;
    @BindView
    public CheckBox elCheckBox;
    @BindView
    public CheckBox enCheckBox;
    @BindView
    public CheckBox esCheckBox;
    @BindView
    public CheckBox frCheckBox;
    @BindView
    public CheckBox itCheckBox;
    @BindView
    public CheckBox nlCheckBox;
    @BindView
    public CheckBox plCheckBox;
    @BindView
    public CheckBox ruCheckBox;
    @BindView
    public CheckBox skCheckBox;
    @BindView
    public CheckBox ukCheckBox;
    @BindView
    public CheckBox viCheckBox;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x01f8, code lost:
        if (r0.equals("ca") == false) goto L4;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m3947a() {
        /*
            Method dump skipped, instructions count: 743
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mglab.scm.visual.FragmentLanguage.m3947a():void");
    }

    @OnClick
    public void brClick() {
        m3946c("pt");
    }

    /* renamed from: c */
    public final void m3946c(String str) {
        C2780h.m3033o0(getContext(), "psetlanguage", str);
        m3947a();
        C0748b.m7409b().m7404g(new C3384b(getClass().getName()));
    }

    @OnClick
    public void caClick() {
        m3946c("ca");
    }

    @OnClick
    public void daClick() {
        m3946c("da");
    }

    @OnClick
    public void deATClick() {
        m3946c("de");
    }

    @OnClick
    public void elClick() {
        m3946c("el");
    }

    @OnClick
    public void enClick() {
        m3946c("en");
    }

    @OnClick
    public void esClick() {
        m3946c("es");
    }

    @OnClick
    public void frClick() {
        m3946c("fr");
    }

    @OnClick
    public void itClick() {
        m3946c("it");
    }

    @OnClick
    public void nlClick() {
        m3946c("nl");
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(2131492956, viewGroup, false);
        this.f7477a = ButterKnife.m7385a(this, inflate);
        m3947a();
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f7477a.mo3937a();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        menu.findItem(2131296319).setVisible(false);
        menu.findItem(2131296318).setVisible(false);
        super.onPrepareOptionsMenu(menu);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        AbstractC2635a m3365s = ((ActivityC2651j) requireActivity()).m3365s();
        if (m3365s != null) {
            m3365s.mo3266p(2131820996);
        }
    }

    @OnClick
    public void plClick() {
        m3946c("pl");
    }

    @OnClick
    public void ruClick() {
        m3946c("ru");
    }

    @OnClick
    public void skClick() {
        m3946c("sk");
    }

    @OnClick
    public void translationClick() {
        C2107c.m3915q(getContext());
    }

    @OnClick
    public void ukClick() {
        m3946c("uk");
    }

    @OnClick
    public void viClick() {
        m3946c("vi");
    }
}
