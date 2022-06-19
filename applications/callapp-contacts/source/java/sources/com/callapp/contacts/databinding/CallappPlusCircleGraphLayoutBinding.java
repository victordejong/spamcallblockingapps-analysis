package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.p061m.AbstractC1286a;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/CallappPlusCircleGraphLayoutBinding.class */
public final class CallappPlusCircleGraphLayoutBinding implements AbstractC1286a {

    /* renamed from: a */
    public final RecyclerView f24999a;

    /* renamed from: b */
    public final RecyclerView f25000b;

    /* renamed from: c */
    public final View f25001c;

    /* renamed from: d */
    private final LinearLayout f25002d;

    private CallappPlusCircleGraphLayoutBinding(LinearLayout linearLayout, RecyclerView recyclerView, RecyclerView recyclerView2, View view) {
        this.f25002d = linearLayout;
        this.f24999a = recyclerView;
        this.f25000b = recyclerView2;
        this.f25001c = view;
    }

    /* renamed from: a */
    public static CallappPlusCircleGraphLayoutBinding m29070a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
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

    @Override // androidx.p061m.AbstractC1286a
    public final LinearLayout getRoot() {
        return this.f25002d;
    }
}
