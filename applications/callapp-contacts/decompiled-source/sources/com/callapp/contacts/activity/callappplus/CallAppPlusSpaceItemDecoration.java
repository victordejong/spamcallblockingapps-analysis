package com.callapp.contacts.activity.callappplus;

import android.content.res.Resources;
import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.CallAppApplication;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/CallAppPlusSpaceItemDecoration.class */
public class CallAppPlusSpaceItemDecoration extends RecyclerView.h {
    @Override // androidx.recyclerview.widget.RecyclerView.h
    public final void a(Rect rect, View view, RecyclerView recyclerView, RecyclerView.s sVar) {
        Resources resources = CallAppApplication.get().getResources();
        rect.bottom = resources.getDimensionPixelOffset(2131165775);
        rect.top = resources.getDimensionPixelOffset(2131165775);
    }
}
