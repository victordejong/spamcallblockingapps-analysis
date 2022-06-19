package p291y;

import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.constraintlayout.widget.AbstractC0308a;
import androidx.constraintlayout.widget.ConstraintLayout;
import p015b0.C0713a;
/* renamed from: y.f */
/* loaded from: classes-dex2jar.jar:y/f.class */
public abstract class AbstractC4953f extends AbstractC0308a {

    /* renamed from: i */
    public boolean f15112i;

    /* renamed from: j */
    public boolean f15113j;

    @Override // androidx.constraintlayout.widget.AbstractC0308a
    /* renamed from: g */
    public void mo183g(ConstraintLayout constraintLayout) {
        m8363f(constraintLayout);
    }

    @Override // androidx.constraintlayout.widget.AbstractC0308a
    /* renamed from: i */
    public void mo182i(AttributeSet attributeSet) {
        super.mo182i(attributeSet);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0713a.f2754f);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 6) {
                    this.f15112i = true;
                } else if (index == 22) {
                    this.f15113j = true;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    @Override // androidx.constraintlayout.widget.AbstractC0308a, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f15112i || this.f15113j) {
            ViewParent parent = getParent();
            if (!(parent instanceof ConstraintLayout)) {
                return;
            }
            ConstraintLayout constraintLayout = (ConstraintLayout) parent;
            int visibility = getVisibility();
            float elevation = getElevation();
            for (int i = 0; i < this.f1279b; i++) {
                View m8377d = constraintLayout.m8377d(this.f1278a[i]);
                if (m8377d != null) {
                    if (this.f15112i) {
                        m8377d.setVisibility(visibility);
                    }
                    if (this.f15113j && elevation > 0.0f) {
                        m8377d.setTranslationZ(m8377d.getTranslationZ() + elevation);
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ConstraintLayout)) {
            return;
        }
        m8363f((ConstraintLayout) parent);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ConstraintLayout)) {
            return;
        }
        m8363f((ConstraintLayout) parent);
    }
}
