package com.callapp.contacts.activity.decoration;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.CallAppApplication;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/decoration/FabSpaceItemDecoration.class */
public class FabSpaceItemDecoration extends RecyclerView.AbstractC2636h {
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2636h
    /* renamed from: a */
    public final void mo29937a(Rect rect, View view, RecyclerView recyclerView, RecyclerView.C2654s c2654s) {
        if (RecyclerView.m40447d(view) == recyclerView.getAdapter().getItemCount() - 1) {
            rect.bottom = CallAppApplication.get().getResources().getDimensionPixelOffset(2131165437) + CallAppApplication.get().getResources().getDimensionPixelOffset(2131165276);
        }
    }
}
