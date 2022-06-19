package com.callapp.contacts.activity.base;

import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/ScrollRecyclerStateTracker.class */
public class ScrollRecyclerStateTracker implements ScrollEvents {

    /* renamed from: a */
    private boolean f20373a = false;

    @Override // com.callapp.contacts.activity.base.ScrollEvents
    public boolean isScrolling() {
        return this.f20373a;
    }

    public void setRecyclerView(RecyclerView recyclerView) {
        recyclerView.m40478a(new RecyclerView.AbstractC2645m() { // from class: com.callapp.contacts.activity.base.ScrollRecyclerStateTracker.1
            @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2645m
            /* renamed from: a */
            public final void mo10833a(RecyclerView recyclerView2, int i) {
                if (i == 0) {
                    ScrollRecyclerStateTracker.this.f20373a = false;
                } else if (i == 1) {
                    ScrollRecyclerStateTracker.this.f20373a = true;
                } else if (i != 2) {
                } else {
                    ScrollRecyclerStateTracker.this.f20373a = true;
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2645m
            /* renamed from: a */
            public final void mo10832a(RecyclerView recyclerView2, int i, int i2) {
            }
        });
    }
}
