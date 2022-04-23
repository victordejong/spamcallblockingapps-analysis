package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.m.a;
import com.google.android.material.a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/ActivityVideoRingtoneBundleBinding.class */
public final class ActivityVideoRingtoneBundleBinding implements a {

    /* renamed from: a  reason: collision with root package name */
    public final RelativeLayout f14273a;

    /* renamed from: b  reason: collision with root package name */
    public final TextView f14274b;

    /* renamed from: c  reason: collision with root package name */
    public final ConstraintLayout f14275c;

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f14276d;
    public final TextView e;
    public final TextView f;
    public final LinearLayout g;
    public final ScrollView h;
    public final FrameLayout i;
    private final LinearLayout j;

    private ActivityVideoRingtoneBundleBinding(LinearLayout linearLayout, RelativeLayout relativeLayout, TextView textView, ConstraintLayout constraintLayout, LinearLayout linearLayout2, TextView textView2, TextView textView3, LinearLayout linearLayout3, ScrollView scrollView, FrameLayout frameLayout) {
        this.j = linearLayout;
        this.f14273a = relativeLayout;
        this.f14274b = textView;
        this.f14275c = constraintLayout;
        this.f14276d = linearLayout2;
        this.e = textView2;
        this.f = textView3;
        this.g = linearLayout3;
        this.h = scrollView;
        this.i = frameLayout;
    }

    public static ActivityVideoRingtoneBundleBinding a(LayoutInflater layoutInflater) {
        View inflate = layoutInflater.inflate(2131558475, (ViewGroup) null, false);
        int i = 2131362173;
        RelativeLayout relativeLayout = (RelativeLayout) inflate.findViewById(2131362173);
        if (relativeLayout != null) {
            TextView textView = (TextView) inflate.findViewById(2131362174);
            if (textView != null) {
                ConstraintLayout constraintLayout = (ConstraintLayout) inflate.findViewById(a.f.container);
                if (constraintLayout != null) {
                    LinearLayout linearLayout = (LinearLayout) inflate.findViewById(2131362708);
                    if (linearLayout != null) {
                        TextView textView2 = (TextView) inflate.findViewById(2131362709);
                        if (textView2 != null) {
                            TextView textView3 = (TextView) inflate.findViewById(2131362710);
                            if (textView3 != null) {
                                LinearLayout linearLayout2 = (LinearLayout) inflate;
                                ScrollView scrollView = (ScrollView) inflate.findViewById(2131363747);
                                if (scrollView != null) {
                                    FrameLayout frameLayout = (FrameLayout) inflate.findViewById(2131364518);
                                    if (frameLayout != null) {
                                        return new ActivityVideoRingtoneBundleBinding(linearLayout2, relativeLayout, textView, constraintLayout, linearLayout, textView2, textView3, linearLayout2, scrollView, frameLayout);
                                    }
                                    i = 2131364518;
                                } else {
                                    i = 2131363747;
                                }
                            } else {
                                i = 2131362710;
                            }
                        } else {
                            i = 2131362709;
                        }
                    } else {
                        i = 2131362708;
                    }
                } else {
                    i = a.f.container;
                }
            } else {
                i = 2131362174;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    @Override // androidx.m.a
    public final LinearLayout getRoot() {
        return this.j;
    }
}
