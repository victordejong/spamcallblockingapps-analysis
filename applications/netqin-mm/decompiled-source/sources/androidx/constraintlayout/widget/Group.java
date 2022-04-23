package androidx.constraintlayout.widget;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/Group.class */
public class Group extends ConstraintHelper {
    public Group(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public Group(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: a */
    public void mo38702a(AttributeSet attributeSet) {
        super.mo38702a(attributeSet);
        this.f954e = false;
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: a */
    public void mo38701a(ConstraintLayout constraintLayout) {
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) getLayoutParams();
        layoutParams.f1019k0.m38735p(0);
        layoutParams.f1019k0.m38751h(0);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: c */
    public void mo38700c(ConstraintLayout constraintLayout) {
        int visibility = getVisibility();
        float elevation = Build.VERSION.SDK_INT >= 21 ? getElevation() : 0.0f;
        for (int i = 0; i < this.f951b; i++) {
            View b = constraintLayout.m38708b(this.f950a[i]);
            if (b != null) {
                b.setVisibility(visibility);
                if (elevation > 0.0f && Build.VERSION.SDK_INT >= 21) {
                    b.setElevation(elevation);
                }
            }
        }
    }
}
