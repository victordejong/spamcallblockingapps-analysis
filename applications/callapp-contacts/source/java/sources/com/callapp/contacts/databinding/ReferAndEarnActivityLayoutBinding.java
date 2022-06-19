package com.callapp.contacts.databinding;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentContainerView;
import androidx.p061m.AbstractC1286a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/ReferAndEarnActivityLayoutBinding.class */
public final class ReferAndEarnActivityLayoutBinding implements AbstractC1286a {

    /* renamed from: a */
    public final TextView f25117a;

    /* renamed from: b */
    public final ImageView f25118b;

    /* renamed from: c */
    public final ImageView f25119c;

    /* renamed from: d */
    public final ImageView f25120d;

    /* renamed from: e */
    public final ConstraintLayout f25121e;

    /* renamed from: f */
    public final TextView f25122f;

    /* renamed from: g */
    public final TextView f25123g;

    /* renamed from: h */
    public final FragmentContainerView f25124h;

    /* renamed from: i */
    private final ConstraintLayout f25125i;

    private ReferAndEarnActivityLayoutBinding(ConstraintLayout constraintLayout, TextView textView, ImageView imageView, ImageView imageView2, ImageView imageView3, ConstraintLayout constraintLayout2, TextView textView2, TextView textView3, FragmentContainerView fragmentContainerView) {
        this.f25125i = constraintLayout;
        this.f25117a = textView;
        this.f25118b = imageView;
        this.f25119c = imageView2;
        this.f25120d = imageView3;
        this.f25121e = constraintLayout2;
        this.f25122f = textView2;
        this.f25123g = textView3;
        this.f25124h = fragmentContainerView;
    }

    /* renamed from: a */
    public static ReferAndEarnActivityLayoutBinding m29053a(View view) {
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

    @Override // androidx.p061m.AbstractC1286a
    public final ConstraintLayout getRoot() {
        return this.f25125i;
    }
}
