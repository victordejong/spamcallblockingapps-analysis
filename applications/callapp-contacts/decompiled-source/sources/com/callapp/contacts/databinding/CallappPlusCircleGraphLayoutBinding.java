package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.m.a;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/CallappPlusCircleGraphLayoutBinding.class */
public final class CallappPlusCircleGraphLayoutBinding implements a {

    /* renamed from: a  reason: collision with root package name */
    public final RecyclerView f14295a;

    /* renamed from: b  reason: collision with root package name */
    public final RecyclerView f14296b;

    /* renamed from: c  reason: collision with root package name */
    public final View f14297c;

    /* renamed from: d  reason: collision with root package name */
    private final LinearLayout f14298d;

    private CallappPlusCircleGraphLayoutBinding(LinearLayout linearLayout, RecyclerView recyclerView, RecyclerView recyclerView2, View view) {
        this.f14298d = linearLayout;
        this.f14295a = recyclerView;
        this.f14296b = recyclerView2;
        this.f14297c = view;
    }

    public static CallappPlusCircleGraphLayoutBinding a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558518, viewGroup, false);
        int i = 2131362199;
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(2131362199);
        if (recyclerView != null) {
            RecyclerView recyclerView2 = (RecyclerView) inflate.findViewById(2131362200);
            if (recyclerView2 != null) {
                View findViewById = inflate.findViewById(2131362611);
                if (findViewById != null) {
                    return new CallappPlusCircleGraphLayoutBinding((LinearLayout) inflate, recyclerView, recyclerView2, findViewById);
                }
                i = 2131362611;
            } else {
                i = 2131362200;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    @Override // androidx.m.a
    public final LinearLayout getRoot() {
        return this.f14298d;
    }
}
