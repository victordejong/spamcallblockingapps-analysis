package com.google.android.material.shape;

import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ScrollView;
/* loaded from: classes-dex2jar.jar:com/google/android/material/shape/InterpolateOnScrollPositionChangeHelper.class */
public class InterpolateOnScrollPositionChangeHelper {

    /* renamed from: a */
    private View f11051a;

    /* renamed from: b */
    private MaterialShapeDrawable f11052b;

    /* renamed from: c */
    private ScrollView f11053c;

    /* renamed from: d */
    private final int[] f11054d;

    /* renamed from: e */
    private final int[] f11055e;

    /* renamed from: com.google.android.material.shape.InterpolateOnScrollPositionChangeHelper$1 */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/shape/InterpolateOnScrollPositionChangeHelper$1.class */
    class ViewTreeObserver$OnScrollChangedListenerC11461 implements ViewTreeObserver.OnScrollChangedListener {

        /* renamed from: a */
        final /* synthetic */ InterpolateOnScrollPositionChangeHelper f11056a;

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            this.f11056a.m9351a();
        }
    }

    /* renamed from: a */
    public void m9351a() {
        ScrollView scrollView = this.f11053c;
        if (scrollView != null) {
            if (scrollView.getChildCount() != 0) {
                this.f11053c.getLocationInWindow(this.f11054d);
                this.f11053c.getChildAt(0).getLocationInWindow(this.f11055e);
                int top = (this.f11051a.getTop() - this.f11054d[1]) + this.f11055e[1];
                int height = this.f11051a.getHeight();
                int height2 = this.f11053c.getHeight();
                if (top < 0) {
                    this.f11052b.m9327X(Math.max(0.0f, Math.min(1.0f, (top / height) + 1.0f)));
                    this.f11051a.invalidate();
                    return;
                }
                int i = top + height;
                if (i > height2) {
                    this.f11052b.m9327X(Math.max(0.0f, Math.min(1.0f, 1.0f - ((i - height2) / height))));
                    this.f11051a.invalidate();
                } else if (this.f11052b.m9288y() != 1.0f) {
                    this.f11052b.m9327X(1.0f);
                    this.f11051a.invalidate();
                }
            } else {
                throw new IllegalStateException("Scroll bar must contain a child to calculate interpolation.");
            }
        }
    }
}
