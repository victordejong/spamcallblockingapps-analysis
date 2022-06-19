package p1727n3.p1795i.p1802c;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.C0114R;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.Objects;
import p1727n3.p1795i.p1802c.C26389d;
/* renamed from: n3.i.c.e */
/* loaded from: classes-dex2jar.jar:n3/i/c/e.class */
public class C26395e extends ViewGroup {

    /* renamed from: a */
    public C26389d f73984a;

    /* renamed from: n3.i.c.e$a */
    /* loaded from: classes-dex2jar.jar:n3/i/c/e$a.class */
    public static class C26396a extends ConstraintLayout.C0111a {

        /* renamed from: m0 */
        public float f73985m0;

        /* renamed from: n0 */
        public boolean f73986n0;

        /* renamed from: o0 */
        public float f73987o0;

        /* renamed from: p0 */
        public float f73988p0;

        /* renamed from: q0 */
        public float f73989q0;

        /* renamed from: r0 */
        public float f73990r0;

        /* renamed from: s0 */
        public float f73991s0;

        /* renamed from: t0 */
        public float f73992t0;

        /* renamed from: u0 */
        public float f73993u0;

        /* renamed from: v0 */
        public float f73994v0;

        /* renamed from: w0 */
        public float f73995w0;

        /* renamed from: x0 */
        public float f73996x0;

        /* renamed from: y0 */
        public float f73997y0;

        public C26396a(int i, int i2) {
            super(i, i2);
            this.f73985m0 = 1.0f;
            this.f73986n0 = false;
            this.f73987o0 = 0.0f;
            this.f73988p0 = 0.0f;
            this.f73989q0 = 0.0f;
            this.f73990r0 = 0.0f;
            this.f73991s0 = 1.0f;
            this.f73992t0 = 1.0f;
            this.f73993u0 = 0.0f;
            this.f73994v0 = 0.0f;
            this.f73995w0 = 0.0f;
            this.f73996x0 = 0.0f;
            this.f73997y0 = 0.0f;
        }

        public C26396a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f73985m0 = 1.0f;
            this.f73986n0 = false;
            this.f73987o0 = 0.0f;
            this.f73988p0 = 0.0f;
            this.f73989q0 = 0.0f;
            this.f73990r0 = 0.0f;
            this.f73991s0 = 1.0f;
            this.f73992t0 = 1.0f;
            this.f73993u0 = 0.0f;
            this.f73994v0 = 0.0f;
            this.f73995w0 = 0.0f;
            this.f73996x0 = 0.0f;
            this.f73997y0 = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0114R.styleable.ConstraintSet);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0114R.styleable.ConstraintSet_android_alpha) {
                    this.f73985m0 = obtainStyledAttributes.getFloat(index, this.f73985m0);
                } else if (index == C0114R.styleable.ConstraintSet_android_elevation) {
                    this.f73987o0 = obtainStyledAttributes.getFloat(index, this.f73987o0);
                    this.f73986n0 = true;
                } else if (index == C0114R.styleable.ConstraintSet_android_rotationX) {
                    this.f73989q0 = obtainStyledAttributes.getFloat(index, this.f73989q0);
                } else if (index == C0114R.styleable.ConstraintSet_android_rotationY) {
                    this.f73990r0 = obtainStyledAttributes.getFloat(index, this.f73990r0);
                } else if (index == C0114R.styleable.ConstraintSet_android_rotation) {
                    this.f73988p0 = obtainStyledAttributes.getFloat(index, this.f73988p0);
                } else if (index == C0114R.styleable.ConstraintSet_android_scaleX) {
                    this.f73991s0 = obtainStyledAttributes.getFloat(index, this.f73991s0);
                } else if (index == C0114R.styleable.ConstraintSet_android_scaleY) {
                    this.f73992t0 = obtainStyledAttributes.getFloat(index, this.f73992t0);
                } else if (index == C0114R.styleable.ConstraintSet_android_transformPivotX) {
                    this.f73993u0 = obtainStyledAttributes.getFloat(index, this.f73993u0);
                } else if (index == C0114R.styleable.ConstraintSet_android_transformPivotY) {
                    this.f73994v0 = obtainStyledAttributes.getFloat(index, this.f73994v0);
                } else if (index == C0114R.styleable.ConstraintSet_android_translationX) {
                    this.f73995w0 = obtainStyledAttributes.getFloat(index, this.f73995w0);
                } else if (index == C0114R.styleable.ConstraintSet_android_translationY) {
                    this.f73996x0 = obtainStyledAttributes.getFloat(index, this.f73996x0);
                } else if (index == C0114R.styleable.ConstraintSet_android_translationZ) {
                    this.f73997y0 = obtainStyledAttributes.getFloat(index, this.f73997y0);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C26396a(-2, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C26396a(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ConstraintLayout.C0111a(layoutParams);
    }

    public C26389d getConstraintSet() {
        if (this.f73984a == null) {
            this.f73984a = new C26389d();
        }
        C26389d c26389d = this.f73984a;
        Objects.requireNonNull(c26389d);
        int childCount = getChildCount();
        c26389d.f73887c.clear();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            C26396a c26396a = (C26396a) childAt.getLayoutParams();
            int id = childAt.getId();
            if (c26389d.f73886b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!c26389d.f73887c.containsKey(Integer.valueOf(id))) {
                c26389d.f73887c.put(Integer.valueOf(id), new C26389d.C26390a());
            }
            C26389d.C26390a c26390a = c26389d.f73887c.get(Integer.valueOf(id));
            if (childAt instanceof AbstractC26385b) {
                AbstractC26385b abstractC26385b = (AbstractC26385b) childAt;
                c26390a.m1954c(id, c26396a);
                if (abstractC26385b instanceof Barrier) {
                    C26389d.C26391b c26391b = c26390a.f73891d;
                    c26391b.f73928d0 = 1;
                    Barrier barrier = (Barrier) abstractC26385b;
                    c26391b.f73924b0 = barrier.getType();
                    c26390a.f73891d.f73930e0 = barrier.getReferencedIds();
                    c26390a.f73891d.f73926c0 = barrier.getMargin();
                }
            }
            c26390a.m1954c(id, c26396a);
        }
        return this.f73984a;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }
}
