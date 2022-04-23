package androidx.constraintlayout.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/Constraints.class */
public class Constraints extends ViewGroup {

    /* renamed from: b */
    C0221b f1400b;

    public Constraints(Context context) {
        super(context);
        super.setVisibility(8);
    }

    public Constraints(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m13823c(attributeSet);
        super.setVisibility(8);
    }

    public Constraints(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m13823c(attributeSet);
        super.setVisibility(8);
    }

    /* renamed from: c */
    private void m13823c(AttributeSet attributeSet) {
        Log.v("Constraints", " ################# init");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    /* renamed from: b */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ConstraintLayout.LayoutParams(layoutParams);
    }

    public C0221b getConstraintSet() {
        if (this.f1400b == null) {
            this.f1400b = new C0221b();
        }
        this.f1400b.m13798k(this);
        return this.f1400b;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }
}
