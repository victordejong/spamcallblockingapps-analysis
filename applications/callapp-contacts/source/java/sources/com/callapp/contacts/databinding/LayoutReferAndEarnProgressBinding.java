package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.p061m.AbstractC1286a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/LayoutReferAndEarnProgressBinding.class */
public final class LayoutReferAndEarnProgressBinding implements AbstractC1286a {

    /* renamed from: a */
    public final TextView f25061a;

    /* renamed from: b */
    public final TextView f25062b;

    /* renamed from: c */
    public final ConstraintLayout f25063c;

    /* renamed from: d */
    public final ImageView f25064d;

    /* renamed from: e */
    public final TextView f25065e;

    /* renamed from: f */
    private final ConstraintLayout f25066f;

    private LayoutReferAndEarnProgressBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, ConstraintLayout constraintLayout2, ImageView imageView, TextView textView3) {
        this.f25066f = constraintLayout;
        this.f25061a = textView;
        this.f25062b = textView2;
        this.f25063c = constraintLayout2;
        this.f25064d = imageView;
        this.f25065e = textView3;
    }

    /* renamed from: a */
    public static LayoutReferAndEarnProgressBinding m29061a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558839, viewGroup, false);
        viewGroup.addView(inflate);
        int i = 2131363578;
        TextView textView = (TextView) inflate.findViewById(2131363578);
        if (textView != null) {
            TextView textView2 = (TextView) inflate.findViewById(2131363579);
            if (textView2 != null) {
                ConstraintLayout constraintLayout = (ConstraintLayout) inflate;
                ImageView imageView = (ImageView) inflate.findViewById(2131363581);
                if (imageView != null) {
                    TextView textView3 = (TextView) inflate.findViewById(2131363584);
                    if (textView3 != null) {
                        return new LayoutReferAndEarnProgressBinding(constraintLayout, textView, textView2, constraintLayout, imageView, textView3);
                    }
                    i = 2131363584;
                } else {
                    i = 2131363581;
                }
            } else {
                i = 2131363579;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    @Override // androidx.p061m.AbstractC1286a
    public final ConstraintLayout getRoot() {
        return this.f25066f;
    }
}
