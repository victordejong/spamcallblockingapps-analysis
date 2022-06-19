package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/Constraints.class */
public class Constraints extends ViewGroup {

    /* renamed from: d */
    C0515b f2579d;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/Constraints$LayoutParams.class */
    public static class LayoutParams extends ConstraintLayout.LayoutParams {

        /* renamed from: A0 */
        public float f2580A0;

        /* renamed from: B0 */
        public float f2581B0;

        /* renamed from: p0 */
        public float f2582p0;

        /* renamed from: q0 */
        public boolean f2583q0;

        /* renamed from: r0 */
        public float f2584r0;

        /* renamed from: s0 */
        public float f2585s0;

        /* renamed from: t0 */
        public float f2586t0;

        /* renamed from: u0 */
        public float f2587u0;

        /* renamed from: v0 */
        public float f2588v0;

        /* renamed from: w0 */
        public float f2589w0;

        /* renamed from: x0 */
        public float f2590x0;

        /* renamed from: y0 */
        public float f2591y0;

        /* renamed from: z0 */
        public float f2592z0;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f2582p0 = 1.0f;
            this.f2583q0 = false;
            this.f2584r0 = 0.0f;
            this.f2585s0 = 0.0f;
            this.f2586t0 = 0.0f;
            this.f2587u0 = 0.0f;
            this.f2588v0 = 1.0f;
            this.f2589w0 = 1.0f;
            this.f2590x0 = 0.0f;
            this.f2591y0 = 0.0f;
            this.f2592z0 = 0.0f;
            this.f2580A0 = 0.0f;
            this.f2581B0 = 0.0f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f2582p0 = 1.0f;
            this.f2583q0 = false;
            this.f2584r0 = 0.0f;
            this.f2585s0 = 0.0f;
            this.f2586t0 = 0.0f;
            this.f2587u0 = 0.0f;
            this.f2588v0 = 1.0f;
            this.f2589w0 = 1.0f;
            this.f2590x0 = 0.0f;
            this.f2591y0 = 0.0f;
            this.f2592z0 = 0.0f;
            this.f2580A0 = 0.0f;
            this.f2581B0 = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0523e.ConstraintSet);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0523e.ConstraintSet_android_alpha) {
                    this.f2582p0 = obtainStyledAttributes.getFloat(index, this.f2582p0);
                } else if (index == C0523e.ConstraintSet_android_elevation) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        this.f2584r0 = obtainStyledAttributes.getFloat(index, this.f2584r0);
                        this.f2583q0 = true;
                    }
                } else if (index == C0523e.ConstraintSet_android_rotationX) {
                    this.f2586t0 = obtainStyledAttributes.getFloat(index, this.f2586t0);
                } else if (index == C0523e.ConstraintSet_android_rotationY) {
                    this.f2587u0 = obtainStyledAttributes.getFloat(index, this.f2587u0);
                } else if (index == C0523e.ConstraintSet_android_rotation) {
                    this.f2585s0 = obtainStyledAttributes.getFloat(index, this.f2585s0);
                } else if (index == C0523e.ConstraintSet_android_scaleX) {
                    this.f2588v0 = obtainStyledAttributes.getFloat(index, this.f2588v0);
                } else if (index == C0523e.ConstraintSet_android_scaleY) {
                    this.f2589w0 = obtainStyledAttributes.getFloat(index, this.f2589w0);
                } else if (index == C0523e.ConstraintSet_android_transformPivotX) {
                    this.f2590x0 = obtainStyledAttributes.getFloat(index, this.f2590x0);
                } else if (index == C0523e.ConstraintSet_android_transformPivotY) {
                    this.f2591y0 = obtainStyledAttributes.getFloat(index, this.f2591y0);
                } else if (index == C0523e.ConstraintSet_android_translationX) {
                    this.f2592z0 = obtainStyledAttributes.getFloat(index, this.f2592z0);
                } else if (index == C0523e.ConstraintSet_android_translationY) {
                    this.f2580A0 = obtainStyledAttributes.getFloat(index, this.f2580A0);
                } else if (index == C0523e.ConstraintSet_android_translationZ && Build.VERSION.SDK_INT >= 21) {
                    this.f2581B0 = obtainStyledAttributes.getFloat(index, this.f2581B0);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    public Constraints(Context context) {
        super(context);
        super.setVisibility(8);
    }

    public Constraints(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m33665c(attributeSet);
        super.setVisibility(8);
    }

    public Constraints(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m33665c(attributeSet);
        super.setVisibility(8);
    }

    /* renamed from: c */
    private void m33665c(AttributeSet attributeSet) {
        Log.v("Constraints", " ################# init");
    }

    /* renamed from: a */
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    /* renamed from: b */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ConstraintLayout.LayoutParams(layoutParams);
    }

    public C0515b getConstraintSet() {
        if (this.f2579d == null) {
            this.f2579d = new C0515b();
        }
        this.f2579d.m33637k(this);
        return this.f2579d;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }
}
