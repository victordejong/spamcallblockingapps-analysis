package com.callapp.contacts.activity.marketplace.list;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/list/HorizontalSpaceItemDecoration.class */
public class HorizontalSpaceItemDecoration extends RecyclerView.h {

    /* renamed from: a  reason: collision with root package name */
    private final int f13272a;

    public HorizontalSpaceItemDecoration(int i) {
        this.f13272a = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public final void a(Rect rect, View view, RecyclerView recyclerView, RecyclerView.s sVar) {
        if (RecyclerView.d(view) == recyclerView.getAdapter().getItemCount() - 1) {
            rect.right = this.f13272a;
        }
        rect.left = this.f13272a;
    }
}
