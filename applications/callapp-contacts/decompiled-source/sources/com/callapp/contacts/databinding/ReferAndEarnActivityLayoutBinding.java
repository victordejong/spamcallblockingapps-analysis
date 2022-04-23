package com.callapp.contacts.databinding;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentContainerView;
import androidx.m.a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding.class */
public final class ReferAndEarnActivityLayoutBinding implements a {

    /* renamed from: a  reason: collision with root package name */
    public final TextView f14356a;

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f14357b;

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f14358c;

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f14359d;
    public final ConstraintLayout e;
    public final TextView f;
    public final TextView g;
    public final FragmentContainerView h;
    private final ConstraintLayout i;

    private ReferAndEarnActivityLayoutBinding(ConstraintLayout constraintLayout, TextView textView, ImageView imageView, ImageView imageView2, ImageView imageView3, ConstraintLayout constraintLayout2, TextView textView2, TextView textView3, FragmentContainerView fragmentContainerView) {
        this.i = constraintLayout;
        this.f14356a = textView;
        this.f14357b = imageView;
        this.f14358c = imageView2;
        this.f14359d = imageView3;
        this.e = constraintLayout2;
        this.f = textView2;
        this.g = textView3;
        this.h = fragmentContainerView;
    }

    public static ReferAndEarnActivityLayoutBinding a(View view) {
        int i = 2131362665;
        TextView textView = (TextView) view.findViewById(2131362665);
        if (textView != null) {
            ImageView imageView = (ImageView) view.findViewById(2131363016);
            if (imageView != null) {
                ImageView imageView2 = (ImageView) view.findViewById(2131363017);
                if (imageView2 != null) {
                    ImageView imageView3 = (ImageView) view.findViewById(2131363097);
                    if (imageView3 != null) {
                        ConstraintLayout constraintLayout = (ConstraintLayout) view;
                        TextView textView2 = (TextView) view.findViewById(2131363658);
                        if (textView2 != null) {
                            TextView textView3 = (TextView) view.findViewById(2131363659);
                            if (textView3 != null) {
                                FragmentContainerView fragmentContainerView = (FragmentContainerView) view.findViewById(2131363660);
                                if (fragmentContainerView != null) {
                                    return new ReferAndEarnActivityLayoutBinding(constraintLayout, textView, imageView, imageView2, imageView3, constraintLayout, textView2, textView3, fragmentContainerView);
                                }
                                i = 2131363660;
                            } else {
                                i = 2131363659;
                            }
                        } else {
                            i = 2131363658;
                        }
                    } else {
                        i = 2131363097;
                    }
                } else {
                    i = 2131363017;
                }
            } else {
                i = 2131363016;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @Override // androidx.m.a
    public final ConstraintLayout getRoot() {
        return this.i;
    }
}
