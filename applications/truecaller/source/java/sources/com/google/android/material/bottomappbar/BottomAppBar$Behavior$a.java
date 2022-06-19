package com.google.android.material.bottomappbar;

import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout$f;
import com.google.android.material.C2080R;
import com.google.android.material.bottomappbar.BottomAppBar;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import p1727n3.p1789g0.C26232y;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBar$Behavior$a.class */
public class BottomAppBar$Behavior$a implements View.OnLayoutChangeListener {

    /* renamed from: a */
    public final /* synthetic */ BottomAppBar.Behavior f6645a;

    public BottomAppBar$Behavior$a(BottomAppBar.Behavior behavior) {
        this.f6645a = behavior;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        BottomAppBar bottomAppBar = (BottomAppBar) this.f6645a.f.get();
        if (bottomAppBar == null || !(view instanceof FloatingActionButton)) {
            view.removeOnLayoutChangeListener(this);
            return;
        }
        FloatingActionButton floatingActionButton = (FloatingActionButton) view;
        Rect rect = this.f6645a.e;
        rect.set(0, 0, floatingActionButton.getMeasuredWidth(), floatingActionButton.getMeasuredHeight());
        floatingActionButton.m(rect);
        int height = this.f6645a.e.height();
        bottomAppBar.H(height);
        bottomAppBar.setFabCornerSize(floatingActionButton.getShapeAppearanceModel().e.a(new RectF(this.f6645a.e)));
        CoordinatorLayout$f coordinatorLayout$f = (CoordinatorLayout$f) view.getLayoutParams();
        if (this.f6645a.g != 0) {
            return;
        }
        ((ViewGroup.MarginLayoutParams) coordinatorLayout$f).bottomMargin = BottomAppBar.x(bottomAppBar) + (bottomAppBar.getResources().getDimensionPixelOffset(C2080R.dimen.mtrl_bottomappbar_fab_bottom_margin) - ((floatingActionButton.getMeasuredHeight() - height) / 2));
        ((ViewGroup.MarginLayoutParams) coordinatorLayout$f).leftMargin = BottomAppBar.y(bottomAppBar);
        ((ViewGroup.MarginLayoutParams) coordinatorLayout$f).rightMargin = BottomAppBar.z(bottomAppBar);
        if (C26232y.m2407U0(floatingActionButton)) {
            ((ViewGroup.MarginLayoutParams) coordinatorLayout$f).leftMargin += 0;
        } else {
            ((ViewGroup.MarginLayoutParams) coordinatorLayout$f).rightMargin += 0;
        }
    }
}
