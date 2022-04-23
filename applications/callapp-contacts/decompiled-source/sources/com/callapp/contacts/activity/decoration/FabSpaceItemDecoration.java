package com.callapp.contacts.activity.decoration;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.CallAppApplication;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/decoration/FabSpaceItemDecoration.class */
public class FabSpaceItemDecoration extends RecyclerView.h {
    @Override // androidx.recyclerview.widget.RecyclerView.h
    public final void a(Rect rect, View view, RecyclerView recyclerView, RecyclerView.s sVar) {
        if (RecyclerView.d(view) == recyclerView.getAdapter().getItemCount() - 1) {
            rect.bottom = CallAppApplication.get().getResources().getDimensionPixelOffset(2131165437) + CallAppApplication.get().getResources().getDimensionPixelOffset(2131165276);
        }
    }
}
