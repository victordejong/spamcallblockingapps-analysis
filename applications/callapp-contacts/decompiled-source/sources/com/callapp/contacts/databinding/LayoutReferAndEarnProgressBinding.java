package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.m.a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/LayoutReferAndEarnProgressBinding.class */
public final class LayoutReferAndEarnProgressBinding implements a {

    /* renamed from: a  reason: collision with root package name */
    public final TextView f14327a;

    /* renamed from: b  reason: collision with root package name */
    public final TextView f14328b;

    /* renamed from: c  reason: collision with root package name */
    public final ConstraintLayout f14329c;

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f14330d;
    public final TextView e;
    private final ConstraintLayout f;

    private LayoutReferAndEarnProgressBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, ConstraintLayout constraintLayout2, ImageView imageView, TextView textView3) {
        this.f = constraintLayout;
        this.f14327a = textView;
        this.f14328b = textView2;
        this.f14329c = constraintLayout2;
        this.f14330d = imageView;
        this.e = textView3;
    }

    public static LayoutReferAndEarnProgressBinding a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
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

    @Override // androidx.m.a
    public final ConstraintLayout getRoot() {
        return this.f;
    }
}
