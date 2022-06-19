package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseArray;
import androidx.constraintlayout.widget.ConstraintLayout;
import n3.i.b.h.a;
import p1727n3.p1795i.p1799b.p1800h.C26363d;
import p1727n3.p1795i.p1799b.p1800h.C26367i;
import p1727n3.p1795i.p1802c.AbstractC26385b;
import p1727n3.p1795i.p1802c.C26389d;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/Barrier.class */
public class Barrier extends AbstractC26385b {

    /* renamed from: i */
    public int f575i;

    /* renamed from: j */
    public int f576j;

    /* renamed from: k */
    public a f577k;

    public Barrier(Context context) {
        super(context);
        super.setVisibility(8);
    }

    public Barrier(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }

    public int getMargin() {
        return this.f577k.L0;
    }

    public int getType() {
        return this.f575i;
    }

    @Override // p1727n3.p1795i.p1802c.AbstractC26385b
    /* renamed from: l */
    public void mo1941l(AttributeSet attributeSet) {
        super.mo1941l(attributeSet);
        this.f577k = new a();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0114R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0114R.styleable.ConstraintLayout_Layout_barrierDirection) {
                    setType(obtainStyledAttributes.getInt(index, 0));
                } else if (index == C0114R.styleable.ConstraintLayout_Layout_barrierAllowsGoneWidgets) {
                    this.f577k.K0 = obtainStyledAttributes.getBoolean(index, true);
                } else if (index == C0114R.styleable.ConstraintLayout_Layout_barrierMargin) {
                    this.f577k.L0 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.f73863d = this.f577k;
        m1975t();
    }

    @Override // p1727n3.p1795i.p1802c.AbstractC26385b
    /* renamed from: m */
    public void mo1982m(C26389d.C26390a c26390a, C26367i c26367i, ConstraintLayout.C0111a c0111a, SparseArray<C26363d> sparseArray) {
        super.mo1982m(c26390a, c26367i, c0111a, sparseArray);
        if (c26367i instanceof a) {
            a aVar = (a) c26367i;
            m43039u(aVar, c26390a.f73891d.f73924b0, c26367i.f73684R.L0);
            C26389d.C26391b c26391b = c26390a.f73891d;
            aVar.K0 = c26391b.f73940j0;
            aVar.L0 = c26391b.f73926c0;
        }
    }

    @Override // p1727n3.p1795i.p1802c.AbstractC26385b
    /* renamed from: o */
    public void mo1980o(C26363d c26363d, boolean z) {
        m43039u(c26363d, this.f575i, z);
    }

    public void setAllowsGoneWidget(boolean z) {
        this.f577k.K0 = z;
    }

    public void setDpMargin(int i) {
        this.f577k.L0 = (int) ((i * getResources().getDisplayMetrics().density) + 0.5f);
    }

    public void setMargin(int i) {
        this.f577k.L0 = i;
    }

    public void setType(int i) {
        this.f575i = i;
    }

    /* renamed from: u */
    public final void m43039u(C26363d c26363d, int i, boolean z) {
        this.f576j = i;
        if (z) {
            int i2 = this.f575i;
            if (i2 == 5) {
                this.f576j = 1;
            } else if (i2 == 6) {
                this.f576j = 0;
            }
        } else {
            int i3 = this.f575i;
            if (i3 == 5) {
                this.f576j = 0;
            } else if (i3 == 6) {
                this.f576j = 1;
            }
        }
        if (c26363d instanceof a) {
            ((a) c26363d).J0 = this.f576j;
        }
    }
}
