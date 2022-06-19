package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.C0687e;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionHelper.class */
public class MotionHelper extends ConstraintHelper implements MotionLayout.AbstractC0589g {

    /* renamed from: a */
    boolean f2435a = false;

    /* renamed from: b */
    boolean f2436b = false;

    /* renamed from: c */
    protected View[] f2437c;

    /* renamed from: d */
    private float f2438d;

    public MotionHelper(Context context) {
        super(context);
    }

    public MotionHelper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        mo44729a(attributeSet);
    }

    public MotionHelper(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        mo44729a(attributeSet);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: a */
    public final void mo44729a(AttributeSet attributeSet) {
        super.mo44729a(attributeSet);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0687e.C0689b.MotionHelper);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0687e.C0689b.MotionHelper_onShow) {
                    this.f2435a = obtainStyledAttributes.getBoolean(index, this.f2435a);
                } else if (index == C0687e.C0689b.MotionHelper_onHide) {
                    this.f2436b = obtainStyledAttributes.getBoolean(index, this.f2436b);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    public void setProgress(float f) {
        this.f2438d = f;
        if (this.f2903k > 0) {
            this.f2437c = m44752c((ConstraintLayout) getParent());
            for (int i = 0; i < this.f2903k; i++) {
                setProgress(this.f2437c[i], f);
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
}
