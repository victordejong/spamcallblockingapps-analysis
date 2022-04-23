package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.m.a;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/ProgressGraphLayoutBinding.class */
public final class ProgressGraphLayoutBinding implements a {

    /* renamed from: a  reason: collision with root package name */
    public final RecyclerView f14347a;

    /* renamed from: b  reason: collision with root package name */
    private final LinearLayout f14348b;

    private ProgressGraphLayoutBinding(LinearLayout linearLayout, RecyclerView recyclerView) {
        this.f14348b = linearLayout;
        this.f14347a = recyclerView;
    }

    public static ProgressGraphLayoutBinding a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558986, viewGroup, false);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(2131362926);
        if (recyclerView != null) {
            return new ProgressGraphLayoutBinding((LinearLayout) inflate, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(2131362926)));
    }

    @Override // androidx.m.a
    public final LinearLayout getRoot() {
        return this.f14348b;
    }
}
