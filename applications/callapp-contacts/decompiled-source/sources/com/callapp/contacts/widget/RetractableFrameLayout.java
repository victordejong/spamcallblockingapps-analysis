package com.callapp.contacts.widget;

import android.animation.Animator;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/RetractableFrameLayout.class */
public class RetractableFrameLayout extends FrameLayout implements RetractableView {

    /* renamed from: a  reason: collision with root package name */
    public final RetractableViewImpl f16573a = new RetractableViewImpl(this);

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
    public final void a() {
        this.f16573a.a(false);
    }

    @Override // com.callapp.contacts.widget.RetractableView
    public final void b() {
        this.f16573a.b(false);
    }

    @Override // com.callapp.contacts.widget.RetractableView
    public final void c() {
        this.f16573a.b(true);
    }

    @Override // com.callapp.contacts.widget.RetractableView
    public boolean isCollapsed() {
        return this.f16573a.isCollapsed();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f16573a.a(i2, i4);
    }

    public void setCollapseListener(Animator.AnimatorListener animatorListener) {
        this.f16573a.setCollapseListener(animatorListener);
    }

    public void setCollapseMinHeight(int i) {
        this.f16573a.setCollapseMinHeight(i);
    }

    public void setExpandListener(Animator.AnimatorListener animatorListener) {
        this.f16573a.setExpandListener(animatorListener);
    }

    @Override // com.callapp.contacts.widget.RetractableView
    public void setExpandMaxHeight(int i) {
        this.f16573a.setExpandMaxHeight(i);
    }
}
