package com.callapp.contacts.widget;

import android.animation.Animator;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/RetractableLinearLayout.class */
public class RetractableLinearLayout extends LinearLayout implements RetractableView {

    /* renamed from: a  reason: collision with root package name */
    private final RetractableViewImpl f16574a = new RetractableViewImpl(this);

    public RetractableLinearLayout(Context context) {
        super(context);
    }

    public RetractableLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public RetractableLinearLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // com.callapp.contacts.widget.RetractableView
    public final void a() {
        this.f16574a.a(false);
    }

    @Override // com.callapp.contacts.widget.RetractableView
    public final void b() {
        this.f16574a.b(false);
    }

    @Override // com.callapp.contacts.widget.RetractableView
    public final void c() {
        this.f16574a.b(true);
    }

    @Override // com.callapp.contacts.widget.RetractableView
    public boolean isCollapsed() {
        return this.f16574a.isCollapsed();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f16574a.a(i2, i4);
    }

    public void setCollapseListener(Animator.AnimatorListener animatorListener) {
        this.f16574a.setCollapseListener(animatorListener);
    }

    public void setCollapseMinHeight(int i) {
        this.f16574a.setCollapseMinHeight(i);
    }

    public void setExpandListener(Animator.AnimatorListener animatorListener) {
        this.f16574a.setExpandListener(animatorListener);
    }

    @Override // com.callapp.contacts.widget.RetractableView
    public void setExpandMaxHeight(int i) {
        this.f16574a.setExpandMaxHeight(i);
    }
}
