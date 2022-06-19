package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.widget.C0523e;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/helper/widget/Layer.class */
public class Layer extends ConstraintHelper {

    /* renamed from: C */
    private boolean f1531C;

    /* renamed from: D */
    private boolean f1532D;

    /* renamed from: p */
    ConstraintLayout f1536p;

    /* renamed from: m */
    private float f1533m = Float.NaN;

    /* renamed from: n */
    private float f1534n = Float.NaN;

    /* renamed from: o */
    private float f1535o = Float.NaN;

    /* renamed from: q */
    private float f1537q = 1.0f;

    /* renamed from: r */
    private float f1538r = 1.0f;

    /* renamed from: s */
    protected float f1539s = Float.NaN;

    /* renamed from: t */
    protected float f1540t = Float.NaN;

    /* renamed from: u */
    protected float f1541u = Float.NaN;

    /* renamed from: v */
    protected float f1542v = Float.NaN;

    /* renamed from: w */
    protected float f1543w = Float.NaN;

    /* renamed from: x */
    protected float f1544x = Float.NaN;

    /* renamed from: y */
    boolean f1545y = true;

    /* renamed from: z */
    View[] f1546z = null;

    /* renamed from: A */
    private float f1529A = 0.0f;

    /* renamed from: B */
    private float f1530B = 0.0f;

    public Layer(Context context) {
        super(context);
    }

    public Layer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public Layer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: x */
    private void m34585x() {
        int i;
        if (this.f1536p == null || (i = this.f2471e) == 0) {
            return;
        }
        View[] viewArr = this.f1546z;
        if (viewArr == null || viewArr.length != i) {
            this.f1546z = new View[i];
        }
        for (int i2 = 0; i2 < this.f2471e; i2++) {
            this.f1546z[i2] = this.f1536p.m33685o(this.f2470d[i2]);
        }
    }

    /* JADX WARN: Type inference failed for: r0v54, types: [double] */
    /* renamed from: y */
    private void m34584y() {
        if (this.f1536p == null) {
            return;
        }
        if (this.f1546z == null) {
            m34585x();
        }
        m34586w();
        char radians = Float.isNaN(this.f1535o) ? (char) 0 : Math.toRadians(this.f1535o);
        float sin = (float) Math.sin(radians);
        float cos = (float) Math.cos(radians);
        float f = this.f1537q;
        float f2 = this.f1538r;
        float f3 = -f2;
        for (int i = 0; i < this.f2471e; i++) {
            View view = this.f1546z[i];
            int left = (view.getLeft() + view.getRight()) / 2;
            int top = (view.getTop() + view.getBottom()) / 2;
            float f4 = left - this.f1539s;
            float f5 = top - this.f1540t;
            float f6 = this.f1529A;
            float f7 = this.f1530B;
            view.setTranslationX(((((f * cos) * f4) + ((f3 * sin) * f5)) - f4) + f6);
            view.setTranslationY((((f4 * (f * sin)) + ((f2 * cos) * f5)) - f5) + f7);
            view.setScaleY(this.f1538r);
            view.setScaleX(this.f1537q);
            if (!Float.isNaN(this.f1535o)) {
                view.setRotation(this.f1535o);
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: n */
    public void mo33660n(AttributeSet attributeSet) {
        super.mo33660n(attributeSet);
        this.f2474h = false;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0523e.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0523e.ConstraintLayout_Layout_android_visibility) {
                    this.f1531C = true;
                } else if (index == C0523e.ConstraintLayout_Layout_android_elevation) {
                    this.f1532D = true;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f1536p = (ConstraintLayout) getParent();
        if (this.f1531C || this.f1532D) {
            int visibility = getVisibility();
            float elevation = Build.VERSION.SDK_INT >= 21 ? getElevation() : 0.0f;
            for (int i = 0; i < this.f2471e; i++) {
                View m33685o = this.f1536p.m33685o(this.f2470d[i]);
                if (m33685o != null) {
                    if (this.f1531C) {
                        m33685o.setVisibility(visibility);
                    }
                    if (this.f1532D && elevation > 0.0f && Build.VERSION.SDK_INT >= 21) {
                        m33685o.setTranslationZ(m33685o.getTranslationZ() + elevation);
                    }
                }
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: q */
    public void mo33664q(ConstraintLayout constraintLayout) {
        m34585x();
        this.f1539s = Float.NaN;
        this.f1540t = Float.NaN;
        ConstraintWidget m33673b = ((ConstraintLayout.LayoutParams) getLayoutParams()).m33673b();
        m33673b.m34004Y0(0);
        m33673b.m33959z0(0);
        m34586w();
        layout(((int) this.f1543w) - getPaddingLeft(), ((int) this.f1544x) - getPaddingTop(), ((int) this.f1541u) + getPaddingRight(), ((int) this.f1542v) + getPaddingBottom());
        m34584y();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: s */
    public void mo33696s(ConstraintLayout constraintLayout) {
        this.f1536p = constraintLayout;
        float rotation = getRotation();
        if (rotation != 0.0f) {
            this.f1535o = rotation;
        } else if (Float.isNaN(this.f1535o)) {
        } else {
            this.f1535o = rotation;
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        m33705h();
    }

    @Override // android.view.View
    public void setPivotX(float f) {
        this.f1533m = f;
        m34584y();
    }

    @Override // android.view.View
    public void setPivotY(float f) {
        this.f1534n = f;
        m34584y();
    }

    @Override // android.view.View
    public void setRotation(float f) {
        this.f1535o = f;
        m34584y();
    }

    @Override // android.view.View
    public void setScaleX(float f) {
        this.f1537q = f;
        m34584y();
    }

    @Override // android.view.View
    public void setScaleY(float f) {
        this.f1538r = f;
        m34584y();
    }

    @Override // android.view.View
    public void setTranslationX(float f) {
        this.f1529A = f;
        m34584y();
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        this.f1530B = f;
        m34584y();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        m33705h();
    }

    /* renamed from: w */
    protected void m34586w() {
        if (this.f1536p == null) {
            return;
        }
        if (!this.f1545y && !Float.isNaN(this.f1539s) && !Float.isNaN(this.f1540t)) {
            return;
        }
        if (!Float.isNaN(this.f1533m) && !Float.isNaN(this.f1534n)) {
            this.f1540t = this.f1534n;
            this.f1539s = this.f1533m;
            return;
        }
        View[] m33700m = m33700m(this.f1536p);
        int left = m33700m[0].getLeft();
        int top = m33700m[0].getTop();
        int right = m33700m[0].getRight();
        int bottom = m33700m[0].getBottom();
        for (int i = 0; i < this.f2471e; i++) {
            View view = m33700m[i];
            left = Math.min(left, view.getLeft());
            top = Math.min(top, view.getTop());
            right = Math.max(right, view.getRight());
            bottom = Math.max(bottom, view.getBottom());
        }
        this.f1541u = right;
        this.f1542v = bottom;
        this.f1543w = left;
        this.f1544x = top;
        if (Float.isNaN(this.f1533m)) {
            this.f1539s = (left + right) / 2;
        } else {
            this.f1539s = this.f1533m;
        }
        if (Float.isNaN(this.f1534n)) {
            this.f1540t = (top + bottom) / 2;
        } else {
            this.f1540t = this.f1534n;
        }
    }
}
