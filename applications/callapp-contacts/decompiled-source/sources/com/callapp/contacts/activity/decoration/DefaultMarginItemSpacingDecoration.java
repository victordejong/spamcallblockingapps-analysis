package com.callapp.contacts.activity.decoration;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/decoration/DefaultMarginItemSpacingDecoration.class */
public class DefaultMarginItemSpacingDecoration extends RecyclerView.h {
    @Override // androidx.recyclerview.widget.RecyclerView.h
    public final void a(Rect rect, View view, RecyclerView recyclerView, RecyclerView.s sVar) {
        super.a(rect, view, recyclerView, sVar);
        rect.set(rect.left, rect.top + (RecyclerView.d(view) == 0 ? view.getContext().getResources().getDimensionPixelOffset(2131165572) : view.getContext().getResources().getDimensionPixelOffset(2131165562)), rect.right, rect.bottom);
    }
}
