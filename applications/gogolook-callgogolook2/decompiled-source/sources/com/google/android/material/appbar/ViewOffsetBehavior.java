package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import p081h.p203i.p204a.p294f.p296b.C9177a;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/appbar/ViewOffsetBehavior.class */
public class ViewOffsetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: a */
    public C9177a f7293a;

    /* renamed from: b */
    public int f7294b = 0;

    /* renamed from: c */
    public int f7295c = 0;

    public ViewOffsetBehavior() {
    }

    public ViewOffsetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    public int m31552a() {
        C9177a aVar = this.f7293a;
        return aVar != null ? aVar.m15944b() : 0;
    }

    /* renamed from: a */
    public void mo31550a(CoordinatorLayout coordinatorLayout, V v, int i) {
        coordinatorLayout.onLayoutChild(v, i);
    }

    /* renamed from: a */
    public boolean m31551a(int i) {
        C9177a aVar = this.f7293a;
        if (aVar != null) {
            return aVar.m15943b(i);
        }
        this.f7294b = i;
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v, int i) {
        mo31550a(coordinatorLayout, v, i);
        if (this.f7293a == null) {
            this.f7293a = new C9177a(v);
        }
        this.f7293a.m15942c();
        int i2 = this.f7294b;
        if (i2 != 0) {
            this.f7293a.m15943b(i2);
            this.f7294b = 0;
        }
        int i3 = this.f7295c;
        if (i3 == 0) {
            return true;
        }
        this.f7293a.m15945a(i3);
        this.f7295c = 0;
        return true;
    }
}
