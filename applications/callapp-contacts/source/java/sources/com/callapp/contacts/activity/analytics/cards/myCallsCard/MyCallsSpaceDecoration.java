package com.callapp.contacts.activity.analytics.cards.myCallsCard;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.CallAppApplication;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsSpaceDecoration.class */
public class MyCallsSpaceDecoration extends RecyclerView.AbstractC2636h {
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2636h
    /* renamed from: a */
    public final void mo29937a(Rect rect, View view, RecyclerView recyclerView, RecyclerView.C2654s c2654s) {
        if (RecyclerView.m40442e(view) == 1) {
            rect.right = CallAppApplication.get().getResources().getDimensionPixelOffset(2131165572);
            rect.left = CallAppApplication.get().getResources().getDimensionPixelOffset(2131165572);
            return;
        }
        rect.right = 0;
        rect.left = 0;
    }
}
