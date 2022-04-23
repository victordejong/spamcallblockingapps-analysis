package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.m.a;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/FragmentSearchAndSelectBinding.class */
public final class FragmentSearchAndSelectBinding implements a {

    /* renamed from: a  reason: collision with root package name */
    public final FrameLayout f14315a;

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f14316b;

    /* renamed from: c  reason: collision with root package name */
    public final RecyclerView f14317c;

    /* renamed from: d  reason: collision with root package name */
    public final ViewStub f14318d;
    public final ProgressBar e;
    public final FrameLayout f;
    public final TextView g;
    private final ConstraintLayout h;

    private FragmentSearchAndSelectBinding(ConstraintLayout constraintLayout, FrameLayout frameLayout, FrameLayout frameLayout2, RecyclerView recyclerView, ViewStub viewStub, ProgressBar progressBar, FrameLayout frameLayout3, TextView textView) {
        this.h = constraintLayout;
        this.f14315a = frameLayout;
        this.f14316b = frameLayout2;
        this.f14317c = recyclerView;
        this.f14318d = viewStub;
        this.e = progressBar;
        this.f = frameLayout3;
        this.g = textView;
    }

    public static FragmentSearchAndSelectBinding a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558673, viewGroup, false);
        int i = 2131362119;
        FrameLayout frameLayout = (FrameLayout) inflate.findViewById(2131362119);
        if (frameLayout != null) {
            FrameLayout frameLayout2 = (FrameLayout) inflate.findViewById(2131362946);
            if (frameLayout2 != null) {
                RecyclerView recyclerView = (RecyclerView) inflate.findViewById(2131363232);
                if (recyclerView != null) {
                    ViewStub viewStub = (ViewStub) inflate.findViewById(2131363533);
                    if (viewStub != null) {
                        ProgressBar progressBar = (ProgressBar) inflate.findViewById(2131363575);
                        if (progressBar != null) {
                            FrameLayout frameLayout3 = (FrameLayout) inflate.findViewById(2131363758);
                            if (frameLayout3 != null) {
                                TextView textView = (TextView) inflate.findViewById(2131363798);
                                if (textView != null) {
                                    return new FragmentSearchAndSelectBinding((ConstraintLayout) inflate, frameLayout, frameLayout2, recyclerView, viewStub, progressBar, frameLayout3, textView);
                                }
                                i = 2131363798;
                            } else {
                                i = 2131363758;
                            }
                        } else {
                            i = 2131363575;
                        }
                    } else {
                        i = 2131363533;
                    }
                } else {
                    i = 2131363232;
                }
            } else {
                i = 2131362946;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    @Override // androidx.m.a
    public final ConstraintLayout getRoot() {
        return this.h;
    }
}
