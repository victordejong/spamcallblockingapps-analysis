package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.p061m.AbstractC1286a;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/ProgressGraphLayoutBinding.class */
public final class ProgressGraphLayoutBinding implements AbstractC1286a {

    /* renamed from: a */
    public final RecyclerView f25090a;

    /* renamed from: b */
    private final LinearLayout f25091b;

    private ProgressGraphLayoutBinding(LinearLayout linearLayout, RecyclerView recyclerView) {
        this.f25091b = linearLayout;
        this.f25090a = recyclerView;
    }

    /* renamed from: a */
    public static ProgressGraphLayoutBinding m29056a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558986, viewGroup, false);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(2131362926);
        if (recyclerView != null) {
            return new ProgressGraphLayoutBinding((LinearLayout) inflate, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(2131362926)));
    }

    @Override // androidx.p061m.AbstractC1286a
    public final LinearLayout getRoot() {
        return this.f25091b;
    }
}
