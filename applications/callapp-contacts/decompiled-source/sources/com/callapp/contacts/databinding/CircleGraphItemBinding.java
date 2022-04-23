package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.m.a;
import com.callapp.contacts.activity.analytics.graph.DecoView;
import com.callapp.contacts.widget.ProfilePictureView;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/CircleGraphItemBinding.class */
public final class CircleGraphItemBinding implements a {

    /* renamed from: a  reason: collision with root package name */
    public final DecoView f14305a;

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f14306b;

    /* renamed from: c  reason: collision with root package name */
    public final TextView f14307c;

    /* renamed from: d  reason: collision with root package name */
    public final TextView f14308d;
    public final ImageView e;
    public final ConstraintLayout f;
    public final ProfilePictureView g;
    public final TextView h;
    public final FrameLayout i;
    private final ConstraintLayout j;

    private CircleGraphItemBinding(ConstraintLayout constraintLayout, DecoView decoView, ImageView imageView, TextView textView, TextView textView2, ImageView imageView2, ConstraintLayout constraintLayout2, ProfilePictureView profilePictureView, TextView textView3, FrameLayout frameLayout) {
        this.j = constraintLayout;
        this.f14305a = decoView;
        this.f14306b = imageView;
        this.f14307c = textView;
        this.f14308d = textView2;
        this.e = imageView2;
        this.f = constraintLayout2;
        this.g = profilePictureView;
        this.h = textView3;
        this.i = frameLayout;
    }

    public static CircleGraphItemBinding a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558551, viewGroup, false);
        int i = 2131362353;
        DecoView decoView = (DecoView) inflate.findViewById(2131362353);
        if (decoView != null) {
            ImageView imageView = (ImageView) inflate.findViewById(2131362354);
            if (imageView != null) {
                TextView textView = (TextView) inflate.findViewById(2131362355);
                if (textView != null) {
                    TextView textView2 = (TextView) inflate.findViewById(2131362356);
                    if (textView2 != null) {
                        ImageView imageView2 = (ImageView) inflate.findViewById(2131362357);
                        if (imageView2 != null) {
                            ConstraintLayout constraintLayout = (ConstraintLayout) inflate;
                            ProfilePictureView profilePictureView = (ProfilePictureView) inflate.findViewById(2131362359);
                            if (profilePictureView != null) {
                                TextView textView3 = (TextView) inflate.findViewById(2131362360);
                                if (textView3 != null) {
                                    FrameLayout frameLayout = (FrameLayout) inflate.findViewById(2131362501);
                                    if (frameLayout != null) {
                                        return new CircleGraphItemBinding(constraintLayout, decoView, imageView, textView, textView2, imageView2, constraintLayout, profilePictureView, textView3, frameLayout);
                                    }
                                    i = 2131362501;
                                } else {
                                    i = 2131362360;
                                }
                            } else {
                                i = 2131362359;
                            }
                        } else {
                            i = 2131362357;
                        }
                    } else {
                        i = 2131362356;
                    }
                } else {
                    i = 2131362355;
                }
            } else {
                i = 2131362354;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    @Override // androidx.m.a
    public final ConstraintLayout getRoot() {
        return this.j;
    }
}
