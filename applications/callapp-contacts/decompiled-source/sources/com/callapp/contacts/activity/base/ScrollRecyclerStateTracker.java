package com.callapp.contacts.activity.base;

import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/ScrollRecyclerStateTracker.class */
public class ScrollRecyclerStateTracker implements ScrollEvents {

    /* renamed from: a  reason: collision with root package name */
    private boolean f11162a = false;

    @Override // com.callapp.contacts.activity.base.ScrollEvents
    public boolean isScrolling() {
        return this.f11162a;
    }

    public void setRecyclerView(RecyclerView recyclerView) {
        recyclerView.a(new RecyclerView.m() { // from class: com.callapp.contacts.activity.base.ScrollRecyclerStateTracker.1
            @Override // androidx.recyclerview.widget.RecyclerView.m
            public final void a(RecyclerView recyclerView2, int i) {
                if (i == 0) {
                    ScrollRecyclerStateTracker.this.f11162a = false;
                } else if (i == 1) {
                    ScrollRecyclerStateTracker.this.f11162a = true;
                } else if (i == 2) {
                    ScrollRecyclerStateTracker.this.f11162a = true;
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.m
            public final void a(RecyclerView recyclerView2, int i, int i2) {
            }
        });
    }
}
