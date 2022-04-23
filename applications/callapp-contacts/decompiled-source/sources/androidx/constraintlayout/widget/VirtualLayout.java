package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.constraintlayout.a.a.l;
import androidx.constraintlayout.widget.e;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/VirtualLayout.class */
public abstract class VirtualLayout extends ConstraintHelper {

    /* renamed from: a  reason: collision with root package name */
    private boolean f1602a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f1603b;

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
    public void a(AttributeSet attributeSet) {
        super.a(attributeSet);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, e.b.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == e.b.ConstraintLayout_Layout_android_visibility) {
                    this.f1602a = true;
                } else if (index == e.b.ConstraintLayout_Layout_android_elevation) {
                    this.f1603b = true;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    public void a(l lVar, int i, int i2) {
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public void onAttachedToWindow() {
        ViewParent parent;
        super.onAttachedToWindow();
        if ((this.f1602a || this.f1603b) && (parent = getParent()) != null && (parent instanceof ConstraintLayout)) {
            ConstraintLayout constraintLayout = (ConstraintLayout) parent;
            int visibility = getVisibility();
            float elevation = Build.VERSION.SDK_INT >= 21 ? getElevation() : BitmapDescriptorFactory.HUE_RED;
            for (int i = 0; i < this.k; i++) {
                View viewById = constraintLayout.getViewById(this.j[i]);
                if (viewById != null) {
                    if (this.f1602a) {
                        viewById.setVisibility(visibility);
                    }
                    if (this.f1603b && elevation > BitmapDescriptorFactory.HUE_RED && Build.VERSION.SDK_INT >= 21) {
                        viewById.setTranslationZ(viewById.getTranslationZ() + elevation);
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        d();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        d();
    }
}
