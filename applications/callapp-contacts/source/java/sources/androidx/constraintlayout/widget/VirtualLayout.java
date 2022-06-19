package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.constraintlayout.p026a.p027a.C0552l;
import androidx.constraintlayout.widget.C0687e;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/VirtualLayout.class */
public abstract class VirtualLayout extends ConstraintHelper {

    /* renamed from: a */
    private boolean f3027a;

    /* renamed from: b */
    private boolean f3028b;

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
    /* renamed from: a */
    public void mo44729a(AttributeSet attributeSet) {
        super.mo44729a(attributeSet);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0687e.C0689b.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0687e.C0689b.ConstraintLayout_Layout_android_visibility) {
                    this.f3027a = true;
                } else if (index == C0687e.C0689b.ConstraintLayout_Layout_android_elevation) {
                    this.f3028b = true;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: a */
    public void mo44728a(C0552l c0552l, int i, int i2) {
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public void onAttachedToWindow() {
        ViewParent parent;
        super.onAttachedToWindow();
        if ((this.f3027a || this.f3028b) && (parent = getParent()) != null && (parent instanceof ConstraintLayout)) {
            ConstraintLayout constraintLayout = (ConstraintLayout) parent;
            int visibility = getVisibility();
            float elevation = Build.VERSION.SDK_INT >= 21 ? getElevation() : 0.0f;
            for (int i = 0; i < this.f2903k; i++) {
                View viewById = constraintLayout.getViewById(this.f2902j[i]);
                if (viewById != null) {
                    if (this.f3027a) {
                        viewById.setVisibility(visibility);
                    }
                    if (this.f3028b && elevation > BitmapDescriptorFactory.HUE_RED && Build.VERSION.SDK_INT >= 21) {
                        viewById.setTranslationZ(viewById.getTranslationZ() + elevation);
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        m44750d();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        m44750d();
    }
}
