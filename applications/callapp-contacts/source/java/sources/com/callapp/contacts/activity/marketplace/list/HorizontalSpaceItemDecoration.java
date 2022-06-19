package com.callapp.contacts.activity.marketplace.list;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/list/HorizontalSpaceItemDecoration.class */
public class HorizontalSpaceItemDecoration extends RecyclerView.AbstractC2636h {

    /* renamed from: a */
    private final int f23606a;

    public HorizontalSpaceItemDecoration(int i) {
        this.f23606a = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2636h
    /* renamed from: a */
    public final void mo29937a(Rect rect, View view, RecyclerView recyclerView, RecyclerView.C2654s c2654s) {
        if (RecyclerView.m40447d(view) == recyclerView.getAdapter().getItemCount() - 1) {
            rect.right = this.f23606a;
        }
        rect.left = this.f23606a;
    }
}
