package com.mglab.scm.intro;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/intro/Intro2.class */
public class Intro2 extends Fragment {

    /* renamed from: a */
    public Unbinder f7293a;
    @BindView
    @SuppressLint({"NonConstantResourceId"})
    public TextView whyNeed;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(2131493073, viewGroup, false);
        this.f7293a = ButterKnife.m7385a(this, inflate);
        if (Build.VERSION.SDK_INT < 23) {
            this.whyNeed.setVisibility(8);
        }
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f7293a.mo3937a();
    }
}
