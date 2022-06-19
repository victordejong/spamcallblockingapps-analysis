package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.p061m.AbstractC1286a;
import com.callapp.contacts.activity.analytics.graph.DecoView;
import com.callapp.contacts.widget.ProfilePictureView;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/CircleGraphItemBinding.class */
public final class CircleGraphItemBinding implements AbstractC1286a {

    /* renamed from: a */
    public final DecoView f25013a;

    /* renamed from: b */
    public final ImageView f25014b;

    /* renamed from: c */
    public final TextView f25015c;

    /* renamed from: d */
    public final TextView f25016d;

    /* renamed from: e */
    public final ImageView f25017e;

    /* renamed from: f */
    public final ConstraintLayout f25018f;

    /* renamed from: g */
    public final ProfilePictureView f25019g;

    /* renamed from: h */
    public final TextView f25020h;

    /* renamed from: i */
    public final FrameLayout f25021i;

    /* renamed from: j */
    private final ConstraintLayout f25022j;

    private CircleGraphItemBinding(ConstraintLayout constraintLayout, DecoView decoView, ImageView imageView, TextView textView, TextView textView2, ImageView imageView2, ConstraintLayout constraintLayout2, ProfilePictureView profilePictureView, TextView textView3, FrameLayout frameLayout) {
        this.f25022j = constraintLayout;
        this.f25013a = decoView;
        this.f25014b = imageView;
        this.f25015c = textView;
        this.f25016d = textView2;
        this.f25017e = imageView2;
        this.f25018f = constraintLayout2;
        this.f25019g = profilePictureView;
        this.f25020h = textView3;
        this.f25021i = frameLayout;
    }

    /* renamed from: a */
    public static CircleGraphItemBinding m29067a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
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

    @Override // androidx.p061m.AbstractC1286a
    public final ConstraintLayout getRoot() {
        return this.f25022j;
    }
}
