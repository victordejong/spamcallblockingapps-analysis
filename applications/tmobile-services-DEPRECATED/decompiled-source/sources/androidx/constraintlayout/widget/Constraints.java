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

    /* renamed from: f */
    ConstraintSet f2717f;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/Constraints$LayoutParams.class */
    public static class LayoutParams extends ConstraintLayout.LayoutParams {

        /* renamed from: A0 */
        public float f2718A0;

        /* renamed from: o0 */
        public float f2719o0;

        /* renamed from: p0 */
        public boolean f2720p0;

        /* renamed from: q0 */
        public float f2721q0;

        /* renamed from: r0 */
        public float f2722r0;

        /* renamed from: s0 */
        public float f2723s0;

        /* renamed from: t0 */
        public float f2724t0;

        /* renamed from: u0 */
        public float f2725u0;

        /* renamed from: v0 */
        public float f2726v0;

        /* renamed from: w0 */
        public float f2727w0;

        /* renamed from: x0 */
        public float f2728x0;

        /* renamed from: y0 */
        public float f2729y0;

        /* renamed from: z0 */
        public float f2730z0;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f2719o0 = 1.0f;
            this.f2720p0 = false;
            this.f2721q0 = 0.0f;
            this.f2722r0 = 0.0f;
            this.f2723s0 = 0.0f;
            this.f2724t0 = 0.0f;
            this.f2725u0 = 1.0f;
            this.f2726v0 = 1.0f;
            this.f2727w0 = 0.0f;
            this.f2728x0 = 0.0f;
            this.f2729y0 = 0.0f;
            this.f2730z0 = 0.0f;
            this.f2718A0 = 0.0f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f2719o0 = 1.0f;
            this.f2720p0 = false;
            this.f2721q0 = 0.0f;
            this.f2722r0 = 0.0f;
            this.f2723s0 = 0.0f;
            this.f2724t0 = 0.0f;
            this.f2725u0 = 1.0f;
            this.f2726v0 = 1.0f;
            this.f2727w0 = 0.0f;
            this.f2728x0 = 0.0f;
            this.f2729y0 = 0.0f;
            this.f2730z0 = 0.0f;
            this.f2718A0 = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0178R.styleable.ConstraintSet);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0178R.styleable.ConstraintSet_android_alpha) {
                    this.f2719o0 = obtainStyledAttributes.getFloat(index, this.f2719o0);
                } else if (index == C0178R.styleable.ConstraintSet_android_elevation) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        this.f2721q0 = obtainStyledAttributes.getFloat(index, this.f2721q0);
                        this.f2720p0 = true;
                    }
                } else if (index == C0178R.styleable.ConstraintSet_android_rotationX) {
                    this.f2723s0 = obtainStyledAttributes.getFloat(index, this.f2723s0);
                } else if (index == C0178R.styleable.ConstraintSet_android_rotationY) {
                    this.f2724t0 = obtainStyledAttributes.getFloat(index, this.f2724t0);
                } else if (index == C0178R.styleable.ConstraintSet_android_rotation) {
                    this.f2722r0 = obtainStyledAttributes.getFloat(index, this.f2722r0);
                } else if (index == C0178R.styleable.ConstraintSet_android_scaleX) {
                    this.f2725u0 = obtainStyledAttributes.getFloat(index, this.f2725u0);
                } else if (index == C0178R.styleable.ConstraintSet_android_scaleY) {
                    this.f2726v0 = obtainStyledAttributes.getFloat(index, this.f2726v0);
                } else if (index == C0178R.styleable.ConstraintSet_android_transformPivotX) {
                    this.f2727w0 = obtainStyledAttributes.getFloat(index, this.f2727w0);
                } else if (index == C0178R.styleable.ConstraintSet_android_transformPivotY) {
                    this.f2728x0 = obtainStyledAttributes.getFloat(index, this.f2728x0);
                } else if (index == C0178R.styleable.ConstraintSet_android_translationX) {
                    this.f2729y0 = obtainStyledAttributes.getFloat(index, this.f2729y0);
                } else if (index == C0178R.styleable.ConstraintSet_android_translationY) {
                    this.f2730z0 = obtainStyledAttributes.getFloat(index, this.f2730z0);
                } else if (index == C0178R.styleable.ConstraintSet_android_translationZ && Build.VERSION.SDK_INT >= 21) {
                    this.f2718A0 = obtainStyledAttributes.getFloat(index, this.f2718A0);
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
        m19969c(attributeSet);
        super.setVisibility(8);
    }

    public Constraints(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m19969c(attributeSet);
        super.setVisibility(8);
    }

    /* renamed from: c */
    private void m19969c(AttributeSet attributeSet) {
        Log.v("Constraints", " ################# init");
    }

    /* JADX INFO: Access modifiers changed from: protected */
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

    public ConstraintSet getConstraintSet() {
        if (this.f2717f == null) {
            this.f2717f = new ConstraintSet();
        }
        this.f2717f.m20003k(this);
        return this.f2717f;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }
}
