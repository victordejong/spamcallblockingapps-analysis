package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/appbar/ViewOffsetBehavior.class */
public class ViewOffsetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: a  reason: collision with root package name */
    private a f30236a;

    /* renamed from: b  reason: collision with root package name */
    private int f30237b = 0;

    /* renamed from: c  reason: collision with root package name */
    private int f30238c = 0;

    public ViewOffsetBehavior() {
    }

    public ViewOffsetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean a(CoordinatorLayout coordinatorLayout, V v, int i) {
        b(coordinatorLayout, (CoordinatorLayout) v, i);
        if (this.f30236a == null) {
            this.f30236a = new a(v);
        }
        this.f30236a.a();
        this.f30236a.b();
        int i2 = this.f30237b;
        if (i2 != 0) {
            this.f30236a.a(i2);
            this.f30237b = 0;
        }
        int i3 = this.f30238c;
        if (i3 == 0) {
            return true;
        }
        a aVar = this.f30236a;
        if (aVar.f30242d && aVar.f30241c != i3) {
            aVar.f30241c = i3;
            aVar.b();
        }
        this.f30238c = 0;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(CoordinatorLayout coordinatorLayout, V v, int i) {
        coordinatorLayout.b(v, i);
    }

    public boolean b(int i) {
        a aVar = this.f30236a;
        if (aVar != null) {
            return aVar.a(i);
        }
        this.f30237b = i;
        return false;
    }

    public int getTopAndBottomOffset() {
        a aVar = this.f30236a;
        if (aVar != null) {
            return aVar.f30240b;
        }
        return 0;
    }
}
