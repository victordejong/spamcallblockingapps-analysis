package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.m.a;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/CallDurationGraphLayoutBinding.class */
public final class CallDurationGraphLayoutBinding implements a {

    /* renamed from: a  reason: collision with root package name */
    public final RecyclerView f14279a;

    /* renamed from: b  reason: collision with root package name */
    public final RecyclerView f14280b;

    /* renamed from: c  reason: collision with root package name */
    public final View f14281c;

    /* renamed from: d  reason: collision with root package name */
    private final LinearLayout f14282d;

    private CallDurationGraphLayoutBinding(LinearLayout linearLayout, RecyclerView recyclerView, RecyclerView recyclerView2, View view) {
        this.f14282d = linearLayout;
        this.f14279a = recyclerView;
        this.f14280b = recyclerView2;
        this.f14281c = view;
    }

    public static CallDurationGraphLayoutBinding a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
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

    @Override // androidx.m.a
    public final LinearLayout getRoot() {
        return this.f14282d;
    }
}
