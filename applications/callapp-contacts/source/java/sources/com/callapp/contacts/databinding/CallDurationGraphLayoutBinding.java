package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.p061m.AbstractC1286a;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/CallDurationGraphLayoutBinding.class */
public final class CallDurationGraphLayoutBinding implements AbstractC1286a {

    /* renamed from: a */
    public final RecyclerView f24957a;

    /* renamed from: b */
    public final RecyclerView f24958b;

    /* renamed from: c */
    public final View f24959c;

    /* renamed from: d */
    private final LinearLayout f24960d;

    private CallDurationGraphLayoutBinding(LinearLayout linearLayout, RecyclerView recyclerView, RecyclerView recyclerView2, View view) {
        this.f24960d = linearLayout;
        this.f24957a = recyclerView;
        this.f24958b = recyclerView2;
        this.f24959c = view;
    }

    /* renamed from: a */
    public static CallDurationGraphLayoutBinding m29074a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558510, viewGroup, false);
        int i = 2131362220;
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(2131362220);
        if (recyclerView != null) {
            RecyclerView recyclerView2 = (RecyclerView) inflate.findViewById(2131362221);
            if (recyclerView2 != null) {
                View findViewById = inflate.findViewById(2131362611);
                if (findViewById != null) {
                    return new CallDurationGraphLayoutBinding((LinearLayout) inflate, recyclerView, recyclerView2, findViewById);
                }
                i = 2131362611;
            } else {
                i = 2131362221;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    @Override // androidx.p061m.AbstractC1286a
    public final LinearLayout getRoot() {
        return this.f24960d;
    }
}
