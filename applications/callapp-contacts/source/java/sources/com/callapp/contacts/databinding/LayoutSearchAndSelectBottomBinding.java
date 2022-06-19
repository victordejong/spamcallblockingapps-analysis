package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.p061m.AbstractC1286a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/LayoutSearchAndSelectBottomBinding.class */
public final class LayoutSearchAndSelectBottomBinding implements AbstractC1286a {

    /* renamed from: a */
    public final View f25067a;

    /* renamed from: b */
    public final TextView f25068b;

    /* renamed from: c */
    public final TextView f25069c;

    /* renamed from: d */
    public final ConstraintLayout f25070d;

    /* renamed from: e */
    private final ConstraintLayout f25071e;

    private LayoutSearchAndSelectBottomBinding(ConstraintLayout constraintLayout, View view, TextView textView, TextView textView2, ConstraintLayout constraintLayout2) {
        this.f25071e = constraintLayout;
        this.f25067a = view;
        this.f25068b = textView;
        this.f25069c = textView2;
        this.f25070d = constraintLayout2;
    }

    /* renamed from: a */
    public static LayoutSearchAndSelectBottomBinding m29060a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
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

    @Override // androidx.p061m.AbstractC1286a
    public final ConstraintLayout getRoot() {
        return this.f25071e;
    }
}
