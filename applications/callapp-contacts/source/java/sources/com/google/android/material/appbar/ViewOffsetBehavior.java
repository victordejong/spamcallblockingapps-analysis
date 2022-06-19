package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/appbar/ViewOffsetBehavior.class */
public class ViewOffsetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: a */
    private C14414a f52478a;

    /* renamed from: b */
    private int f52479b = 0;

    /* renamed from: c */
    private int f52480c = 0;

    public ViewOffsetBehavior() {
    }

    public ViewOffsetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public boolean mo9852a(CoordinatorLayout coordinatorLayout, V v, int i) {
        mo11249b(coordinatorLayout, (CoordinatorLayout) v, i);
        if (this.f52478a == null) {
            this.f52478a = new C14414a(v);
        }
        this.f52478a.m11248a();
        this.f52478a.m11246b();
        int i2 = this.f52479b;
        if (i2 != 0) {
            this.f52478a.m11247a(i2);
            this.f52479b = 0;
        }
        int i3 = this.f52480c;
        if (i3 != 0) {
            C14414a c14414a = this.f52478a;
            if (c14414a.f52484d && c14414a.f52483c != i3) {
                c14414a.f52483c = i3;
                c14414a.m11246b();
            }
            this.f52480c = 0;
            return true;
        }
        return true;
    }

    /* renamed from: b */
    public void mo11249b(CoordinatorLayout coordinatorLayout, V v, int i) {
        coordinatorLayout.m44655b(v, i);
    }

    /* renamed from: b */
    public boolean mo11250b(int i) {
        C14414a c14414a = this.f52478a;
        if (c14414a != null) {
            return c14414a.m11247a(i);
        }
        this.f52479b = i;
        return false;
    }

    public int getTopAndBottomOffset() {
        C14414a c14414a = this.f52478a;
        if (c14414a != null) {
            return c14414a.f52482b;
        }
        return 0;
    }
}
