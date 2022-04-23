package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.m.a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/CallappPlusItemGraphBinding.class */
public final class CallappPlusItemGraphBinding implements a {

    /* renamed from: a  reason: collision with root package name */
    public final RelativeLayout f14299a;

    /* renamed from: b  reason: collision with root package name */
    public final TextView f14300b;

    /* renamed from: c  reason: collision with root package name */
    public final TextView f14301c;

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f14302d;
    public final View e;
    public final TextView f;
    public final LinearLayout g;
    private final RelativeLayout h;

    private CallappPlusItemGraphBinding(RelativeLayout relativeLayout, RelativeLayout relativeLayout2, TextView textView, TextView textView2, ImageView imageView, View view, TextView textView3, LinearLayout linearLayout) {
        this.h = relativeLayout;
        this.f14299a = relativeLayout2;
        this.f14300b = textView;
        this.f14301c = textView2;
        this.f14302d = imageView;
        this.e = view;
        this.f = textView3;
        this.g = linearLayout;
    }

    public static CallappPlusItemGraphBinding a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558520, viewGroup, false);
        int i = 2131362519;
        RelativeLayout relativeLayout = (RelativeLayout) inflate.findViewById(2131362519);
        if (relativeLayout != null) {
            TextView textView = (TextView) inflate.findViewById(2131362878);
            if (textView != null) {
                TextView textView2 = (TextView) inflate.findViewById(2131363397);
                if (textView2 != null) {
                    ImageView imageView = (ImageView) inflate.findViewById(2131363666);
                    if (imageView != null) {
                        View findViewById = inflate.findViewById(2131363808);
                        if (findViewById != null) {
                            TextView textView3 = (TextView) inflate.findViewById(2131363925);
                            if (textView3 != null) {
                                LinearLayout linearLayout = (LinearLayout) inflate.findViewById(2131364097);
                                if (linearLayout != null) {
                                    return new CallappPlusItemGraphBinding((RelativeLayout) inflate, relativeLayout, textView, textView2, imageView, findViewById, textView3, linearLayout);
                                }
                                i = 2131364097;
                            } else {
                                i = 2131363925;
                            }
                        } else {
                            i = 2131363808;
                        }
                    } else {
                        i = 2131363666;
                    }
                } else {
                    i = 2131363397;
                }
            } else {
                i = 2131362878;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    @Override // androidx.m.a
    public final RelativeLayout getRoot() {
        return this.h;
    }
}
