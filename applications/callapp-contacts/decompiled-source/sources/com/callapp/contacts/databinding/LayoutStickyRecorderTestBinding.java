package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.m.a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/LayoutStickyRecorderTestBinding.class */
public final class LayoutStickyRecorderTestBinding implements a {

    /* renamed from: a  reason: collision with root package name */
    public final ConstraintLayout f14339a;

    /* renamed from: b  reason: collision with root package name */
    public final TextView f14340b;

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f14341c;

    /* renamed from: d  reason: collision with root package name */
    public final TextView f14342d;
    private final View e;

    private LayoutStickyRecorderTestBinding(View view, ConstraintLayout constraintLayout, TextView textView, ImageView imageView, TextView textView2) {
        this.e = view;
        this.f14339a = constraintLayout;
        this.f14340b = textView;
        this.f14341c = imageView;
        this.f14342d = textView2;
    }

    public static LayoutStickyRecorderTestBinding a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
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

    @Override // androidx.m.a
    public final View getRoot() {
        return this.e;
    }
}
