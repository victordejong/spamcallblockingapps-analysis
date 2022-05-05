package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.widget.C0178R;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/helper/widget/Layer.class */
public class Layer extends ConstraintHelper {

    /* renamed from: D */
    private boolean f1589D;

    /* renamed from: E */
    private boolean f1590E;

    /* renamed from: q */
    ConstraintLayout f1594q;

    /* renamed from: n */
    private float f1591n = Float.NaN;

    /* renamed from: o */
    private float f1592o = Float.NaN;

    /* renamed from: p */
    private float f1593p = Float.NaN;

    /* renamed from: r */
    private float f1595r = 1.0f;

    /* renamed from: s */
    private float f1596s = 1.0f;

    /* renamed from: t */
    protected float f1597t = Float.NaN;

    /* renamed from: u */
    protected float f1598u = Float.NaN;

    /* renamed from: v */
    protected float f1599v = Float.NaN;

    /* renamed from: w */
    protected float f1600w = Float.NaN;

    /* renamed from: x */
    protected float f1601x = Float.NaN;

    /* renamed from: y */
    protected float f1602y = Float.NaN;

    /* renamed from: z */
    boolean f1603z = true;

    /* renamed from: A */
    View[] f1586A = null;

    /* renamed from: B */
    private float f1587B = 0.0f;

    /* renamed from: C */
    private float f1588C = 0.0f;

    public Layer(Context context) {
        super(context);
    }

    public Layer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public Layer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: w */
    private void m20990w() {
        int i;
        if (!(this.f1594q == null || (i = this.f2497g) == 0)) {
            View[] viewArr = this.f1586A;
            if (viewArr == null || viewArr.length != i) {
                this.f1586A = new View[this.f2497g];
            }
            for (int i2 = 0; i2 < this.f2497g; i2++) {
                this.f1586A[i2] = this.f1594q.m20043h(this.f2496f[i2]);
            }
        }
    }

    /* renamed from: x */
    private void m20989x() {
        if (this.f1594q != null) {
            if (this.f1586A == null) {
                m20990w();
            }
            m20991v();
            double radians = Float.isNaN(this.f1593p) ? 0.0d : Math.toRadians(this.f1593p);
            float sin = (float) Math.sin(radians);
            float cos = (float) Math.cos(radians);
            float f = this.f1595r;
            float f2 = this.f1596s;
            float f3 = -f2;
            for (int i = 0; i < this.f2497g; i++) {
                View view = this.f1586A[i];
                int left = (view.getLeft() + view.getRight()) / 2;
                int top = (view.getTop() + view.getBottom()) / 2;
                float f4 = left - this.f1597t;
                float f5 = top - this.f1598u;
                float f6 = this.f1587B;
                float f7 = this.f1588C;
                view.setTranslationX(((((f * cos) * f4) + ((f3 * sin) * f5)) - f4) + f6);
                view.setTranslationY((((f4 * (f * sin)) + ((f2 * cos) * f5)) - f5) + f7);
                view.setScaleY(this.f1596s);
                view.setScaleX(this.f1595r);
                if (!Float.isNaN(this.f1593p)) {
                    view.setRotation(this.f1593p);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: m */
    public void mo19955m(AttributeSet attributeSet) {
        super.mo19955m(attributeSet);
        this.f2500j = false;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0178R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0178R.styleable.ConstraintLayout_Layout_android_visibility) {
                    this.f1589D = true;
                } else if (index == C0178R.styleable.ConstraintLayout_Layout_android_elevation) {
                    this.f1590E = true;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f1594q = (ConstraintLayout) getParent();
        if (this.f1589D || this.f1590E) {
            int visibility = getVisibility();
            float elevation = Build.VERSION.SDK_INT >= 21 ? getElevation() : 0.0f;
            for (int i = 0; i < this.f2497g; i++) {
                View h = this.f1594q.m20043h(this.f2496f[i]);
                if (h != null) {
                    if (this.f1589D) {
                        h.setVisibility(visibility);
                    }
                    if (this.f1590E && elevation > 0.0f && Build.VERSION.SDK_INT >= 21) {
                        h.setTranslationZ(h.getTranslationZ() + elevation);
                    }
                }
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: p */
    public void mo19966p(ConstraintLayout constraintLayout) {
        m20990w();
        this.f1597t = Float.NaN;
        this.f1598u = Float.NaN;
        ConstraintWidget b = ((ConstraintLayout.LayoutParams) getLayoutParams()).m20031b();
        b.m20347Y0(0);
        b.m20302z0(0);
        m20991v();
        layout(((int) this.f1601x) - getPaddingLeft(), ((int) this.f1602y) - getPaddingTop(), ((int) this.f1599v) + getPaddingRight(), ((int) this.f1600w) + getPaddingBottom());
        m20989x();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: r */
    public void mo20054r(ConstraintLayout constraintLayout) {
        this.f1594q = constraintLayout;
        float rotation = getRotation();
        if (rotation != 0.0f) {
            this.f1593p = rotation;
        } else if (!Float.isNaN(this.f1593p)) {
            this.f1593p = rotation;
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        m20063g();
    }

    @Override // android.view.View
    public void setPivotX(float f) {
        this.f1591n = f;
        m20989x();
    }

    @Override // android.view.View
    public void setPivotY(float f) {
        this.f1592o = f;
        m20989x();
    }

    @Override // android.view.View
    public void setRotation(float f) {
        this.f1593p = f;
        m20989x();
    }

    @Override // android.view.View
    public void setScaleX(float f) {
        this.f1595r = f;
        m20989x();
    }

    @Override // android.view.View
    public void setScaleY(float f) {
        this.f1596s = f;
        m20989x();
    }

    @Override // android.view.View
    public void setTranslationX(float f) {
        this.f1587B = f;
        m20989x();
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        this.f1588C = f;
        m20989x();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        m20063g();
    }

    /* renamed from: v */
    protected void m20991v() {
        if (this.f1594q != null) {
            if (!(this.f1603z || Float.isNaN(this.f1597t) || Float.isNaN(this.f1598u))) {
                return;
            }
            if (Float.isNaN(this.f1591n) || Float.isNaN(this.f1592o)) {
                View[] l = m20058l(this.f1594q);
                int left = l[0].getLeft();
                int top = l[0].getTop();
                int right = l[0].getRight();
                int bottom = l[0].getBottom();
                for (int i = 0; i < this.f2497g; i++) {
                    View view = l[i];
                    left = Math.min(left, view.getLeft());
                    top = Math.min(top, view.getTop());
                    right = Math.max(right, view.getRight());
                    bottom = Math.max(bottom, view.getBottom());
                }
                this.f1599v = right;
                this.f1600w = bottom;
                this.f1601x = left;
                this.f1602y = top;
                if (Float.isNaN(this.f1591n)) {
                    this.f1597t = (left + right) / 2;
                } else {
                    this.f1597t = this.f1591n;
                }
                if (Float.isNaN(this.f1592o)) {
                    this.f1598u = (top + bottom) / 2;
                } else {
                    this.f1598u = this.f1592o;
                }
            } else {
                this.f1598u = this.f1592o;
                this.f1597t = this.f1591n;
            }
        }
    }
}
