package com.google.android.material.snackbar;

import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.snackbar.C8264d;
/* renamed from: com.google.android.material.snackbar.a */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/snackbar/a.class */
public class C8261a {

    /* renamed from: a */
    private C8264d.AbstractC8266b f37254a;

    public C8261a(SwipeDismissBehavior<?> swipeDismissBehavior) {
        swipeDismissBehavior.m5589K(0.1f);
        swipeDismissBehavior.m5590J(0.6f);
        swipeDismissBehavior.m5588L(0);
    }

    /* renamed from: a */
    public boolean m4202a(View view) {
        return view instanceof BaseTransientBottomBar$SnackbarBaseLayout;
    }

    /* renamed from: b */
    public void m4201b(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            if (!coordinatorLayout.m33593F(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                return;
            }
            C8264d.m4198b().m4195e(this.f37254a);
        } else if (actionMasked != 1 && actionMasked != 3) {
        } else {
            C8264d.m4198b().m4194f(this.f37254a);
        }
    }
}
