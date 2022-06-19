package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.p061m.AbstractC1286a;
import com.akexorcist.roundcornerprogressbar.RoundCornerProgressBar;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding.class */
public final class ReferAndEarnTrophyViewBinding implements AbstractC1286a {

    /* renamed from: a */
    public final TextView f25130a;

    /* renamed from: b */
    public final TextView f25131b;

    /* renamed from: c */
    public final LinearLayout f25132c;

    /* renamed from: d */
    public final ConstraintLayout f25133d;

    /* renamed from: e */
    public final RoundCornerProgressBar f25134e;

    /* renamed from: f */
    public final RelativeLayout f25135f;

    /* renamed from: g */
    public final ProgressBar f25136g;

    /* renamed from: h */
    private final ConstraintLayout f25137h;

    private ReferAndEarnTrophyViewBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, LinearLayout linearLayout, ConstraintLayout constraintLayout2, RoundCornerProgressBar roundCornerProgressBar, RelativeLayout relativeLayout, ProgressBar progressBar) {
        this.f25137h = constraintLayout;
        this.f25130a = textView;
        this.f25131b = textView2;
        this.f25132c = linearLayout;
        this.f25133d = constraintLayout2;
        this.f25134e = roundCornerProgressBar;
        this.f25135f = relativeLayout;
        this.f25136g = progressBar;
    }

    /* renamed from: a */
    public static ReferAndEarnTrophyViewBinding m29051a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558999, viewGroup, false);
        int i = 2131362666;
        TextView textView = (TextView) inflate.findViewById(2131362666);
        if (textView != null) {
            TextView textView2 = (TextView) inflate.findViewById(2131363527);
            if (textView2 != null) {
                LinearLayout linearLayout = (LinearLayout) inflate.findViewById(2131363528);
                if (linearLayout != null) {
                    ConstraintLayout constraintLayout = (ConstraintLayout) inflate;
                    RoundCornerProgressBar roundCornerProgressBar = (RoundCornerProgressBar) inflate.findViewById(2131363655);
                    if (roundCornerProgressBar != null) {
                        RelativeLayout relativeLayout = (RelativeLayout) inflate.findViewById(2131363656);
                        if (relativeLayout != null) {
                            ProgressBar progressBar = (ProgressBar) inflate.findViewById(2131364221);
                            if (progressBar != null) {
                                return new ReferAndEarnTrophyViewBinding(constraintLayout, textView, textView2, linearLayout, constraintLayout, roundCornerProgressBar, relativeLayout, progressBar);
                            }
                            i = 2131364221;
                        } else {
                            i = 2131363656;
                        }
                    } else {
                        i = 2131363655;
                    }
                } else {
                    i = 2131363528;
                }
            } else {
                i = 2131363527;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    @Override // androidx.p061m.AbstractC1286a
    public final ConstraintLayout getRoot() {
        return this.f25137h;
    }
}
