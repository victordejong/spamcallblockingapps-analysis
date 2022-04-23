package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.e;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionHelper.class */
public class MotionHelper extends ConstraintHelper implements MotionLayout.g {

    /* renamed from: a  reason: collision with root package name */
    boolean f1459a = false;

    /* renamed from: b  reason: collision with root package name */
    boolean f1460b = false;

    /* renamed from: c  reason: collision with root package name */
    protected View[] f1461c;

    /* renamed from: d  reason: collision with root package name */
    private float f1462d;

    public MotionHelper(Context context) {
        super(context);
    }

    public MotionHelper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(attributeSet);
    }

    public MotionHelper(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(attributeSet);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public final void a(AttributeSet attributeSet) {
        super.a(attributeSet);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, e.b.MotionHelper);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == e.b.MotionHelper_onShow) {
                    this.f1459a = obtainStyledAttributes.getBoolean(index, this.f1459a);
                } else if (index == e.b.MotionHelper_onHide) {
                    this.f1460b = obtainStyledAttributes.getBoolean(index, this.f1460b);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    public void setProgress(float f) {
        this.f1462d = f;
        if (this.k > 0) {
            this.f1461c = c((ConstraintLayout) getParent());
            for (int i = 0; i < this.k; i++) {
                setProgress(this.f1461c[i], f);
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
