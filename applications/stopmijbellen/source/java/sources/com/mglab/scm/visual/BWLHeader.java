package com.mglab.scm.visual;

import android.annotation.SuppressLint;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import p193o8.AbstractC3940a;
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/BWLHeader.class */
public class BWLHeader implements AbstractC3940a {

    /* renamed from: a */
    public final String f7333a;
    @BindView
    public TextView text;

    public BWLHeader(String str) {
        this.f7333a = str;
    }

    @Override // p193o8.AbstractC3940a
    /* renamed from: a */
    public int mo1595a() {
        return 1;
    }

    @Override // p193o8.AbstractC3940a
    @SuppressLint({"InflateParams"})
    /* renamed from: b */
    public View mo1594b(LayoutInflater layoutInflater, View view) {
        View view2 = view;
        if (view == null) {
            view2 = layoutInflater.inflate(2131492904, (ViewGroup) null);
        }
        ButterKnife.m7385a(this, view2);
        this.text.setText(this.f7333a);
        return view2;
    }
}
