package p1727n3.p1795i.p1802c;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.constraintlayout.widget.C0114R;
import androidx.constraintlayout.widget.ConstraintLayout;
import n3.i.b.h.k;
/* renamed from: n3.i.c.i */
/* loaded from: classes-dex2jar.jar:n3/i/c/i.class */
public abstract class AbstractC26402i extends AbstractC26385b {

    /* renamed from: i */
    public boolean f74011i;

    /* renamed from: j */
    public boolean f74012j;

    public AbstractC26402i(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // p1727n3.p1795i.p1802c.AbstractC26385b
    /* renamed from: l */
    public void mo1941l(AttributeSet attributeSet) {
        super.mo1941l(attributeSet);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0114R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0114R.styleable.ConstraintLayout_Layout_android_visibility) {
                    this.f74011i = true;
                } else if (index == C0114R.styleable.ConstraintLayout_Layout_android_elevation) {
                    this.f74012j = true;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    @Override // p1727n3.p1795i.p1802c.AbstractC26385b, android.view.View
    public void onAttachedToWindow() {
        ViewParent parent;
        super.onAttachedToWindow();
        if ((this.f74011i || this.f74012j) && (parent = getParent()) != null && (parent instanceof ConstraintLayout)) {
            ConstraintLayout constraintLayout = (ConstraintLayout) parent;
            int visibility = getVisibility();
            float elevation = getElevation();
            for (int i = 0; i < this.f73861b; i++) {
                View m43035Q0 = constraintLayout.m43035Q0(this.f73860a[i]);
                if (m43035Q0 != null) {
                    if (this.f74011i) {
                        m43035Q0.setVisibility(visibility);
                    }
                    if (this.f74012j && elevation > 0.0f) {
                        m43035Q0.setTranslationZ(m43035Q0.getTranslationZ() + elevation);
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        m1985i();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        m1985i();
    }

    /* renamed from: u */
    public void m1940u(k kVar, int i, int i2) {
    }
}
