package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.m.a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/LayoutSearchAndSelectBottomBinding.class */
public final class LayoutSearchAndSelectBottomBinding implements a {

    /* renamed from: a  reason: collision with root package name */
    public final View f14331a;

    /* renamed from: b  reason: collision with root package name */
    public final TextView f14332b;

    /* renamed from: c  reason: collision with root package name */
    public final TextView f14333c;

    /* renamed from: d  reason: collision with root package name */
    public final ConstraintLayout f14334d;
    private final ConstraintLayout e;

    private LayoutSearchAndSelectBottomBinding(ConstraintLayout constraintLayout, View view, TextView textView, TextView textView2, ConstraintLayout constraintLayout2) {
        this.e = constraintLayout;
        this.f14331a = view;
        this.f14332b = textView;
        this.f14333c = textView2;
        this.f14334d = constraintLayout2;
    }

    public static LayoutSearchAndSelectBottomBinding a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558841, viewGroup, false);
        viewGroup.addView(inflate);
        int i = 2131362121;
        View findViewById = inflate.findViewById(2131362121);
        if (findViewById != null) {
            TextView textView = (TextView) inflate.findViewById(2131363750);
            if (textView != null) {
                TextView textView2 = (TextView) inflate.findViewById(2131363751);
                if (textView2 != null) {
                    ConstraintLayout constraintLayout = (ConstraintLayout) inflate;
                    return new LayoutSearchAndSelectBottomBinding(constraintLayout, findViewById, textView, textView2, constraintLayout);
                }
                i = 2131363751;
            } else {
                i = 2131363750;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    @Override // androidx.m.a
    public final ConstraintLayout getRoot() {
        return this.e;
    }
}
