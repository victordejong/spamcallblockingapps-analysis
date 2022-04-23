package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.m.a;
import com.callapp.contacts.widget.ProfilePictureView;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/CallDurationItemBinding.class */
public final class CallDurationItemBinding implements a {

    /* renamed from: a  reason: collision with root package name */
    public final TextView f14283a;

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f14284b;

    /* renamed from: c  reason: collision with root package name */
    public final TextView f14285c;

    /* renamed from: d  reason: collision with root package name */
    public final TextView f14286d;
    public final TextView e;
    public final TextView f;
    public final TextView g;
    public final TextView h;
    public final TextView i;
    public final TextView j;
    public final TextView k;
    public final LinearLayout l;
    public final TextView m;
    public final ProfilePictureView n;
    public final View o;
    public final LinearLayout p;
    private final LinearLayout q;

    private CallDurationItemBinding(LinearLayout linearLayout, TextView textView, RelativeLayout relativeLayout, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, LinearLayout linearLayout2, TextView textView11, ProfilePictureView profilePictureView, View view, LinearLayout linearLayout3) {
        this.q = linearLayout;
        this.f14283a = textView;
        this.f14284b = relativeLayout;
        this.f14285c = textView2;
        this.f14286d = textView3;
        this.e = textView4;
        this.f = textView5;
        this.g = textView6;
        this.h = textView7;
        this.i = textView8;
        this.j = textView9;
        this.k = textView10;
        this.l = linearLayout2;
        this.m = textView11;
        this.n = profilePictureView;
        this.o = view;
        this.p = linearLayout3;
    }

    public static CallDurationItemBinding a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558511, viewGroup, false);
        TextView textView = (TextView) inflate.findViewById(2131362447);
        int i = 2131362650;
        if (textView != null) {
            RelativeLayout relativeLayout = (RelativeLayout) inflate.findViewById(2131362521);
            if (relativeLayout != null) {
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
                                                    LinearLayout linearLayout = (LinearLayout) inflate.findViewById(2131363203);
                                                    if (linearLayout != null) {
                                                        TextView textView11 = (TextView) inflate.findViewById(2131363373);
                                                        if (textView11 != null) {
                                                            ProfilePictureView profilePictureView = (ProfilePictureView) inflate.findViewById(2131363563);
                                                            if (profilePictureView != null) {
                                                                View findViewById = inflate.findViewById(2131363809);
                                                                if (findViewById != null) {
                                                                    LinearLayout linearLayout2 = (LinearLayout) inflate.findViewById(2131364127);
                                                                    if (linearLayout2 != null) {
                                                                        return new CallDurationItemBinding((LinearLayout) inflate, textView, relativeLayout, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, linearLayout, textView11, profilePictureView, findViewById, linearLayout2);
                                                                    }
                                                                    i = 2131364127;
                                                                } else {
                                                                    i = 2131363809;
                                                                }
                                                            } else {
                                                                i = 2131363563;
                                                            }
                                                        } else {
                                                            i = 2131363373;
                                                        }
                                                    } else {
                                                        i = 2131363203;
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
                }
            } else {
                i = 2131362521;
            }
        } else {
            i = 2131362447;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    @Override // androidx.m.a
    public final LinearLayout getRoot() {
        return this.q;
    }
}
