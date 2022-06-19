package com.callapp.contacts.widget;

import android.animation.Animator;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/RetractableFrameLayout.class */
public class RetractableFrameLayout extends FrameLayout implements RetractableView {

    /* renamed from: a */
    public final RetractableViewImpl f28856a = new RetractableViewImpl(this);

    public RetractableFrameLayout(Context context) {
        super(context);
    }

    public RetractableFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public RetractableFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // com.callapp.contacts.widget.RetractableView
    /* renamed from: a */
    public final void mo26661a() {
        this.f28856a.m26656a(false);
    }

    @Override // com.callapp.contacts.widget.RetractableView
    /* renamed from: b */
    public final void mo26655b() {
        this.f28856a.m26652b(false);
    }

    @Override // com.callapp.contacts.widget.RetractableView
    /* renamed from: c */
    public final void mo26651c() {
        this.f28856a.m26652b(true);
    }

    @Override // com.callapp.contacts.widget.RetractableView
    public boolean isCollapsed() {
        return this.f28856a.isCollapsed();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f28856a.m26660a(i2, i4);
    }

    public void setCollapseListener(Animator.AnimatorListener animatorListener) {
        this.f28856a.setCollapseListener(animatorListener);
    }

    public void setCollapseMinHeight(int i) {
        this.f28856a.setCollapseMinHeight(i);
    }

    public void setExpandListener(Animator.AnimatorListener animatorListener) {
        this.f28856a.setExpandListener(animatorListener);
    }

    @Override // com.callapp.contacts.widget.RetractableView
    public void setExpandMaxHeight(int i) {
        this.f28856a.setExpandMaxHeight(i);
    }
}
