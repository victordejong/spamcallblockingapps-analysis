package com.callapp.contacts.databinding;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.p061m.AbstractC1286a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/GraphsHeaderLayoutBinding.class */
public final class GraphsHeaderLayoutBinding implements AbstractC1286a {

    /* renamed from: a */
    public final LinearLayout f25048a;

    /* renamed from: b */
    public final ImageView f25049b;

    /* renamed from: c */
    public final View f25050c;

    /* renamed from: d */
    public final TextView f25051d;

    /* renamed from: e */
    public final TextView f25052e;

    /* renamed from: f */
    private final LinearLayout f25053f;

    private GraphsHeaderLayoutBinding(LinearLayout linearLayout, LinearLayout linearLayout2, ImageView imageView, View view, TextView textView, TextView textView2) {
        this.f25053f = linearLayout;
        this.f25048a = linearLayout2;
        this.f25049b = imageView;
        this.f25050c = view;
        this.f25051d = textView;
        this.f25052e = textView2;
    }

    /* renamed from: a */
    public static GraphsHeaderLayoutBinding m29063a(View view) {
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

    @Override // androidx.p061m.AbstractC1286a
    public final LinearLayout getRoot() {
        return this.f25053f;
    }
}
