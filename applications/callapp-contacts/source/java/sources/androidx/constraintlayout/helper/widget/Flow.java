package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.p026a.p027a.C0541e;
import androidx.constraintlayout.p026a.p027a.C0545g;
import androidx.constraintlayout.p026a.p027a.C0550j;
import androidx.constraintlayout.p026a.p027a.C0552l;
import androidx.constraintlayout.widget.C0680c;
import androidx.constraintlayout.widget.C0687e;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.VirtualLayout;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/helper/widget/Flow.class */
public class Flow extends VirtualLayout {

    /* renamed from: a */
    private C0545g f2350a;

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
    /* renamed from: a */
    public final void mo44729a(AttributeSet attributeSet) {
        super.mo44729a(attributeSet);
        this.f2350a = new C0545g();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0687e.C0689b.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0687e.C0689b.ConstraintLayout_Layout_android_orientation) {
                    this.f2350a.f2179aW = obtainStyledAttributes.getInt(index, 0);
                } else if (index == C0687e.C0689b.ConstraintLayout_Layout_android_padding) {
                    this.f2350a.m45168p(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == C0687e.C0689b.ConstraintLayout_Layout_android_paddingStart) {
                    if (Build.VERSION.SDK_INT >= 17) {
                        C0545g c0545g = this.f2350a;
                        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                        c0545g.f2222bb = dimensionPixelSize;
                        c0545g.f2224bd = dimensionPixelSize;
                        c0545g.f2225be = dimensionPixelSize;
                    }
                } else if (index == C0687e.C0689b.ConstraintLayout_Layout_android_paddingEnd) {
                    if (Build.VERSION.SDK_INT >= 17) {
                        this.f2350a.f2223bc = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                    }
                } else if (index == C0687e.C0689b.ConstraintLayout_Layout_android_paddingLeft) {
                    this.f2350a.m45167q(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == C0687e.C0689b.ConstraintLayout_Layout_android_paddingTop) {
                    this.f2350a.f2219aZ = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == C0687e.C0689b.ConstraintLayout_Layout_android_paddingRight) {
                    this.f2350a.m45166r(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == C0687e.C0689b.ConstraintLayout_Layout_android_paddingBottom) {
                    this.f2350a.f2221ba = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == C0687e.C0689b.ConstraintLayout_Layout_flow_wrapMode) {
                    this.f2350a.f2177aU = obtainStyledAttributes.getInt(index, 0);
                } else if (index == C0687e.C0689b.ConstraintLayout_Layout_flow_horizontalStyle) {
                    this.f2350a.f2164a = obtainStyledAttributes.getInt(index, 0);
                } else if (index == C0687e.C0689b.ConstraintLayout_Layout_flow_verticalStyle) {
                    this.f2350a.f2180b = obtainStyledAttributes.getInt(index, 0);
                } else if (index == C0687e.C0689b.ConstraintLayout_Layout_flow_firstHorizontalStyle) {
                    this.f2350a.f2187c = obtainStyledAttributes.getInt(index, 0);
                } else if (index == C0687e.C0689b.ConstraintLayout_Layout_flow_lastHorizontalStyle) {
                    this.f2350a.f2165aI = obtainStyledAttributes.getInt(index, 0);
                } else if (index == C0687e.C0689b.ConstraintLayout_Layout_flow_firstVerticalStyle) {
                    this.f2350a.f2188d = obtainStyledAttributes.getInt(index, 0);
                } else if (index == C0687e.C0689b.ConstraintLayout_Layout_flow_lastVerticalStyle) {
                    this.f2350a.f2166aJ = obtainStyledAttributes.getInt(index, 0);
                } else if (index == C0687e.C0689b.ConstraintLayout_Layout_flow_horizontalBias) {
                    this.f2350a.f2167aK = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == C0687e.C0689b.ConstraintLayout_Layout_flow_firstHorizontalBias) {
                    this.f2350a.f2169aM = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == C0687e.C0689b.ConstraintLayout_Layout_flow_lastHorizontalBias) {
                    this.f2350a.f2171aO = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == C0687e.C0689b.ConstraintLayout_Layout_flow_firstVerticalBias) {
                    this.f2350a.f2170aN = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == C0687e.C0689b.ConstraintLayout_Layout_flow_lastVerticalBias) {
                    this.f2350a.f2172aP = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == C0687e.C0689b.ConstraintLayout_Layout_flow_verticalBias) {
                    this.f2350a.f2168aL = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == C0687e.C0689b.ConstraintLayout_Layout_flow_horizontalAlign) {
                    this.f2350a.f2175aS = obtainStyledAttributes.getInt(index, 2);
                } else if (index == C0687e.C0689b.ConstraintLayout_Layout_flow_verticalAlign) {
                    this.f2350a.f2176aT = obtainStyledAttributes.getInt(index, 2);
                } else if (index == C0687e.C0689b.ConstraintLayout_Layout_flow_horizontalGap) {
                    this.f2350a.f2173aQ = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == C0687e.C0689b.ConstraintLayout_Layout_flow_verticalGap) {
                    this.f2350a.f2174aR = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == C0687e.C0689b.ConstraintLayout_Layout_flow_maxElementsWrap) {
                    this.f2350a.f2178aV = obtainStyledAttributes.getInt(index, -1);
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.f2905m = this.f2350a;
        m44753c();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: a */
    public final void mo44762a(C0541e c0541e, boolean z) {
        C0545g c0545g = this.f2350a;
        if (c0545g.f2222bb > 0 || c0545g.f2223bc > 0) {
            if (z) {
                c0545g.f2224bd = c0545g.f2223bc;
                c0545g.f2225be = c0545g.f2222bb;
                return;
            }
            c0545g.f2224bd = c0545g.f2222bb;
            c0545g.f2225be = c0545g.f2223bc;
        }
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout
    /* renamed from: a */
    public final void mo44728a(C0552l c0552l, int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (c0552l == null) {
            setMeasuredDimension(0, 0);
            return;
        }
        c0552l.mo45174a(mode, size, mode2, size2);
        setMeasuredDimension(c0552l.f2227bg, c0552l.f2228bh);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: a */
    public final void mo44758a(C0680c.C0681a c0681a, C0550j c0550j, ConstraintLayout.LayoutParams layoutParams, SparseArray<C0541e> sparseArray) {
        super.mo44758a(c0681a, c0550j, layoutParams, sparseArray);
        if (c0550j instanceof C0545g) {
            C0545g c0545g = (C0545g) c0550j;
            if (layoutParams.f2952S == -1) {
                return;
            }
            c0545g.f2179aW = layoutParams.f2952S;
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public void onMeasure(int i, int i2) {
        mo44728a(this.f2350a, i, i2);
    }

    public void setFirstHorizontalBias(float f) {
        this.f2350a.f2169aM = f;
        requestLayout();
    }

    public void setFirstHorizontalStyle(int i) {
        this.f2350a.f2187c = i;
        requestLayout();
    }

    public void setFirstVerticalBias(float f) {
        this.f2350a.f2170aN = f;
        requestLayout();
    }

    public void setFirstVerticalStyle(int i) {
        this.f2350a.f2188d = i;
        requestLayout();
    }

    public void setHorizontalAlign(int i) {
        this.f2350a.f2175aS = i;
        requestLayout();
    }

    public void setHorizontalBias(float f) {
        this.f2350a.f2167aK = f;
        requestLayout();
    }

    public void setHorizontalGap(int i) {
        this.f2350a.f2173aQ = i;
        requestLayout();
    }

    public void setHorizontalStyle(int i) {
        this.f2350a.f2164a = i;
        requestLayout();
    }

    public void setMaxElementsWrap(int i) {
        this.f2350a.f2178aV = i;
        requestLayout();
    }

    public void setOrientation(int i) {
        this.f2350a.f2179aW = i;
        requestLayout();
    }

    public void setPadding(int i) {
        this.f2350a.m45168p(i);
        requestLayout();
    }

    public void setPaddingBottom(int i) {
        this.f2350a.f2221ba = i;
        requestLayout();
    }

    public void setPaddingLeft(int i) {
        this.f2350a.m45167q(i);
        requestLayout();
    }

    public void setPaddingRight(int i) {
        this.f2350a.m45166r(i);
        requestLayout();
    }

    public void setPaddingTop(int i) {
        this.f2350a.f2219aZ = i;
        requestLayout();
    }

    public void setVerticalAlign(int i) {
        this.f2350a.f2176aT = i;
        requestLayout();
    }

    public void setVerticalBias(float f) {
        this.f2350a.f2168aL = f;
        requestLayout();
    }

    public void setVerticalGap(int i) {
        this.f2350a.f2174aR = i;
        requestLayout();
    }

    public void setVerticalStyle(int i) {
        this.f2350a.f2180b = i;
        requestLayout();
    }

    public void setWrapMode(int i) {
        this.f2350a.f2177aU = i;
        requestLayout();
    }
}
