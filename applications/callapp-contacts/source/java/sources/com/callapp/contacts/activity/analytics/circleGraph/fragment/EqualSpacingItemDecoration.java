package com.callapp.contacts.activity.analytics.circleGraph.fragment;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/circleGraph/fragment/EqualSpacingItemDecoration.class */
public class EqualSpacingItemDecoration extends RecyclerView.AbstractC2636h {

    /* renamed from: a */
    private final int f19909a;

    /* renamed from: b */
    private int f19910b;

    public EqualSpacingItemDecoration(int i) {
        this(i, -1);
    }

    public EqualSpacingItemDecoration(int i, int i2) {
        this.f19909a = i;
        this.f19910b = i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2636h
    /* renamed from: a */
    public final void mo29937a(Rect rect, View view, RecyclerView recyclerView, RecyclerView.C2654s c2654s) {
        int i;
        int adapterPosition = recyclerView.m40484a(view).getAdapterPosition();
        int m40306a = c2654s.m40306a();
        RecyclerView.AbstractC2637i layoutManager = recyclerView.getLayoutManager();
        if (this.f19910b == -1) {
            this.f19910b = layoutManager instanceof GridLayoutManager ? 2 : layoutManager.mo31644e() ? 0 : 1;
        }
        int i2 = this.f19910b;
        if (i2 == 0) {
            rect.left = this.f19909a;
            int i3 = 0;
            if (adapterPosition == m40306a - 1) {
                i3 = this.f19909a;
            }
            rect.right = i3;
            rect.top = this.f19909a;
            i = this.f19909a;
        } else if (i2 == 1) {
            rect.left = this.f19909a;
            rect.right = this.f19909a;
            rect.top = this.f19909a;
            int i4 = 0;
            if (adapterPosition == m40306a - 1) {
                i4 = this.f19909a;
            }
            rect.bottom = i4;
            return;
        } else if (i2 != 2 || !(layoutManager instanceof GridLayoutManager)) {
            return;
        } else {
            int i5 = ((GridLayoutManager) layoutManager).f9856b;
            int i6 = m40306a / i5;
            rect.left = this.f19909a;
            rect.right = adapterPosition % i5 == i5 - 1 ? this.f19909a : 0;
            rect.top = this.f19909a;
            i = 0;
            if (adapterPosition / i5 == i6 - 1) {
                i = this.f19909a;
            }
        }
        rect.bottom = i;
    }
}
