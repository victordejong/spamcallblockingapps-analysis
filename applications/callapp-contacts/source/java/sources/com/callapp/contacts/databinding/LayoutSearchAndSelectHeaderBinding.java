package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.p061m.AbstractC1286a;
import com.callapp.contacts.widget.RoundedCornersImageView;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/LayoutSearchAndSelectHeaderBinding.class */
public final class LayoutSearchAndSelectHeaderBinding implements AbstractC1286a {

    /* renamed from: a */
    public final RoundedCornersImageView f25072a;

    /* renamed from: b */
    public final TextView f25073b;

    /* renamed from: c */
    public final TextView f25074c;

    /* renamed from: d */
    public final ConstraintLayout f25075d;

    /* renamed from: e */
    private final ConstraintLayout f25076e;

    private LayoutSearchAndSelectHeaderBinding(ConstraintLayout constraintLayout, RoundedCornersImageView roundedCornersImageView, TextView textView, TextView textView2, ConstraintLayout constraintLayout2) {
        this.f25076e = constraintLayout;
        this.f25072a = roundedCornersImageView;
        this.f25073b = textView;
        this.f25074c = textView2;
        this.f25075d = constraintLayout2;
    }

    /* renamed from: a */
    public static LayoutSearchAndSelectHeaderBinding m29059a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558842, viewGroup, false);
        viewGroup.addView(inflate);
        int i = 2131363752;
        RoundedCornersImageView roundedCornersImageView = (RoundedCornersImageView) inflate.findViewById(2131363752);
        if (roundedCornersImageView != null) {
            TextView textView = (TextView) inflate.findViewById(2131363753);
            if (textView != null) {
                TextView textView2 = (TextView) inflate.findViewById(2131363754);
                if (textView2 != null) {
                    ConstraintLayout constraintLayout = (ConstraintLayout) inflate;
                    return new LayoutSearchAndSelectHeaderBinding(constraintLayout, roundedCornersImageView, textView, textView2, constraintLayout);
                }
                i = 2131363754;
            } else {
                i = 2131363753;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    @Override // androidx.p061m.AbstractC1286a
    public final ConstraintLayout getRoot() {
        return this.f25076e;
    }
}
