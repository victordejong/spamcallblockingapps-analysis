package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.view.menu.AbstractC0195n;
import androidx.appcompat.view.menu.C0178g;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/NavigationMenuView.class */
public class NavigationMenuView extends RecyclerView implements AbstractC0195n {
    public NavigationMenuView(Context context) {
        this(context, null);
    }

    public NavigationMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setLayoutManager(new LinearLayoutManager(context, 1, false));
    }

    @Override // androidx.appcompat.view.menu.AbstractC0195n
    /* renamed from: b */
    public void mo4639b(C0178g c0178g) {
    }

    public int getWindowAnimations() {
        return 0;
    }
}
