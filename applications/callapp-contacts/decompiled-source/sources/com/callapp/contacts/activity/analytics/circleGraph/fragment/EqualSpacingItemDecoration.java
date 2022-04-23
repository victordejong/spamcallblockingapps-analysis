package com.callapp.contacts.activity.analytics.circleGraph.fragment;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/circleGraph/fragment/EqualSpacingItemDecoration.class */
public class EqualSpacingItemDecoration extends RecyclerView.h {

    /* renamed from: a  reason: collision with root package name */
    private final int f10885a;

    /* renamed from: b  reason: collision with root package name */
    private int f10886b;

    public EqualSpacingItemDecoration(int i) {
        this(i, -1);
    }

    public EqualSpacingItemDecoration(int i, int i2) {
        this.f10885a = i;
        this.f10886b = i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public final void a(Rect rect, View view, RecyclerView recyclerView, RecyclerView.s sVar) {
        int adapterPosition = recyclerView.a(view).getAdapterPosition();
        int a2 = sVar.a();
        RecyclerView.i layoutManager = recyclerView.getLayoutManager();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        if (this.f10886b == -1) {
            this.f10886b = layoutManager instanceof GridLayoutManager ? 2 : layoutManager.e() ? 0 : 1;
        }
        int i4 = this.f10886b;
        if (i4 == 0) {
            rect.left = this.f10885a;
            if (adapterPosition == a2 - 1) {
                i = this.f10885a;
            }
            rect.right = i;
            rect.top = this.f10885a;
            i2 = this.f10885a;
        } else if (i4 == 1) {
            rect.left = this.f10885a;
            rect.right = this.f10885a;
            rect.top = this.f10885a;
            if (adapterPosition == a2 - 1) {
                i3 = this.f10885a;
            }
            rect.bottom = i3;
            return;
        } else if (i4 == 2 && (layoutManager instanceof GridLayoutManager)) {
            int i5 = ((GridLayoutManager) layoutManager).f5297b;
            int i6 = a2 / i5;
            rect.left = this.f10885a;
            rect.right = adapterPosition % i5 == i5 - 1 ? this.f10885a : 0;
            rect.top = this.f10885a;
            if (adapterPosition / i5 == i6 - 1) {
                i2 = this.f10885a;
            }
        } else {
            return;
        }
        rect.bottom = i2;
    }
}
