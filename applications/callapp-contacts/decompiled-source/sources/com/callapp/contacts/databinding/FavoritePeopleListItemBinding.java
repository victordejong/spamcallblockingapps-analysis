package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.m.a;
import com.akexorcist.roundcornerprogressbar.RoundCornerProgressBar;
import com.callapp.contacts.widget.ProfilePictureView;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/FavoritePeopleListItemBinding.class */
public final class FavoritePeopleListItemBinding implements a {

    /* renamed from: a  reason: collision with root package name */
    public final TextView f14311a;

    /* renamed from: b  reason: collision with root package name */
    public final TextView f14312b;

    /* renamed from: c  reason: collision with root package name */
    public final TextView f14313c;

    /* renamed from: d  reason: collision with root package name */
    public final TextView f14314d;
    public final TextView e;
    public final TextView f;
    public final TextView g;
    public final TextView h;
    public final TextView i;
    public final TextView j;
    public final ProfilePictureView k;
    public final RoundCornerProgressBar l;
    public final View m;
    public final ConstraintLayout n;
    private final ConstraintLayout o;

    private FavoritePeopleListItemBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, ProfilePictureView profilePictureView, RoundCornerProgressBar roundCornerProgressBar, View view, ConstraintLayout constraintLayout2) {
        this.o = constraintLayout;
        this.f14311a = textView;
        this.f14312b = textView2;
        this.f14313c = textView3;
        this.f14314d = textView4;
        this.e = textView5;
        this.f = textView6;
        this.g = textView7;
        this.h = textView8;
        this.i = textView9;
        this.j = textView10;
        this.k = profilePictureView;
        this.l = roundCornerProgressBar;
        this.m = view;
        this.n = constraintLayout2;
    }

    public static FavoritePeopleListItemBinding a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558662, viewGroup, false);
        int i = 2131362447;
        TextView textView = (TextView) inflate.findViewById(2131362447);
        if (textView != null) {
            TextView textView2 = (TextView) inflate.findViewById(2131362650);
            if (textView2 != null) {
                TextView textView3 = (TextView) inflate.findViewById(2131362651);
                if (textView3 != null) {
                    TextView textView4 = (TextView) inflate.findViewById(2131362652);
                    if (textView4 != null) {
                        TextView textView5 = (TextView) inflate.findViewById(2131362653);
                        if (textView5 != null) {
                            TextView textView6 = (TextView) inflate.findViewById(2131362655);
                            if (textView6 != null) {
                                TextView textView7 = (TextView) inflate.findViewById(2131362656);
                                if (textView7 != null) {
                                    TextView textView8 = (TextView) inflate.findViewById(2131362657);
                                    if (textView8 != null) {
                                        TextView textView9 = (TextView) inflate.findViewById(2131362658);
                                        if (textView9 != null) {
                                            TextView textView10 = (TextView) inflate.findViewById(2131363186);
                                            if (textView10 != null) {
                                                ProfilePictureView profilePictureView = (ProfilePictureView) inflate.findViewById(2131363564);
                                                if (profilePictureView != null) {
                                                    RoundCornerProgressBar roundCornerProgressBar = (RoundCornerProgressBar) inflate.findViewById(2131363575);
                                                    if (roundCornerProgressBar != null) {
                                                        View findViewById = inflate.findViewById(2131363809);
                                                        if (findViewById != null) {
                                                            ConstraintLayout constraintLayout = (ConstraintLayout) inflate.findViewById(2131364118);
                                                            if (constraintLayout != null) {
                                                                return new FavoritePeopleListItemBinding((ConstraintLayout) inflate, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, profilePictureView, roundCornerProgressBar, findViewById, constraintLayout);
                                                            }
                                                            i = 2131364118;
                                                        } else {
                                                            i = 2131363809;
                                                        }
                                                    } else {
                                                        i = 2131363575;
                                                    }
                                                } else {
                                                    i = 2131363564;
                                                }
                                            } else {
                                                i = 2131363186;
                                            }
                                        } else {
                                            i = 2131362658;
                                        }
                                    } else {
                                        i = 2131362657;
                                    }
                                } else {
                                    i = 2131362656;
                                }
                            } else {
                                i = 2131362655;
                            }
                        } else {
                            i = 2131362653;
                        }
                    } else {
                        i = 2131362652;
                    }
                } else {
                    i = 2131362651;
                }
            } else {
                i = 2131362650;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    @Override // androidx.m.a
    public final ConstraintLayout getRoot() {
        return this.o;
    }
}
