package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.m.a;
import com.callapp.contacts.widget.RoundedCornersImageView;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/LayoutSearchAndSelectHeaderBinding.class */
public final class LayoutSearchAndSelectHeaderBinding implements a {

    /* renamed from: a  reason: collision with root package name */
    public final RoundedCornersImageView f14335a;

    /* renamed from: b  reason: collision with root package name */
    public final TextView f14336b;

    /* renamed from: c  reason: collision with root package name */
    public final TextView f14337c;

    /* renamed from: d  reason: collision with root package name */
    public final ConstraintLayout f14338d;
    private final ConstraintLayout e;

    private LayoutSearchAndSelectHeaderBinding(ConstraintLayout constraintLayout, RoundedCornersImageView roundedCornersImageView, TextView textView, TextView textView2, ConstraintLayout constraintLayout2) {
        this.e = constraintLayout;
        this.f14335a = roundedCornersImageView;
        this.f14336b = textView;
        this.f14337c = textView2;
        this.f14338d = constraintLayout2;
    }

    public static LayoutSearchAndSelectHeaderBinding a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
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

    @Override // androidx.m.a
    public final ConstraintLayout getRoot() {
        return this.e;
    }
}
