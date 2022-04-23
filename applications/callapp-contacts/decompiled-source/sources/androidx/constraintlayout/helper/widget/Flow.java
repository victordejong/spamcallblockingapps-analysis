package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.a.a.g;
import androidx.constraintlayout.a.a.j;
import androidx.constraintlayout.a.a.l;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.VirtualLayout;
import androidx.constraintlayout.widget.c;
import androidx.constraintlayout.widget.e;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/helper/widget/Flow.class */
public class Flow extends VirtualLayout {

    /* renamed from: a  reason: collision with root package name */
    private g f1424a;

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
    public final void a(AttributeSet attributeSet) {
        super.a(attributeSet);
        this.f1424a = new g();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, e.b.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == e.b.ConstraintLayout_Layout_android_orientation) {
                    this.f1424a.aW = obtainStyledAttributes.getInt(index, 0);
                } else if (index == e.b.ConstraintLayout_Layout_android_padding) {
                    this.f1424a.p(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == e.b.ConstraintLayout_Layout_android_paddingStart) {
                    if (Build.VERSION.SDK_INT >= 17) {
                        g gVar = this.f1424a;
                        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                        gVar.bb = dimensionPixelSize;
                        gVar.bd = dimensionPixelSize;
                        gVar.be = dimensionPixelSize;
                    }
                } else if (index == e.b.ConstraintLayout_Layout_android_paddingEnd) {
                    if (Build.VERSION.SDK_INT >= 17) {
                        this.f1424a.bc = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                    }
                } else if (index == e.b.ConstraintLayout_Layout_android_paddingLeft) {
                    this.f1424a.q(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == e.b.ConstraintLayout_Layout_android_paddingTop) {
                    this.f1424a.aZ = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == e.b.ConstraintLayout_Layout_android_paddingRight) {
                    this.f1424a.r(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                } else if (index == e.b.ConstraintLayout_Layout_android_paddingBottom) {
                    this.f1424a.ba = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == e.b.ConstraintLayout_Layout_flow_wrapMode) {
                    this.f1424a.aU = obtainStyledAttributes.getInt(index, 0);
                } else if (index == e.b.ConstraintLayout_Layout_flow_horizontalStyle) {
                    this.f1424a.f1378a = obtainStyledAttributes.getInt(index, 0);
                } else if (index == e.b.ConstraintLayout_Layout_flow_verticalStyle) {
                    this.f1424a.f1379b = obtainStyledAttributes.getInt(index, 0);
                } else if (index == e.b.ConstraintLayout_Layout_flow_firstHorizontalStyle) {
                    this.f1424a.f1380c = obtainStyledAttributes.getInt(index, 0);
                } else if (index == e.b.ConstraintLayout_Layout_flow_lastHorizontalStyle) {
                    this.f1424a.aI = obtainStyledAttributes.getInt(index, 0);
                } else if (index == e.b.ConstraintLayout_Layout_flow_firstVerticalStyle) {
                    this.f1424a.f1381d = obtainStyledAttributes.getInt(index, 0);
                } else if (index == e.b.ConstraintLayout_Layout_flow_lastVerticalStyle) {
                    this.f1424a.aJ = obtainStyledAttributes.getInt(index, 0);
                } else if (index == e.b.ConstraintLayout_Layout_flow_horizontalBias) {
                    this.f1424a.aK = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == e.b.ConstraintLayout_Layout_flow_firstHorizontalBias) {
                    this.f1424a.aM = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == e.b.ConstraintLayout_Layout_flow_lastHorizontalBias) {
                    this.f1424a.aO = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == e.b.ConstraintLayout_Layout_flow_firstVerticalBias) {
                    this.f1424a.aN = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == e.b.ConstraintLayout_Layout_flow_lastVerticalBias) {
                    this.f1424a.aP = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == e.b.ConstraintLayout_Layout_flow_verticalBias) {
                    this.f1424a.aL = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == e.b.ConstraintLayout_Layout_flow_horizontalAlign) {
                    this.f1424a.aS = obtainStyledAttributes.getInt(index, 2);
                } else if (index == e.b.ConstraintLayout_Layout_flow_verticalAlign) {
                    this.f1424a.aT = obtainStyledAttributes.getInt(index, 2);
                } else if (index == e.b.ConstraintLayout_Layout_flow_horizontalGap) {
                    this.f1424a.aQ = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == e.b.ConstraintLayout_Layout_flow_verticalGap) {
                    this.f1424a.aR = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == e.b.ConstraintLayout_Layout_flow_maxElementsWrap) {
                    this.f1424a.aV = obtainStyledAttributes.getInt(index, -1);
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.m = this.f1424a;
        c();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public final void a(androidx.constraintlayout.a.a.e eVar, boolean z) {
        g gVar = this.f1424a;
        if (gVar.bb <= 0 && gVar.bc <= 0) {
            return;
        }
        if (z) {
            gVar.bd = gVar.bc;
            gVar.be = gVar.bb;
            return;
        }
        gVar.bd = gVar.bb;
        gVar.be = gVar.bc;
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout
    public final void a(l lVar, int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (lVar != null) {
            lVar.a(mode, size, mode2, size2);
            setMeasuredDimension(lVar.bg, lVar.bh);
            return;
        }
        setMeasuredDimension(0, 0);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public final void a(c.a aVar, j jVar, ConstraintLayout.LayoutParams layoutParams, SparseArray<androidx.constraintlayout.a.a.e> sparseArray) {
        super.a(aVar, jVar, layoutParams, sparseArray);
        if (jVar instanceof g) {
            g gVar = (g) jVar;
            if (layoutParams.S != -1) {
                gVar.aW = layoutParams.S;
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public void onMeasure(int i, int i2) {
        a(this.f1424a, i, i2);
    }

    public void setFirstHorizontalBias(float f) {
        this.f1424a.aM = f;
        requestLayout();
    }

    public void setFirstHorizontalStyle(int i) {
        this.f1424a.f1380c = i;
        requestLayout();
    }

    public void setFirstVerticalBias(float f) {
        this.f1424a.aN = f;
        requestLayout();
    }

    public void setFirstVerticalStyle(int i) {
        this.f1424a.f1381d = i;
        requestLayout();
    }

    public void setHorizontalAlign(int i) {
        this.f1424a.aS = i;
        requestLayout();
    }

    public void setHorizontalBias(float f) {
        this.f1424a.aK = f;
        requestLayout();
    }

    public void setHorizontalGap(int i) {
        this.f1424a.aQ = i;
        requestLayout();
    }

    public void setHorizontalStyle(int i) {
        this.f1424a.f1378a = i;
        requestLayout();
    }

    public void setMaxElementsWrap(int i) {
        this.f1424a.aV = i;
        requestLayout();
    }

    public void setOrientation(int i) {
        this.f1424a.aW = i;
        requestLayout();
    }

    public void setPadding(int i) {
        this.f1424a.p(i);
        requestLayout();
    }

    public void setPaddingBottom(int i) {
        this.f1424a.ba = i;
        requestLayout();
    }

    public void setPaddingLeft(int i) {
        this.f1424a.q(i);
        requestLayout();
    }

    public void setPaddingRight(int i) {
        this.f1424a.r(i);
        requestLayout();
    }

    public void setPaddingTop(int i) {
        this.f1424a.aZ = i;
        requestLayout();
    }

    public void setVerticalAlign(int i) {
        this.f1424a.aT = i;
        requestLayout();
    }

    public void setVerticalBias(float f) {
        this.f1424a.aL = f;
        requestLayout();
    }

    public void setVerticalGap(int i) {
        this.f1424a.aR = i;
        requestLayout();
    }

    public void setVerticalStyle(int i) {
        this.f1424a.f1379b = i;
        requestLayout();
    }

    public void setWrapMode(int i) {
        this.f1424a.aU = i;
        requestLayout();
    }
}
