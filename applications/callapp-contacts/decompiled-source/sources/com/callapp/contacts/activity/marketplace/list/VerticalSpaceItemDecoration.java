package com.callapp.contacts.activity.marketplace.list;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/list/VerticalSpaceItemDecoration.class */
public class VerticalSpaceItemDecoration extends RecyclerView.h {

    /* renamed from: a  reason: collision with root package name */
    private final int f13289a;

    public VerticalSpaceItemDecoration(int i) {
        this.f13289a = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public final void a(Rect rect, View view, RecyclerView recyclerView, RecyclerView.s sVar) {
        rect.top = this.f13289a;
        if (RecyclerView.d(view) == recyclerView.getAdapter().getItemCount() - 1) {
            rect.bottom = this.f13289a;
        }
    }
}
