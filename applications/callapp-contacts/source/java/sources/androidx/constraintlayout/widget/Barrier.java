package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.SparseArray;
import androidx.constraintlayout.p026a.p027a.C0511a;
import androidx.constraintlayout.p026a.p027a.C0541e;
import androidx.constraintlayout.p026a.p027a.C0544f;
import androidx.constraintlayout.p026a.p027a.C0550j;
import androidx.constraintlayout.widget.C0680c;
import androidx.constraintlayout.widget.C0687e;
import androidx.constraintlayout.widget.ConstraintLayout;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/Barrier.class */
public class Barrier extends ConstraintHelper {

    /* renamed from: a */
    public int f2897a;

    /* renamed from: b */
    public C0511a f2898b;

    /* renamed from: c */
    private int f2899c;

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

    /* renamed from: a */
    private void m44764a(C0541e c0541e, int i, boolean z) {
        this.f2899c = i;
        if (Build.VERSION.SDK_INT < 17) {
            int i2 = this.f2897a;
            if (i2 == 5) {
                this.f2899c = 0;
            } else if (i2 == 6) {
                this.f2899c = 1;
            }
        } else if (z) {
            int i3 = this.f2897a;
            if (i3 == 5) {
                this.f2899c = 1;
            } else if (i3 == 6) {
                this.f2899c = 0;
            }
        } else {
            int i4 = this.f2897a;
            if (i4 == 5) {
                this.f2899c = 0;
            } else if (i4 == 6) {
                this.f2899c = 1;
            }
        }
        if (c0541e instanceof C0511a) {
            ((C0511a) c0541e).f1920a = this.f2899c;
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: a */
    public final void mo44729a(AttributeSet attributeSet) {
        super.mo44729a(attributeSet);
        this.f2898b = new C0511a();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0687e.C0689b.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0687e.C0689b.ConstraintLayout_Layout_barrierDirection) {
                    setType(obtainStyledAttributes.getInt(index, 0));
                } else if (index == C0687e.C0689b.ConstraintLayout_Layout_barrierAllowsGoneWidgets) {
                    this.f2898b.f1921b = obtainStyledAttributes.getBoolean(index, true);
                } else if (index == C0687e.C0689b.ConstraintLayout_Layout_barrierMargin) {
                    this.f2898b.f1922c = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.f2905m = this.f2898b;
        m44753c();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: a */
    public final void mo44762a(C0541e c0541e, boolean z) {
        m44764a(c0541e, this.f2897a, z);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: a */
    public final void mo44758a(C0680c.C0681a c0681a, C0550j c0550j, ConstraintLayout.LayoutParams layoutParams, SparseArray<C0541e> sparseArray) {
        super.mo44758a(c0681a, c0550j, layoutParams, sparseArray);
        if (c0550j instanceof C0511a) {
            C0511a c0511a = (C0511a) c0550j;
            m44764a(c0511a, c0681a.f3063d.f3095ab, ((C0544f) c0550j.f2060S).f2163d);
            c0511a.f1921b = c0681a.f3063d.f3103aj;
            c0511a.f1922c = c0681a.f3063d.f3096ac;
        }
    }

    public void setAllowsGoneWidget(boolean z) {
        this.f2898b.f1921b = z;
    }

    public void setDpMargin(int i) {
        this.f2898b.f1922c = (int) ((i * getResources().getDisplayMetrics().density) + 0.5f);
    }

    public void setMargin(int i) {
        this.f2898b.f1922c = i;
    }

    public void setType(int i) {
        this.f2897a = i;
    }
}
