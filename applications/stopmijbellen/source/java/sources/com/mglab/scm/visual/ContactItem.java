package com.mglab.scm.visual;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import p066d0.C2134a;
import p107g9.C2953s;
import p107g9.C2967w;
import p193o8.AbstractC3956i;
import p193o8.C3944c;
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/ContactItem.class */
class ContactItem implements AbstractC3956i {

    /* renamed from: a */
    public Context f7355a;

    /* renamed from: b */
    public final String f7356b;

    /* renamed from: c */
    public final String f7357c;
    @BindView
    @SuppressLint({"NonConstantResourceId"})
    public CheckBox checkBox;
    @BindView
    @SuppressLint({"NonConstantResourceId"})
    public ImageView contactImageView;

    /* renamed from: d */
    public final String f7358d;

    /* renamed from: e */
    public boolean f7359e = false;
    @BindView
    @SuppressLint({"NonConstantResourceId"})
    public TextView nameTextView;
    @BindView
    @SuppressLint({"NonConstantResourceId"})
    public TextView numberTextView;

    public ContactItem(String str, String str2, String str3) {
        this.f7356b = str;
        this.f7357c = str2;
        this.f7358d = str3;
    }

    @Override // p193o8.AbstractC3956i
    /* renamed from: a */
    public int mo1589a() {
        return 0;
    }

    @Override // p193o8.AbstractC3956i
    @SuppressLint({"InflateParams"})
    /* renamed from: b */
    public View mo1588b(LayoutInflater layoutInflater, View view) {
        View view2 = view;
        if (view == null) {
            view2 = layoutInflater.inflate(2131492914, (ViewGroup) null);
        }
        ButterKnife.m7385a(this, view2);
        this.f7355a = view2.getContext();
        TextView textView = this.nameTextView;
        String str = this.f7357c;
        textView.setText((str == null || str.isEmpty()) ? this.f7356b : this.f7357c);
        this.numberTextView.setText(this.f7356b);
        String str2 = this.f7357c;
        if (str2 == null || str2.isEmpty()) {
            this.numberTextView.setVisibility(8);
        } else {
            this.numberTextView.setVisibility(0);
        }
        this.checkBox.setChecked(this.f7359e);
        C2967w m2820e = C2953s.m2821d().m2820e(this.f7358d);
        m2820e.m2807c(2131230944);
        m2820e.m2806d(new C3944c(1, 100, C2134a.m3845b(this.f7355a, 2131099737)));
        m2820e.m2808b(this.contactImageView, null);
        return view2;
    }
}
