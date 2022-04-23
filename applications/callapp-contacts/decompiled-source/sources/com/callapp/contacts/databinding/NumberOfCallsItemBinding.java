package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.m.a;
import com.akexorcist.roundcornerprogressbar.RoundCornerProgressBar;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/NumberOfCallsItemBinding.class */
public final class NumberOfCallsItemBinding implements a {

    /* renamed from: a  reason: collision with root package name */
    public final TextView f14343a;

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f14344b;

    /* renamed from: c  reason: collision with root package name */
    public final TextView f14345c;

    /* renamed from: d  reason: collision with root package name */
    public final TextView f14346d;
    public final RelativeLayout e;
    public final RoundCornerProgressBar f;
    public final View g;
    private final RelativeLayout h;

    private NumberOfCallsItemBinding(RelativeLayout relativeLayout, TextView textView, ImageView imageView, TextView textView2, TextView textView3, RelativeLayout relativeLayout2, RoundCornerProgressBar roundCornerProgressBar, View view) {
        this.h = relativeLayout;
        this.f14343a = textView;
        this.f14344b = imageView;
        this.f14345c = textView2;
        this.f14346d = textView3;
        this.e = relativeLayout2;
        this.f = roundCornerProgressBar;
        this.g = view;
    }

    public static NumberOfCallsItemBinding a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558963, viewGroup, false);
        int i = 2131361835;
        TextView textView = (TextView) inflate.findViewById(2131361835);
        if (textView != null) {
            ImageView imageView = (ImageView) inflate.findViewById(2131362022);
            if (imageView != null) {
                TextView textView2 = (TextView) inflate.findViewById(2131362332);
                if (textView2 != null) {
                    TextView textView3 = (TextView) inflate.findViewById(2131363396);
                    if (textView3 != null) {
                        RelativeLayout relativeLayout = (RelativeLayout) inflate;
                        RoundCornerProgressBar roundCornerProgressBar = (RoundCornerProgressBar) inflate.findViewById(2131363575);
                        if (roundCornerProgressBar != null) {
                            View findViewById = inflate.findViewById(2131363808);
                            if (findViewById != null) {
                                return new NumberOfCallsItemBinding(relativeLayout, textView, imageView, textView2, textView3, relativeLayout, roundCornerProgressBar, findViewById);
                            }
                            i = 2131363808;
                        } else {
                            i = 2131363575;
                        }
                    } else {
                        i = 2131363396;
                    }
                } else {
                    i = 2131362332;
                }
            } else {
                i = 2131362022;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    @Override // androidx.m.a
    public final RelativeLayout getRoot() {
        return this.h;
    }
}
