package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.p061m.AbstractC1286a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/CallFabLayoutBinding.class */
public final class CallFabLayoutBinding implements AbstractC1286a {

    /* renamed from: a */
    public final FrameLayout f24978a;

    /* renamed from: b */
    public final ImageView f24979b;

    /* renamed from: c */
    public final FrameLayout f24980c;

    /* renamed from: d */
    public final View f24981d;

    /* renamed from: e */
    public final ImageView f24982e;

    /* renamed from: f */
    private final FrameLayout f24983f;

    private CallFabLayoutBinding(FrameLayout frameLayout, FrameLayout frameLayout2, ImageView imageView, FrameLayout frameLayout3, View view, ImageView imageView2) {
        this.f24983f = frameLayout;
        this.f24978a = frameLayout2;
        this.f24979b = imageView;
        this.f24980c = frameLayout3;
        this.f24981d = view;
        this.f24982e = imageView2;
    }

    /* renamed from: a */
    public static CallFabLayoutBinding m29072a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558512, viewGroup, false);
        viewGroup.addView(inflate);
        int i = 2131361967;
        FrameLayout frameLayout = (FrameLayout) inflate.findViewById(2131361967);
        if (frameLayout != null) {
            ImageView imageView = (ImageView) inflate.findViewById(2131362207);
            if (imageView != null) {
                FrameLayout frameLayout2 = (FrameLayout) inflate.findViewById(2131362212);
                if (frameLayout2 != null) {
                    View findViewById = inflate.findViewById(2131362771);
                    if (findViewById != null) {
                        ImageView imageView2 = (ImageView) inflate.findViewById(2131362943);
                        if (imageView2 != null) {
                            return new CallFabLayoutBinding((FrameLayout) inflate, frameLayout, imageView, frameLayout2, findViewById, imageView2);
                        }
                        i = 2131362943;
                    } else {
                        i = 2131362771;
                    }
                } else {
                    i = 2131362212;
                }
            } else {
                i = 2131362207;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    @Override // androidx.p061m.AbstractC1286a
    public final FrameLayout getRoot() {
        return this.f24983f;
    }
}
