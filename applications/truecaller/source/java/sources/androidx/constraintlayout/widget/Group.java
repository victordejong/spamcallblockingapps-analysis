package androidx.constraintlayout.widget;

import android.content.Context;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.ConstraintLayout;
import p1727n3.p1795i.p1802c.AbstractC26385b;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/Group.class */
public class Group extends AbstractC26385b {
    public Group(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // p1727n3.p1795i.p1802c.AbstractC26385b
    /* renamed from: l */
    public void mo1941l(AttributeSet attributeSet) {
        super.mo1941l(attributeSet);
    }

    @Override // p1727n3.p1795i.p1802c.AbstractC26385b, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m1985i();
    }

    @Override // p1727n3.p1795i.p1802c.AbstractC26385b
    /* renamed from: p */
    public void mo1979p(ConstraintLayout constraintLayout) {
        ConstraintLayout.C0111a c0111a = (ConstraintLayout.C0111a) getLayoutParams();
        c0111a.f646l0.m2079S(0);
        c0111a.f646l0.m2084N(0);
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
}
