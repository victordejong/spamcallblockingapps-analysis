package com.google.android.material.snackbar;

import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.behavior.SwipeDismissBehavior;
import java.util.Objects;
import p069d4.C2467a;
import p069d4.C2470d;
import p069d4.C2472e;
/* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$Behavior.class */
public class BaseTransientBottomBar$Behavior extends SwipeDismissBehavior<View> {

    /* renamed from: h */
    public final C2467a f6744h = new C2467a(this);

    @Override // com.google.android.material.behavior.SwipeDismissBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
    /* renamed from: g */
    public boolean mo2988g(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        Objects.requireNonNull(this.f6744h);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 3) {
                if (C2472e.f8709c == null) {
                    C2472e.f8709c = new C2472e();
                }
                synchronized (C2472e.f8709c.f8710a) {
                }
            }
        } else if (coordinatorLayout.m8330q(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
            if (C2472e.f8709c == null) {
                C2472e.f8709c = new C2472e();
            }
            synchronized (C2472e.f8709c.f8710a) {
            }
        }
        return super.mo2988g(coordinatorLayout, view, motionEvent);
    }

    @Override // com.google.android.material.behavior.SwipeDismissBehavior
    /* renamed from: s */
    public boolean mo4549s(View view) {
        Objects.requireNonNull(this.f6744h);
        return view instanceof C2470d;
    }
}
