package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.m.a;
import com.akexorcist.roundcornerprogressbar.RoundCornerProgressBar;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding.class */
public final class ReferAndEarnTrophyViewBinding implements a {

    /* renamed from: a  reason: collision with root package name */
    public final TextView f14364a;

    /* renamed from: b  reason: collision with root package name */
    public final TextView f14365b;

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f14366c;

    /* renamed from: d  reason: collision with root package name */
    public final ConstraintLayout f14367d;
    public final RoundCornerProgressBar e;
    public final RelativeLayout f;
    public final ProgressBar g;
    private final ConstraintLayout h;

    private ReferAndEarnTrophyViewBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, LinearLayout linearLayout, ConstraintLayout constraintLayout2, RoundCornerProgressBar roundCornerProgressBar, RelativeLayout relativeLayout, ProgressBar progressBar) {
        this.h = constraintLayout;
        this.f14364a = textView;
        this.f14365b = textView2;
        this.f14366c = linearLayout;
        this.f14367d = constraintLayout2;
        this.e = roundCornerProgressBar;
        this.f = relativeLayout;
        this.g = progressBar;
    }

    public static ReferAndEarnTrophyViewBinding a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
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

    @Override // androidx.m.a
    public final ConstraintLayout getRoot() {
        return this.h;
    }
}
