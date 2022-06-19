package com.mglab.scm.intro;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/intro/Intro1.class */
public class Intro1 extends Fragment {

    /* renamed from: a */
    public Unbinder f7289a;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(2131493072, viewGroup, false);
        this.f7289a = ButterKnife.m7385a(this, inflate);
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f7289a.mo3937a();
    }

    @OnClick
    @SuppressLint({"NonConstantResourceId"})
    public void onEMailClick(View view) {
    }
}
