package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/VirtualLayout.class */
public abstract class VirtualLayout extends ConstraintHelper {

    /* renamed from: n */
    private boolean f2748n;

    /* renamed from: o */
    private boolean f2749o;

    public VirtualLayout(Context context) {
        super(context);
    }

    public VirtualLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public VirtualLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: m */
    public void mo19955m(AttributeSet attributeSet) {
        super.mo19955m(attributeSet);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0178R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0178R.styleable.ConstraintLayout_Layout_android_visibility) {
                    this.f2748n = true;
                } else if (index == C0178R.styleable.ConstraintLayout_Layout_android_elevation) {
                    this.f2749o = true;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public void onAttachedToWindow() {
        ViewParent parent;
        super.onAttachedToWindow();
        if ((this.f2748n || this.f2749o) && (parent = getParent()) != null && (parent instanceof ConstraintLayout)) {
            ConstraintLayout constraintLayout = (ConstraintLayout) parent;
            int visibility = getVisibility();
            float elevation = Build.VERSION.SDK_INT >= 21 ? getElevation() : 0.0f;
            for (int i = 0; i < this.f2497g; i++) {
                View h = constraintLayout.m20043h(this.f2496f[i]);
                if (h != null) {
                    if (this.f2748n) {
                        h.setVisibility(visibility);
                    }
                    if (this.f2749o && elevation > 0.0f && Build.VERSION.SDK_INT >= 21) {
                        h.setTranslationZ(h.getTranslationZ() + elevation);
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        m20063g();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        m20063g();
    }

    /* renamed from: v */
    public void mo19954v(androidx.constraintlayout.solver.widgets.VirtualLayout virtualLayout, int i, int i2) {
    }
}
