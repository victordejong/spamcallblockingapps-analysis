package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.m.a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/CallFabLayoutBinding.class */
public final class CallFabLayoutBinding implements a {

    /* renamed from: a  reason: collision with root package name */
    public final FrameLayout f14287a;

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f14288b;

    /* renamed from: c  reason: collision with root package name */
    public final FrameLayout f14289c;

    /* renamed from: d  reason: collision with root package name */
    public final View f14290d;
    public final ImageView e;
    private final FrameLayout f;

    private CallFabLayoutBinding(FrameLayout frameLayout, FrameLayout frameLayout2, ImageView imageView, FrameLayout frameLayout3, View view, ImageView imageView2) {
        this.f = frameLayout;
        this.f14287a = frameLayout2;
        this.f14288b = imageView;
        this.f14289c = frameLayout3;
        this.f14290d = view;
        this.e = imageView2;
    }

    public static CallFabLayoutBinding a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
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

    @Override // androidx.m.a
    public final FrameLayout getRoot() {
        return this.f;
    }
}
