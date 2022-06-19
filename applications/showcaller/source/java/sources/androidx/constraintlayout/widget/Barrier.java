package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.SparseArray;
import androidx.constraintlayout.solver.widgets.C0470a;
import androidx.constraintlayout.solver.widgets.C0493d;
import androidx.constraintlayout.solver.widgets.C0499h;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.widget.C0515b;
import androidx.constraintlayout.widget.ConstraintLayout;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/Barrier.class */
public class Barrier extends ConstraintHelper {

    /* renamed from: m */
    private int f2451m;

    /* renamed from: n */
    private int f2452n;

    /* renamed from: o */
    private C0470a f2453o;

    public Barrier(Context context) {
        super(context);
        super.setVisibility(8);
    }

    public Barrier(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }

    public Barrier(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        super.setVisibility(8);
    }

    /* renamed from: x */
    private void m33719x(ConstraintWidget constraintWidget, int i, boolean z) {
        this.f2452n = i;
        if (Build.VERSION.SDK_INT < 17) {
            int i2 = this.f2451m;
            if (i2 == 5) {
                this.f2452n = 0;
            } else if (i2 == 6) {
                this.f2452n = 1;
            }
        } else if (z) {
            int i3 = this.f2451m;
            if (i3 == 5) {
                this.f2452n = 1;
            } else if (i3 == 6) {
                this.f2452n = 0;
            }
        } else {
            int i4 = this.f2451m;
            if (i4 == 5) {
                this.f2452n = 0;
            } else if (i4 == 6) {
                this.f2452n = 1;
            }
        }
        if (constraintWidget instanceof C0470a) {
            ((C0470a) constraintWidget).m33951n1(this.f2452n);
        }
    }

    public int getMargin() {
        return this.f2453o.m33955j1();
    }

    public int getType() {
        return this.f2451m;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: n */
    public void mo33660n(AttributeSet attributeSet) {
        super.mo33660n(attributeSet);
        this.f2453o = new C0470a();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0523e.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0523e.ConstraintLayout_Layout_barrierDirection) {
                    setType(obtainStyledAttributes.getInt(index, 0));
                } else if (index == C0523e.ConstraintLayout_Layout_barrierAllowsGoneWidgets) {
                    this.f2453o.m33952m1(obtainStyledAttributes.getBoolean(index, true));
                } else if (index == C0523e.ConstraintLayout_Layout_barrierMargin) {
                    this.f2453o.m33950o1(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.f2473g = this.f2453o;
        m33693v();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: o */
    public void mo33699o(C0515b.C0516a c0516a, C0499h c0499h, ConstraintLayout.LayoutParams layoutParams, SparseArray<ConstraintWidget> sparseArray) {
        super.mo33699o(c0516a, c0499h, layoutParams, sparseArray);
        if (c0499h instanceof C0470a) {
            C0470a c0470a = (C0470a) c0499h;
            m33719x(c0470a, c0516a.f2624d.f2658c0, ((C0493d) c0499h.m34031L()).m33869C1());
            c0470a.m33952m1(c0516a.f2624d.f2674k0);
            c0470a.m33950o1(c0516a.f2624d.f2660d0);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: p */
    public void mo33698p(ConstraintWidget constraintWidget, boolean z) {
        m33719x(constraintWidget, this.f2451m, z);
    }

    public void setAllowsGoneWidget(boolean z) {
        this.f2453o.m33952m1(z);
    }

    public void setDpMargin(int i) {
        this.f2453o.m33950o1((int) ((i * getResources().getDisplayMetrics().density) + 0.5f));
    }

    public void setMargin(int i) {
        this.f2453o.m33950o1(i);
    }

    public void setType(int i) {
        this.f2451m = i;
    }

    /* renamed from: w */
    public boolean m33720w() {
        return this.f2453o.m33957h1();
    }
}
