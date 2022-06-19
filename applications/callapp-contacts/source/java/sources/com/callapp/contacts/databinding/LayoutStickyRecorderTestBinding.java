package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.p061m.AbstractC1286a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/LayoutStickyRecorderTestBinding.class */
public final class LayoutStickyRecorderTestBinding implements AbstractC1286a {

    /* renamed from: a */
    public final ConstraintLayout f25077a;

    /* renamed from: b */
    public final TextView f25078b;

    /* renamed from: c */
    public final ImageView f25079c;

    /* renamed from: d */
    public final TextView f25080d;

    /* renamed from: e */
    private final View f25081e;

    private LayoutStickyRecorderTestBinding(View view, ConstraintLayout constraintLayout, TextView textView, ImageView imageView, TextView textView2) {
        this.f25081e = view;
        this.f25077a = constraintLayout;
        this.f25078b = textView;
        this.f25079c = imageView;
        this.f25080d = textView2;
    }

    /* renamed from: a */
    public static LayoutStickyRecorderTestBinding m29058a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        layoutInflater.inflate(2131558849, viewGroup);
        int i = 2131363977;
        ConstraintLayout constraintLayout = (ConstraintLayout) viewGroup.findViewById(2131363977);
        if (constraintLayout != null) {
            TextView textView = (TextView) viewGroup.findViewById(2131363978);
            if (textView != null) {
                ImageView imageView = (ImageView) viewGroup.findViewById(2131363979);
                if (imageView != null) {
                    TextView textView2 = (TextView) viewGroup.findViewById(2131363985);
                    if (textView2 != null) {
                        return new LayoutStickyRecorderTestBinding(viewGroup, constraintLayout, textView, imageView, textView2);
                    }
                    i = 2131363985;
                } else {
                    i = 2131363979;
                }
            } else {
                i = 2131363978;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewGroup.getResources().getResourceName(i)));
    }

    @Override // androidx.p061m.AbstractC1286a
    public final View getRoot() {
        return this.f25081e;
    }
}
