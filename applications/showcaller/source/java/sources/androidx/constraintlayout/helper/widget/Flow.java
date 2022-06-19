package androidx.constraintlayout.helper.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.solver.widgets.C0494e;
import androidx.constraintlayout.solver.widgets.C0499h;
import androidx.constraintlayout.solver.widgets.C0501j;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.widget.C0515b;
import androidx.constraintlayout.widget.C0523e;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.VirtualLayout;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/helper/widget/Flow.class */
public class Flow extends VirtualLayout {

    /* renamed from: o */
    private C0494e f1528o;

    public Flow(Context context) {
        super(context);
    }

    public Flow(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public Flow(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout, androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: n */
    public void mo33660n(AttributeSet attributeSet) {
        super.mo33660n(attributeSet);
        this.f1528o = new C0494e();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0523e.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0523e.ConstraintLayout_Layout_android_orientation) {
                    this.f1528o.m33800o2(obtainStyledAttributes.getInt(index, 0));
                } else if (index == C0523e.ConstraintLayout_Layout_android_padding) {
                    this.f1528o.m33745u1(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == C0523e.ConstraintLayout_Layout_android_paddingStart) {
                    if (Build.VERSION.SDK_INT >= 17) {
                        this.f1528o.m33740z1(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                    }
                } else if (index == C0523e.ConstraintLayout_Layout_android_paddingEnd) {
                    if (Build.VERSION.SDK_INT >= 17) {
                        this.f1528o.m33743w1(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                    }
                } else if (index == C0523e.ConstraintLayout_Layout_android_paddingLeft) {
                    this.f1528o.m33742x1(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == C0523e.ConstraintLayout_Layout_android_paddingTop) {
                    this.f1528o.m33761A1(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == C0523e.ConstraintLayout_Layout_android_paddingRight) {
                    this.f1528o.m33741y1(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == C0523e.ConstraintLayout_Layout_android_paddingBottom) {
                    this.f1528o.m33744v1(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == C0523e.ConstraintLayout_Layout_flow_wrapMode) {
                    this.f1528o.m33795t2(obtainStyledAttributes.getInt(index, 0));
                } else if (index == C0523e.ConstraintLayout_Layout_flow_horizontalStyle) {
                    this.f1528o.m33806i2(obtainStyledAttributes.getInt(index, 0));
                } else if (index == C0523e.ConstraintLayout_Layout_flow_verticalStyle) {
                    this.f1528o.m33796s2(obtainStyledAttributes.getInt(index, 0));
                } else if (index == C0523e.ConstraintLayout_Layout_flow_firstHorizontalStyle) {
                    this.f1528o.m33812c2(obtainStyledAttributes.getInt(index, 0));
                } else if (index == C0523e.ConstraintLayout_Layout_flow_lastHorizontalStyle) {
                    this.f1528o.m33804k2(obtainStyledAttributes.getInt(index, 0));
                } else if (index == C0523e.ConstraintLayout_Layout_flow_firstVerticalStyle) {
                    this.f1528o.m33810e2(obtainStyledAttributes.getInt(index, 0));
                } else if (index == C0523e.ConstraintLayout_Layout_flow_lastVerticalStyle) {
                    this.f1528o.m33802m2(obtainStyledAttributes.getInt(index, 0));
                } else if (index == C0523e.ConstraintLayout_Layout_flow_horizontalBias) {
                    this.f1528o.m33808g2(obtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == C0523e.ConstraintLayout_Layout_flow_firstHorizontalBias) {
                    this.f1528o.m33813b2(obtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == C0523e.ConstraintLayout_Layout_flow_lastHorizontalBias) {
                    this.f1528o.m33805j2(obtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == C0523e.ConstraintLayout_Layout_flow_firstVerticalBias) {
                    this.f1528o.m33811d2(obtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == C0523e.ConstraintLayout_Layout_flow_lastVerticalBias) {
                    this.f1528o.m33803l2(obtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == C0523e.ConstraintLayout_Layout_flow_verticalBias) {
                    this.f1528o.m33798q2(obtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == C0523e.ConstraintLayout_Layout_flow_horizontalAlign) {
                    this.f1528o.m33809f2(obtainStyledAttributes.getInt(index, 2));
                } else if (index == C0523e.ConstraintLayout_Layout_flow_verticalAlign) {
                    this.f1528o.m33799p2(obtainStyledAttributes.getInt(index, 2));
                } else if (index == C0523e.ConstraintLayout_Layout_flow_horizontalGap) {
                    this.f1528o.m33807h2(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == C0523e.ConstraintLayout_Layout_flow_verticalGap) {
                    this.f1528o.m33797r2(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == C0523e.ConstraintLayout_Layout_flow_maxElementsWrap) {
                    this.f1528o.m33801n2(obtainStyledAttributes.getInt(index, -1));
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.f2473g = this.f1528o;
        m33693v();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: o */
    public void mo33699o(C0515b.C0516a c0516a, C0499h c0499h, ConstraintLayout.LayoutParams layoutParams, SparseArray<ConstraintWidget> sparseArray) {
        super.mo33699o(c0516a, c0499h, layoutParams, sparseArray);
        if (c0499h instanceof C0494e) {
            C0494e c0494e = (C0494e) c0499h;
            int i = layoutParams.f2520S;
            if (i == -1) {
                return;
            }
            c0494e.m33800o2(i);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    @SuppressLint({"WrongCall"})
    protected void onMeasure(int i, int i2) {
        mo33659w(this.f1528o, i, i2);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: p */
    public void mo33698p(ConstraintWidget constraintWidget, boolean z) {
        this.f1528o.m33759g1(z);
    }

    public void setFirstHorizontalBias(float f) {
        this.f1528o.m33813b2(f);
        requestLayout();
    }

    public void setFirstHorizontalStyle(int i) {
        this.f1528o.m33812c2(i);
        requestLayout();
    }

    public void setFirstVerticalBias(float f) {
        this.f1528o.m33811d2(f);
        requestLayout();
    }

    public void setFirstVerticalStyle(int i) {
        this.f1528o.m33810e2(i);
        requestLayout();
    }

    public void setHorizontalAlign(int i) {
        this.f1528o.m33809f2(i);
        requestLayout();
    }

    public void setHorizontalBias(float f) {
        this.f1528o.m33808g2(f);
        requestLayout();
    }

    public void setHorizontalGap(int i) {
        this.f1528o.m33807h2(i);
        requestLayout();
    }

    public void setHorizontalStyle(int i) {
        this.f1528o.m33806i2(i);
        requestLayout();
    }

    public void setMaxElementsWrap(int i) {
        this.f1528o.m33801n2(i);
        requestLayout();
    }

    public void setOrientation(int i) {
        this.f1528o.m33800o2(i);
        requestLayout();
    }

    public void setPadding(int i) {
        this.f1528o.m33745u1(i);
        requestLayout();
    }

    public void setPaddingBottom(int i) {
        this.f1528o.m33744v1(i);
        requestLayout();
    }

    public void setPaddingLeft(int i) {
        this.f1528o.m33742x1(i);
        requestLayout();
    }

    public void setPaddingRight(int i) {
        this.f1528o.m33741y1(i);
        requestLayout();
    }

    public void setPaddingTop(int i) {
        this.f1528o.m33761A1(i);
        requestLayout();
    }

    public void setVerticalAlign(int i) {
        this.f1528o.m33799p2(i);
        requestLayout();
    }

    public void setVerticalBias(float f) {
        this.f1528o.m33798q2(f);
        requestLayout();
    }

    public void setVerticalGap(int i) {
        this.f1528o.m33797r2(i);
        requestLayout();
    }

    public void setVerticalStyle(int i) {
        this.f1528o.m33796s2(i);
        requestLayout();
    }

    public void setWrapMode(int i) {
        this.f1528o.m33795t2(i);
        requestLayout();
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout
    /* renamed from: w */
    public void mo33659w(C0501j c0501j, int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (c0501j == null) {
            setMeasuredDimension(0, 0);
            return;
        }
        c0501j.mo33751o1(mode, size, mode2, size2);
        setMeasuredDimension(c0501j.m33756j1(), c0501j.m33757i1());
    }
}
