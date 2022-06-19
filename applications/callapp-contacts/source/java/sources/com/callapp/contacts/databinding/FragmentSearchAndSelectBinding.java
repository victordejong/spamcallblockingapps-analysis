package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.p061m.AbstractC1286a;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/FragmentSearchAndSelectBinding.class */
public final class FragmentSearchAndSelectBinding implements AbstractC1286a {

    /* renamed from: a */
    public final FrameLayout f25040a;

    /* renamed from: b */
    public final FrameLayout f25041b;

    /* renamed from: c */
    public final RecyclerView f25042c;

    /* renamed from: d */
    public final ViewStub f25043d;

    /* renamed from: e */
    public final ProgressBar f25044e;

    /* renamed from: f */
    public final FrameLayout f25045f;

    /* renamed from: g */
    public final TextView f25046g;

    /* renamed from: h */
    private final ConstraintLayout f25047h;

    private FragmentSearchAndSelectBinding(ConstraintLayout constraintLayout, FrameLayout frameLayout, FrameLayout frameLayout2, RecyclerView recyclerView, ViewStub viewStub, ProgressBar progressBar, FrameLayout frameLayout3, TextView textView) {
        this.f25047h = constraintLayout;
        this.f25040a = frameLayout;
        this.f25041b = frameLayout2;
        this.f25042c = recyclerView;
        this.f25043d = viewStub;
        this.f25044e = progressBar;
        this.f25045f = frameLayout3;
        this.f25046g = textView;
    }

    /* renamed from: a */
    public static FragmentSearchAndSelectBinding m29064a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
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

    @Override // androidx.p061m.AbstractC1286a
    public final ConstraintLayout getRoot() {
        return this.f25047h;
    }
}
