package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.m.a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/CallTimelineLayoutBinding.class */
public final class CallTimelineLayoutBinding implements a {

    /* renamed from: a  reason: collision with root package name */
    public final ImageView f14291a;

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f14292b;

    /* renamed from: c  reason: collision with root package name */
    public final TextView f14293c;

    /* renamed from: d  reason: collision with root package name */
    public final TextView f14294d;
    public final GraphsHeaderLayoutBinding e;
    public final ConstraintLayout f;
    public final TextView g;
    public final ImageView h;
    public final ImageView i;
    public final ImageView j;
    public final ConstraintLayout k;
    public final TextView l;
    public final CallsTimelineItemBinding m;
    public final CallsTimelineItemBinding n;
    private final LinearLayout o;

    private CallTimelineLayoutBinding(LinearLayout linearLayout, ImageView imageView, ImageView imageView2, TextView textView, TextView textView2, GraphsHeaderLayoutBinding graphsHeaderLayoutBinding, ConstraintLayout constraintLayout, TextView textView3, ImageView imageView3, ImageView imageView4, ImageView imageView5, ConstraintLayout constraintLayout2, TextView textView4, CallsTimelineItemBinding callsTimelineItemBinding, CallsTimelineItemBinding callsTimelineItemBinding2) {
        this.o = linearLayout;
        this.f14291a = imageView;
        this.f14292b = imageView2;
        this.f14293c = textView;
        this.f14294d = textView2;
        this.e = graphsHeaderLayoutBinding;
        this.f = constraintLayout;
        this.g = textView3;
        this.h = imageView3;
        this.i = imageView4;
        this.j = imageView5;
        this.k = constraintLayout2;
        this.l = textView4;
        this.m = callsTimelineItemBinding;
        this.n = callsTimelineItemBinding2;
    }

    public static CallTimelineLayoutBinding a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
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
                            GraphsHeaderLayoutBinding a2 = GraphsHeaderLayoutBinding.a(findViewById);
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
                                                            CallsTimelineItemBinding a3 = CallsTimelineItemBinding.a(findViewById2);
                                                            View findViewById3 = inflate.findViewById(2131363577);
                                                            if (findViewById3 != null) {
                                                                return new CallTimelineLayoutBinding((LinearLayout) inflate, imageView, imageView2, textView, textView2, a2, constraintLayout, textView3, imageView3, imageView4, imageView5, constraintLayout2, textView4, a3, CallsTimelineItemBinding.a(findViewById3));
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

    @Override // androidx.m.a
    public final LinearLayout getRoot() {
        return this.o;
    }
}
