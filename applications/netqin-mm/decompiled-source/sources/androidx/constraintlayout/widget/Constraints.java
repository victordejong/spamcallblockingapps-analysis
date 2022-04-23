package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import p012b.p036g.p039b.C0821a;
import p012b.p036g.p039b.C0825c;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/Constraints.class */
public class Constraints extends ViewGroup {

    /* renamed from: a */
    public C0821a f1037a;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/Constraints$LayoutParams.class */
    public static class LayoutParams extends ConstraintLayout.LayoutParams {

        /* renamed from: m0 */
        public float f1038m0;

        /* renamed from: n0 */
        public boolean f1039n0;

        /* renamed from: o0 */
        public float f1040o0;

        /* renamed from: p0 */
        public float f1041p0;

        /* renamed from: q0 */
        public float f1042q0;

        /* renamed from: r0 */
        public float f1043r0;

        /* renamed from: s0 */
        public float f1044s0;

        /* renamed from: t0 */
        public float f1045t0;

        /* renamed from: u0 */
        public float f1046u0;

        /* renamed from: v0 */
        public float f1047v0;

        /* renamed from: w0 */
        public float f1048w0;

        /* renamed from: x0 */
        public float f1049x0;

        /* renamed from: y0 */
        public float f1050y0;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f1038m0 = 1.0f;
            this.f1039n0 = false;
            this.f1040o0 = 0.0f;
            this.f1041p0 = 0.0f;
            this.f1042q0 = 0.0f;
            this.f1043r0 = 0.0f;
            this.f1044s0 = 1.0f;
            this.f1045t0 = 1.0f;
            this.f1046u0 = 0.0f;
            this.f1047v0 = 0.0f;
            this.f1048w0 = 0.0f;
            this.f1049x0 = 0.0f;
            this.f1050y0 = 0.0f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1038m0 = 1.0f;
            this.f1039n0 = false;
            this.f1040o0 = 0.0f;
            this.f1041p0 = 0.0f;
            this.f1042q0 = 0.0f;
            this.f1043r0 = 0.0f;
            this.f1044s0 = 1.0f;
            this.f1045t0 = 1.0f;
            this.f1046u0 = 0.0f;
            this.f1047v0 = 0.0f;
            this.f1048w0 = 0.0f;
            this.f1049x0 = 0.0f;
            this.f1050y0 = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0825c.ConstraintSet);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0825c.ConstraintSet_android_alpha) {
                    this.f1038m0 = obtainStyledAttributes.getFloat(index, this.f1038m0);
                } else if (index == C0825c.ConstraintSet_android_elevation) {
                    this.f1040o0 = obtainStyledAttributes.getFloat(index, this.f1040o0);
                    this.f1039n0 = true;
                } else if (index == C0825c.ConstraintSet_android_rotationX) {
                    this.f1042q0 = obtainStyledAttributes.getFloat(index, this.f1042q0);
                } else if (index == C0825c.ConstraintSet_android_rotationY) {
                    this.f1043r0 = obtainStyledAttributes.getFloat(index, this.f1043r0);
                } else if (index == C0825c.ConstraintSet_android_rotation) {
                    this.f1041p0 = obtainStyledAttributes.getFloat(index, this.f1041p0);
                } else if (index == C0825c.ConstraintSet_android_scaleX) {
                    this.f1044s0 = obtainStyledAttributes.getFloat(index, this.f1044s0);
                } else if (index == C0825c.ConstraintSet_android_scaleY) {
                    this.f1045t0 = obtainStyledAttributes.getFloat(index, this.f1045t0);
                } else if (index == C0825c.ConstraintSet_android_transformPivotX) {
                    this.f1046u0 = obtainStyledAttributes.getFloat(index, this.f1046u0);
                } else if (index == C0825c.ConstraintSet_android_transformPivotY) {
                    this.f1047v0 = obtainStyledAttributes.getFloat(index, this.f1047v0);
                } else if (index == C0825c.ConstraintSet_android_translationX) {
                    this.f1048w0 = obtainStyledAttributes.getFloat(index, this.f1048w0);
                } else if (index == C0825c.ConstraintSet_android_translationY) {
                    this.f1049x0 = obtainStyledAttributes.getFloat(index, this.f1049x0);
                } else if (index == C0825c.ConstraintSet_android_translationZ) {
                    this.f1048w0 = obtainStyledAttributes.getFloat(index, this.f1050y0);
                }
            }
        }
    }

    public Constraints(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m38703a(attributeSet);
        super.setVisibility(8);
    }

    public Constraints(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m38703a(attributeSet);
        super.setVisibility(8);
    }

    /* renamed from: a */
    public final void m38703a(AttributeSet attributeSet) {
        Log.v("Constraints", " ################# init");
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ConstraintLayout.LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public C0821a getConstraintSet() {
        if (this.f1037a == null) {
            this.f1037a = new C0821a();
        }
        this.f1037a.m35823a(this);
        return this.f1037a;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }
}
