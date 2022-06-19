package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.p061m.AbstractC1286a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/InvitesHeaderLayoutBinding.class */
public final class InvitesHeaderLayoutBinding implements AbstractC1286a {

    /* renamed from: a */
    public final Guideline f25054a;

    /* renamed from: b */
    public final ConstraintLayout f25055b;

    /* renamed from: c */
    public final ImageView f25056c;

    /* renamed from: d */
    public final ImageView f25057d;

    /* renamed from: e */
    public final ImageView f25058e;

    /* renamed from: f */
    public final TextView f25059f;

    /* renamed from: g */
    private final ConstraintLayout f25060g;

    private InvitesHeaderLayoutBinding(ConstraintLayout constraintLayout, Guideline guideline, ConstraintLayout constraintLayout2, ImageView imageView, ImageView imageView2, ImageView imageView3, TextView textView) {
        this.f25060g = constraintLayout;
        this.f25054a = guideline;
        this.f25055b = constraintLayout2;
        this.f25056c = imageView;
        this.f25057d = imageView2;
        this.f25058e = imageView3;
        this.f25059f = textView;
    }

    /* renamed from: a */
    public static InvitesHeaderLayoutBinding m29062a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
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

    @Override // androidx.p061m.AbstractC1286a
    public final ConstraintLayout getRoot() {
        return this.f25060g;
    }
}
