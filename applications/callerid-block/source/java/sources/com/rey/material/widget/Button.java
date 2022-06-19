package com.rey.material.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.rey.material.app.b;
import com.rey.material.app.b$b;
import com.rey.material.app.b$c;
import p092e.p107g.p108a.p109a.View$OnTouchListenerC3116f;
import p092e.p107g.p108a.p110b.C3124d;
/* loaded from: classes2-dex2jar.jar:com/rey/material/widget/Button.class */
public class Button extends android.widget.Button implements b$c {

    /* renamed from: b */
    private View$OnClickListenerC2847a f11752b;

    /* renamed from: c */
    protected int f11753c;

    /* renamed from: d */
    protected int f11754d = Integer.MIN_VALUE;

    public Button(Context context) {
        super(context);
        m1454c(context, null, 0, 0);
    }

    public Button(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m1454c(context, attributeSet, 0, 0);
    }

    public Button(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m1454c(context, attributeSet, i, 0);
    }

    /* renamed from: c */
    private void m1454c(Context context, AttributeSet attributeSet, int i, int i2) {
        C3124d.m76a(this, attributeSet, i, i2);
        m1455b(context, attributeSet, i, i2);
        this.f11753c = b.f(context, attributeSet, i, i2);
    }

    /* renamed from: a */
    public void m1456a(int i) {
        C3124d.m75b(this, i);
        m1455b(getContext(), null, 0, i);
    }

    /* renamed from: b */
    protected void m1455b(Context context, AttributeSet attributeSet, int i, int i2) {
        getRippleManager().m1337c(this, context, attributeSet, i, i2);
    }

    @Override // com.rey.material.app.b$c
    /* renamed from: d */
    public void mo1341d(b$b b_b) {
        int b = b.c().b(this.f11753c);
        if (this.f11754d != b) {
            this.f11754d = b;
            m1456a(b);
        }
    }

    protected View$OnClickListenerC2847a getRippleManager() {
        if (this.f11752b == null) {
            synchronized (View$OnClickListenerC2847a.class) {
                try {
                    if (this.f11752b == null) {
                        this.f11752b = new View$OnClickListenerC2847a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f11752b;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f11753c == 0 || isInEditMode()) {
            return;
        }
        b.c().j(this);
        mo1341d(null);
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        View$OnClickListenerC2847a.m1339a(this);
        if (this.f11753c != 0) {
            b.c().m(this);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return getRippleManager().m1336d(motionEvent) || super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        Drawable background = getBackground();
        if (!(background instanceof View$OnTouchListenerC3116f) || (drawable instanceof View$OnTouchListenerC3116f)) {
            super.setBackgroundDrawable(drawable);
        } else {
            ((View$OnTouchListenerC3116f) background).m125r(drawable);
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        View$OnClickListenerC2847a rippleManager = getRippleManager();
        if (onClickListener == rippleManager) {
            super.setOnClickListener(onClickListener);
            return;
        }
        rippleManager.m1335f(onClickListener);
        setOnClickListener(rippleManager);
    }
}
