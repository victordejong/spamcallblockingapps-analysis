package com.google.android.material.snackbar;

import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.behavior.SwipeDismissBehavior;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$Behavior.class */
public class BaseTransientBottomBar$Behavior extends SwipeDismissBehavior<View> {

    /* renamed from: k */
    private final C8261a f37241k = new C8261a(this);

    @Override // com.google.android.material.behavior.SwipeDismissBehavior
    /* renamed from: E */
    public boolean mo4207E(View view) {
        return this.f37241k.m4202a(view);
    }

    @Override // com.google.android.material.behavior.SwipeDismissBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: k */
    public boolean mo4206k(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        this.f37241k.m4201b(coordinatorLayout, view, motionEvent);
        return super.mo4206k(coordinatorLayout, view, motionEvent);
    }
}
