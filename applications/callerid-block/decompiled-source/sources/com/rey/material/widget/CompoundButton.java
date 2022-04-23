package com.rey.material.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.rey.material.app.b;
import com.rey.material.app.b$b;
import com.rey.material.app.b$c;
import p092e.p107g.p108a.p109a.View$OnTouchListenerC3116f;
import p092e.p107g.p108a.p110b.C3124d;
/* loaded from: classes2-dex2jar.jar:com/rey/material/widget/CompoundButton.class */
public class CompoundButton extends android.widget.CompoundButton implements b$c {

    /* renamed from: b */
    private View$OnClickListenerC2847a f11755b;

    /* renamed from: c */
    protected Drawable f11756c;

    /* renamed from: d */
    protected int f11757d;

    /* renamed from: e */
    protected int f11758e = Integer.MIN_VALUE;

    public CompoundButton(Context context) {
        super(context);
        m1452c(context, null, 0, 0);
    }

    public CompoundButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m1452c(context, attributeSet, 0, 0);
    }

    public CompoundButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m1452c(context, attributeSet, i, 0);
    }

    @TargetApi(17)
    /* renamed from: c */
    private void m1452c(Context context, AttributeSet attributeSet, int i, int i2) {
        if (Build.VERSION.SDK_INT < 17) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{16842965, 16842966}, i, i2);
            if (!obtainStyledAttributes.hasValue(0) && !obtainStyledAttributes.hasValue(1)) {
                setPadding(0, getPaddingTop(), getPaddingRight(), getPaddingBottom());
            }
            obtainStyledAttributes.recycle();
        }
        setClickable(true);
        C3124d.m76a(this, attributeSet, i, i2);
        mo1415b(context, attributeSet, i, i2);
        this.f11757d = b.f(context, attributeSet, i, i2);
    }

    /* renamed from: a */
    public void m1453a(int i) {
        C3124d.m75b(this, i);
        mo1415b(getContext(), null, 0, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public void mo1415b(Context context, AttributeSet attributeSet, int i, int i2) {
        getRippleManager().m1337c(this, context, attributeSet, i, i2);
    }

    @Override // com.rey.material.app.b$c
    /* renamed from: d */
    public void mo1341d(b$b b_b) {
        int b = b.c().b(this.f11757d);
        if (this.f11758e != b) {
            this.f11758e = b;
            m1453a(b);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        if (Build.VERSION.SDK_INT >= 17) {
            return compoundPaddingLeft;
        }
        Drawable drawable = this.f11756c;
        int i = compoundPaddingLeft;
        if (drawable != null) {
            i = compoundPaddingLeft + drawable.getIntrinsicWidth();
        }
        return i;
    }

    protected View$OnClickListenerC2847a getRippleManager() {
        if (this.f11755b == null) {
            synchronized (View$OnClickListenerC2847a.class) {
                try {
                    if (this.f11755b == null) {
                        this.f11755b = new View$OnClickListenerC2847a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f11755b;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f11757d != 0) {
            b.c().j(this);
            mo1341d(null);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        View$OnClickListenerC2847a.m1339a(this);
        if (this.f11757d != 0) {
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

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        this.f11756c = drawable;
        super.setButtonDrawable(drawable);
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
