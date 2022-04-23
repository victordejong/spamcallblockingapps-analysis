package com.callapp.contacts.databinding;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.m.a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/GraphsHeaderLayoutBinding.class */
public final class GraphsHeaderLayoutBinding implements a {

    /* renamed from: a  reason: collision with root package name */
    public final LinearLayout f14319a;

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f14320b;

    /* renamed from: c  reason: collision with root package name */
    public final View f14321c;

    /* renamed from: d  reason: collision with root package name */
    public final TextView f14322d;
    public final TextView e;
    private final LinearLayout f;

    private GraphsHeaderLayoutBinding(LinearLayout linearLayout, LinearLayout linearLayout2, ImageView imageView, View view, TextView textView, TextView textView2) {
        this.f = linearLayout;
        this.f14319a = linearLayout2;
        this.f14320b = imageView;
        this.f14321c = view;
        this.f14322d = textView;
        this.e = textView2;
    }

    public static GraphsHeaderLayoutBinding a(View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i = 2131363011;
        ImageView imageView = (ImageView) view.findViewById(2131363011);
        if (imageView != null) {
            View findViewById = view.findViewById(2131363809);
            if (findViewById != null) {
                TextView textView = (TextView) view.findViewById(2131364010);
                if (textView != null) {
                    TextView textView2 = (TextView) view.findViewById(2131364076);
                    if (textView2 != null) {
                        return new GraphsHeaderLayoutBinding(linearLayout, linearLayout, imageView, findViewById, textView, textView2);
                    }
                    i = 2131364076;
                } else {
                    i = 2131364010;
                }
            } else {
                i = 2131363809;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @Override // androidx.m.a
    public final LinearLayout getRoot() {
        return this.f;
    }
}
