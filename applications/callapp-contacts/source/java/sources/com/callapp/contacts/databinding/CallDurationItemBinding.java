package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.p061m.AbstractC1286a;
import com.callapp.contacts.widget.ProfilePictureView;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/CallDurationItemBinding.class */
public final class CallDurationItemBinding implements AbstractC1286a {

    /* renamed from: a */
    public final TextView f24961a;

    /* renamed from: b */
    public final RelativeLayout f24962b;

    /* renamed from: c */
    public final TextView f24963c;

    /* renamed from: d */
    public final TextView f24964d;

    /* renamed from: e */
    public final TextView f24965e;

    /* renamed from: f */
    public final TextView f24966f;

    /* renamed from: g */
    public final TextView f24967g;

    /* renamed from: h */
    public final TextView f24968h;

    /* renamed from: i */
    public final TextView f24969i;

    /* renamed from: j */
    public final TextView f24970j;

    /* renamed from: k */
    public final TextView f24971k;

    /* renamed from: l */
    public final LinearLayout f24972l;

    /* renamed from: m */
    public final TextView f24973m;

    /* renamed from: n */
    public final ProfilePictureView f24974n;

    /* renamed from: o */
    public final View f24975o;

    /* renamed from: p */
    public final LinearLayout f24976p;

    /* renamed from: q */
    private final LinearLayout f24977q;

    private CallDurationItemBinding(LinearLayout linearLayout, TextView textView, RelativeLayout relativeLayout, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, LinearLayout linearLayout2, TextView textView11, ProfilePictureView profilePictureView, View view, LinearLayout linearLayout3) {
        this.f24977q = linearLayout;
        this.f24961a = textView;
        this.f24962b = relativeLayout;
        this.f24963c = textView2;
        this.f24964d = textView3;
        this.f24965e = textView4;
        this.f24966f = textView5;
        this.f24967g = textView6;
        this.f24968h = textView7;
        this.f24969i = textView8;
        this.f24970j = textView9;
        this.f24971k = textView10;
        this.f24972l = linearLayout2;
        this.f24973m = textView11;
        this.f24974n = profilePictureView;
        this.f24975o = view;
        this.f24976p = linearLayout3;
    }

    /* renamed from: a */
    public static CallDurationItemBinding m29073a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
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

    @Override // androidx.p061m.AbstractC1286a
    public final LinearLayout getRoot() {
        return this.f24977q;
    }
}
