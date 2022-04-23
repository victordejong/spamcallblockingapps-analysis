package androidx.constraintlayout.widget;

import android.content.Context;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.ConstraintLayout;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/Group.class */
public class Group extends ConstraintHelper {
    public Group(Context context) {
        super(context);
    }

    public Group(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public Group(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: m */
    public void mo19955m(AttributeSet attributeSet) {
        super.mo19955m(attributeSet);
        this.f2500j = false;
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m20063g();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: p */
    public void mo19966p(ConstraintLayout constraintLayout) {
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) getLayoutParams();
        layoutParams.f2575m0.m20347Y0(0);
        layoutParams.f2575m0.m20302z0(0);
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
}
