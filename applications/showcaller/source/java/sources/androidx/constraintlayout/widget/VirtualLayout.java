package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.constraintlayout.solver.widgets.C0501j;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/VirtualLayout.class */
public abstract class VirtualLayout extends ConstraintHelper {

    /* renamed from: m */
    private boolean f2596m;

    /* renamed from: n */
    private boolean f2597n;

    public VirtualLayout(Context context) {
        super(context);
    }

    public VirtualLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public VirtualLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: n */
    public void mo33660n(AttributeSet attributeSet) {
        super.mo33660n(attributeSet);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0523e.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0523e.ConstraintLayout_Layout_android_visibility) {
                    this.f2596m = true;
                } else if (index == C0523e.ConstraintLayout_Layout_android_elevation) {
                    this.f2597n = true;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public void onAttachedToWindow() {
        ViewParent parent;
        super.onAttachedToWindow();
        if ((this.f2596m || this.f2597n) && (parent = getParent()) != null && (parent instanceof ConstraintLayout)) {
            ConstraintLayout constraintLayout = (ConstraintLayout) parent;
            int visibility = getVisibility();
            float elevation = Build.VERSION.SDK_INT >= 21 ? getElevation() : 0.0f;
            for (int i = 0; i < this.f2471e; i++) {
                View m33685o = constraintLayout.m33685o(this.f2470d[i]);
                if (m33685o != null) {
                    if (this.f2596m) {
                        m33685o.setVisibility(visibility);
                    }
                    if (this.f2597n && elevation > 0.0f && Build.VERSION.SDK_INT >= 21) {
                        m33685o.setTranslationZ(m33685o.getTranslationZ() + elevation);
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        m33705h();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        m33705h();
    }

    /* renamed from: w */
    public void mo33659w(C0501j c0501j, int i, int i2) {
    }
}
