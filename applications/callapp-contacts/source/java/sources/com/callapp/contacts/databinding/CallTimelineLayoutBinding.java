package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.p061m.AbstractC1286a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/CallTimelineLayoutBinding.class */
public final class CallTimelineLayoutBinding implements AbstractC1286a {

    /* renamed from: a */
    public final ImageView f24984a;

    /* renamed from: b */
    public final ImageView f24985b;

    /* renamed from: c */
    public final TextView f24986c;

    /* renamed from: d */
    public final TextView f24987d;

    /* renamed from: e */
    public final GraphsHeaderLayoutBinding f24988e;

    /* renamed from: f */
    public final ConstraintLayout f24989f;

    /* renamed from: g */
    public final TextView f24990g;

    /* renamed from: h */
    public final ImageView f24991h;

    /* renamed from: i */
    public final ImageView f24992i;

    /* renamed from: j */
    public final ImageView f24993j;

    /* renamed from: k */
    public final ConstraintLayout f24994k;

    /* renamed from: l */
    public final TextView f24995l;

    /* renamed from: m */
    public final CallsTimelineItemBinding f24996m;

    /* renamed from: n */
    public final CallsTimelineItemBinding f24997n;

    /* renamed from: o */
    private final LinearLayout f24998o;

    private CallTimelineLayoutBinding(LinearLayout linearLayout, ImageView imageView, ImageView imageView2, TextView textView, TextView textView2, GraphsHeaderLayoutBinding graphsHeaderLayoutBinding, ConstraintLayout constraintLayout, TextView textView3, ImageView imageView3, ImageView imageView4, ImageView imageView5, ConstraintLayout constraintLayout2, TextView textView4, CallsTimelineItemBinding callsTimelineItemBinding, CallsTimelineItemBinding callsTimelineItemBinding2) {
        this.f24998o = linearLayout;
        this.f24984a = imageView;
        this.f24985b = imageView2;
        this.f24986c = textView;
        this.f24987d = textView2;
        this.f24988e = graphsHeaderLayoutBinding;
        this.f24989f = constraintLayout;
        this.f24990g = textView3;
        this.f24991h = imageView3;
        this.f24992i = imageView4;
        this.f24993j = imageView5;
        this.f24994k = constraintLayout2;
        this.f24995l = textView4;
        this.f24996m = callsTimelineItemBinding;
        this.f24997n = callsTimelineItemBinding2;
    }

    /* renamed from: a */
    public static CallTimelineLayoutBinding m29071a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558515, viewGroup, false);
        int i = 2131362531;
        ImageView imageView = (ImageView) inflate.findViewById(2131362531);
        if (imageView != null) {
            ImageView imageView2 = (ImageView) inflate.findViewById(2131362532);
            if (imageView2 != null) {
                TextView textView = (TextView) inflate.findViewById(2131362533);
                if (textView != null) {
                    TextView textView2 = (TextView) inflate.findViewById(2131362534);
                    if (textView2 != null) {
                        View findViewById = inflate.findViewById(2131363068);
                        if (findViewById != null) {
                            GraphsHeaderLayoutBinding m29063a = GraphsHeaderLayoutBinding.m29063a(findViewById);
                            ConstraintLayout constraintLayout = (ConstraintLayout) inflate.findViewById(2131363071);
                            if (constraintLayout != null) {
                                TextView textView3 = (TextView) inflate.findViewById(2131363073);
                                if (textView3 != null) {
                                    ImageView imageView3 = (ImageView) inflate.findViewById(2131363224);
                                    if (imageView3 != null) {
                                        ImageView imageView4 = (ImageView) inflate.findViewById(2131363367);
                                        if (imageView4 != null) {
                                            ImageView imageView5 = (ImageView) inflate.findViewById(2131363368);
                                            if (imageView5 != null) {
                                                ConstraintLayout constraintLayout2 = (ConstraintLayout) inflate.findViewById(2131363429);
                                                if (constraintLayout2 != null) {
                                                    TextView textView4 = (TextView) inflate.findViewById(2131363430);
                                                    if (textView4 != null) {
                                                        View findViewById2 = inflate.findViewById(2131363576);
                                                        if (findViewById2 != null) {
                                                            CallsTimelineItemBinding m29068a = CallsTimelineItemBinding.m29068a(findViewById2);
                                                            View findViewById3 = inflate.findViewById(2131363577);
                                                            if (findViewById3 != null) {
                                                                return new CallTimelineLayoutBinding((LinearLayout) inflate, imageView, imageView2, textView, textView2, m29063a, constraintLayout, textView3, imageView3, imageView4, imageView5, constraintLayout2, textView4, m29068a, CallsTimelineItemBinding.m29068a(findViewById3));
                                                            }
                                                            i = 2131363577;
                                                        } else {
                                                            i = 2131363576;
                                                        }
                                                    } else {
                                                        i = 2131363430;
                                                    }
                                                } else {
                                                    i = 2131363429;
                                                }
                                            } else {
                                                i = 2131363368;
                                            }
                                        } else {
                                            i = 2131363367;
                                        }
                                    } else {
                                        i = 2131363224;
                                    }
                                } else {
                                    i = 2131363073;
                                }
                            } else {
                                i = 2131363071;
                            }
                        } else {
                            i = 2131363068;
                        }
                    } else {
                        i = 2131362534;
                    }
                } else {
                    i = 2131362533;
                }
            } else {
                i = 2131362532;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    @Override // androidx.p061m.AbstractC1286a
    public final LinearLayout getRoot() {
        return this.f24998o;
    }
}
