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
import androidx.p061m.AbstractC1286a;
import com.google.android.material.C14376a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/ActivityVideoRingtoneBundleBinding.class */
public final class ActivityVideoRingtoneBundleBinding implements AbstractC1286a {

    /* renamed from: a */
    public final RelativeLayout f24945a;

    /* renamed from: b */
    public final TextView f24946b;

    /* renamed from: c */
    public final ConstraintLayout f24947c;

    /* renamed from: d */
    public final LinearLayout f24948d;

    /* renamed from: e */
    public final TextView f24949e;

    /* renamed from: f */
    public final TextView f24950f;

    /* renamed from: g */
    public final LinearLayout f24951g;

    /* renamed from: h */
    public final ScrollView f24952h;

    /* renamed from: i */
    public final FrameLayout f24953i;

    /* renamed from: j */
    private final LinearLayout f24954j;

    private ActivityVideoRingtoneBundleBinding(LinearLayout linearLayout, RelativeLayout relativeLayout, TextView textView, ConstraintLayout constraintLayout, LinearLayout linearLayout2, TextView textView2, TextView textView3, LinearLayout linearLayout3, ScrollView scrollView, FrameLayout frameLayout) {
        this.f24954j = linearLayout;
        this.f24945a = relativeLayout;
        this.f24946b = textView;
        this.f24947c = constraintLayout;
        this.f24948d = linearLayout2;
        this.f24949e = textView2;
        this.f24950f = textView3;
        this.f24951g = linearLayout3;
        this.f24952h = scrollView;
        this.f24953i = frameLayout;
    }

    /* renamed from: a */
    public static ActivityVideoRingtoneBundleBinding m29076a(LayoutInflater layoutInflater) {
        View inflate = layoutInflater.inflate(2131558475, (ViewGroup) null, false);
        int i = 2131362173;
        RelativeLayout relativeLayout = (RelativeLayout) inflate.findViewById(2131362173);
        if (relativeLayout != null) {
            TextView textView = (TextView) inflate.findViewById(2131362174);
            if (textView != null) {
                ConstraintLayout constraintLayout = (ConstraintLayout) inflate.findViewById(C14376a.C14382f.container);
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
                    i = 2131362466;
                }
            } else {
                i = 2131362174;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    @Override // androidx.p061m.AbstractC1286a
    public final LinearLayout getRoot() {
        return this.f24954j;
    }
}
