package com.callapp.contacts.activity.decoration;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/decoration/DefaultMarginItemSpacingDecoration.class */
public class DefaultMarginItemSpacingDecoration extends RecyclerView.AbstractC2636h {
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2636h
    /* renamed from: a */
    public final void mo29937a(Rect rect, View view, RecyclerView recyclerView, RecyclerView.C2654s c2654s) {
        super.mo29937a(rect, view, recyclerView, c2654s);
        rect.set(rect.left, rect.top + (RecyclerView.m40447d(view) == 0 ? view.getContext().getResources().getDimensionPixelOffset(2131165572) : view.getContext().getResources().getDimensionPixelOffset(2131165562)), rect.right, rect.bottom);
    }
}
