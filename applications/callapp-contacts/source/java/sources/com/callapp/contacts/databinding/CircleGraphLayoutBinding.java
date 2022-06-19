package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.p061m.AbstractC1286a;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/CircleGraphLayoutBinding.class */
public final class CircleGraphLayoutBinding implements AbstractC1286a {

    /* renamed from: a */
    public final RecyclerView f25023a;

    /* renamed from: b */
    private final RecyclerView f25024b;

    private CircleGraphLayoutBinding(RecyclerView recyclerView, RecyclerView recyclerView2) {
        this.f25024b = recyclerView;
        this.f25023a = recyclerView2;
    }

    /* renamed from: a */
    public static CircleGraphLayoutBinding m29066a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558552, viewGroup, false);
        Objects.requireNonNull(inflate, "rootView");
        RecyclerView recyclerView = (RecyclerView) inflate;
        return new CircleGraphLayoutBinding(recyclerView, recyclerView);
    }

    @Override // androidx.p061m.AbstractC1286a
    public final RecyclerView getRoot() {
        return this.f25024b;
    }
}
