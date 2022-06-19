package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.C0523e;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionHelper.class */
public class MotionHelper extends ConstraintHelper implements MotionLayout.AbstractC0377i {

    /* renamed from: m */
    private boolean f1547m = false;

    /* renamed from: n */
    private boolean f1548n = false;

    /* renamed from: o */
    private float f1549o;

    /* renamed from: p */
    protected View[] f1550p;

    public MotionHelper(Context context) {
        super(context);
    }

    public MotionHelper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        mo33660n(attributeSet);
    }

    public MotionHelper(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        mo33660n(attributeSet);
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout.AbstractC0377i
    /* renamed from: a */
    public void mo34497a(MotionLayout motionLayout, int i, int i2, float f) {
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout.AbstractC0377i
    /* renamed from: b */
    public void mo34496b(MotionLayout motionLayout, int i, int i2) {
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout.AbstractC0377i
    /* renamed from: c */
    public void mo34495c(MotionLayout motionLayout, int i, boolean z, float f) {
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout.AbstractC0377i
    /* renamed from: d */
    public void mo34494d(MotionLayout motionLayout, int i) {
    }

    public float getProgress() {
        return this.f1549o;
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: n */
    public void mo33660n(AttributeSet attributeSet) {
        super.mo33660n(attributeSet);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0523e.MotionHelper);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0523e.MotionHelper_onShow) {
                    this.f1547m = obtainStyledAttributes.getBoolean(index, this.f1547m);
                } else if (index == C0523e.MotionHelper_onHide) {
                    this.f1548n = obtainStyledAttributes.getBoolean(index, this.f1548n);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    public void setProgress(float f) {
        this.f1549o = f;
        if (this.f2471e > 0) {
            this.f1550p = m33700m((ConstraintLayout) getParent());
            for (int i = 0; i < this.f2471e; i++) {
                setProgress(this.f1550p[i], f);
            }
            return;
        }
        ViewGroup viewGroup = (ViewGroup) getParent();
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (!(childAt instanceof MotionHelper)) {
                setProgress(childAt, f);
            }
        }
    }

    public void setProgress(View view, float f) {
    }

    /* renamed from: w */
    public boolean m34583w() {
        return this.f1548n;
    }

    /* renamed from: x */
    public boolean m34582x() {
        return this.f1547m;
    }
}
