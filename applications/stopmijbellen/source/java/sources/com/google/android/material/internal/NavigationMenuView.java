package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.view.menu.AbstractC0146j;
import androidx.appcompat.view.menu.C0136e;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/NavigationMenuView.class */
public class NavigationMenuView extends RecyclerView implements AbstractC0146j {
    public NavigationMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        setLayoutManager(new LinearLayoutManager(1, false));
    }

    @Override // androidx.appcompat.view.menu.AbstractC0146j
    /* renamed from: b */
    public void mo4551b(C0136e c0136e) {
    }

    public int getWindowAnimations() {
        return 0;
    }
}
