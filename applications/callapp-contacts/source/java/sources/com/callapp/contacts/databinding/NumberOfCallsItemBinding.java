package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.p061m.AbstractC1286a;
import com.akexorcist.roundcornerprogressbar.RoundCornerProgressBar;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/NumberOfCallsItemBinding.class */
public final class NumberOfCallsItemBinding implements AbstractC1286a {

    /* renamed from: a */
    public final TextView f25082a;

    /* renamed from: b */
    public final ImageView f25083b;

    /* renamed from: c */
    public final TextView f25084c;

    /* renamed from: d */
    public final TextView f25085d;

    /* renamed from: e */
    public final RelativeLayout f25086e;

    /* renamed from: f */
    public final RoundCornerProgressBar f25087f;

    /* renamed from: g */
    public final View f25088g;

    /* renamed from: h */
    private final RelativeLayout f25089h;

    private NumberOfCallsItemBinding(RelativeLayout relativeLayout, TextView textView, ImageView imageView, TextView textView2, TextView textView3, RelativeLayout relativeLayout2, RoundCornerProgressBar roundCornerProgressBar, View view) {
        this.f25089h = relativeLayout;
        this.f25082a = textView;
        this.f25083b = imageView;
        this.f25084c = textView2;
        this.f25085d = textView3;
        this.f25086e = relativeLayout2;
        this.f25087f = roundCornerProgressBar;
        this.f25088g = view;
    }

    /* renamed from: a */
    public static NumberOfCallsItemBinding m29057a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
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

    @Override // androidx.p061m.AbstractC1286a
    public final RelativeLayout getRoot() {
        return this.f25089h;
    }
}
