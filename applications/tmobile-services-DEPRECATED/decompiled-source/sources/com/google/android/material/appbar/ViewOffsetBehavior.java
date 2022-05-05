package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/ViewOffsetBehavior.class */
class ViewOffsetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: a */
    private ViewOffsetHelper f10033a;

    /* renamed from: b */
    private int f10034b = 0;

    /* renamed from: c */
    private int f10035c = 0;

    public ViewOffsetBehavior() {
    }

    public ViewOffsetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: E */
    public int m10635E() {
        ViewOffsetHelper viewOffsetHelper = this.f10033a;
        return viewOffsetHelper != null ? viewOffsetHelper.m10630c() : 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: F */
    public void mo10634F(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, int i) {
        coordinatorLayout.m19941M(v, i);
    }

    /* renamed from: G */
    public boolean m10633G(int i) {
        ViewOffsetHelper viewOffsetHelper = this.f10033a;
        if (viewOffsetHelper != null) {
            return viewOffsetHelper.m10627f(i);
        }
        this.f10034b = i;
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: l */
    public boolean mo8678l(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, int i) {
        mo10634F(coordinatorLayout, v, i);
        if (this.f10033a == null) {
            this.f10033a = new ViewOffsetHelper(v);
        }
        this.f10033a.m10629d();
        this.f10033a.m10632a();
        int i2 = this.f10034b;
        if (i2 != 0) {
            this.f10033a.m10627f(i2);
            this.f10034b = 0;
        }
        int i3 = this.f10035c;
        if (i3 == 0) {
            return true;
        }
        this.f10033a.m10628e(i3);
        this.f10035c = 0;
        return true;
    }
}
