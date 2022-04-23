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
/* loaded from: classes2-dex2jar.jar:com/rey/material/widget/ImageButton.class */
public class ImageButton extends android.widget.ImageButton implements b$c {

    /* renamed from: b */
    private View$OnClickListenerC2847a f11773b;

    /* renamed from: c */
    protected int f11774c;

    /* renamed from: d */
    protected int f11775d = Integer.MIN_VALUE;

    public ImageButton(Context context) {
        super(context);
        m1433c(context, null, 0, 0);
    }

    public ImageButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        try {
            m1433c(context, attributeSet, 0, 0);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public ImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m1433c(context, attributeSet, i, 0);
    }

    /* renamed from: c */
    private void m1433c(Context context, AttributeSet attributeSet, int i, int i2) {
        m1434b(context, attributeSet, i, i2);
        this.f11774c = b.f(context, attributeSet, i, i2);
    }

    /* renamed from: a */
    public void m1435a(int i) {
        C3124d.m75b(this, i);
        m1434b(getContext(), null, 0, i);
    }

    /* renamed from: b */
    protected void m1434b(Context context, AttributeSet attributeSet, int i, int i2) {
        getRippleManager().m1337c(this, context, attributeSet, i, i2);
    }

    @Override // com.rey.material.app.b$c
    /* renamed from: d */
    public void mo1341d(b$b b_b) {
        int b = b.c().b(this.f11774c);
        if (this.f11775d != b) {
            this.f11775d = b;
            m1435a(b);
        }
    }

    protected View$OnClickListenerC2847a getRippleManager() {
        if (this.f11773b == null) {
            synchronized (View$OnClickListenerC2847a.class) {
                try {
                    if (this.f11773b == null) {
                        this.f11773b = new View$OnClickListenerC2847a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f11773b;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f11774c != 0) {
            b.c().j(this);
            mo1341d(null);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        View$OnClickListenerC2847a.m1339a(this);
        if (this.f11774c != 0) {
            b.c().m(this);
        }
    }

    @Override // android.view.View
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
