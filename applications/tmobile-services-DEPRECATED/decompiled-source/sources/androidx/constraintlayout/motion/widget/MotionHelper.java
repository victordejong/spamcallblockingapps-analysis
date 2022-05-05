package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.C0178R;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionHelper.class */
public class MotionHelper extends ConstraintHelper implements Animatable, MotionLayout.TransitionListener {

    /* renamed from: n */
    private boolean f1826n = false;

    /* renamed from: o */
    private boolean f1827o = false;

    /* renamed from: p */
    private float f1828p;

    /* renamed from: q */
    protected View[] f1829q;

    public MotionHelper(Context context) {
        super(context);
    }

    public MotionHelper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        mo19955m(attributeSet);
    }

    public MotionHelper(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        mo19955m(attributeSet);
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout.TransitionListener
    /* renamed from: a */
    public void mo20534a(MotionLayout motionLayout, int i, int i2, float f) {
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout.TransitionListener
    /* renamed from: b */
    public void mo20533b(MotionLayout motionLayout, int i, int i2) {
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout.TransitionListener
    /* renamed from: c */
    public void mo20532c(MotionLayout motionLayout, int i, boolean z, float f) {
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout.TransitionListener
    /* renamed from: d */
    public void mo20531d(MotionLayout motionLayout, int i) {
    }

    public float getProgress() {
        return this.f1828p;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: m */
    public void mo19955m(AttributeSet attributeSet) {
        super.mo19955m(attributeSet);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0178R.styleable.MotionHelper);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0178R.styleable.MotionHelper_onShow) {
                    this.f1826n = obtainStyledAttributes.getBoolean(index, this.f1826n);
                } else if (index == C0178R.styleable.MotionHelper_onHide) {
                    this.f1827o = obtainStyledAttributes.getBoolean(index, this.f1827o);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    public void setProgress(float f) {
        this.f1828p = f;
        if (this.f2497g > 0) {
            this.f1829q = m20058l((ConstraintLayout) getParent());
            for (int i = 0; i < this.f2497g; i++) {
                setProgress(this.f1829q[i], f);
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

    /* renamed from: v */
    public boolean m20760v() {
        return this.f1827o;
    }

    /* renamed from: w */
    public boolean m20759w() {
        return this.f1826n;
    }
}
