package com.razorpay;

import android.app.Activity;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
/* loaded from: classes3-dex2jar.jar:com/razorpay/Q_$2$.class */
public final class Q_$2$ {

    /* renamed from: a */
    private View f9416a;

    /* renamed from: b */
    private int f9417b;

    /* renamed from: c */
    private FrameLayout.LayoutParams f9418c;

    /* renamed from: d */
    private int f9419d;

    private Q_$2$(Activity activity) {
        View childAt = ((FrameLayout) activity.findViewById(16908290)).getChildAt(0);
        this.f9416a = childAt;
        childAt.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.razorpay.D$_X_
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                Q_$2$.m36090a(Q_$2$.this);
            }
        });
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f9416a.getLayoutParams();
        this.f9418c = layoutParams;
        this.f9419d = layoutParams.height;
    }

    /* renamed from: a */
    public static void m36091a(Activity activity) {
        new Q_$2$(activity);
    }

    /* renamed from: a */
    public static /* synthetic */ void m36090a(Q_$2$ q_$2$) {
        Rect rect = new Rect();
        q_$2$.f9416a.getWindowVisibleDisplayFrame(rect);
        int i = rect.bottom - rect.top;
        if (i != q_$2$.f9417b) {
            int height = q_$2$.f9416a.getRootView().getHeight();
            if (height - i > height / 4) {
                q_$2$.f9418c.height = i;
            } else {
                q_$2$.f9418c.height = q_$2$.f9419d;
            }
            q_$2$.f9416a.requestLayout();
            q_$2$.f9417b = i;
        }
    }
}
