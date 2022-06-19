package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.p061m.AbstractC1286a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/CallappPlusItemGraphBinding.class */
public final class CallappPlusItemGraphBinding implements AbstractC1286a {

    /* renamed from: a */
    public final RelativeLayout f25003a;

    /* renamed from: b */
    public final TextView f25004b;

    /* renamed from: c */
    public final TextView f25005c;

    /* renamed from: d */
    public final ImageView f25006d;

    /* renamed from: e */
    public final View f25007e;

    /* renamed from: f */
    public final TextView f25008f;

    /* renamed from: g */
    public final LinearLayout f25009g;

    /* renamed from: h */
    private final RelativeLayout f25010h;

    private CallappPlusItemGraphBinding(RelativeLayout relativeLayout, RelativeLayout relativeLayout2, TextView textView, TextView textView2, ImageView imageView, View view, TextView textView3, LinearLayout linearLayout) {
        this.f25010h = relativeLayout;
        this.f25003a = relativeLayout2;
        this.f25004b = textView;
        this.f25005c = textView2;
        this.f25006d = imageView;
        this.f25007e = view;
        this.f25008f = textView3;
        this.f25009g = linearLayout;
    }

    /* renamed from: a */
    public static CallappPlusItemGraphBinding m29069a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
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

    @Override // androidx.p061m.AbstractC1286a
    public final RelativeLayout getRoot() {
        return this.f25010h;
    }
}
