package p1727n3.p1795i.p1796a.p1798b;

import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.motion.widget.MotionLayout$h;
import androidx.constraintlayout.widget.C0114R;
import androidx.constraintlayout.widget.ConstraintLayout;
import p1727n3.p1795i.p1802c.AbstractC26385b;
/* renamed from: n3.i.a.b.n */
/* loaded from: classes-dex2jar.jar:n3/i/a/b/n.class */
public class C26311n extends AbstractC26385b implements MotionLayout$h {

    /* renamed from: i */
    public boolean f73454i;

    /* renamed from: j */
    public boolean f73455j;

    /* renamed from: k */
    public float f73456k;

    /* renamed from: l */
    public View[] f73457l;

    @Override // androidx.constraintlayout.motion.widget.MotionLayout$h
    /* renamed from: a */
    public void mo2199a(MotionLayout motionLayout, int i, int i2, float f) {
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout$h
    /* renamed from: b */
    public void mo2198b(MotionLayout motionLayout, int i) {
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout$h
    /* renamed from: c */
    public void mo2197c(MotionLayout motionLayout, int i, int i2) {
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout$h
    /* renamed from: d */
    public void mo2196d(MotionLayout motionLayout, int i, boolean z, float f) {
    }

    public float getProgress() {
        return this.f73456k;
    }

    @Override // p1727n3.p1795i.p1802c.AbstractC26385b
    /* renamed from: l */
    public void mo1941l(AttributeSet attributeSet) {
        super.mo1941l(attributeSet);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0114R.styleable.MotionHelper);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0114R.styleable.MotionHelper_onShow) {
                    this.f73454i = obtainStyledAttributes.getBoolean(index, this.f73454i);
                } else if (index == C0114R.styleable.MotionHelper_onHide) {
                    this.f73455j = obtainStyledAttributes.getBoolean(index, this.f73455j);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    public void setProgress(float f) {
        this.f73456k = f;
        if (this.f73861b <= 0) {
            ViewGroup viewGroup = (ViewGroup) getParent();
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (!(viewGroup.getChildAt(i) instanceof C26311n)) {
                    m2195u();
                }
            }
            return;
        }
        ConstraintLayout constraintLayout = (ConstraintLayout) getParent();
        View[] viewArr = this.f73866g;
        if (viewArr == null || viewArr.length != this.f73861b) {
            this.f73866g = new View[this.f73861b];
        }
        for (int i2 = 0; i2 < this.f73861b; i2++) {
            this.f73866g[i2] = constraintLayout.m43035Q0(this.f73860a[i2]);
        }
        this.f73457l = this.f73866g;
        for (int i3 = 0; i3 < this.f73861b; i3++) {
            View view = this.f73457l[i3];
            m2195u();
        }
    }

    /* renamed from: u */
    public void m2195u() {
    }
}
