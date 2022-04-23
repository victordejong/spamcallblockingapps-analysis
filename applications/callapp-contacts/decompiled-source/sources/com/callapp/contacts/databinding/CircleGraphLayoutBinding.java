package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.m.a;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/CircleGraphLayoutBinding.class */
public final class CircleGraphLayoutBinding implements a {

    /* renamed from: a  reason: collision with root package name */
    public final RecyclerView f14309a;

    /* renamed from: b  reason: collision with root package name */
    private final RecyclerView f14310b;

    private CircleGraphLayoutBinding(RecyclerView recyclerView, RecyclerView recyclerView2) {
        this.f14310b = recyclerView;
        this.f14309a = recyclerView2;
    }

    public static CircleGraphLayoutBinding a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558552, viewGroup, false);
        Objects.requireNonNull(inflate, "rootView");
        RecyclerView recyclerView = (RecyclerView) inflate;
        return new CircleGraphLayoutBinding(recyclerView, recyclerView);
    }

    @Override // androidx.m.a
    public final RecyclerView getRoot() {
        return this.f14310b;
    }
}
