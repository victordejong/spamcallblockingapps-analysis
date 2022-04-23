package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.m.a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/InvitesHeaderLayoutBinding.class */
public final class InvitesHeaderLayoutBinding implements a {

    /* renamed from: a  reason: collision with root package name */
    public final Guideline f14323a;

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f14324b;

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f14325c;

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f14326d;
    public final ImageView e;
    public final TextView f;
    private final ConstraintLayout g;

    private InvitesHeaderLayoutBinding(ConstraintLayout constraintLayout, Guideline guideline, ConstraintLayout constraintLayout2, ImageView imageView, ImageView imageView2, ImageView imageView3, TextView textView) {
        this.g = constraintLayout;
        this.f14323a = guideline;
        this.f14324b = constraintLayout2;
        this.f14325c = imageView;
        this.f14326d = imageView2;
        this.e = imageView3;
        this.f = textView;
    }

    public static InvitesHeaderLayoutBinding a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558755, viewGroup, false);
        viewGroup.addView(inflate);
        int i = 2131362941;
        Guideline guideline = (Guideline) inflate.findViewById(2131362941);
        if (guideline != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) inflate;
            ImageView imageView = (ImageView) inflate.findViewById(2131363833);
            if (imageView != null) {
                ImageView imageView2 = (ImageView) inflate.findViewById(2131363834);
                if (imageView2 != null) {
                    ImageView imageView3 = (ImageView) inflate.findViewById(2131363835);
                    if (imageView3 != null) {
                        TextView textView = (TextView) inflate.findViewById(2131363838);
                        if (textView != null) {
                            return new InvitesHeaderLayoutBinding(constraintLayout, guideline, constraintLayout, imageView, imageView2, imageView3, textView);
                        }
                        i = 2131363838;
                    } else {
                        i = 2131363835;
                    }
                } else {
                    i = 2131363834;
                }
            } else {
                i = 2131363833;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    @Override // androidx.m.a
    public final ConstraintLayout getRoot() {
        return this.g;
    }
}
