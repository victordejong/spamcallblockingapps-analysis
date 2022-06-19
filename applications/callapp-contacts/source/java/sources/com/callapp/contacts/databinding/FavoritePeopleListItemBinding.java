package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.p061m.AbstractC1286a;
import com.akexorcist.roundcornerprogressbar.RoundCornerProgressBar;
import com.callapp.contacts.widget.ProfilePictureView;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/FavoritePeopleListItemBinding.class */
public final class FavoritePeopleListItemBinding implements AbstractC1286a {

    /* renamed from: a */
    public final TextView f25025a;

    /* renamed from: b */
    public final TextView f25026b;

    /* renamed from: c */
    public final TextView f25027c;

    /* renamed from: d */
    public final TextView f25028d;

    /* renamed from: e */
    public final TextView f25029e;

    /* renamed from: f */
    public final TextView f25030f;

    /* renamed from: g */
    public final TextView f25031g;

    /* renamed from: h */
    public final TextView f25032h;

    /* renamed from: i */
    public final TextView f25033i;

    /* renamed from: j */
    public final TextView f25034j;

    /* renamed from: k */
    public final ProfilePictureView f25035k;

    /* renamed from: l */
    public final RoundCornerProgressBar f25036l;

    /* renamed from: m */
    public final View f25037m;

    /* renamed from: n */
    public final ConstraintLayout f25038n;

    /* renamed from: o */
    private final ConstraintLayout f25039o;

    private FavoritePeopleListItemBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, ProfilePictureView profilePictureView, RoundCornerProgressBar roundCornerProgressBar, View view, ConstraintLayout constraintLayout2) {
        this.f25039o = constraintLayout;
        this.f25025a = textView;
        this.f25026b = textView2;
        this.f25027c = textView3;
        this.f25028d = textView4;
        this.f25029e = textView5;
        this.f25030f = textView6;
        this.f25031g = textView7;
        this.f25032h = textView8;
        this.f25033i = textView9;
        this.f25034j = textView10;
        this.f25035k = profilePictureView;
        this.f25036l = roundCornerProgressBar;
        this.f25037m = view;
        this.f25038n = constraintLayout2;
    }

    /* renamed from: a */
    public static FavoritePeopleListItemBinding m29065a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
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

    @Override // androidx.p061m.AbstractC1286a
    public final ConstraintLayout getRoot() {
        return this.f25039o;
    }
}
