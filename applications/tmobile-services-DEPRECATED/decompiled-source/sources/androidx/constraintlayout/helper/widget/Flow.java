package androidx.constraintlayout.helper.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.HelperWidget;
import androidx.constraintlayout.widget.C0178R;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.VirtualLayout;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/helper/widget/Flow.class */
public class Flow extends VirtualLayout {

    /* renamed from: p */
    private androidx.constraintlayout.solver.widgets.Flow f1585p;

    public Flow(Context context) {
        super(context);
    }

    public Flow(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public Flow(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.widget.VirtualLayout, androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: m */
    public void mo19955m(AttributeSet attributeSet) {
        super.mo19955m(attributeSet);
        this.f1585p = new androidx.constraintlayout.solver.widgets.Flow();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0178R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0178R.styleable.ConstraintLayout_Layout_android_orientation) {
                    this.f1585p.m20230o2(obtainStyledAttributes.getInt(index, 0));
                } else if (index == C0178R.styleable.ConstraintLayout_Layout_android_padding) {
                    this.f1585p.m20175u1(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == C0178R.styleable.ConstraintLayout_Layout_android_paddingStart) {
                    if (Build.VERSION.SDK_INT >= 17) {
                        this.f1585p.m20170z1(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                    }
                } else if (index == C0178R.styleable.ConstraintLayout_Layout_android_paddingEnd) {
                    if (Build.VERSION.SDK_INT >= 17) {
                        this.f1585p.m20173w1(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                    }
                } else if (index == C0178R.styleable.ConstraintLayout_Layout_android_paddingLeft) {
                    this.f1585p.m20172x1(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == C0178R.styleable.ConstraintLayout_Layout_android_paddingTop) {
                    this.f1585p.m20191A1(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == C0178R.styleable.ConstraintLayout_Layout_android_paddingRight) {
                    this.f1585p.m20171y1(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == C0178R.styleable.ConstraintLayout_Layout_android_paddingBottom) {
                    this.f1585p.m20174v1(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == C0178R.styleable.ConstraintLayout_Layout_flow_wrapMode) {
                    this.f1585p.m20225t2(obtainStyledAttributes.getInt(index, 0));
                } else if (index == C0178R.styleable.ConstraintLayout_Layout_flow_horizontalStyle) {
                    this.f1585p.m20236i2(obtainStyledAttributes.getInt(index, 0));
                } else if (index == C0178R.styleable.ConstraintLayout_Layout_flow_verticalStyle) {
                    this.f1585p.m20226s2(obtainStyledAttributes.getInt(index, 0));
                } else if (index == C0178R.styleable.ConstraintLayout_Layout_flow_firstHorizontalStyle) {
                    this.f1585p.m20242c2(obtainStyledAttributes.getInt(index, 0));
                } else if (index == C0178R.styleable.ConstraintLayout_Layout_flow_lastHorizontalStyle) {
                    this.f1585p.m20234k2(obtainStyledAttributes.getInt(index, 0));
                } else if (index == C0178R.styleable.ConstraintLayout_Layout_flow_firstVerticalStyle) {
                    this.f1585p.m20240e2(obtainStyledAttributes.getInt(index, 0));
                } else if (index == C0178R.styleable.ConstraintLayout_Layout_flow_lastVerticalStyle) {
                    this.f1585p.m20232m2(obtainStyledAttributes.getInt(index, 0));
                } else if (index == C0178R.styleable.ConstraintLayout_Layout_flow_horizontalBias) {
                    this.f1585p.m20238g2(obtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == C0178R.styleable.ConstraintLayout_Layout_flow_firstHorizontalBias) {
                    this.f1585p.m20243b2(obtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == C0178R.styleable.ConstraintLayout_Layout_flow_lastHorizontalBias) {
                    this.f1585p.m20235j2(obtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == C0178R.styleable.ConstraintLayout_Layout_flow_firstVerticalBias) {
                    this.f1585p.m20241d2(obtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == C0178R.styleable.ConstraintLayout_Layout_flow_lastVerticalBias) {
                    this.f1585p.m20233l2(obtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == C0178R.styleable.ConstraintLayout_Layout_flow_verticalBias) {
                    this.f1585p.m20228q2(obtainStyledAttributes.getFloat(index, 0.5f));
                } else if (index == C0178R.styleable.ConstraintLayout_Layout_flow_horizontalAlign) {
                    this.f1585p.m20239f2(obtainStyledAttributes.getInt(index, 2));
                } else if (index == C0178R.styleable.ConstraintLayout_Layout_flow_verticalAlign) {
                    this.f1585p.m20229p2(obtainStyledAttributes.getInt(index, 2));
                } else if (index == C0178R.styleable.ConstraintLayout_Layout_flow_horizontalGap) {
                    this.f1585p.m20237h2(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == C0178R.styleable.ConstraintLayout_Layout_flow_verticalGap) {
                    this.f1585p.m20227r2(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == C0178R.styleable.ConstraintLayout_Layout_flow_maxElementsWrap) {
                    this.f1585p.m20231n2(obtainStyledAttributes.getInt(index, -1));
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.f2499i = this.f1585p;
        m20051u();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: n */
    public void mo20057n(ConstraintSet.Constraint constraint, HelperWidget helperWidget, ConstraintLayout.LayoutParams layoutParams, SparseArray<ConstraintWidget> sparseArray) {
        super.mo20057n(constraint, helperWidget, layoutParams, sparseArray);
        if (helperWidget instanceof androidx.constraintlayout.solver.widgets.Flow) {
            androidx.constraintlayout.solver.widgets.Flow flow = (androidx.constraintlayout.solver.widgets.Flow) helperWidget;
            int i = layoutParams.f2541R;
            if (i != -1) {
                flow.m20230o2(i);
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: o */
    public void mo20056o(ConstraintWidget constraintWidget, boolean z) {
        this.f1585p.m20189g1(z);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    @SuppressLint({"WrongCall"})
    protected void onMeasure(int i, int i2) {
        mo19954v(this.f1585p, i, i2);
    }

    public void setFirstHorizontalBias(float f) {
        this.f1585p.m20243b2(f);
        requestLayout();
    }

    public void setFirstHorizontalStyle(int i) {
        this.f1585p.m20242c2(i);
        requestLayout();
    }

    public void setFirstVerticalBias(float f) {
        this.f1585p.m20241d2(f);
        requestLayout();
    }

    public void setFirstVerticalStyle(int i) {
        this.f1585p.m20240e2(i);
        requestLayout();
    }

    public void setHorizontalAlign(int i) {
        this.f1585p.m20239f2(i);
        requestLayout();
    }

    public void setHorizontalBias(float f) {
        this.f1585p.m20238g2(f);
        requestLayout();
    }

    public void setHorizontalGap(int i) {
        this.f1585p.m20237h2(i);
        requestLayout();
    }

    public void setHorizontalStyle(int i) {
        this.f1585p.m20236i2(i);
        requestLayout();
    }

    public void setMaxElementsWrap(int i) {
        this.f1585p.m20231n2(i);
        requestLayout();
    }

    public void setOrientation(int i) {
        this.f1585p.m20230o2(i);
        requestLayout();
    }

    public void setPadding(int i) {
        this.f1585p.m20175u1(i);
        requestLayout();
    }

    public void setPaddingBottom(int i) {
        this.f1585p.m20174v1(i);
        requestLayout();
    }

    public void setPaddingLeft(int i) {
        this.f1585p.m20172x1(i);
        requestLayout();
    }

    public void setPaddingRight(int i) {
        this.f1585p.m20171y1(i);
        requestLayout();
    }

    public void setPaddingTop(int i) {
        this.f1585p.m20191A1(i);
        requestLayout();
    }

    public void setVerticalAlign(int i) {
        this.f1585p.m20229p2(i);
        requestLayout();
    }

    public void setVerticalBias(float f) {
        this.f1585p.m20228q2(f);
        requestLayout();
    }

    public void setVerticalGap(int i) {
        this.f1585p.m20227r2(i);
        requestLayout();
    }

    public void setVerticalStyle(int i) {
        this.f1585p.m20226s2(i);
        requestLayout();
    }

    public void setWrapMode(int i) {
        this.f1585p.m20225t2(i);
        requestLayout();
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout
    /* renamed from: v */
    public void mo19954v(androidx.constraintlayout.solver.widgets.VirtualLayout virtualLayout, int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (virtualLayout != null) {
            virtualLayout.mo20181o1(mode, size, mode2, size2);
            setMeasuredDimension(virtualLayout.m20186j1(), virtualLayout.m20187i1());
            return;
        }
        setMeasuredDimension(0, 0);
    }
}
